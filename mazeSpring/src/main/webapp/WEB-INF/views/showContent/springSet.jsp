<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/memberInfo.css">
<link rel="stylesheet" href="../resources/css/contents.css">
<link rel="stylesheet" href="../resources/css/navigation.css">
<link rel="stylesheet" href="../resources/css/remote.css">
</head>
<body>

	<div id="wrapper">
	
		<%@include file="../template/header.jsp" %>
		<div id="contents">
	        <div id="memberInfoes">
	            <div class="selectMemberFunction">
	                <b><label>스프링 설정</label></b>
	            </div>
	            <div class="selectMemberFunction">
	                <a href="../codeReview/memberCode"><label>계정 생성 코드</label></a>
	            </div>
	            <div class="selectMemberFunction">
	                <a href="../codeReview/boardCode"><label>게시판 생성 코드</label></a>
	            </div>
	        </div>
	        
	        <div id="memberBoxes">
	            <h3>스프링 설정</h3>
	
	            <h3 id="docBoard1">1. 소개</h3>
	            <img src="../resources/image/codeReview/springSet/installed_springboot.JPG" alt="">
	            <p>
	                해당 프로젝트는 <br>
	                이클립스 스프링 부트의 도움을 받았습니다 <br>
	                PMD는 시큐어코딩이 무엇인지 <br>
	                간단하게 알아볼때 다운로드 받았습니다 <br>
	            </p>
	            <br><br><br><br><br>
	            <h3 id="docBoard2">2. 파일 목록</h3>
	            <img src="../resources/image/codeReview/springSet/directoryStructure.JPG" alt="">
	            <br><br><br><br><br>
	
	            <h3 id="docBoard3">3. web.xml</h3>
	            <img src="../resources/image/codeReview/springSet/springSet_web.jpg" alt=""
	            width="750px">
	            <h4>web.xml 설명</h4>
	            <p>
	                제가 직접 사용한 코드는 <br>
	                스프링 xml을 추가하려고 <br>
	                context-param -> param-value의 값을 <br>
	                추가한 것 밖에 없습니다 <br>                        
	            </p>
	            <p>
	                utf-8인코딩 필터는 <br>
	                예전에 servlet책을 보면서 공부할때 <br>
	                정확하게 어떤 기능인지는 모르나 <br>
	                한글설정 할때 사용해서 <br>
	                인터넷에서 검색하여 붙였습니다 <br>
	            </p>
	
	            <br><br><br><br><br>
	
	            <h3 id="docBoard4">4-1. 스프링 dependency 목록</h3>
	            <img src="../resources/image/codeReview/springSet/springSet_pomDependencies.JPG" alt="">
	            
	            <h3>4-2. 스프링 dependency pom.xml</h3>
	            <img src="../resources/image/codeReview/springSet/springSet_pomxml.JPG" alt=""
	            width="750px">
	            <h4>스프링 dependency 설명</h4>
	            <p>
	                홈페이지 프로젝트는 maven을 사용했어요  <br>
	                java 버전은 컴퓨터에 설치된 버전을 사용하고  <br>
	                나머지 버전은 maven dependency홈페이지에서  <br>
	                검색해가지고 아무 버전이나 골라서 설정했습니다 <br>
	                <br><br><br><br><br>
	
	            <h3 id="docBoard5">5. 스프링 context</h3>
	            <img src="../resources/image/codeReview/springSet/springSet_servlet-context.jpg" alt=""
	            width="750px">
	            <img src="../resources/image/codeReview/springSet/springSet_applicationContext-context.jpg" alt=""
	            width="750px">
	            <h4>스프링 context.xml 설명</h4>
	            <p>                        
	                servlet-context.xml은 제가 만든 <br>
	                pakage를 스프링 빈으로 등록하기위해 사용했고 <br>
	                
	            </p>
	
	            <p>
	                applicationContext.xml은 스프링에 있는 기능들을 <br>
	                스프링 빈으로 등록하려고 사용했습니다 <br>
	            </p>
	
	            <p>
	                java 코드로 Context어노테이션을 사용할 수도 있지만  <br>
	                저는 xml이 보는것과 설정이 쉬운 것 <br>
	                같아서 xml을 선택하였습니다 <br>
	            </p>
	
	            <p>
	                jdbcTemplate는 sql의 설정을 단순화 하는 클래스이고 <br>
	                transactionManager를 설정하여 트랜잭션을 적용해주고 <br>
	                id가 "txAdvice"인 스프링 빈으로 <br>
	                transactionManager와 aop를 연결해서 범위를 설정 해 주었습니다 <br>
	
	            </p>
	
	            <p>
	                그리고 aop는 테스트 전용으로 사용하다가  <br>
	                어디에 사용할지 모르겠어서 적용하지 않았습니다 <br>
	                
	                그리고 MultipartResolver는  <br>
	                파일업로드를 도와주는 클래스라서 추가했습니다 <br>
	            </p>
	        </div>

	        <div id="remote">
	            <ul>
	                <a href="#docBoard1"><li>1. 소개</li></a>
	                <a href="#docBoard2"><li>2. 파일 목록</li></a>
	                <a href="#docBoard3"><li>3. web.xml</li></a>
	                <a href="#docBoard4"><li>4. 스프링 dependency</li></a>
	                <a href="#docBoard5"><li>5. 스프링 context</li></a>
	            </ul>
	        </div>
	
        </div>
	               
		<%@include file="../template/footer.jsp" %>
		
	</div>
	
</body>
</html>