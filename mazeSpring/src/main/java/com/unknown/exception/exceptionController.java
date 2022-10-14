package com.unknown.exception;

import java.net.ConnectException;
import java.sql.SQLException;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class exceptionController {
	
	
	@ExceptionHandler(SQLException.class)
	public String sqlException() {
		
		
		return "/exception/errorSQL";
	}
	
}
