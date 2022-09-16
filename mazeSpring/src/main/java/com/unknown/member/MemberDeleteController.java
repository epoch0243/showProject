package com.unknown.member;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.unknown.member.service.MemberDeleteService;

@Controller
public class MemberDeleteController {
	
	@Autowired
	MemberDeleteService memberDeleteService;
	
	
	@RequestMapping("member/memberDelete")
	public String postMemberDelete( 
				Model model, 
				@Valid @ModelAttribute("memberInfo")MemberVO member, 
				BindingResult br,
				HttpSession session) {
		

		if(br.hasErrors())  
        {  
			
            return "member/memberDelete";  
        } else {
        	String toMove = memberDeleteService.memberDelete(model, member, session);
        	
        	return toMove;
        }
		
	}
}
