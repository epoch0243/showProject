<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/memberInfo.css">
<link rel="stylesheet" href="../resources/css/contents.css">
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
	            <h3>비밀번호 변경</h3>	            
				<div class="inputBox">
					<form:form action="../member/passwordModify" method="post"
								modelAttribute="memberInfo">
						<div class="inputBox">
							<label>현재 비밀번호</label>  <input type="password" name="password">
							<form:errors path="password" cssClass="error"/><br/>
							<label>현재 비밀번호 확인</label> <input type="password" name="confirmPassword">
							<form:errors htmlEscape="false" cssClass="error"/><br/>						
							<label>변경할 비밀번호</label> <input type="password" name="changePassword">	<br/>
						</div>
						<button type="submit">변경</button>
					</form:form>
				</div>
	        </div>
       </div>
	
		<%@include file="../template/footer.jsp" %>
	</div>

<p id="msg" style="display:none">${msg }</p>
<script type="text/javascript" src="../resources/js/message.js"></script>
</body>
</html>