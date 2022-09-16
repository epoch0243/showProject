package com.unknown.board;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.unknown.board.Service.BoardListService;

@Controller
public class BoardListController {
	
	@Autowired
	BoardListService boardListService;

	@RequestMapping("board/boardList")
	public String boardList(Model model, 
					@ModelAttribute("boardInfo") BoardVO board, 
					@ModelAttribute("boardSearch") BoardSearchVO boardSearch,
					HttpSession session) {
		
		String toMove = boardListService.boardList(
							model, board, 
							boardSearch, session);
		
		
		return toMove;
	}
}
