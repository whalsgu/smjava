<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
	<h1>로그인</h1>
	<hr>
	<form name="login" method="POST" action="login.jsp">
		<table>
			<th>로그인</th>
			<tr>
				<td>아이디</td>
				<td><input type="text" name="userid"></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="userpw"></td>
			</tr>
		</table>
		<input type="submit" value="로그인"/>
		<input type="reset" value="다시입력"/>
	</form>
</body>
</html>