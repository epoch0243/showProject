package com.unknown.showContent;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class SpringSet {
	
	@GetMapping("showContent/springSet")
	public String getSpringSet() {
		
		return "showContent/springSet";
	}
	
	@PostMapping("showContent/springSet")
	public String postSpringSet() {
		
		return "showContent/springSet";
	}
}
