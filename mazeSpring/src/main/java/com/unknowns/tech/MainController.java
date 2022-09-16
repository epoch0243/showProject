package com.unknowns.tech;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	
	@RequestMapping("main/main")
	public String requestMain(Model model) {
		
		
		return "main/main";
	}

}
