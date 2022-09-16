package com.unknown.file;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

import com.unknown.board.BoardVO;

@Component
public class FileDownload {
	
	public void fileDownload(Model model, BoardVO board, 
							 String fileName, 
							 HttpServletResponse response) throws IOException {
		
		String boardFolder = board.getBoardNum() + "_board/";
		String path = System.getProperty("user.home") + "/FileUpload/" + boardFolder;
		
		File findFiles = new File(path);
		
		File[] listFile = findFiles.listFiles();
		
		if (fileName != null) {
			// response.setContentType("APPLICATION/OCTET-STREAM");
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
		
	}
}
