package com.unknown.chipher;

public class CaesarCipher {
	
	public String caesarChipher(String msg){
		
		int num = 5;
		String encrypt = "";
				
		
		for (int i = 0; i < msg.length(); i++) {
			char c = (char)(msg.charAt(i) + num);
						
			if (c >= 'z' || c >= 'Z') {
				encrypt += (char)(msg.charAt(i) - (26-num)) ;
			} else {
				encrypt += c;
			}
			
		}
		
		return encrypt;
	}
}
