package com.unknown.board;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.unknown.board.Service.BoardSelectService;
import com.unknown.file.FileDownload;

@Controller
public class BoardSelectController {
	
	@Autowired
	BoardSelectService boardSelectService;
	
	@Autowired
	FileDownload fileDownload;

	@RequestMapping("board/boardSelect")
	public String boardList(
			Model model,
			@ModelAttribute("boardInfo") BoardVO board,
			@RequestParam(required=false) String fileName, 
			HttpSession session, 
			HttpServletResponse response) throws IOException {
		
		
		String toMove = boardSelectService.boardSelect(board, session);
		fileDownload.fileDownload(model, board, fileName, response);
		
		
		return toMove;
	}
}
