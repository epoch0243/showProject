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
public class BoardSearchService {
	
	@Autowired
	BoardRepository boardRepository;
	
	@Autowired
	BoardCheck boardCheck;
	
	public String boardSearchService(
						Model model, BoardVO board, 
						 BoardSearchVO boardSearch, 
						 HttpSession session) {
		
		List<BoardVO> boardList = new ArrayList<BoardVO>();
		
		HashMap<String, Integer> pageMap = boardCheck.setBoardPage(board);
		
		
		if(boardSearch.getSort() != null && 
				 (boardSearch.getCommand() != null && boardSearch.getCommand() != "")) {
			
			if (boardSearch.getSort().equals("title")) {
				
				boardList = boardRepository.titleList(boardSearch, pageMap.get("limitRow"));
			} else if(boardSearch.getSort().equals("writer")) {
				
				boardList = boardRepository.writerList(boardSearch, pageMap.get("limitRow"));
			}
			
		} else {
			boardList = boardRepository.boardSearchList(pageMap.get("limitRow"));
		}
				
		session.setAttribute("pageMap", pageMap);
		session.setAttribute("boardList", boardList);
		
		return "board/boardSearch";
	}
}
