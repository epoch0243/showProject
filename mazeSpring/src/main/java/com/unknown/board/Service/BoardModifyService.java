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
public class BoardModifyService {
	
	@Autowired
	BoardRepository boardRepository;
	
	@Autowired
	BoardCheck boardCheck;
	
	@Autowired
	MemberCheck memberCheck;
	
	public String boardModify(Model model, BoardVO board, HttpSession session) {
		
		MemberVO testMember = (MemberVO) session.getAttribute("loginMember");		
		
		if (boardCheck.changeLoad(board)) {	
			
			if (testMember != null && 
					 memberCheck.loginConfirm(testMember) && 
					 boardCheck.addCheckForAcc(board, session)) {
				
				memberCheck.takeCertificate(testMember);
				board.setCertificate(testMember.getCertificate());
				
				 if (testMember.getCertificate() != null) {
					board.setWriter(testMember.getName());
					
					boardRepository.updateBoardAcc(board, testMember);
					
					board = null;
					memberCheck.removeCertificate(testMember);
				}
				
			} else if (boardCheck.changeCheck(board)) {
					
				boardRepository.updateBoard(board);
					
			} else {
				
				if (boardCheck.getBoardConfirm()) {	
					model.addAttribute("msg", "다시 입력 해 주세요");
					boardCheck.setBoardConfirm(false);
				} 
				
				boardCheck.setBoardConfirm(true);
				boardRepository.selectBoard(board);
				
				return "board/boardModify";
			}
			
		}
		
		model.addAttribute("msg", "글이 수정 되었습니다");
		
		return "forward:boardList";
	}
}