package com.unknown.about;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class AboutPage {
	
	
	@GetMapping("about/about")
	public String getAbout() {
		
		return "about/about";
	}
	
	@PostMapping("about/about")
	public String postAbout() {
		
		return "about/about";
	}
}
