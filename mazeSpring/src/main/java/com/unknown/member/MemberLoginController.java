package com.unknown.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.unknown.member.service.MemberLoginService;

@Controller
public class MemberLoginController {
	
	@Autowired
	MemberLoginService loginService;
	
	@RequestMapping("member/memberLogin")
	public String login(
			Model model, 
			 @ModelAttribute("memberInfo") MemberVO member, 
			 HttpSession session) {
		
		String toMove = loginService.login(model, member, session);
		
		return toMove;
	}
}
