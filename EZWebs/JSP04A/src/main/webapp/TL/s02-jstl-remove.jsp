<%@ page language="java" contentType="text/html; charset=UTF-8"
	isELIgnored="false"	
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<c:set var="hello" value="Hello, JSTL!!!" scope="page" />
<c:set var="name" value="${'홍길동'}" scope="page" />
<c:set var="age" value="${30}" scope="page" />
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>JSTL - taglibs</title>
	<style>
		div {
			background : #ccc;
		}
	</style>
</head>
<body>
	<h1>커스텀 태그 라이브러리 - JSTL</h1>
	<hr>
	<div>
		<p>hello: ${hello}</p>
		<p>name: ${name}</p>
		<p>age: ${age}</p>
	</div>
	
	<div>
		<p>변수 hello를 remove 한 후 출력 테스트</p>
		<c:remove var="hello"/>
		<p>hello: ${hello}</p>
	</div>
</body>
</html>