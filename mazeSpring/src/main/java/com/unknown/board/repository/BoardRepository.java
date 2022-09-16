package com.unknown.board.repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.unknown.board.BoardSearchVO;
import com.unknown.board.BoardVO;
import com.unknown.member.MemberVO;

@Repository
public class BoardRepository {
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
		
	private String selectBoardList = " SELECT * FROM boards ORDER BY boardnum DESC LIMIT ?, 5";
	private String selectBoard = " SELECT * FROM boards WHERE boardnum=? ";
	
	private String defaultSearchList = " SELECT * FROM boards ORDER BY boardnum DESC LIMIT ?, 10";
	private String titleSelect = " SELECT * FROM boards WHERE title=? ORDER BY boardnum DESC LIMIT ?, 10 ";
	private String writeSelect = " SELECT * FROM boards WHERE write=? ORDER BY boardnum DESC LIMIT ?, 10 ";
	private String selectCount = " UPDATE boards set count=count+1 where boardnum=? ";
		
	private String insertBoard = 
			" INSERT INTO boards(title, writer, content, password) values(?, ?, ?, ?) ";
	
	private String insertBoardAcc = 
			" INSERT INTO boards(title, writer, content, password, certificate) values(?, ?, ?, ?, ?) ";
	
	private String updateBoard = 
			" UPDATE boards SET content=? WHERE boardnum = ? AND password = ?";
	
	private String updateBoardAcc = 
			" UPDATE boards SET content=? WHERE boardnum = ? AND certificate= ?";
	
	private String deleteBoard = 
			" DELETE FROM boards WHERE boardnum =? AND password = ? ";
	
	private String deleteBoardAcc = 
			" DELETE FROM boards WHERE boardnum =? AND certificate = ?";
	
	private String countBoard = 
			" SELECT COUNT(*) FROM boards WHERE boardnum = ? AND password = ? ";
	
	private String boardAllCount = 
			" SELECT COUNT(*) FROM boards; ";
	
	private String maxBoardNum = 
			" SELECT MAX(boardnum) from boards ";
	
	public List<BoardVO> boardList(int limitRow) {
		
		final List<BoardVO> listForBoard = new ArrayList<BoardVO>(); 
		
		jdbcTemplate.query(selectBoardList, new RowMapper<List<BoardVO>>() {

			@Override
			public List<BoardVO> mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub
				
				BoardVO boardTolist = new BoardVO();
				
				boardTolist.setBoardNum(rs.getInt(1));
				boardTolist.setTitle(rs.getString(2));
				boardTolist.setWriter(rs.getString(3));
				boardTolist.setDate(rs.getDate(4));
				
				listForBoard.add(boardTolist);
				
				return listForBoard;
			}
		}, limitRow);
		
