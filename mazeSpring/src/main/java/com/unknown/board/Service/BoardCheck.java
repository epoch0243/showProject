package com.unknown.board.Service;

import java.util.HashMap;

import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.unknown.board.BoardVO;
import com.unknown.board.repository.BoardRepository;
import com.unknown.member.MemberVO;
import com.unknown.member.service.MemberCheck;

@Component
public class BoardCheck {
	
	@Autowired
	BoardRepository boardRepository;
	
	@Autowired
	MemberCheck memberCheck;
	
	Boolean boardConfirm = false;
	
	private static Cipher cipher;
	
	public HashMap<String, Integer> setBoardPage(BoardVO board) {
		
		HashMap<String, Integer> pageMap = new HashMap<String, Integer>();
		
		int totalPage = (boardRepository.boardAllCount() / 10) + 1;
		board.setPage(board.getPage());
		
		int startPage = (board.getPage() / 11) * 10 + 1;
		int endPage = 0;
		int limitRow = 0;
		
		if (endPage >= totalPage) {
			endPage = totalPage;
		} else {
			endPage = startPage + 9;
		}
		
		if (board.getPage() < 1) {
			limitRow = 0;
			board.setPage(1);
		} else if (totalPage <= board.getPage()) {
			limitRow = (totalPage * 10) - 10;
			
			endPage = totalPage;
			startPage = endPage - 11;
			board.setPage(totalPage);
		} else {
			limitRow = (board.getPage() - 1) * 10;
		}
		
		pageMap.put("startPage", startPage);
		pageMap.put("endPage", endPage);
		pageMap.put("limitRow", limitRow);
		pageMap.put("totalPage", totalPage);
		
		return pageMap;
	}
		
	public boolean addFormCheck(BoardVO board) {
		
		return board.getTitle() != null && 
				 board.getTitle() != "" && 
				 board.getContent() != null && 
				 board.getContent() != "" && 
				 board.getPassword() != null && 
				 board.getPassword() != "";
		
	}
	
	public boolean addCheckForAcc(
			BoardVO board, HttpSession session) {
		
		return board.getTitle() != null && 
				 board.getTitle() != "" && 
				 board.getContent() != null && 
				 board.getContent() != "" && 
				 session.getAttribute("loginMember") != null;
	}

	
	public Boolean changeLoad(
			BoardVO board) {
		
		if (board.getBoardNum() != null || 
			 board.getBoardNum() >= 0) {
			
			return true;
		} else {
			
			return false;
		}
	}
	
	public Boolean changeCheck(
			BoardVO board) {
		
		if (addFormCheck(board)) {
			
			return boardRepository.boardConfirm(board);
		} else {
			
			return false;
		}
	}
	
	public Boolean passwordConfirm(BoardVO board) {
		
		if (board.getPassword().equals(board.getPasswordConfirm())) {
			
			return boardRepository.boardConfirm(board);
		}
		
		return false;
	}

	public Boolean getBoardConfirm() {
		return boardConfirm;
	}

	public void setBoardConfirm(Boolean boardConfirm) {
		this.boardConfirm = boardConfirm;
	}
	
	public String addBoardPassword(MemberVO member) {
				
		String key = "";
		
		for (int i = 0; i < 24; i++) {
			key += member.getId().charAt(i % member.getId().length());
		}

        SecretKeySpec aesKey = new SecretKeySpec(key.getBytes(), "AES");
        
        try {
        	
        	Cipher cipher = Cipher.getInstance("AES");

            cipher.init(Cipher.ENCRYPT_MODE, aesKey);
            byte[] encrypted = cipher.doFinal();
            key = encrypted.toString().substring(3);
        	
        } catch(Exception e) {
        	e.printStackTrace();
        }
        
        return key;
	}
}
