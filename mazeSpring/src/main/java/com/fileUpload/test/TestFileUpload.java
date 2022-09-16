package com.fileUpload.test;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

@Controller

public class TestFileUpload {
	
	@GetMapping("/testfile") 
	public String getTestFileUpload(HttpSession session) {
		
		/*
		System.out.println(System.getProperty("user.home"));
		System.out.println(new File("").getAbsolutePath());
		String path = session.getServletContext().getRealPath("/");
		System.out.println(path);
		path.substring(path.indexOf("mazeSpring"));
		System.out.println(path);
		
		System.out.println(System.getProperty("os.name"));
		
				
		System.out.println(this.getClass().getPackage().getName());
		System.out.println();
		
		System.out.println(path.indexOf(".metadata"));
		System.out.println(
				path.substring(0, path.lastIndexOf("mazeSpring")));
		
		System.out.println(this.getClass().getResource("").getPath());
		*/
		return "fileUpload";
	}
	
	
	@RequestMapping(value = "/testfile", consumes = {"multipart/form-data"},
					method= RequestMethod.POST)
	public String testFileUpload(
			@ModelAttribute("test") TestVO testvo,
			Model model, HttpSession session) throws IOException {
		
		MultipartFile[] uploadFile = testvo.getUploadFile();		
		
		for (int i = 0; i < uploadFile.length; i++) {
					
			// System.out.println(session.getServletContext().getRealPath("/"));
			if(uploadFile != null && uploadFile.length >= 0) {
				String fileName = uploadFile[i].getOriginalFilename();
				
				System.out.println(fileName);
				
				String filePath = System.getProperty("user.home") + "/FileUpload/";
				File fileTest = new File(filePath + fileName);
				
				if (fileTest.isFile() || !fileTest.mkdirs()) { 
					
					int count = 0;					
					do {
						count++;
						fileTest = new File(filePath + 
								fileName.substring(0, fileName.lastIndexOf(".")) + 
								"(" + count + ")" + 
								fileName.substring(fileName.lastIndexOf(".")));
						System.out.println(fileTest.isFile());
					} while(fileTest.isFile());
					
					uploadFile[i].transferTo(fileTest);					
				} else {
					
					uploadFile[i].transferTo(fileTest);
				}
				
			}
		}
		
		
		return "/fileUpload";
	}
}
