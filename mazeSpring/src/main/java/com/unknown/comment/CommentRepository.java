package com.unknown.comment;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;


public class CommentRepository {
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	private String commentForBoard = " SELECT comments.writer, comments.message, comments.date "
			+ " FROM boards INNER JOIN comments "
			+ " ON boards.boardnum = comments.boardnum where boards.boardnum=? ";
	
	private String commentInsert = " INSERT INTO comments(boardnum, writer, password, message) "
								 + " VALUES(>, ?, ?, ?)";
	
	private String commentInsertAcc = " INSERT INTO comments(boardnum, writer, message) "
									+ " VALUES(?, ?, ?)";
	
	private String commentDelete = "DELETE FROM comments where commentnum=? and password=?";
	
	private String commentDeleteAcc = "DELETE FROM comments where commentnum=?";
	
	public List<CommentVO> commentForBoard(int boardNum, final CommentVO comment) {
		
		final List<CommentVO> listComment = new ArrayList<CommentVO>();
		
		return jdbcTemplate.queryForObject(commentForBoard, new RowMapper<List<CommentVO>>() {

			@Override
			public List<CommentVO> mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub
				
				CommentVO commentToList = comment;
				commentToList.setBoardNum(rs.getInt(1));
				commentToList.setWtier(rs.getString(2));
				commentToList.setPassword(rs.getString(3));
				commentToList.setMessage(rs.getString(4));
				commentToList.setDate(rs.getDate(5));
								
				listComment.add(commentToList);
				
				return listComment;
			}
			
		}, boardNum);
	}
	
	public void commentInsert(int boardNum, CommentVO comment) {
		
		jdbcTemplate.update(commentInsert, boardNum, 
				comment.getWtier(), comment.getPassword(), 
				comment.getMessage(), comment.getMessage());
	}
	
	public void commentInsertAcc(int boardNum, CommentVO comment) {
		
		jdbcTemplate.update(commentInsertAcc, 
				boardNum, comment.getWtier(), comment.getMessage());
	}	
	
	public void commentDelete(CommentVO comment) {
		jdbcTemplate.update(commentDelete, comment.getCommentNum(), comment.getPassword());
	}
	
	public void commentDeleteAcc(CommentVO comment) {
		jdbcTemplate.update(commentDeleteAcc, comment.getCommentNum());
	}
}
