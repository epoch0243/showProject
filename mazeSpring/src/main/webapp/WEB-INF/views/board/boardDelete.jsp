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
<link rel="stylesheet" href="../resources/css/boardContents.css">

<link rel="stylesheet" href="../resources/css/input.css">
</head>
<body>
	
	<div id="wrapper">
		<%@include file="../template/header.jsp" %>
		
		<div id="contents">
			
			<div id="addMember">
			
				<h3>글 삭제하기</h3>
				<button onclick="window.location='./boardSelect?boardNum=${boardInfo.boardNum}'">원본 보기</button>				
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
									
							<label>비밀번호</label><form:password cssClass="springForm" showPassword="true" path="password"/>
							<label>비밀번호 확인</label><form:password cssClass="springForm" showPassword="true" path="passwordConfirm"/><br>
							
							<button type="submit">삭제</button>
						</form:form>
					</c:otherwise>
				</c:choose>
			</div>
			
		</div>
		
		<%@include file="../template/footer.jsp" %>
	</div>	
	
	<p id="msg" style="display:none">${msg}</p>
	<script type="text/javascript" src="../resources/js/message.js"></script>
</body>
</html>