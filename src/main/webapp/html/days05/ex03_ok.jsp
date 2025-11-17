<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>ex03_ok.jsp</h3>
<!-- 
QueryString
?
name속성=입력값
id=admin
&
password=1234
 -->
<%
    // jsp 스크립트 - (스크립트릿) : 자바 코딩
    // jsp 내장 객체 - request 내장된 객체
    String id = request.getParameter("id");
    String password = request.getParameter("password");
    
    System.out.printf("> 전달된 파라미터 id=%s, password=%s\n"
    		, id, password);
%> 
<!-- 출력 용도의 jsp 스크립트 - ( 표현식 ) -->
> 입력한 ID : <%= id %><br>
> 입력한 PASSWORD : <%= password %><br>


</body>
</html>






