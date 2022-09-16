### 기술 스택 
1. &nbsp; java
    - &nbsp; jsp
    - &nbsp; Spring Framework
       - &nbsp; Maven 
       - &nbsp; hibernate *(다른 분들이 만드신 쉬워보이는 자료를 이용하였습니다.)*
2. &nbsp; javascript
3. &nbsp; Amazon EC2 server
    - &nbsp;Linux Ubuntu-Server 
    - &nbsp;tomcat 9 
    - &nbsp;mySQL 
<br><br>

### 환경 
- windows 10
  - eclipse
    - &nbsp; "STS(Spring Tool Suite)" == "Spring tools 3" 
<br><br>

### 기능 
1. &nbsp; 회원가입, 로그인
2. &nbsp; 게시글 목록, 작성, 수정, 삭제, 검색 
<br><br>

### 프로젝트 소요기간 
&emsp;&emsp;**약 70일** (2022-05-01 ~ 2022-07-10) 이후 sql exception 기능 추가 
<br><br><br><br>


## 힘들었던 점 

**&emsp;&emsp;기초가 많이 부족해서 <br>
&emsp;&emsp;시행착오가 많았었던 것 같다**<br><br>

&emsp;&emsp;**Aspect**는 **Around**를 적용시켜 <br>
&emsp;&emsp;검증된 계정인지 아닌지 <br>
&emsp;&emsp;검사 하려고 하였으나 <br><br>

&emsp;&emsp;**Aspect**가 없어도 <br>
&emsp;&emsp;__@Repository(Data Access Obejct)__ 에서<br>
&emsp;&emsp;처리하니까 <br><br>

&emsp;&emsp;세션을 따로 검사시키는 일을 <br>
&emsp;&emsp;안해도 되어서 <br>
&emsp;&emsp;만들지 않았고 <br><br>

&emsp;&emsp;**JDBCTemplate**는 인터넷에서 검색해도 <br>
&emsp;&emsp;다른 클래스에 연결이 <br>
&emsp;&emsp;생각대로 잘 안되서 <br>
&emsp;&emsp;검색도 여러번 하고 코드도 비교해보다가 <br><br>

&emsp;&emsp;**@Autowired**를 사용하지 않고 **new**를 이용해서<br>
&emsp;&emsp;클래스를 선언한 것이 문제였다 <br><br><br><br>


## 프로젝트를 끝낸 다음 느낀 점 
&emsp;&emsp;여러가지로 많이 부족한 것을 알았고 <br>
&emsp;&emsp;(수학, Algorithm, Design Pattern 그리고 여러가지 공학 기술들) <br><br>

&emsp;&emsp;책이나 StackOverFlow 또는 example을 모아둔 사이트가 아닌 <br>
&emsp;&emsp;공식 문서를 많이 보고싶지만 <br><br>

&emsp;&emsp;영어도 할 줄 모르기 때문에 <br>
&emsp;&emsp;공부해야 될 것이 많은 것 같다 <br>
