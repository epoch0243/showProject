package com.unknown.number;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class NumberService {
	
	@Autowired
	NumberRepository numberRepository;
	
	// @Transactional
	public void insertService(NumberVO numberVO) {
		
		for (int i=0; i < 10; i++) {
			numberVO.setNum(i + "");
			numberRepository.insertNumber(numberVO);			
		}
	}
	
	public NumberVO selectService(NumberVO numberVO) {
		System.out.println(numberVO.getNum());
		System.out.println(numberRepository + " is null");
		return numberRepository.selectNumber(numberVO);
	}
	
}
