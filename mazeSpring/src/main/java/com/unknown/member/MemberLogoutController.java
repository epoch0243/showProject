package com.unknown.member;

import java.net.http.HttpResponse;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.HttpRequestHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.unknown.member.service.MemberLogoutService;

@Controller
public class MemberLogoutController {
	
	@Autowired
	MemberLogoutService memberLogoutService;
	
	@RequestMapping("member/memberLogout")
	public String memberLogout(
				@ModelAttribute("memberInfo") MemberVO member, 
				Model model, HttpSession session) {
		
		String toMove = memberLogoutService.memberLogoutService(member, session);
		
		
		return toMove;
	}
}
