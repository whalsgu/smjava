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
	
<c:set var="excel1" value="${param.excel1}" />
	
</head>
<body>
	<h1>엑셀 파일 다운로드</h1>
	<hr>
	
	<p>컨텍스트:<c:out value="${contextPath}"/></p>
	<p>파일이름:<c:out value="${excel1}"/></p>
	
	<c:if test="${not empty excel1}">
		<a href="${contextPath}/filednload.do?filename=${excel1}">내려받기</a>
		<hr>
		<p>"${contextPath}/filednload.do?filename=${excel1}"</p>
	</c:if>
	
</body>
</html>