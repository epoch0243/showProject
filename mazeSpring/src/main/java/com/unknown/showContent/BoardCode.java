package com.unknown.showContent;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class BoardCode {
	
	@GetMapping("showContent/boardCode")
	public String getBoardCode() {
		
		return "showContent/boardCode";
	}
	
	@PostMapping("showContent/boardCode")
	public String postBoardCode() {
		
		return "showContent/boardCode";
	}
}
