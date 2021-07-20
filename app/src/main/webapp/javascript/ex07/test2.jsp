<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test2</title>
</head>
<body>
<h1>test2.jsp 실행!</h1>
<% request.setCharacterEncoding("UTF-8"); %>
name: ${param.name}<br>
age: ${param.age}<br>
</body>
</html>
<%
// 다른 도메인에서 AJAX 요청이 들어왔을 때 이 JSP의 결과를 가져가도록 허락한다.
// => 이 헤더를 붙이지 않으면 다른 도메인의 AJAX 요청은 거절된다.
response.setHeader("Access-Control-Allow-Origin", "*"); 
/// *.naver.com -> naver.com 에 소속된 pc야? 그럼 가지고 가~
/// * -> 누구든지 상관없으니 그냥 다 가지고 가~
/// AJAX 를 요청한 pc 가 "*" 조건에 부합한다면 허락해주겠다!
%>









