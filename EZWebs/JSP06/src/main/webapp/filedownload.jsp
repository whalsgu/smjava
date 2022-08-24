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
	
<c:set var="image1" value="${param.image1}" />
	
</head>
<body>
	<h1>이미지 출력</h1>
	<hr>
	
	<p>컨텍스트:<c:out value="${contextPath}"/></p>
	<p>파일이름:<c:out value="${image1}"/></p>
	
	<c:if test="${not empty image1}">
		<img src="${contextPath}/filednload.do?filename=${image1}" />
	</c:if>
</body>
</html>