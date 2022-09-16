package com.unknown.board.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.unknown.board.BoardSearchVO;
import com.unknown.board.BoardVO;
import com.unknown.board.repository.BoardRepository;

@Service
public class BoardListService {
	
	@Autowired
	BoardRepository boardRepository;
	
	@Autowired
	BoardCheck boardCheck;
	
	public String boardList(
						Model model, BoardVO board, 
						 BoardSearchVO boardSearch, 
						 HttpSession session) {
		
		HashMap<String, Integer> pageMap = boardCheck.setBoardPage(board);
				
		List<BoardVO> boardList = new ArrayList<BoardVO>();
		boardList = boardRepository.boardList(pageMap.get("limitRow"));
		
		
		session.setAttribute("pageMap", pageMap);
		session.setAttribute("boardList", boardList);
		
		return "board/boardList";
	}
}
