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
public class BoardDeleteService {
	
	@Autowired
	BoardRepository boardRepository;
	
	@Autowired
	BoardCheck boardCheck;
	
	@Autowired
	MemberCheck memberCheck;
	
	public String boardDelete(
			Model model, BoardVO board, HttpSession session) {
		
		MemberVO testMember = (MemberVO) session.getAttribute("loginMember");
		
		if (boardCheck.changeLoad(board)) {
			
			if (testMember != null && memberCheck.loginConfirm(testMember)) {
				
				memberCheck.takeCertificate(testMember);
				board.setCertificate(testMember.getCertificate());
				
				 if (testMember.getCertificate() != null) {
					board.setWriter(testMember.getName());
					
					boardRepository.deleteBoardAcc(board, testMember);
					
					board = null;
					memberCheck.removeCertificate(testMember);
				}
				
			} else if (boardCheck.getPasswordInput(board) && 
					 boardCheck.passwordConfirm(board)) {
				
				boardRepository.deleteBoard(board);			
				
			} else {
				
				if(boardCheck.getBoardConfirm()) {
					model.addAttribute("msg", "비밀번호를 다시 입력 해 주세요.");
					boardCheck.setBoardConfirm(false);
				}
				
				boardCheck.setBoardConfirm(true);
				
				return "board/boardDelete";
			}
			
		}
		
		model.addAttribute("msg", "글이 삭제 되었습니다");
		
		return "forward:boardList";
	}
	
}
