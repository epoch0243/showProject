package com.unknown.showContent;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class TakeREST {
	
	@GetMapping("showContent/takeREST")
	public String getTakeREST() {
		
		return "showContent/takeREST";
	}
	
	@PostMapping("showContent/takeREST")
	public String postTakeREST() {
		
		return "showContent/takeREST";
	}
	
}
