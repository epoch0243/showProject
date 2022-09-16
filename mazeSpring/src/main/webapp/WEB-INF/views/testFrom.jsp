<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="<c:url value="/resources/css/input.css" />" rel="stylesheet">
<style>
</style>
</head>
<body>
<div class="inputBox">
<input placeholder="Enter some text" name="name"/>
<p id="log"></p>
</div>
<div class="inputBox">
<input placeholder="Enter some text" name="name2"/>
<p id="log2"></p>
</div>


<script src="resources/js/testForm.js"></script>
</body>
</html>