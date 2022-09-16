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
	<form:form action="testfile" method="post" modelAttribute="test"
				enctype="multipart/form-data">
		<input type="file" name="uploadFile" multiple/>
		<input type="submit" value="업로드"/>
	</form:form>
</body>
</html>