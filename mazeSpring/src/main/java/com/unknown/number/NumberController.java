package com.unknown.number;

import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

import org.apache.tomcat.util.codec.binary.Base64;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class NumberController {
	
	@Autowired
	NumberService numberService;
	
	private final String encKeyString = "1234567890123456";
	byte[] iv = new byte[16];
	IvParameterSpec spec = new IvParameterSpec(iv);
	
		
	@RequestMapping("/number")
	public String numberControll(
			@ModelAttribute("numberInfo") NumberVO number,
					ModelAndView mav) throws Exception { 
		
		String takeValue;
		
		if(number.getNum() != null && 
				(number.getNum().trim().length() > 0)) {
			/*			
			takeValue = encrypt(number.getNum());
			takeValue = decrypt(takeValue);
			*/
			
			// numberService.insertService(number);			
			number = numberService.selectService(number);
			// number.setNum(takeValue);
					
		} 
		
		mav.setViewName("number");
		
		return mav.getViewName();
	}
	
	public String encrypt(String toEnc) throws Exception {
		
		Cipher cip = Cipher.getInstance("AES/CBC/PKCS5Padding");		
		SecretKey secretKey = new SecretKeySpec(encKeyString.getBytes(), "AES");	
		
		cip.init(cip.ENCRYPT_MODE, secretKey, spec);
		byte[] encryp = cip.doFinal(toEnc.getBytes("UTF-8"));
		
		return new String(Base64.encodeBase64(encryp));
	}
	
	public String decrypt(String toDec) throws Exception {
		
		Cipher cip = Cipher.getInstance("AES/CBC/PKCS5Padding");
		SecretKey secretKey = new SecretKeySpec(encKeyString.getBytes(), "AES");
		
		cip.init(cip.DECRYPT_MODE, secretKey, spec);
		byte[] decryp = Base64.decodeBase64(toDec.getBytes()); 
		
		return new String(cip.doFinal(decryp));
	}
}
