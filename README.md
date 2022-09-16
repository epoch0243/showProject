"# showProject" 

### 기술 스택 
&emsp;&emsp; java, jsp, Spring Framework, javascript, mySQL

### 개발환경 
&emsp;&emsp;eclipse
<br><br><br>


### 프로젝트 환경 
&emsp;&emsp;"STS(Spring Tool Suite) == Spring tools 3" 
<br><br><br>


### DI(dependency Injection)
&emsp;&emsp;Maven 
<br><br><br>


### 회원가입 폼 검증기능 
&emsp;&emsp;hibernate<br>
&emsp;&emsp;(다른 분들이 만드신 쉬워보이는 자료들만 이용하였습니다.) 
<br><br><br>


### 기능 
&emsp;&emsp;회원가입, 로그인, 게시글 작성, 게시글 검색 
<br><br><br>


### 개발 소요기간 
&emsp;&emsp;약 70일 (2022-05-01 ~ 2022-07-10) 이후 sql exception 기능 추가 
<br><br><br>


## 힘들었던 점 
&emsp;&emsp;개발할떄 Aspect어노테이션과 <br>
&emsp;&emsp;JdbdcTemplate때문에 시간이 너무 오래걸렸었다. <br>
&emsp;&emsp;하지만 프로젝트에 Aspect는 사용하지 않았다.... <br>
<br><br><br>


## 오래 걸린 이유 
&emsp;&emsp;기본이 많이 부족해서 시행착오가 많았었던 것 같다.<br><br>

&emsp;&emsp;Aspect는 Around를 적용시켜 <br>
&emsp;&emsp;검증된 계정인지 아닌지 <br>
&emsp;&emsp;검사 할 목적으로(Before, After, Around) <br>
&emsp;&emsp;적용하려고 하였으나 <br><br>

&emsp;&emsp;검증하는것을 sql문을 수행하는 <br>
&emsp;&emsp;@Repository(Data Access Obejct)에서 처리하도록 하면 <br>
&emsp;&emsp;세션을 검사시키는 일을 안해도 되어서 <br>
&emsp;&emsp;만들지 않았고 <br><br>

&emsp;&emsp;JDBCTemplate는 인터넷에서 검색해도 <br>
&emsp;&emsp;다른 클래스에 연결이 생각대로 잘 안되서 <br>
&emsp;&emsp;검색도 여러번 하고 코드도 비교해보다가 <br><br>

&emsp;&emsp;@Autowired를 사용하지 않고 new를 이용해서<br>
&emsp;&emsp;클래스를 선언한 것이 문제였다. <br><br><br><br>


## 프로젝트를 끝낸 다음 느낀 점 
&emsp;&emsp;여러가지로 많이 부족한 것을 알았고 <br>
&emsp;&emsp;(수학, Algorithm, Design Pattern 그리고 여러가지 공학 기술들) <br><br>

&emsp;&emsp;책이나 StackOverFlow 또는 example을 모아둔 사이트가 아닌 <br>
&emsp;&emsp;공식 문서를 많이 보고싶지만 <br>
&emsp;&emsp;영어를 할 줄 모르기 때문에 <br>
&emsp;&emsp;영어도 열심히 공부해야 될 것 같다 <br>