		return listForBoard; 
	}
	
	public BoardVO selectBoard(final BoardVO board) {
		
		return jdbcTemplate.queryForObject(selectBoard, new RowMapper<BoardVO>() {
			
			@Override
			public BoardVO mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub
				
				board.setBoardNum(rs.getInt(1));
				board.setTitle(rs.getString(2));		
				board.setWriter(rs.getString(3));
				board.setDate(rs.getDate(4));
				board.setBoardCount(rs.getInt(5));
				board.setContent(rs.getString(6));
				
				selectCount(board);
				
				return board;
			}
			
		}, board.getBoardNum());
	}
	
	public void selectCount(BoardVO board) {
		
		jdbcTemplate.update(selectCount, board.getBoardNum());
	}
	
	public List<BoardVO> boardSearchList(int limitRow) {
		
		final List<BoardVO> listForBoard = new ArrayList<BoardVO>(); 
		
		jdbcTemplate.query(defaultSearchList, new RowMapper<List<BoardVO>>() {

			@Override
			public List<BoardVO> mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub
				
				BoardVO boardTolist = new BoardVO();
				
				boardTolist.setBoardNum(rs.getInt(1));
				boardTolist.setTitle(rs.getString(2));
				boardTolist.setWriter(rs.getString(3));
				boardTolist.setDate(rs.getDate(4));
				
				listForBoard.add(boardTolist);
				
				return listForBoard;
			}
		}, limitRow);
		
		return listForBoard; 
	}

	public List<BoardVO> titleList(BoardSearchVO boardSearch, int limit) {
		
		final List<BoardVO> listForBoard = new ArrayList<BoardVO>(); 
		
		jdbcTemplate.query(titleSelect, new RowMapper<List<BoardVO>>() {

			@Override
			public List<BoardVO> mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub
				
				BoardVO boardTolist = new BoardVO();
				
				boardTolist.setBoardNum(rs.getInt(1));
				boardTolist.setTitle(rs.getString(2));
				boardTolist.setWriter(rs.getString(3));
				boardTolist.setDate(rs.getDate(4));
				
				listForBoard.add(boardTolist);
				
				return listForBoard;
			}
		}, boardSearch.getCommand(), limit);
		
		return listForBoard; 
	}
	
	public List<BoardVO> writerList(BoardSearchVO boardSearch, int limit) {
		
		final List<BoardVO> listForBoard = new ArrayList<BoardVO>(); 
		
		jdbcTemplate.query(writeSelect, new RowMapper<List<BoardVO>>() {

			@Override
			public List<BoardVO> mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub
				
				BoardVO boardTolist = new BoardVO();
				
				boardTolist.setBoardNum(rs.getInt(1));
				boardTolist.setTitle(rs.getString(2));
				boardTolist.setWriter(rs.getString(3));
				boardTolist.setDate(rs.getDate(4));
				
				listForBoard.add(boardTolist);
				
				return listForBoard;
			}
		}, boardSearch.getCommand(), limit);
		
		return listForBoard; 
	}
	
	public void addBoard(BoardVO board) {
		
		jdbcTemplate.update(insertBoard, 
			board.getTitle(), board.getWriter(), board.getContent(), 
			board.getPassword());
	}
	
	public void addBoardAcc(BoardVO board, MemberVO member) {
		
		jdbcTemplate.update(insertBoardAcc, 
				board.getTitle(), member.getName(), 
				board.getContent(), board.getPassword(), member.getCertificate());
	}
	
	public Integer maxBoardNum() {
		
		return jdbcTemplate.queryForObject(maxBoardNum, new RowMapper<Integer>(){

			@Override
			public Integer mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub
				BoardVO board = new BoardVO();
				board.setBoardNum(rs.getInt(1));
				
				return board.getBoardNum();
			}
			
		});
	}
	
	public void updateBoard(BoardVO board) {
		
		jdbcTemplate.update(updateBoard, 
				board.getContent(), board.getBoardNum(), 
				board.getPassword());
	}
	
	public void updateBoardAcc(BoardVO board , MemberVO member) {
		
		jdbcTemplate.update(updateBoardAcc, 
				board.getContent(), board.getBoardNum(), member.getCertificate());
	}
	
	public void deleteBoard(BoardVO board) {
		
		jdbcTemplate.update(deleteBoard, board.getBoardNum(), 
				board.getPassword());
	}
	
	public void deleteBoardAcc(BoardVO board, MemberVO member) {
		
		jdbcTemplate.update(deleteBoardAcc, board.getBoardNum(), member.getCertificate());
	}
	
	public Boolean boardConfirm(BoardVO board) {
		
		return jdbcTemplate.queryForObject(countBoard, new RowMapper<Boolean>() {

			@Override
			public Boolean mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub
								
				return rs.getInt(1) == 1;
			}
			
		}, board.getBoardNum(), board.getPassword());
	}
	
	public int boardAllCount() {
		
		return jdbcTemplate.queryForObject(boardAllCount, new RowMapper<Integer>() {

			@Override
			public Integer mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub
								
				return rs.getInt(1);
			}
			
		});
	}
}
