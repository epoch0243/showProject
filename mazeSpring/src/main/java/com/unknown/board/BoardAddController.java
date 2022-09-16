package com.unknown.board;

import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.unknown.board.Service.BoardAddService;
import com.unknown.file.FileUpload;
import com.unknown.member.MemberVO;

@Controller
public class BoardAddController {
	
	@Autowired	
	BoardAddService boardAddService;
	
	@Autowired
	FileUpload fileUpload;
	
	@GetMapping("board/boardAdd")
	public String getBoardAdd(Model model, 
			@ModelAttribute("boardInfo") BoardVO board, 
			HttpSession session) throws IllegalStateException, IOException {
		
				
		String toMove = boardAddService.boardAddService(model, board, session);
		
		
		return toMove;
	}	
	
	
	@RequestMapping(value="board/boardAdd", consumes ={"multipart/form-data"})
	public String boardAdd(Model model, 
			@ModelAttribute("boardInfo") BoardVO board, 
			HttpSession session) throws IllegalStateException, IOException {
		
		
		String toMove = boardAddService.boardAddService(model, board, session);
		
		fileUpload.fileUpload(board);
		
		
		return toMove;
	}
}
