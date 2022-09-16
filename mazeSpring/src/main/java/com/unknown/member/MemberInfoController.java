package com.unknown.member;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberInfoController {
	
	@RequestMapping("member/memberInfo")
	public String memberInfoController(Model model, 
			@ModelAttribute("memberInfo")MemberVO member, 
			HttpSession session) {
		
		
		return "member/memberInfo";
	}
}
