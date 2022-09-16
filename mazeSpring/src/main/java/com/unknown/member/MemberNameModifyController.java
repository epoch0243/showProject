package com.unknown.member;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.unknown.member.service.MemberNameModifyService;

@Controller
public class MemberNameModifyController {
	
	@Autowired
	MemberNameModifyService memberNameModifyService;
	
	@RequestMapping("member/nameModify")
	public String memberNameModifyController(
				Model model, 
				@Valid @ModelAttribute("memberInfo")MemberVO member, 
				BindingResult br,
				HttpSession session) {
		
		if(br.hasErrors())  
        {  
			
            return "member/nameModify";  
        } else {
				
			String toMove = 
					memberNameModifyService.memberNameModifyService(model, member, session);
			
					
			return toMove;
        }
	}
}
