package com.unknown.member.service;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.unknown.member.MemberVO;

@Service
public class MemberLogoutService {
	
	public String memberLogoutService(
			MemberVO member, 
			HttpSession session) {
		
		
		if(session != null) {
	        session.removeAttribute("loginMember");
			session.invalidate();
	    }
		
		
		return "redirect:memberLogin";
	}
}
