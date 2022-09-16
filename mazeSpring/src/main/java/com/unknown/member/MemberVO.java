package com.unknown.member;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.validation.constraints.AssertTrue;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.ScriptAssert;


@Entity
@ScriptAssert(
		lang = "javascript", 
		script = " !(_this.password != null || "
				+ " _this.confirmPassword != null) || "
				+ " _this.password.equals(_this.confirmPassword) ", 
		message="비밀번호와 비밀번호 확인이 일치하지 않습니다")
public class MemberVO {	
	
	@Column(length = 20, nullable = false, name = "id")
	@Size(min=4, max=16, message = "ID(아이디)는 4~16자리로 입력 해 주세요")
	@Pattern(regexp = "^[a-z|A-Z|0-9|]+$", message = "영어와 숫자만 입력 해 주세요 특수문자는 사용할 수 없습니다")
	private String id;
	
	@Column(length = 20, nullable = false, name = "name")
	@Size(min=4, max=16, message = "이름은 4~16자리로 입력 해 주세요")
	@Pattern(regexp = "^[ㄱ-ㅎ|가-힣|a-z|A-Z|0-9|]+$", message = "이름은 특수문자를 사용할 수 없습니다")
	private String name;
	
	@Size(min=4, max=16, message = "비밀번호는 4~16자리로 입력 해 주세요")
	@Pattern(regexp = "[a-z|A-Z|0-9|]+$", message = "사용할 수 없는 비밀번호 입니다")
	private String password;
	private String confirmPassword;
	
	private String changePassword;
	private String certificate;
		
	// @AssertTrue(message = "이용약관에 동의하셔야 계정을 생성할 수 있습니다")
	private boolean agree;
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getConfirmPassword() {
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}
	
	public String getChangePassword() {
		return changePassword;
	}

	public void setChangePassword(String changePassword) {
		this.changePassword = changePassword;
	}
	
	public String getCertificate() {
		return certificate;
	}

	public void setCertificate(String certificate) {
		this.certificate = certificate;
	}
	
	
	public boolean getAgree() {
		return agree;
	}

	public void setAgree(boolean agree) {
		this.agree = agree;
	}
	
	
}
