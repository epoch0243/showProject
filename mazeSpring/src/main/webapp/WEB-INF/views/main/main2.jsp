<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/mainContents.css">
</head>
<body>
	<div id="wrapper">
			
			<%@ include file="../template/header.jsp" %>
            <div id="headerArea">
                
                <div id="logo"><img src="../resources/image/RE1Mu3b.png"/></div>

                <div class="navigation">
                    <ul>
                        <li><a href="#"><span>Home</span></a></li>
                        <li><a href="#"><span>News</span></a></li>
                        <li><a href="#"><span>Contact</span></a></li>
                        <li><a href="#"><span>About</span></a></li>
                      </ul>
                </div>

                <div id="headerRegeon">
                    
                    <span>
                        <i class="fa fa-search" style="font-size:34px" onclick="changeShowHide()"></i>
                        <form id="search" style="display: none;">
                            <input type="text">
                            <button type="submit">검색</button>
                        </form>
                    </span>
                    
                    <i class="fa fa-user-circle" style="font-size:32px" onclick="alert();" ></i>
                    
                </div>

            </div>
            
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

            <div id="footerArea">
                <div id="footerContents">
                    <p> since 2022-05-01 </p>
                </div>                
            </div>
			
			<%@ include file="../template/footer.jsp" %>
        </div>
        
        <script src="../resources/js/navigation.js"></script>
        <script type="text/javascript" src="../resources/js/boardList.js"></script>
</body>
</html>