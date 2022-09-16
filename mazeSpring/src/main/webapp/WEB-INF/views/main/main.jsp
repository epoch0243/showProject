<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="../resources/css/mainContents.css">

</head>
<body>
<body>
        
        <div id="wrapper">
           <%@ include file="../template/header.jsp" %>
            
            <div id="contents">
                <div id="billBoard">
                    
                    <div class="imgWithBoard" style="display: block;">
                        <img src="../resources/image/RE4Y5jy.jpg"/>
                    </div>
                    <div class="imgWithBoard">
                        <img src="../resources/image/RWKCAD.jpg"/>
                    </div>
                    <div id="picList">
                        <div class="picButton" onclick="choicePic(0)"></div>
                        <div class="picButton" onclick="choicePic(1)" style="opacity:0.7;"></div>
                        <div onclick="changePicSwitch()"><img id="picPause" src="../resources/image/pause.png"/></div>
                    </div>                    
                </div>
                
                
				<div id="posters">
                    <div class="poster"><img src="../resources/image/ubuntuLogo.jpg">could skill</div>
                    <div class="poster"><img src="../resources/image/java.png">process and my think</div>
                    <div class="poster"><img src="../resources/image/42341234Rsdfsdvzcx5jy.jpg">hobby and Interest</div>
                    <div class="poster board" ><div id="loadBoard"></div></div>
                </div>

            </div>

           <%@ include file="../template/footer.jsp" %>
        </div>

        
        <script src="../resources/js/navigation.js"></script>
        <script type="text/javascript" src="../resources/js/boardList.js"></script>
    </body>
</body>
</html>