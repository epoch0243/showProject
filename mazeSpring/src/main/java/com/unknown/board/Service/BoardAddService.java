package com.unknown.board.Service;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.unknown.board.BoardVO;
import com.unknown.board.repository.BoardRepository;
import com.unknown.member.MemberVO;
import com.unknown.member.service.MemberCheck;

@Service
public class BoardAddService {
	
	@Autowired
	BoardRepository boardRepository;
	
	@Autowired
	MemberCheck memberCheck;
	
	@Autowired
	BoardCheck boardCheck;
	
	public String boardAddService(
			Model model, 
			BoardVO board, HttpSession session) {
		
		if (boardCheck.addFormCheck(board)) {
			
			boardRepository.addBoard(board);
			
		} else if (boardCheck.addCheckForAcc(board, session)) {
			
			
			MemberVO testMember = (MemberVO) session.getAttribute("loginMember");
			
			if (memberCheck.loginConfirm(testMember)) {
				
				
				memberCheck.takeCertificate(testMember);
				
				board.setPassword(boardCheck.addBoardPassword(testMember));
				
				
				
				boardRepository.addBoardAcc(board, testMember);
				
				
				board.setPassword(null);
				memberCheck.removeCertificate(testMember);
			}
			
		} else {
			
			if (boardCheck.getBoardConfirm()) {
				
				model.addAttribute("msg", "정보를 다시 입력 해 주세요.");
				boardCheck.setBoardConfirm(false);
			}
			boardCheck.setBoardConfirm(true);
			
			return "board/boardAdd";
		}
		
		
		
		model.addAttribute("msg", "글이 등록 되었습니다");
		
		return "forward:boardList";
	}
}
