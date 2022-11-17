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
	                <a href="../codeReview/memberCode"><label>계정 생성 코드</label></a>
	            </div>
	            <div class="selectMemberFunction">
	                <b><label>게시판 생성 코드</label></b>
	            </div>
	        </div>
                
                <div id="memberBoxes">
                    <h3>게시판 생성 코드</h3>
                    <b>
                        <p>                        
                            구성요소가 Member와 겹치는 설명은 <br>
                            생략 하였습니다 <br>
                        </p>
                    </b>
                    <br><br>
                    <h3 id="docBoard1">1. 패키지 구조</h3>
                    <img src="../resources/image/codeReview/memberStruct/projectTosrc_main_java.JPG" alt="">
                    <br><br><br><br><br>
                    <h3 id="docBoard2">2. 보드 구성</h3>
                    <img src="../resources/image/codeReview/boardStruct/boardAttr.JPG" alt="">
                    <p>
                        memberVO처럼 하이버네이트(hibernate)를 <br>
                        사용하지 않은 이유는 <br> 
                    </p>
                    <p>
                        jsp파일을 확인하면 아시겟지만 <br>
                        jstl로 계정을 확인할때 폼을 사용하지 않게 되어 <br>
                        오류가 나올 수 있기 때문에 <br>
                        하이버네이트(hibernate) 는 사용하지 않았습니다 <br>
                    </p>
                    <br><br><br><br><br>

                    <h3 id="docBoard3">3. jsp파일</h3>
                    <img src="../resources/image/codeReview/boardStruct/boardAdd_jsp.JPG" alt=""
                    width="750px">
                    <p>
                        25번째 줄 test="${not empty loginMember}" <br>
                        세션이 비어있지 않으면 (세션이 존재한다면) <br>
                        글쓴이가 누구인지 회원 이름으로 자동입력이 되고 <br>
                        게시글 비밀번호를 입력하지 않습니다 <br>
                    </p>
                    <p>
                        하지만 세션이 없다면 <br>
                        글쓴이와 비밀번호를 개별적으로 <br>
                        입력 해 줘야됩니다 <br>
                    </p>
                    <br><br><br><br><br>

                    <h3 id="docBoard4">4. 보드 Controller</h3>
                    <img src="../resources/image/codeReview/boardStruct/boardAdd_controller.JPG" alt="">
                    <p>
                        저는 RequestMapping의 기본값이 <br>
                        굳이 get, post를 지정해주지 않아도 자동으로 <br>
                        처리 하여 좋은 기능인줄 알았으나 <br>                        
                    </p>
                    <p>
                        파일 업로드를 하면서 <br>
                        에러가 생겨가지고 <br>
                        get과 post를 따로 설정 해 두었습니다 <br>
                        이런 경우때문에 MemberAddController같은 <br>
                        클래스 몇개도 수정하게 되었습니다 <br>
                    </p>
                    <p>                        
                        그리고 48줄에 있는 외부 클래스는 <br>
                        사용자가 <br>
                        프로젝트가 구동되는 서버에 <br>
                        파일을 업로드 해주는 기능입니다 <br>
                    </p>
                    <br><br><br><br><br>

                    <h3 id="docBoard5">5. 보드 File Upload</h3>
                    <img src="../resources/image/codeReview/boardStruct/board_fileUpload.JPG" alt="">
                    <p>
                        기본 경로는 26번째 줄에있는 <br>
                        System.getProperty("user.home")을 이용하였습니다 <br>
                        user.home인 이유는 리눅스 환경에서는 C:\와 D:\가 없기 때문에 <br>
                        오류를 줄이려고 사용했습니다 <br>
                    </p>
                    <p>
                        그리고 파일이 없다면 업로드 하지않고 <br>
                        파일이름 중복을 줄이고 찾기 쉽게 정리하려고 <br>
                        폴더는 보드가 생성될 때 마다 보드의 번호를 <br>
                        @Repository에서 가져와서 <br>
                        게시글 번호를 기준으로 폴더를 생성합니다 <br>
                    </p>
                    <p>
                        만약에 한 폴더에 중복되는 파일이름이 있다면 <br>
                        파일에 번호를 붙여서 <br>
                        파일이 덮여씌여지지 않게 <br>
                        조정 하였습니다 <br>
                    </p>
                    <br><br><br><br><br>
                    <h3 id="docBoard6">6. 보드 File Download</h3>
                    <img src="../resources/image/codeReview/boardStruct/board_fileDownload.JPG" alt="">
                    <p>
                        FileUpload를 실행하면 <br>
                        게시글 번호에 따라서 폴더를 생성하니까 <br>
                        게시글 번호에 맞게 번호를 찾아서 <br>
                        폴더를 찾으면 <br>
                    </p>
                    <p>                        
                        폴더에서 파일의 <br>
                        개수만큼 선택한 게시글에 <br>
                        파일을 출력하는 기능입니다 <br>
                    </p>
                    <br><br><br><br><br>

                    <h3 id="docBoard7">7. 보드 Service</h3>
                    <img src="../resources/image/codeReview/boardStruct/boardAdd_service.JPG" alt="">
                    <p>
                        폼이 검증되면 글이 등록됩니다 <br>
                        검증이 되지 않을경우 경고메세지를 보냅니다 <br>

                        
                    </p>
                    <p>
                        만약에 계정 세션이 존재할 경우 폼부터 검증한다음<br>
                        계정의 id에 대한 password가 맞는지 다시 검증합니다 <br>
                        두가지가 검증되면 글이 작성됩니다 <br>
                    </p>
                    <br><br><br><br><br>

                    <h3 id="docBoard8">8. 보드 MemberCheck</h3>
                    <img src="../resources/image/codeReview/boardStruct/boardCheck1.JPG" alt="">
                    <img src="../resources/image/codeReview/boardStruct/boardCheck2.JPG" alt="">
                    <img src="../resources/image/codeReview/boardStruct/boardCheck3.JPG" alt="">
                    <p>
                        MemberCheck클래스와 같이 @Service의 <br>
                        if문에서 폼을 검증하는 기능을 모아둔 <br>
                        클래스 입니다 
                    </p>
                    <p>
                        137번째 줄은 비밀번호를 <br>
                        자동으로 설정하는 기능입니다 <br>
                        sql의 비밀번호 column이 not null <br>
                        으로 설정되어 있어서 <br>
                        인터넷에서 encrypt하는 방법을 찾는도중 <br>
                        난수만 출력하는 부분인것 같아 복사해서 사용했습니다 <br>
                    </p>
                    <br><br><br><br><br>

                    <h3 id="docBoard9">9. 보드 Repository</h3>
                    <img src="../resources/image/codeReview/boardStruct/boardAdd_Repository1.JPG" alt="">
                    <img src="../resources/image/codeReview/boardStruct/boardAdd_Repository2.JPG" alt="">
                    <img src="../resources/image/codeReview/boardStruct/boardAdd_Repository3.JPG" alt="">
                    <img src="../resources/image/codeReview/boardStruct/boardAdd_Repository4.JPG" alt="">
                    <img src="../resources/image/codeReview/boardStruct/boardAdd_Repository5.JPG" alt="">
                    <p>
                        boardRepository는 <br>
                        MemberRepository와는 다르게 <br>
                        jdbcTemplate을 query를 사용 해 주었는데요 <br>

                        왜냐하면 <br>
                        queryForObject는 한가지 값의 리턴만 반환하고 <br>
                        query는 여러가지의 값의 리턴을 반환해서 <br>
                        query를 사용 하였습니다 <br>
                    </p>
                    <br><br><br><br><br>


                </div>

                
                <div id="remote">
                    <ul>
                        <a href="#docBoard1"><li>1. 패키지 구조</li></a>
                        <a href="#docBoard2"><li>2. 보드 구성</li></a>
                        <a href="#docBoard3"><li>3. jsp 파일</li></a>
                        <a href="#docBoard4"><li>4. 보드 Controller</li></a>
                        <a href="#docBoard5"><li>5. 보드 File Upload</li></a>
                        <a href="#docBoard6"><li>6. 보드 File Download</li></a>
                        <a href="#docBoard7"><li>7. 보드 Service</li></a>
                        <a href="#docBoard8"><li>8. 보드 MemberCheck</li></a>                        
                        <a href="#docBoard9"><li>9. 보드 Repository</li></a>
                    </ul>
                </div>

            </div>
		
		<%@include file="../template/footer.jsp" %>
	</div>

</body>
</html>