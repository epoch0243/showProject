package com.unknown.config;


import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.EnableAspectJAutoProxy;

import com.unknown.aspect.NumberAspect;
import com.unknown.number.NumberVO;
import com.unknowns.tech.Babo;

@Configuration
@EnableAspectJAutoProxy
public class AppCtx {
		
	@Bean
	public Babo babo() {
		return new Babo();
	}
	
	@Bean
	public NumberVO numberVO() {
		return new NumberVO();
	}
	
	@Bean
	public NumberAspect numberAspect() {
		return new NumberAspect();
	}
}
