<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h2>hellow I'm number :)</h2>
	
	<form:form action="number" method="post"
				modelAttribute="numberInfo">
	
		<input type="text" name="num" />
		<input type="submit" value="확인" />
	</form:form>
	
	<p>${numberInfo.num }</p>
</body>
</html>