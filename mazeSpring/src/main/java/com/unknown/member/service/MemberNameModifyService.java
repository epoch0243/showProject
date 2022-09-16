package com.unknown.member.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.unknown.board.repository.BoardRepository;
import com.unknown.member.MemberVO;
import com.unknown.member.repository.MemberRepository;

@Service
public class MemberNameModifyService {
	
	@Autowired
	MemberRepository memberRepository;
	
	@Autowired
	BoardRepository boardRepository;
	
	@Autowired
	MemberCheck memberCheck;
	
	
	public String memberNameModifyService(Model model, 
				MemberVO member, HttpSession session) {
		
		MemberVO testMember = (MemberVO) session.getAttribute("loginMember");
				
		if (testMember != null && 
				 memberCheck.loginConfirm(testMember)) {
			
			memberCheck.setMemberConfirm(false);
			
			if (member.getName() != null && 
					 !memberCheck.nameCheck(member)) {
				memberCheck.takeCertificate(testMember);
				
				memberRepository.memberNameModify(member, testMember);
				
				memberCheck.removeCertificate(testMember);
				
				session.invalidate();
				
				model.addAttribute("msg", "이름이 변경 되었습니다");
			} else {
				
				// model.addAttribute("msg", "이미 사용중인 이름입니다");
				return "member/nameModify";
			}
			
		} else {
			
			if (memberCheck.getMemberConfirm()) {
				
				model.addAttribute("msg", "이름을 다시 입력 해 주세요");
				memberCheck.setMemberConfirm(false);
			}
			
			memberCheck.setMemberConfirm(true);
			return "member/nameModify";
		}
		
		return "member/memberLogin";
	}
}
