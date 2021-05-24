<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${param.target == 'naver'}">
  <c:import url="https://www.naver.com"/>
</c:if>
<c:if test="${empty param.target}">
  <p>안녕하세요!!</p>
</c:if>