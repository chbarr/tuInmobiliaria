package co.cb.inmobiliaria;

import java.util.ArrayList;

import lombok.Data;
@Data
public class Person {
	private int id;
	private String name;
	private String lastname;
	private String email;
	private ArrayList<Rent> rents;
	public Person(int id,String name, String lastname, String email) {
		this.id=id;
		this.name = name;
		this.lastname = lastname;
		this.email = email;
	}
	

}


