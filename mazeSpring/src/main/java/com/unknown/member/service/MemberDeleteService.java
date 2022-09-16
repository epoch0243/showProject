package com.unknown.member.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.unknown.member.MemberVO;
import com.unknown.member.repository.MemberRepository;

@Service
public class MemberDeleteService {
	
	@Autowired
	MemberRepository memberRepository;
	
	@Autowired
	MemberCheck memberCheck;
	
	public String memberDelete(
				Model model, 
				MemberVO member, HttpSession session) {
		
		MemberVO testMember = (MemberVO) session.getAttribute("loginMember");
				
		
		if (testMember != null && 
				 memberCheck.loginConfirm(testMember)) {
			
			memberCheck.setMemberConfirm(false);	
			
			if(memberCheck.passwordDelteCheck(member) && 
					 memberCheck.passwordConfirm(member, testMember)) {
				
				memberCheck.takeCertificate(testMember);
				
				memberRepository.memberDelete(testMember);
				
				memberCheck.removeCertificate(testMember);
				
				session.invalidate();
				
				model.addAttribute("msg", "계정이 삭제 되었습니다");
				
				return "member/memberLogin";
			} else {
				
				model.addAttribute("msg", "비밀번호가 일치하지 않습니다");
			}
			
			if (memberCheck.getMemberConfirm()) {
				
				model.addAttribute("msg", "비밀번호를 다시 입력 해 주세요");
				memberCheck.setMemberConfirm(false);
			}
			
			memberCheck.setMemberConfirm(true);			
			return "member/memberDelete";
		}
		
		return "redirect:../member/memberLogin";
	}
}
