<%@ page language="java" contentType="text/html; charset=UTF-8"
	isELIgnored="false"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
    
<%
	request.setCharacterEncoding("UTF-8");
%>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>이미지 출력</title>
	
<c:set var="msg" value="${param.msg}" />
	
</head>
<body>
	<h1>파일 업로드 확인</h1>
	<hr>
	
	<c:if test="${not empty msg}">
		<p>${msg}</p>
	</c:if>
	
</body>
</html>