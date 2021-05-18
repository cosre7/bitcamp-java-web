<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <%-- 중간에 넣어도 상관없지만 처음에 해주자 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL</title>
</head>
<body>
<h1>JSTL - c:out</h1>
<%--
- 출력문을 만드는 태그이다.
  <c:out value="출력될 값" default="기본 값"/>
  <c:out value="출력될 값>기본값<c:out>
--%>
<%
pageContext.setAttribute("name", "유관순");
%>

<c:out value="임꺽정"/><br>
<c:out value="${null}" default="홍길동"/><br> <%-- 값이 없으면 기본값(default) 넣기 --%>
<c:out value="${null}">홍길동</c:out><br>
<c:out value="${'임꺽정'}" default="홍길동"/><br>
<c:out value="${name}" default="홍길동"/><br> <%-- 보관소에 name 이라고 저장된 값을 여기에 넣어라 --%>
<c:out value="${name2}" default="홍길동"/><br> <%-- 보관소에 name2가 없기 때문에 default 값이 들어간다. --%>
</body>
</html>












