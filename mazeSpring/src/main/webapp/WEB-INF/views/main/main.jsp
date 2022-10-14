<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="robots" content="noindex" />
<link rel="stylesheet" href="../resources/css/mainContents.css">
<link rel="stylesheet" href="../resources/css/template.css">
</head>
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
					
                    <a href="../codeReview/content01"><div class="poster"><img src="../resources/image/ubuntuLogo.jpg">Linux Ubuntu</div></a>
                    <a href="../codeReview/springSet"><div class="poster"><img src="../resources/image/java.png"><br>Code</div></a>
                    <a href="../board/boardSearch"><div class="poster"><img src="../resources/image/42341234Rsdfsdvzcx5jy.jpg">Board List with Search</div></a>
                    <div class="poster board" ><div id="loadBoard"></div></div>
                </div>

            </div>

           <%@ include file="../template/footer.jsp" %>
        </div>

        
        <script src="../resources/js/navigation.js"></script>
        <script type="text/javascript" src="../resources/js/boardList.js"></script>
</body>
</html>