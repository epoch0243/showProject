package com.unknown.exception;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

import com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException;

// @ControllerAdvice("com.unknown.board")
public class GiveMeException {
	
	// @ExceptionHandler
	public String duplicateException(Model model) {
		
		model.addAttribute("idMessage", "잘못된 요청입니다.");
		
		System.out.println("model");
		
		return "/";
	}	
}
