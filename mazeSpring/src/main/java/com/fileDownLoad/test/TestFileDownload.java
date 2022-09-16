package com.fileDownLoad.test;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.junit.experimental.theories.ParametersSuppliedBy;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.fileUpload.test.TestVO;

@Controller
public class TestFileDownload {
	
	@RequestMapping(value="fileDownload")
	public String testFileDownload(
			@ModelAttribute("test") TestVO testvo, 
			Model model, HttpSession session, 
			@RequestParam(required = false) String fileName, 
			HttpServletResponse response) throws IOException {
						
		String path = System.getProperty("user.home") + "/FileUpload/";
		
		File findFiles = new File(path);
		File[] listFile = findFiles.listFiles();
		
		if (fileName != null) {
			response.setContentType("APPLICATION/OCTET-STREAM");
	        response.setHeader("Content-Disposition", "attachment; filename=" + fileName);
			
	        OutputStream out = response.getOutputStream();                
	        FileInputStream in = new FileInputStream(findFiles.getPath() + "/" + fileName);
	                
	        int i = 0;
	        
	        while ((i=in.read()) != -1) {  
	        	out.write(i);   
	    	}   
	    	in.close();   
	    	out.close();
		}
		
		model.addAttribute("listFile", listFile);
		
		return "fileDownload";
	}
	
}
