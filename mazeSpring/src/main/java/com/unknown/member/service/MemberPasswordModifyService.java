package com.unknown.member.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.unknown.member.MemberVO;
import com.unknown.member.repository.MemberRepository;

@Service
public class MemberPasswordModifyService {
	
	@Autowired
	MemberRepository memberRepository;
	
	@Autowired
	MemberCheck memberCheck;
	
	public String memberModify(
				Model model, 
				MemberVO member, HttpSession session) {
		
		MemberVO testMember = (MemberVO) session.getAttribute("loginMember");
				
		if (testMember != null && 
				 memberCheck.passwordModifyCheck(member)) {
			
			memberCheck.setMemberConfirm(false);
						
			if(memberCheck.loginConfirm(testMember) && 
					 memberCheck.passwordConfirm(member, testMember)) {
				
				memberCheck.takeCertificate(testMember);
				
				memberRepository.memberPasswordModify(member, testMember);		
				
				memberCheck.removeCertificate(testMember);
				
				session.invalidate();
				model.addAttribute("msg", "비밀번호가 변경 되었습니다");
			} else {
				
				model.addAttribute("msg", "잘못된 비밀번호 입니다");
				return "member/passwordModify";
			}
		} else {
			
			if (memberCheck.getMemberConfirm()) {
				
				model.addAttribute("msg", "비밀번호를 다시 입력 해 주세요");
				memberCheck.setMemberConfirm(false);
			}
			
			memberCheck.setMemberConfirm(true);
			return "member/passwordModify";
		}
		
		return "member/memberLogin";
	}
}
