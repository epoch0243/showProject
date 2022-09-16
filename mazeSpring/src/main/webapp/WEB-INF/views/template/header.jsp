<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="../resources/css/navigation.css">
<link rel="stylesheet" href="../resources/css/template.css">
</head>
<body>
	<div id="headerArea">
                
	    <div id="logo">
	    	<a href="../">
	    		<img src="../resources/image/RE1Mu3b.png"/>
	    	</a>
	    </div>		
	    <div class="navigation">
	        <ul>
	            <li><a href="../"><span>Home</span></a></li>
	            <li><a href="../board/boardSearch"><span>게시판</span></a></li>
	            <li><a href="#"><span>Contact</span></a></li>
	            <li><a href="#"><span>About</span></a></li>
	        </ul>
	    </div>
		
	    <div id="headerRegeon">
	        
	        <div id="navSearch">
	        	<form:form id="search" style="display:none" 
                		action="../board/boardSearch" 
							method="post">
					
					<select name="sort">
						<option value="title">제목</option>
						<option value="writer">글쓴이</option>
					</select>
					<input name="command"/>
					
					<button type="submit">검색</button>
				</form:form>         
                <i class="fa fa-search" style="font-size:34px" onclick="changeShowHide()"></i>                
            </div>
            
         <c:choose>
		  <c:when test="${not empty loginMember}">
		  	
		  	<strong><label>${loginMember.getName() }</label></strong>
		  	<button onclick="window.location.href = '../member/memberInfo';">내 정보</button>
		  	<button onclick="window.location.href = '../member/memberLogout';">로그아웃</button>
		  </c:when>
		  <c:otherwise>
			  <a href="../member/memberLogin">
		        	<i class="fa fa-user-circle" style="font-size:32px"></i>
		      </a>	      
		  </c:otherwise>
		</c:choose>
	    </div>
	
     </div>
     
     <script src="../resources/js/showhide.js"></script>
</body>
</html>