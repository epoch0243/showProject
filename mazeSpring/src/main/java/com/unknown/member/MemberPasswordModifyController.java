package com.unknown.member;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.unknown.member.service.MemberPasswordModifyService;

@Controller
public class MemberPasswordModifyController {
	
	@Autowired
	MemberPasswordModifyService memberModifyService;
	
	@GetMapping("member/passwordModify")
	public String getMemberPasswordModify(
				Model model, 
				@ModelAttribute("memberInfo") MemberVO member, 
				BindingResult br,
				HttpSession session) {
		
		String toMove = memberModifyService.memberModify(model, member, session);
		
		return toMove;
	}
	
	@PostMapping("member/passwordModify")
	public String postMemberPasswordModify(
				Model model, 
				@Valid @ModelAttribute("memberInfo") MemberVO member, 
				BindingResult br,
				HttpSession session) {
		
		if(br.hasErrors())  
        {  
			
            return "member/passwordModify";  
        } else {
    		String toMove = memberModifyService.memberModify(model, member, session);
    		
    		return toMove;
        }

		
	}
}
