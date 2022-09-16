package com.unknown.file;

import java.io.File;
import java.io.IOException;

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
		
		MultipartFile[] uploadFile = board.getUploadFile();
		String boardFolder = board.getBoardNum() + "_board/";
		String filePath = System.getProperty("user.home") ;
		
		File boardMaker = new File(filePath + "/FileUpload/" + boardFolder);
		
		
		if (!boardMaker.mkdirs() &&
				 board.getUploadFile() != null && 
				 board.getUploadFile().length <= 0) {
			for (int i = 0; i < uploadFile.length; i++) {
				
				// System.out.println(session.getServletContext().getRealPath("/"));
				if(uploadFile != null && uploadFile.length >= 0) {
					String fileName = uploadFile[i].getOriginalFilename();
										
					File fileTest = new File(filePath + fileName);
						
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
