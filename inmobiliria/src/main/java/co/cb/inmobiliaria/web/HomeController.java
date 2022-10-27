package co.cb.inmobiliaria.web;

import java.util.ArrayList;
import java.util.Iterator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import co.cb.inmobiliaria.Person;
import co.cb.inmobiliaria.Rent;
import co.cb.inmobiliaria.data.JdbcPersonRepository;
import lombok.extern.slf4j.Slf4j;

@RestController
@CrossOrigin(origins = "*")//Escucha las peticiones provenientes de cualquier puerto
public class HomeController {

	private final JdbcPersonRepository personrep;

	@Autowired
	public HomeController(JdbcPersonRepository personrep) {
		this.personrep = personrep;
	}

	@PostMapping("/")
	public ArrayList<Person> proccessData(Model model, @RequestParam("data") String data) {
		ArrayList<Person> personsfound = new ArrayList<>();
		for(Person p:personrep.findAll(data)) {
			ArrayList<Rent> rentsfound = new ArrayList<>();
			for(Rent r:personrep.findRentalData(p.getId())) {
				rentsfound.add(r);
			}
			p.setRents(rentsfound);
			personsfound.add(p);
		}
		return personsfound;//Los datos por defecto se retornan en el formato JSON.
	}
}
