<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<P>  The time on the server is ${serverTime}.</P>
<P>data from mysql database: ${data}.</P>
<p id="show"></p>
<script src="resources/js/testHome.js"></script>

<c:redirect url="main/main" />
</body>
</html>