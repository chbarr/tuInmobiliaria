package co.cb.inmobiliaria.data;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import co.cb.inmobiliaria.Person;
import co.cb.inmobiliaria.Rent;

@Repository
public class JdbcPersonRepository implements PersonRepository {
	private JdbcTemplate jdbc;

	@Autowired
	public JdbcPersonRepository(JdbcTemplate jdbc) {
		this.jdbc = jdbc;
	}

	@Override
	public Person findOne(String parameter) {
		return jdbc.queryForObject("SELECT * from persons where name=?", new PersonMapper(), parameter);
	}

	@Override
	public Iterable<Person> findAll(String parameter) {
		String sql = "SELECT * FROM persons WHERE concat(name,lastname,email) LIKE ?";
		return jdbc.query(sql, new PersonMapper(),"%"+parameter+"%");
	}

	@Override
	public Iterable<Rent> findRentalData(int id) {
		String sql = "SELECT rentaldata.rentdate, houses.address FROM rentaldata INNER JOIN"
				+ " houses on rentaldata.houseid = houses.id WHERE rentaldata.personid = ? ORDER BY rentaldata.rentdate";
		return jdbc.query(sql, new RentMapper(),id);
	}

}
