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
<link rel="stylesheet" href="../resources/css/remote.css">
</head>
<body>
	
	<div id="wrapper">
		<%@include file="../template/header.jsp" %>
		
		<div id="contents">
              	<div id="memberInfoes">
		            <div class="selectMemberFunction">
		                <a href="../codeReview/springSet"><label>스프링 설정</label></a>
		            </div>
		            <div class="selectMemberFunction">
		                <b><label>계정 생성 코드</label></b>
		            </div>
		            <div class="selectMemberFunction">
		                <a href="../codeReview/boardCode"><label>게시판 생성 코드</label></a>
		            </div>
	        	</div>
                
                <div id="memberBoxes">
                    <h3>계정 생성 코드</h3>
                    <br><br>
                    <h3 id="docBoard1">1. 패키지 구조</h3>
                    <img src="../resources/image/codeReview/memberStruct/projectTosrc_main_java.JPG" alt="">
                    <br><br><br><br><br>
                    <h3 id="docBoard2">2. 계정 구성</h3>
                    <img src="../resources/image/codeReview/memberStruct/memberAttr.JPG" alt="">
                    <p>
                        스프링을 공부하면서 검색할때 <br>
                        하이버네이트(hibernate)라고 사용자가 입력한 것을<br>
                        검사하는 기능이 있다고 해서 <br>
                        다른분들이 만든것을 복사하고 참고해서 만들었습니다<br>                        
                    </p>
                    <p>
                        인터넷 예제중에서 <br>
                        하이버네이트로 인터페이스를 implements해서 <br>
                        유효성(validate)를 검사하는 것도 있었는데 <br>
                        그런 예제는 작동방식이 이해가 잘 안되고 <br>
                        무작정 복사 붙여넣기를 할 수 없어서 <br>
                        간단하게 어노테이션만 사용하였습니다 <br>
                    </p>
                    <br><br><br><br><br>
                    
                    <h3 id="docBoard3">3. jsp파일</h3>
                    <img src="../resources/image/codeReview/memberStruct/memberAdd_jsp.JPG" alt=""
                    width="750px">
                    <p>
                        html의 코드중복 때문에 jsp include기능을 사용하여<br>
                        header와 footer를 불러왔고<br>                        
                    </p>
                    <p>
                        53번째 줄에있는 p 태그는 <br>
                        사용자가 이해하기 쉽게 javascript의 alert를 출력하려고 <br>
                        css로 숨긴다음에 controller에서 처리한 모델 또는 세션으로 값을 받는 태그입니다<br>
                    </p>
                    <p>
                        54번째 줄에있는 javascript 태그는 <br>
                        사용자에게 보여줄 알림을 출력합니다 <br>
                    </p>
                    <br><br><br><br><br>

                    <h3 id="docBoard4">4. 계정 Controller</h3>
                    <img src="../resources/image/codeReview/memberStruct/memberAdd_controller.JPG" alt="">
                    <p>
                       jsp에서 값을 넘겨받은 @Controller 클래스입니다 <br>
                       @Autowired는 @Service를 <br>
                       의존주입(Dependency Inejction) 받았어요 <br>
                    </p>
                    <br><br><br><br><br>

                    <h3 id="docBoard5">5. 계정 Service</h3>
                    <img src="../resources/image/codeReview/memberStruct/memberAdd_service.JPG" alt="">
                    <p>
                        @Controller에서 @Autowired받아서 사용하는 <br>
                        @Service 클래스는 <br>
                        주로 @Controller의 요구 사항을 <br>
                        연산하는 기능을 수행합니다 <br>
                    </p>
                    <p>                        
                        MemberCheck는 제가 만든 <br>
                        폼 검증 기능을 모아둔 클래스입니다 <br>
                    </p>                    
                    <br><br><br><br><br>

                    <h3 id="docBoard6">6. 계정 MemberCheck</h3>
                    <img src="../resources/image/codeReview/memberStruct/memberAdd_memberCheck.JPG" alt="">
                    <img src="../resources/image/codeReview/memberStruct/memberAdd_memberCheck2.JPG" alt="">
                    <p>
                        @Service처럼 @Repository를 @Autowired받아서 <br>
                        연산을 수행하는 클래스 입니다 <br>
                        @Service의 연산을 if문으로 검증할때만 사용합니다 <br>
                        참 or 거짓을 <br>
                        판단하는 기능만 모아두었습니다 <br>
                    </p>
                    <p>
                        그리고 @Service의 보조기능이기 때문에 <br>
                        @Component 어노테이션으로 <br>
                        스프링 빈을 등록했어요 <br>
                    </p>
                    <br><br><br><br><br>

                    <h3 id="docBoard7">7. 계정 Repository</h3>
                    <img src="../resources/image/codeReview/memberStruct/memberAdd_memberRepository.JPG" alt="">
                    <img src="../resources/image/codeReview/memberStruct/memberAdd_Repository2.JPG" alt="">
                    
                    <p>
                        @Service에서 @Autowired받아서 사용하는 <br>
                        @Repository 클래스는 <br>
                        주로 @Service가 연산할 때 필요한 <br>
                        기능들을 제공해 주는 역할을 합니다 <br>
                    </p>
                    <p>
                        @Repository 클래스는 <br>
                        databases에 접근해서 값을 받으면 <br>
                        해당 기능을 수행하도록 설계했습니다 <br>
                    </p>

                    <p>
                        JdbcTemplate를 @Autowired받아서 <br>
                        사용하려면 <br>
                        spring Bean을 따로 등록 해 주어야 <br>
                        사용할 수 있습니다 <br>
                    </p>
                </div>

            <div id="remote">
                <ul>
                    <a href="#docBoard1"><li>1. 패키지 구조</li></a>
                    <a href="#docBoard2"><li>2. 계정 구성</li></a>
                    <a href="#docBoard3"><li>3. jsp 파일</li></a>
                    <a href="#docBoard4"><li>4. 계정 Controller</li></a>
                    <a href="#docBoard5"><li>5. 계정 Service</li></a>
                    <a href="#docBoard6"><li>6. 계정 MemberCheck</li></a>
                    <a href="#docBoard7"><li>7. 계정 Repository</li></a>
                </ul>
            </div>
        </div>
		
		<%@include file="../template/footer.jsp" %>
	</div>

</body>
</html>