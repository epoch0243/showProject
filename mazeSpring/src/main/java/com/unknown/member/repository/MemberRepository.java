package com.unknown.member.repository;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.unknown.member.MemberVO;

@Repository
public class MemberRepository {
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	private String loginString = " SELECT id, name, password from members where id=? and password=?; ";
	private String countString = " SELECT COUNT(*) FROM members WHERE id=? and password=?; ";
	private String insertString = " INSERT into members value(?, ?, ?, ?); ";
	
	private String modifyPassowrdString = " UPDATE members set password=? where id=? and password=?; ";
	
	private String modifyNameString = " UPDATE members set name=? where id=? and password=?; ";
	private String modifyNameForBoardString = 
			" UPDATE boards set writer=? where certificate=?; ";	
	
	private String deleteString = " DELETE from members where id=? and password=?; ";
	private String deleteForBoardString = 
			" DELETE from boards where writer=? and certificate=?; ";
	
	private String idCheck = " SELECT count(id) FROM members where id=? ";
	private String nameCheck = " SELECT count(name) FROM members where name=? ";
	
	private String certificate = " select (certificate) from members where id=? AND password=?; ";
	
	public void memberlogin(final MemberVO member) {
		
		 jdbcTemplate.queryForObject(loginString, new RowMapper<MemberVO>() {

			@Override
			public MemberVO mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub
				
				member.setId(rs.getString(1) + "");
				member.setName(rs.getString(2));
				member.setPassword(rs.getString(3));
				
				return member;
			}
		}, 
		member.getId(), member.getPassword());
		
	}
	
	public int getMemberConfirm(MemberVO member) {
		
		return jdbcTemplate.queryForObject(countString, 
					Integer.class, member.getId(), member.getPassword());
		
	}
	
	public void memberAdd(MemberVO member) {
		
		jdbcTemplate.update(insertString, 
				member.getId(), member.getName(), 
				member.getPassword(), member.getCertificate());
	}
	
	public void memberPasswordModify(MemberVO member, MemberVO testMember) {
		
		jdbcTemplate.update(modifyPassowrdString, member.getChangePassword(), 
								testMember.getId(), testMember.getPassword());
	}
	
	public void memberNameModify(MemberVO member, MemberVO testMember) {
		
		jdbcTemplate.update(modifyNameString, member.getName(), 
								testMember.getId(), testMember.getPassword());
		
		jdbcTemplate.update(modifyNameForBoardString, member.getName(), 
								testMember.getCertificate());
	}
	
	public void memberDelete(MemberVO member) {
		
		jdbcTemplate.update(deleteString, member.getId(), member.getPassword());
		
		jdbcTemplate.update(deleteForBoardString, member.getName(), member.getCertificate());
	}
	
	
	public boolean checkId(MemberVO member) {
		
		return jdbcTemplate.queryForObject(idCheck,  new RowMapper<Boolean>() {

			@Override
			public Boolean mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub
				
				return rs.getInt(1) == 1;
			}			
			
		},member.getId());
	}
	
	
	public boolean checkName(MemberVO member) {
		
		return jdbcTemplate.queryForObject(nameCheck,  new RowMapper<Boolean>() {

			@Override
			public Boolean mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub
				
				return rs.getInt(1) == 1;
			}			
			
		},member.getName());
	}
	
	public boolean getCertificate(final MemberVO member) {
		
		return jdbcTemplate.queryForObject(certificate, new RowMapper<Boolean>() {

			@Override
			public Boolean mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub
				
				member.setCertificate(rs.getString(1) + "");
				
				return rs.getRow() == 1;
			}
		}, member.getId(), member.getPassword());
	}
}
