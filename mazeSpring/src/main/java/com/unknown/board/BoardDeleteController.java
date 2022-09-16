package com.unknown.board;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.unknown.board.Service.BoardDeleteService;

@Controller
public class BoardDeleteController {
	
	@Autowired
	BoardDeleteService boardDeleteService;
	
	@RequestMapping("board/boardDelete")
	public String boardDelete(
			Model model, 
			@ModelAttribute("boardInfo") BoardVO board, 
			HttpSession session) {
		
		String toMove = boardDeleteService.boardDelete(model, board, session);
				
		
		return toMove;
	}
}
