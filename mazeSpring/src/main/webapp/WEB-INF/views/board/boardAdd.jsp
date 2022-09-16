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
				<h3>글 작성하기</h3>
				<c:choose>
				  <c:when test="${not empty loginMember}">
				  	<form:form method="post" action="./boardAdd" 
							   modelAttribute="boardInfo" enctype="multipart/form-data" >
						
						<label>제목</label><form:input cssClass="springForm"  path="title"/><br/>
						<label>글쓴이 ${loginMember.name }</label><br/>
						<label>내용</label><form:textarea  rows="25" cols="50" path="content" style="width:400px; height:400px;"/>	<br/>			
						<label>첨부파일</label><input class="file" type="file" name="uploadFile" multiple/><br/>
						<button type="submit">글 작성</button><br/>
					</form:form>
				  </c:when>
				  <c:otherwise>
				    <form:form method="post" action="./boardAdd" 
							   modelAttribute="boardInfo" enctype="multipart/form-data" >
						
						<label>제목</label><form:input cssClass="springForm"  path="title"/><br/>
						<label>글쓴이</label><form:input cssClass="springForm"  path="writer"/><br/>
						<label>비밀번호</label><form:input cssClass="springForm"  path="password"/><br/>
						<label>내용</label><form:textarea rows="25" cols="50" path="content" style="width:400px; height:400px;"/>	<br/>			
						<label>첨부파일</label><input class="file"  type="file" name="uploadFile" multiple/><br/>
						<button type="submit">글 작성</button><br/>		
					</form:form>
				  </c:otherwise>
				</c:choose>
			</div>
		</div>
		<%@include file="../template/footer.jsp" %>
		
	</div>
	
	<div id="loadForm"></div>
	<script type="text/javascript" src="../resources/js/idAndName.js"></script>
	
	<p id="msg" style="display:none">${msg }</p>
	<script type="text/javascript" src="../resources/js/message.js"></script>
</body>
</html>