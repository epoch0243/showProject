<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
			<div id="boxes">
				<h3 style="margin-left:45%;">로그인</h3>
			    <form:form action="./memberLogin" method="post"
						modelAttribute="memberInfo">
					<div id="inputBox">
						<label>아이디</label><input type="text" name="id"/> <br/>
						<label>비밀번호</label><input type="password" name="password" /> <br/>	
						<div id="buttons">
							<button type="submit">로그인</button>
							<button onclick="window.location='./memberAdd';" style="float:left; margin-left:10%;">
							회원 가입</button>
						</div>						
					</div>				
				</form:form>
				
			</div>
		</div>
		
		<%@include file="../template/footer.jsp" %>
	</div>
	
	
	<p id="msg" style="display:none">${msg }</p>
	<script type="text/javascript" src="../resources/js/message.js"></script>
	<script type="text/javascript" src="../resources/js/boardList.js"></script>
	
	<!--
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	  -->
</body>
</html>