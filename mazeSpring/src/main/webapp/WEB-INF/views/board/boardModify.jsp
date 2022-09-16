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
				<h3>글 수정하기</h3>
				<button onclick="window.location='./boardSelect?boardNum=${boardInfo.boardNum}'">원본 보기</button>
				<button onclick="window.location='./boardList?boardNum=${boardInfo.boardNum}'">글 목록</button>
				<c:choose>
					<c:when test="${not empty loginMember}">		
						<form:form method="post" action="./boardModify?boardNum=${boardInfo.boardNum }" modelAttribute="boardInfo">
							<input type="hidden" name="boardNum" value="${boardInfo.boardNum }">
							<form:hidden path="title"/>
							<label>제목 : ${boardInfo.title }</label><br/>
							<label>글쓴이 : ${boardInfo.writer }</label><br/>
							<label>내용</label>
							<form:textarea rows="25" cols="50" path="content" style="width:400px; height:400px;"/>	<br/>
							<button type="submit">글 수정하기</button><br/>
						</form:form>
					</c:when>
							
					<c:otherwise>
						<form:form method="post" action="./boardModify?boardNum=${boardInfo.boardNum }" modelAttribute="boardInfo">							
							<input type="hidden" name="title" value="${boardInfo.title }">
							<label>제목 : ${boardInfo.title }</label><br/>
							<label>글쓴이 : ${boardInfo.writer }</label><br/>
							<label>비밀번호</label><form:input cssClass="springForm"  path="password"/><br/>
							<label>내용</label>
							<form:textarea rows="25" cols="50" path="content" style="width:400px; height:400px;"/>	<br/>
							<button type="submit">글 수정하기</button><br/>							
						</form:form>
					</c:otherwise>
				</c:choose>				
			</div>
			
		</div>
		
		<%@include file="../template/footer.jsp" %>
	</div>
	
	
	
	<p id="msg" style="display:none;">${msg }</p>
	<script type="text/javascript" src="../resources/js/message.js"></script>
</body>
</html>