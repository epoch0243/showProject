package com.unknown.file;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import com.unknown.board.BoardVO;
import com.unknown.board.repository.BoardRepository;

@Component
public class FileUpload {
	
	@Autowired
	BoardRepository boardRepository;
	
	public void fileUpload(BoardVO board) throws IllegalStateException, IOException {
		
		board.setBoardNum(boardRepository.maxBoardNum());
		
		String os = System.getProperty("os.name").toLowerCase();
		MultipartFile[] uploadFile = board.getUploadFile();
		String boardFolder = board.getBoardNum() + "_board/";
		
		String filePath = "";
		
		if (os.indexOf("linux") >= 0) {
			
			filePath = "/home/ubuntu" + "/FileUpload/";
		} else {
			
			filePath = System.getProperty("user.home") + "/FileUpload/";			
		}
		String boardPath = filePath + boardFolder;
		
		File boardMaker = new File(boardPath);
		Files.createDirectory(boardMaker.toPath());
		
		
		
		if (board.getUploadFile() != null && 
				 board.getUploadFile().length > 0) {
			for (int i = 0; i < uploadFile.length; i++) {
				
				// System.out.println(session.getServletContext().getRealPath("/"));
				if(uploadFile != null && uploadFile.length >= 0) {
					String fileName = uploadFile[i].getOriginalFilename();
										
					File fileTest = new File(boardPath + fileName);
						
					if (fileTest.isFile()) { 
						
						int count = 0;					
						do {
							count++;
							fileTest = new File(filePath + 
									fileName.substring(0, fileName.lastIndexOf(".")) + 
									"(" + count + ")" + 
									fileName.substring(fileName.lastIndexOf(".")));
							
						} while(fileTest.isFile());
												
						uploadFile[i].transferTo(fileTest);	
					} else {
											
						uploadFile[i].transferTo(fileTest);
					}
					
				}
			}
		}
		
	}
}
