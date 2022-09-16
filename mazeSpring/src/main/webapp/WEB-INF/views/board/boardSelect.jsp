<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/contents.css">
<link rel="stylesheet" href="../resources/css/template.css">
<link rel="stylesheet" href="../resources/css/boardSelect.css">

<link rel="stylesheet" href="../resources/css/input.css">
</head>
<body>
<div id="wrapper">
	<%@include file="../template/header.jsp" %>
		
	<div id="contents">		
		<div id="selectBoard">
			<h3 style="text-align: center;">글 확인</h3>			
			<table>
	            <tr>
	                <td id="number"><span>${boardInfo.boardNum } |</span></td>
	                <td id="title"><span>${boardInfo.title }</span></td>
	                <td></td>
	                <td id="createDate" colspan="3" style="float:right;"><span>작성일 : ${boardInfo.getDate() }</span></td>	                
	            </tr>
	            <tr>
	                <td><span>조회수 : ${boardInfo.boardCount } |</span></td>
	                <td></td>
	                <td></td>  
	                <td colspan="3" id="writer"><span>글쓴이 : ${boardInfo.writer }</span></td>	                
	            </tr>
	            <tr>
	                <td colspan="4" id="textContent"><span>${boardInfo.getContent() }</span></td>         
	            </tr>
	            <tr>
	                <td id="attachment"><span>첨부파일 |</span></td>
	                <td colspan="3">
	               	<c:forEach items="${listFile }" var="getFile" >
						<hr>					
						<a href="boardSelect?boardNum=${boardInfo.boardNum }&fileName=${getFile.getName()}">${getFile.getName()}</a>
						<hr>
					</c:forEach></td>
	            </tr>
	            <tr>
	            	<td style="height:50px;"></td>
	            </tr>
	            <tr style="padding-top: 100px;">
	            	<td><button onclick="window.location='../board/boardList?boardNum=${boardInfo.boardNum}'">글 목록</button></td>
	            	<td><button onclick="window.location='../board/boardAdd';">생성</button></td>
	            	<td><button onclick="window.location='../board/boardModify?boardNum=${boardInfo.boardNum}'">수정</button></td>
	            	<td><button onclick="window.location='../board/boardDelete?boardNum=${boardInfo.boardNum}'">삭제</button></td>
	            </tr>
	        </table>
		</div>		
		
	</div>

	<%@include file="../template/footer.jsp" %>
</div>	
	<!-- 
	<c:forEach items="" var="comment" >
		
	</c:forEach>
		 -->
	
</body>
</html>