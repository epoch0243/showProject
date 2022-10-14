<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/memberInfo.css">
<link rel="stylesheet" href="../resources/css/contents.css">
<link rel="stylesheet" href="../resources/css/navigation.css">
<link rel="stylesheet" href="../resources/css/about.css">
</head>
<body>

	<div id="wrapper">
		<%@include file="../template/header.jsp" %>
		
		<div id="contents">
		                              
			<div id="memberBoxes">
			    <h3>홈페이지 소개</h3>
			    
				<h4>홈페이지 기능</h4>
				<div class="divTable">
					<div class="divTr">
					    <div class="divTd">
					        <b><span>프로그래밍 언어</span></b>
					    </div>
					    <div class="divTd">
					        <span>Java</span>
					    </div>                            
					</div>
			    	<div class="divTr" style="margin-top: 10%;">
					    <div class="divTd">
					        <b><span>데이터베이스</span></b>
					    </div>
					    <div class="divTd">
					        <span>MySQL 5.7</span>
					    </div>                            
					</div>
					
					<div class="divTr" style="margin-top: 10%;">
					    <div class="divTd">
					        <b><span>회원 기능</span></b>
					    </div>
					    <div class="divTd">
					        <span>회원 가입</span>
					    </div>                            
					</div>
					<div class="divTr">
					    <div class="divTd">
					        
					    </div>
					    <div class="divTd">
					        <span>회원 탈퇴</span>
					    </div>
					</div>
					<div class="divTr">
					    <div class="divTd">
					        
					    </div>
					    <div class="divTd">
					        <span>회원 이름 변경</span>
					    </div>
					</div>
					<div class="divTr">
					    <div class="divTd">
					        
					    </div>
					    <div class="divTd">
					        <span>회원 비밀번호 변경</span>
					    </div>
					</div>
							
					<div class="divTr" style="margin-top: 10%;">
				        <div class="divTd">
				            <b><span>게시판 기능</span></b>
				        </div>
				        <div class="divTd">
				            <span>글 작성</span>
				        </div>                 
					    </div>
					    <div class="divTr">
					        <div class="divTd">
					            
					        </div>
					        <div class="divTd">
					            <span>글 삭제</span>
					        </div>
					    </div>
					    <div class="divTr">
					        <div class="divTd">
					            
					        </div>
					        <div class="divTd">
					            <span>글 내용 수정</span>
					        </div>
					    </div>
					    <div class="divTr">
					        <div class="divTd">
					            
					        </div>
					        <div class="divTd">
					            <span>글 목록</span>
					        </div>
					    </div>
					    <div class="divTr">
					        <div class="divTd">
					            
					        </div>
					        <div class="divTd">
					            <span>글 검색</span>
					        </div>
					    </div>
					</div>
					
			</div>
		
		</div>
		
		<%@include file="../template/footer.jsp" %>
	</div>

</body>
</html>