package com.unknowns.tech;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	
	@RequestMapping("main/main")
	public String requestMain(Model model, HttpSession session) {
		
		return "main/main";
	}

}
