package com.unknown.showContent;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class MemberCode {
	
	@GetMapping("showContent/memberCode")
	public String getMemberCode() {
		
		return "showContent/memberCode";
	}
	
	@PostMapping("showContent/memberCode")
	public String postMemberCode() {
		
		return "showContent/memberCode";
	}
	
}
