<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8"%>
<html>
<head>
	<title>Home</title>	
</head>
<body>

<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}.</P>
<P>data from mysql database: ${data}.</P>
<p id="show"></p>
<script src="resources/js/testHome.js"></script>
</body>
</html>
