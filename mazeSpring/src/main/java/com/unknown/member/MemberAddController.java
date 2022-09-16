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
import org.springframework.web.bind.annotation.RequestMapping;

import com.unknown.member.service.MemberAddService;


@Controller
public class MemberAddController {
	
	@Autowired
	MemberAddService memberAddService;
	
	@GetMapping("member/memberAdd")
	public String getMemberAdd(
			@Valid @ModelAttribute("memberInfo")MemberVO member,  
			Model model, HttpSession session, BindingResult br) {
				
		model.addAttribute("memberInfo", member);
		
		return "member/memberAdd";
	}
	
	@PostMapping("member/memberAdd")
	public String postMemberAdd(
			@Valid @ModelAttribute("memberInfo")MemberVO member,  
			BindingResult br,
			Model model, HttpSession session) {
			
		
		if(br.hasErrors())  
        {  
            return "member/memberAdd";  
        } else {
        	String toMove = memberAddService.memberAdd(model, member, session);
        	
        	return toMove;
        }
		
	}
}
