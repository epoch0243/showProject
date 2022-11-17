<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/memberInfo.css">
<link rel="stylesheet" href="../resources/css/contents.css">
<link rel="stylesheet" href="../resources/css/remote.css">
</head>
<body>
	
	<div id="wrapper">
		<%@include file="../template/header.jsp" %>
		
		<div id="contents">
		                              
			<div id="memberBoxes">
			    <h3>우분투 서버로 프로젝트 업로드</h3>
			    <br><br><br><br><br>
			    <h3>간략한 실력 소개</h3>
			    <p>
			    	할줄아는것은 ls, pwd, mv, cp같은 <br>
			    	간단한 명령어 밖에 없습니다 <br>
			    	나머지 chmod와 chown등은 <br>
			    	사용하기 어려워서 인터넷 검색으로 대체 했습니다<br>
			    </p>
			    
			    <br><br><br><br><br>
			    
			    <h3 id="docUbuntu1">1. WAR Export</h3>
	            <img src="../resources/image/deployInlinux/web_deploy1.JPG" alt="">
	            <img src="../resources/image/deployInlinux/web_deploy2.JPG" alt="">
	            <img src="../resources/image/deployInlinux/web_deploy3.JPG" alt="">
	            <p>
		             웹서버에 프로젝트를 등록 하려면<br>
		             WAR파일이 필요하기 떄문에 <br>
		             Eclipse에서 Export 했습니다 <br>
             	</p>
           		<br><br><br><br><br>
	             
	            <h3 id="docUbuntu2">2. 대상 서버로 전송하기</h3>
	            <img src="../resources/image/deployInlinux/web_deploy4.JPG" alt="">
	            <p>
	            	파일전송은 따로 파일 전송 프로그램을 <br> 
	            	다운로드 하고싶지 않아서 <br>
	            	scp라는 기능이 있다는 것을 알고 <br>
	            	windows10의 powerShell을 사용했습니다 <br>
	            </p>
	            <p>
	            	그리고 <br>
	            	저는 아마존 AWS EC2의 Ubuntu의 환경과 비슷한 <br>
	            	환경에서 실험해보고 싶어서 <br>
	            	VirtualBox(가상머신)의 Ubuntu-server를 <br>
	            	사용했습니다 <br>
	            	사진은 없지만 ip주소는 Ubuntu에서 <br> 
	            	전송 받을 계정과 <br>
	            	ifconfig를 사용하여 해당 주소를 입력했습니다 <br>
	            	계정@ip주소:디렉토리 경로 <br>	             	
	            </p>
	            <br><br><br><br><br>
	            
	            <h3 id="docUbuntu3">3. 전송 확인하기</h3>
	            <img src="../resources/image/deployInlinux/web_deploy5.JPG" alt="">
	            <p>
	            	아래에서 3번째 줄을 보시면 <br>
	            	"ls"라는 명령어로(windows는 "dir") <br>
	            	파일목록을 확인하시면 전송이 잘 된것을 <br>
	            	보실 수 있습니다 <br>
	            	서버에서 받은 WAR파일이 잘 작동하게 <br>
	            	미리 준비한 tomcat9의 webapps로 <br>
	            	이동한 다음(사진은 mv를 사용했지만 cp도 가능합니다) <br>	            	
	            </p>
	            <br><br><br><br><br>
	            
	            <h3 id="docUbuntu4">4. 루트 디렉토리 설정</h3>
	            <img src="../resources/image/deployInlinux/web_deploy7.JPG" alt="">
	            <p>
	            	tomcat9을 설정없는 기본값으로 실행하면 <br>
	            	It's Work!를 출력하기 때문에 <br>
	            	ROOT폴더가 아닌 준비한 WAR파일로 교체하려면 <br>
	            	/etc/tomcat9/server.xml 또는 <br>
	            	/var/lib/tomcat9/conf/server.xml의 <br>
	            	host Tag 내부에 Context를 선언 해 줘야됩니다 <br>
	            </p>
	            <p>
	            	어느 경로가 되었건 간에 <br>
	            	수정하면 같이 바뀌는걸로 봐서 <br>
	            	둘중 아무 경로의 server.xml을 수정해도 됩니다 <br>
            	</p>
            	<br><br><br><br><br>
	            
	            <h3 id="docUbuntu5">5. 결과 화면</h3>
	            <img src="../resources/image/deployInlinux/web_deploy8.JPG" alt="">
	            <p>
	            	해당 서버 주소를 입력하면 <br>
	            	index.jsp가 실행되면서 <br>
	            	배포한 WAR파일이 작동되는 것을 <br>
	            	확인하실 수 있습니다 <br>
	            		            		            	
	            </p>
	            <br><br><br><br><br>

			</div>
			
			<div id="remote">
	            <ul>
	                <a href="#docUbuntu1"><li>1. WAR Export</li></a>
	                <a href="#docUbuntu2"><li>2. 대상 서버로 전송하기</li></a>
	                <a href="#docUbuntu3"><li>3. 전송 확인하기</li></a>
	                <a href="#docUbuntu4"><li>4. 루트 디렉토리 설정</li></a>
	                <a href="#docUbuntu5"><li>5. 결과 화면</li></a>
	            </ul>
	        </div>
		</div>
		
		<%@include file="../template/footer.jsp" %>
	</div>

</body>
</html>