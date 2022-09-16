<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>      
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/boardList.css"/>
</head>
<body>

	<div id="boardList">
		<h4>boardList</h4>
		<ul>
		<c:forEach items="${boardList}" var="value" >			
				<a href="../board/boardSelect?page=${boardInfo.getPage()}&boardNum=${value.boardNum}">
				<li>${value.boardNum } | ${value.writer } | ${value.title } | ${value.date }</li>
				</a>			
		</c:forEach>
		</ul>
	</div>
	<!--	
	<c:url value="../board/boardList" var="prevUrl">
	   <c:param name="page" value="${boardInfo.getPage() - 9 }" />
	</c:url>
	<c:url value="../board/boardList" var="nextUrl">
	   <c:param name="page" value="${boardInfo.getPage() + 10 }" />
	</c:url>
	 
	<c:if test="${boardInfo.getPage() >= 11 }">
		<a href="${prevUrl }"><- prev</a>
	</c:if>
	<c:forEach var = "page" begin="${pageMap.get(\"startPage\") }" end="${pageMap.get(\"endPage\") }" step="1">
	
		<c:if test="${memberInfo.getPage() == page }">
			<b><c:out value="${page }"/></b>
		</c:if>
         <a href="../board/boardList?page=${page}"><c:out value="${page }"/></a>
    </c:forEach>
    
    <c:if test="${boardInfo.getPage() <= pageMap.get(\"endPage\")}">
    	<a href="${nextUrl }">next -></a>
	</c:if>
	 -->
	<p id="msg" style="display:none;">${msg }</p>
	<script type="text/javascript" src="../resources/js/message.js"></script>
</body>
</html>