<%@page import="java.util.HashMap"%>
<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL</title>
</head>
<body>
<h1>EL - Map 객체에서 값 꺼내기</h1>
<%
// 맵의 경우 키값을 마음대로 지정할 수 있다 -> s01, s02, s03, s04 ^^
HashMap<String,Object> map = new HashMap<>();
map.put("s01", "김구");
map.put("s02", "안중근");
map.put("s03", "윤봉길");
map.put("s04 ^^", "오호라");

pageContext.setAttribute("map", map);
// 키값을 이용해서 꺼낼 수도 있다.
%>

${map["s01"]}<br>
${map['s01']}<br>
${map.s01}<br>

<%-- 프로퍼티 이름이 변수 이름 짓는 규칙에 맞지 않다면
     다음과 같이 OGNL 표기법을 쓸 수 없다.(공백이 있을 경우) --%>
<%-- 
${map.s04 ^^}<br> 
--%>

${map["s04 ^^"]}<br>
${map['s04 ^^']}<br>

</body>
</html>












