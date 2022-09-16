package com.unknown.comment;

import java.util.Date;

public class CommentVO {
	
	private int boardNum;
	private int commentNum;
	private String wtier;
	private String password;
	private String message;	
	private Date date;
	
	
	public int getBoardNum() {
		return boardNum;
	}

	public void setBoardNum(int boardNum) {
		this.boardNum = boardNum;
	}
	
	public int getCommentNum() {
		return commentNum;
	}

	public void setCommentNum(int commentNum) {
		this.commentNum = commentNum;
	}

	public String getWtier() {
		return wtier;
	}

	public void setWtier(String wtier) {
		this.wtier = wtier;
	}
	
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}
		
}
