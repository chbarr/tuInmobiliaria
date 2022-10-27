package co.cb.inmobiliaria.data;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import co.cb.inmobiliaria.Rent;

public class RentMapper implements RowMapper<Rent>{

	@Override
	public Rent mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		//return new Rent(rs.getInt("id"),rs.getInt("personid"), rs.getInt("houseid"),rs.getString("rentdate"),rs.getString("address"));
		return new Rent(rs.getDate(1).toString(),rs.getString(2));
	}

}
