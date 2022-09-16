package com.unknown.member.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.unknown.chipher.CaesarCipher;
import com.unknown.member.MemberVO;
import com.unknown.member.repository.MemberRepository;

@Service
public class MemberAddService {
	
	 @Autowired
	 MemberRepository memberRepository;
	 
	 @Autowired
	 MemberCheck memberCheck;
	 
	 public String memberAdd(Model model, 
			 MemberVO member, HttpSession session) {
		 		 
		if(memberCheck.idCheck(member)) {
			 
			model.addAttribute("idMessage", "이미 사용중인 ID입니다 다른 ID로 변경 해 주세요");
			 
		} else if(memberCheck.nameCheck(member)) {
			 
			model.addAttribute("nameMessage", "이미 사용중인 이름입니다 다른 이름으로 변경 해 주세요");
		
		} else if(!memberCheck.agreeCheck(member)) {
			
			model.addAttribute("agreeMessage", "이용햑관에 동의하셔야 계정을 생성할 수 있습니다.");			
		} else if (memberCheck.formCheck(member)) {
			 
			 CaesarCipher caesar = new CaesarCipher();
			 member.setCertificate(
					 caesar.caesarChipher(
							 member.getId()));
			 
			 memberRepository.memberAdd(member);
			 model.addAttribute("msg", "계정이 등록 되었습니다");
			 
			 
			 return "member/memberLogin";
		} 
		
		 
		memberCheck.setMemberConfirm(false);
		 
		if (memberCheck.getMemberConfirm()) {
			model.addAttribute("msg", "정보를 다시 입력 해 주세요");
			memberCheck.setMemberConfirm(false);
		}
		 
		memberCheck.setMemberConfirm(true);
		return "member/memberAdd";
	}
	 
}
