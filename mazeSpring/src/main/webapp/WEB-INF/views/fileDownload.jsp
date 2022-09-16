<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page trimDirectiveWhitespaces="true" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		
	<c:forEach items="${listFile}" var="value" >
		<a href="fileDownload?fileName=${value.getName() }">
		<img src="${value.getPath()}"/>
		</a>
	</c:forEach>	
</body>
</html>