package com.fileUpload.test;

import org.springframework.web.multipart.MultipartFile;

public class TestVO {
	
	private MultipartFile[] uploadFile;

	public MultipartFile[] getUploadFile() {
		return uploadFile;
	}

	public void setUploadFile(MultipartFile[] uploadFile) {
		this.uploadFile = uploadFile;
	}
}
