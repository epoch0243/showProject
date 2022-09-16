package com.unknown.aspect;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;

@Aspect
public class NumberAspect {
	
	@Pointcut("execution(* com.unknowns.tech..* (..))")
	public void publicTarget() {
		
	}
	
	@Before("publicTarget()")
	public void beforeAspect() {
		System.out.println("Before");
	}
	
	@Around("publicTarget()")
	public Object aroundAspect(ProceedingJoinPoint joinPoint) throws Throwable {
		try {
			
			System.out.println("Around Before");
			joinPoint.proceed();
			System.out.println("Around After");
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return joinPoint;
	}
	
	
	@After("publicTarget()")
	public void afterAspect() {
		System.out.println("After");
	}
}
