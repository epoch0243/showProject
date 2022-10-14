<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link href="../resources/css/takeREST.css" rel="stylesheet" />
</head>
<body>
	<%@include file="../template/header.jsp" %>
	
	
    <div id="content">
    
	    <div id="explanation">
	    	<p>해당 자료는 <a href="https://www.data.go.kr/iim/api/selectAPIAcountView.do">"공공데이터 포털"</a>에서 가져왔습니다.</p>
			<p>https://www.data.go.kr/iim/api/selectAPIAcountView.do</p>
			
	    	<h2>외교부_국가∙지역별 우리나라와의 무역관계</h2>			
		</div>
        <div id="restSearch">
            <select id="countrySelect">
                <option value="countryKR">국가(한글)</option>
                <option value="countryISO">국가(ISO 영문 2자리)</option>
            </select>
            <input type="text" size="20">
            <button onclick="searchREST()">검색</button>
        </div>
        <div class="table">
        
        
        </div>
        <div id="selectPage">
            <div id="pageLeft">
                <button onclick="pagePrevious()">이전으로(previous)</button>
            </div>
            <div id="pageCenter">                
                <input type="text" size="5" size="2"> / 47<b></b>&nbsp;&nbsp;&nbsp;
                <button onclick="pageMove()">이동</button>
            </div>
            <div id="pageRight">
                <button onclick="pageNext()">다음으로(next)</button>
            </div>            
        </div>
    </div>
    
    

   
    <script type="text/javascript" src="../resources/js/restData/getRESTfulData.js"></script>
    
    <script type="text/javascript" src="../resources/js/restData/addTableStruct.js"></script>
    <script type="text/javascript" src="../resources/js/restData/setTableData.js"></script>
    <script type="text/javascript" src="../resources/js/restData/searchREST.js"></script>
    <script type="text/javascript" src="../resources/js/restData/pageMove.js"></script>
    
    
	<%@include file="../template/footer.jsp" %>    
</body>
</html>