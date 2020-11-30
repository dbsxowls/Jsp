<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <!--
    날짜:  2020/11/30
    이름:  윤태진
	내용:  Ch03. JSP 구성요소 스크립트릿 교재 p106   

	Scriptlet
		-자바 코드가 들어가는 코드 영역
		-모델1에서 사용되는 동적 코드 영역
	Expression
	    -자바 변수를 출력하기 위한 스크립트릿	
  -->	
  
  <h3>3.1.스크립트릿 예제</h3>
  
  <%
     //Scpriptlet 영역(자바 코드가 들어가는 영역)
     int var1 = 1;
  	 boolean var2 = true;
  	 double var3 = 3.14;
  	 String var4 = "Hello";
  	 
  	 //출력
  	 out.println("<h4>var1 : "+var1+"</h4>");
	 out.println("<h4>var2 : "+var2+"</h4>");
  
  %>
  
  <!-- 표현식 (Expression) 으로 출력 -->
  <h4>var3 : <%= var3 %>></h4>
  <h4>var4 : <%= var4 %>></h4>
  
  
</body>
</html>