<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="../resources/css/boardSearch.css"/>
</head>
<body>

	<div id="wrapper">
		<%@ include file="../template/header.jsp" %>
            
		<div id="contents">
			<div id="boardSearchList">
				<c:url value="../board/boardSearch" var="prevUrl">
				   <c:param name="page" value="${boardInfo.getPage() - 9 }" />
				</c:url>
				<c:url value="../board/boardSearch" var="nextUrl">
				   <c:param name="page" value="${boardInfo.getPage() + 10 }" />
				</c:url>
				<h3>boardList</h3>
				<div id="boardNav">
					<div id="boardSearch">
						<form:form action="../board/boardSearch" 
									method="post" modelAttribute="boardSearch">
									
									<form:select path="sort">
										<form:option value="title">제목</form:option>
										<form:option value="writer">글쓴이</form:option>					
									</form:select>
									<form:input path="command"/>
									
									<input type="submit" value="제출">
						</form:form>												
					</div>
					<div id="boardOption">
							<button onclick="window.location='../board/boardAdd';">글 작성</button>
					</div>	
				</div>
				<div class="divTable">
					<div id="tableColumn">
						<div class="divTr">
							<div class="divTd">
								<span>번호</span>
							</div>
							<div class="divTd">
								<span>제목</span>
							</div>
							<div class="divTd">
								<span>작성자</span>
							</div>
							<div class="divTd">
								<span>날짜</span>
							</div>
						</div>
					</div>
					<div id="tableRows">
						<c:forEach items="${boardList}" var="value" >
							<a href="../board/boardSelect?page=${boardInfo.getPage()}&boardNum=${value.boardNum}">
								<div class="divTr">								
									<div class="divTd">
										<span>${value.boardNum }</span>
									</div>
									<div class="divTd">
										<span>${value.title }</span>
									</div>
									<div class="divTd">
										<span>${value.writer }</span>
									</div>
									<div class="divTd">
										<span>${value.date }</span>
									</div>							
								</div>
							</a>
						
						</c:forEach>
					</div>
				</div>
				
				<div id="pages">				
					<c:if test="${boardInfo.getPage() >= 11 }">
						<a href="${prevUrl }"><- prev</a>
					</c:if>
					<c:forEach var = "page" begin="${pageMap.get(\"startPage\") }" end="${pageMap.get(\"endPage\") }" step="1">
						<c:choose>
						<c:when test="${boardInfo.getPage() == page }">
							<b><span style="font-size: 25px;"><c:out value="${page }"/></span></b>
						</c:when>
						<c:otherwise>
						<a href="../board/boardSearch?page=${page}&sort=${boardSearch.sort }&command=${boardSearch.command}">
						<span><c:out value="${page }"/></span></a>
						</c:otherwise>
						</c:choose>
						
				    </c:forEach>			    
				    <c:if test="${boardInfo.getPage() <= pageMap.get(\"endPage\")}">
				    	<a href="${nextUrl }">next -></a>
					</c:if>
					
				</div>
				
			</div>
		</div>
		
		<%@ include file="../template/footer.jsp" %>
	</div>
	
	<p id="msg" style="display:none;">${msg }</p>
	<script type="text/javascript" src="../resources/js/message.js"></script>
</body>
</html>