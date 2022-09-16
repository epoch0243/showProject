package com.unknown.board;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.unknown.board.Service.BoardModifyService;

@Controller
public class BoardModifyController {
	
	@Autowired
	BoardModifyService boardModifyService;
	
	@RequestMapping("board/boardModify")
	public String postBoardModify(
			Model model, 
			@ModelAttribute("boardInfo") BoardVO board, 
			HttpSession session) {
		
		
		String toMove = boardModifyService.boardModify(model, board, session);
		
		
		
		return toMove;
	}
}
