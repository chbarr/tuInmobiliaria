package co.cb.inmobiliaria.data;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import co.cb.inmobiliaria.Person;

public class PersonMapper implements RowMapper<Person> {

	@Override
	public Person mapRow(ResultSet rs, int rowNum) throws SQLException {
		return new Person(rs.getInt("id"), rs.getString("name"), rs.getString("lastname"), rs.getString("email"));
	}

}
