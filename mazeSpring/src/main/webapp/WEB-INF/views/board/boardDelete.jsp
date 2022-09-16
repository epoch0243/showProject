<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>      
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/input.css">
</head>
<body>
	<c:choose>
		<c:when test="${not empty loginMember }">
			<p>boardDelete</p>
			<form:form method="POST" action="./boardDelete?boardNum=${boardInfo.boardNum }" 
						modelAttribute="boardInfo">
				<form:hidden path="title"/>
				${boardInfo.title }을 삭제하시겠습니까?
				<input type="submit" value="삭제"/>
			</form:form>
		
		</c:when>
		
		<c:otherwise>			
			<form:form method="POST" action="./boardDelete?boardNum=${boardInfo.boardNum }" 
						modelAttribute="boardInfo">
						
				<input type="password" name="password"/>
				<input type="password" name="passwordConfirm"/>
				<input type="submit" value="삭제"/>
			</form:form>
		</c:otherwise>
	</c:choose>
	<p>boardDelete</p>
	
	
	<p id="msg" style="display:none">${msg}</p>
	<script type="text/javascript" src="../resources/js/message.js"></script>
</body>
</html>