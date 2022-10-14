package com.unknowns.tech;

import java.io.File;
import java.io.IOException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;

import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;

public class TestMain {
	
    

	
	public static void main(String[] args) throws IOException, NoSuchAlgorithmException, NoSuchPaddingException, InvalidKeyException, InvalidAlgorithmParameterException, IllegalBlockSizeException, BadPaddingException {
				
		/*
		AnnotationConfigApplicationContext ctx = 
				new AnnotationConfigApplicationContext(AppCtx.class);
		
		NumberVO numberVO = ctx.getBean("numberVO", NumberVO.class);
		NumberRepository numberService = ctx.getBean("numberService", NumberRepository.class);
		
		numberVO.setNum("1204");
		numberService.insertNumber(numberVO);
		*/
		
		// System.out.println(System.getProperty("java.io.tmpdir"));		
		
		/*
		Pattern pattern = Pattern.compile("/^[ㄱ-ㅎ|가-힣|a-z|A-Z|0-9|]+$/");
	    Matcher matcher = pattern.matcher("Visit W3Schools!");
	    boolean matchFound = matcher.find();
	    if(matchFound) {
	      System.out.println("Match found");
	    } else {
	      System.out.println("Match not found");
	    }
	    
	    // String key = "Bar12345Bar12345Bar12345Bar12345";
	    String key = "";	    
	    String id = "kdfkla";
	    
		for (int i = 0; i < 24; i++) {
			key += id.charAt(i % id.length());
			System.out.println(id.charAt(i % id.length()));
		}
		
		System.out.println(id);
		System.out.println(key);

        SecretKeySpec aesKey = new SecretKeySpec(key.getBytes(), "AES");
        Cipher cipher = Cipher.getInstance("AES");

        cipher.init(Cipher.ENCRYPT_MODE, aesKey);
        byte[] encrypted = cipher.doFinal();
        
        key = encrypted.toString().substring(3);
        
        System.out.println(key);
        */
		
		System.out.println((22 / 11 ) * 10 + 1);
		
		String msg = "ppr2020{ebggbeebggbeebggbe}";
		int shift = -13;
	    String s = "";
	    
	    int len = msg.length();
	    for(int x = 0; x < len; x++){
	        char c = (char)(msg.charAt(x) + shift);
	        if (c > 'z')
	            s += (char)(msg.charAt(x) + (26-shift));
	        else
	            s += (char)(msg.charAt(x) + shift);
	    }
	    	    
	    System.out.println(s);
		
	}
	
		
}
