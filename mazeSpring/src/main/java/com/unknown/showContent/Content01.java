package com.unknown.showContent;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class Content01 {
	
	@GetMapping("showContent/content01")
	public String getContent01() {
		
		return "showContent/content01";
	}
	
	@PostMapping("showContent/content01")
	public String postContent01() {
		
		return "showContent/content01";
	}
	
}
