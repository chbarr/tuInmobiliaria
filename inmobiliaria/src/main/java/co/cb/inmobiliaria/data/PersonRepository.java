package co.cb.inmobiliaria.data;

import co.cb.inmobiliaria.Person;
import co.cb.inmobiliaria.Rent;

public interface PersonRepository {
	Person findOne(String parameter);
	Iterable<Person> findAll(String parameter);
	Iterable<Rent> findRentalData(int id);
}

