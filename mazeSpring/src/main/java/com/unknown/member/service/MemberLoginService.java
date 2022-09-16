package com.unknown.member.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.unknown.member.MemberVO;
import com.unknown.member.repository.MemberRepository;

@Service
public class MemberLoginService {
	
	@Autowired
	private MemberRepository memberRepository;
	
	@Autowired
	private MemberCheck memberLoginCheck;
	
	public String login(MemberVO member, HttpSession session) {
			
		if(memberLoginCheck.loginConfirm(member)) {
			
			memberRepository.memberlogin(member);
						
			session.setAttribute("loginMember", member);
			session.setMaxInactiveInterval(60 * 30);
			
		}
		
		return "member/memberLogin";
		
	}
	
	
	/*
	public void logout(MemberVO member) {
		
		checkLogin = false;
		
		member.setId(null);
		member.setName(null);
		member.setPassword(null);
	}
	*/
}
