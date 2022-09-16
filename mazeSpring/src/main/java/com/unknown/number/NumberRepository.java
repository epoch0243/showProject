package com.unknown.number;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

@Repository
public class NumberRepository {
	
	@Autowired
	// @Autowired(required = false)
	private JdbcTemplate jdbcTemplate;
		
	private String insertNumber = "INSERT INTO numbervo(number) values(?)";
	private String selectNumber = "SELECT * FROM numbervo where number = ?";
	
	public void insertNumber(NumberVO number) {		
		jdbcTemplate.update(insertNumber, number.getNum());
	}
	
	public NumberVO selectNumber(final NumberVO number) {
		System.out.println(number.getNum());
		return jdbcTemplate.queryForObject(selectNumber, new RowMapper<NumberVO>() {

			@Override
			public NumberVO mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub
				number.setNum(rs.getInt(1) + "");
				
				return number;
			}
			
		}, number.getNum());
		
	}
}
