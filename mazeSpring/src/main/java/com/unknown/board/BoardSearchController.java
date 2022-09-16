package com.unknown.board;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.unknown.board.Service.BoardSearchService;

@Controller
public class BoardSearchController {
	
	@Autowired
	BoardSearchService boardSearchService;
	
	
	@RequestMapping("board/boardSearch")
	public String boardSearch(Model model, 
					@ModelAttribute("boardInfo")BoardVO board, 
					@ModelAttribute("boardSearch")BoardSearchVO boardSearch, 
					HttpSession session) {
		
		String toMove = boardSearchService.boardSearchService(
														model, board,
														boardSearch, session);
		
		return "board/boardSearch";
	}
}
