package com.unknown.member.service;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.unknown.member.MemberVO;
import com.unknown.member.repository.MemberRepository;

@Component
public class MemberCheck {
	
	@Autowired
	private MemberRepository memberRepository;
	
	private Boolean confirm = false;
	
	public boolean idCheck(MemberVO member) {
		
		return memberRepository.checkId(member);
	}
	
	public boolean nameCheck(MemberVO member) {
		
		return memberRepository.checkName(member);
	}
	
	public boolean agreeCheck(MemberVO member) {
		return member.getAgree();
	}
	
	public boolean loginConfirm(MemberVO member) {
		
		return memberCheck(member);
	}
	
	public boolean passwordConfirm(MemberVO member, MemberVO testMember) {
		
		if(member.getPassword().equals(testMember.getPassword())) {
			
			return memberCheck(testMember);
		} else {
			return false;
		}
	}
	
	public boolean memberCheck(MemberVO testMember) {
		
		return (memberRepository.getMemberConfirm(testMember) 
					> 0 ? true : false);
	}
	
	public boolean formCheck(MemberVO member) {
		
		 return (member.getId() != null && member.getId() != "") && 
				 (member.getName() != null && member.getName() != "") && 
				 (member.getPassword() != null && member.getPassword() != "") && 
				 (member.getConfirmPassword() != null && member.getConfirmPassword() != "");
	}
	
	public boolean passwordModifyCheck(MemberVO member) {
		
		if (member.getPassword() != null && member.getPassword() != "" && 
				 member.getConfirmPassword() != null && member.getConfirmPassword() != "" && 
				 member.getChangePassword() != null && member.getChangePassword() != "") {
			
			return true;
		} else {
			
			return false;
		}
		
	}
	
	public boolean passwordDelteCheck(MemberVO member) {
		if (member.getPassword() != null && member.getPassword() != "" && 
				 member.getConfirmPassword() != null && member.getConfirmPassword() != "") {
			
			return true;
		} else {
			
			return false;
		}
	}
	
	public Boolean getMemberConfirm() {
		return confirm;
	}

	public void setMemberConfirm(Boolean memberConfirm) {
		this.confirm = memberConfirm;
	}
	
	public void takeCertificate(MemberVO member) {
		
		memberRepository.getCertificate(member);
	}
	
	public void removeCertificate(MemberVO member) {
		
		member.setCertificate(null);
	}
}
