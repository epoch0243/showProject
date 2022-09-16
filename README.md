"# showProject" 

### 개발환경 
&emsp;&emsp;eclipse



### 프로젝트 환경 
&emsp;&emsp;"STS(Spring Tool Suite) == Spring tools 3" 



### DI(dependency Injection)
&emsp;&emsp;Maven 



### 회원가입 폼 검증기능 
&emsp;&emsp;hibernate\
(다른 분들이 만드신 쉬워보이는 자료들만 이용하였습니다.)



### 기능 
&emsp;&emsp;회원가입, 로그인, 게시글 작성, 게시글 검색 



### 개발 소요기간 
&emsp;&emsp;약 70일 (2022-05-01 ~ 2022-07-10) 이후 sql exception 기능 추가 



## 힘들었던 점 
&emsp;&emsp;개발할떄 aspect어노테이션과\
&emsp;&emsp;JdbdcTemplate때문에 시간이 너무 오래걸렸었다.\



## 오래 걸린 이유 
기본이 부족한 것도 있으나........\

Aspect는 around를 적용시켜 검증된 계정인지 세션을 2번 검사시키려고 (before, after)\
적용하려고 하였으나 사용자가 어떤 일을할때 검증하는것을 sql문을 수행하는\
@Repository(Data Access Obejct)에서 처리하도록 하면 세션을 검사시키는 일을 안해도 되어서\
만들지 않았고\

jdbcTemplate는 인터넷에서 검색해도 다른 클래스에 연결이\
생각대로 잘 안되서 여러번 확인 하다가\
xml파일에서 선언한 JDBCTemplate 빈을\
스프링 컨테이너에 등록한 것을 불러오는 개념을 익히느라 오래 걸렸었다\

