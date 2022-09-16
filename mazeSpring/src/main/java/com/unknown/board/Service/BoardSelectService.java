package com.unknown.board.Service;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.unknown.board.BoardVO;
import com.unknown.board.repository.BoardRepository;
import com.unknown.file.FileDownload;

@Service
public class BoardSelectService {
	
	@Autowired
	BoardRepository boardRepository;
	
	@Autowired
	FileDownload fileDownload;
	
	public String boardSelect(
			BoardVO board, HttpSession session) {
		
		boardRepository.selectBoard(board);
		
		
		return "board/boardSelect";
	}
	
}
