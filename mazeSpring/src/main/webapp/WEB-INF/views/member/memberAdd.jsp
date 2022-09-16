<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/contents.css">
<link rel="stylesheet" href="../resources/css/navigation.css">
<link rel="stylesheet" href="../resources/css/template.css">

<link rel="stylesheet" href="../resources/css/input.css">
</head>
<body>
	<div id="wrapper">
		<%@include file="../template/header.jsp" %>
		
		<div id="contents">
			<div id="addMember">
			<h3>회원가입</h3>
			<form:form id="memberForm" action="./memberAdd" method="post" modelAttribute="memberInfo">
				
				<label>아이디</label><form:input cssClass="springForm" path="id" onchange="this.form.submit()"/><br/>
				<label id="idMessage" class="error">${idMessage }</label><br/>
				<form:errors path="id" cssClass="error"/> <br/>
				
				<label>이름</label><form:input cssClass="springForm" path="name" onchange="this.form.submit()" /><br/>
				<span id="nameMessage" class="error">${nameMessage }</span> <br/>
				<form:errors path="name" cssClass="error"/> <br/>
				
				<label>비밀번호</label><form:input cssClass="springForm" path="password" onchange="this.form.submit()" /><br/> 
				<form:errors path="password" cssClass="error"/> <br/>
				<label>비밀번호 확인</label>
				<form:input class="inputBox" cssClass="springForm" path="confirmPassword" onchange="this.form.submit()" /> <br/>
				<form:errors htmlEscape="false" cssClass="error"/><br/>
			 
				<label>가입 동의</label><form:checkbox cssClass="agreeBox" path="agree"/><br/>
				<form:errors path="agree" cssClass="error" /><br/>
				<span id="agreeMessage" class="error">${agreeMessage }</span><br/>
				<div id="buttons">
					<button type="submit">회원 가입</button>					
				</div>
			</form:form>
			</div>
		</div>
		<%@include file="../template/footer.jsp" %>
		
	</div>
	
	<p id="msg" style="display:none">${msg }</p>
	<script type="text/javascript" src="../resources/js/message.js"></script>	
</body>
</html>