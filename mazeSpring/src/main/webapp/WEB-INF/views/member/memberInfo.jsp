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
<link rel="stylesheet" href="../resources/css/memberInfo.css">
<link rel="stylesheet" href="../resources/css/navigation.css">
<link rel="stylesheet" href="../resources/css/template.css">

<link rel="stylesheet" href="../resources/css/input.css">
</head>
<body>
	<div id="wrapper">
		<%@include file="../template/header.jsp" %>
		
		<div id="contents">
			<div id="memberInfoes">
			    <div class="selectMemberFunction">
			        <a href="../member/nameModify"><label>이름 변경</label></a>
			    </div>
			    <div class="selectMemberFunction">
			        <a href="../member/passwordModify"><label>비밀번호 변경</label></a>
			    </div>
			    <div class="selectMemberFunction">
			        <a href="../member/memberDelete"><label>계정 삭제</label></a>
			    </div>
			</div>

	         <div id="memberBoxes">
	             <h3>이름 변경</h3>
	             <form:form action="../member/nameModify" method="post"
							modelAttribute="memberInfo">
				<div class="inputBox">
					<form:input path="name"/>
					<form:errors path="name" cssClass="error"/>
				</div>
				<button type="submit">변경</button>
				</form:form>
	         </div>
         </div>
		
		<%@include file="../template/footer.jsp" %>
	</div>
</body>
</html>