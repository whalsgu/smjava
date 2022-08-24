<%@ page language="java" contentType="text/html; charset=UTF-8"
    import="java.util.List, ebooks.*"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>도서 상세보기</title>
	<style>
		table, tr, td, th {
			border: 1px solid #ccc;
			border-collapse : collapse;
		};
	</style>
</head>
<body>

</body>
<%
	request.setCharacterEncoding("utf-8");
	List<EBookVO> ebooks = (List<EBookVO>)request.getAttribute("ebooks");
%>

	<h1>도서 리스트</h1>
	
	<table border=1>
		<tr align='center' bgcolor='lightgreen'>
		<td>번호</td>
		<td>제목</td>
		<td>저자</td>
		<td>가격</td>
		<td>수량</td>
		<td>삭제</td>
		<td>수정</td>
		</tr>

<%		
		for(int cnt=0; cnt < ebooks.size(); cnt++) {
			EBookVO ebook = (EBookVO)ebooks.get(cnt);
%>			
		<tr>
		<td><a href='ebookdetail.jsp?serial=<%=ebook.getSerial()%>'><%=ebook.getSerial()%></a></td>
		<td><%=ebook.getTitle()%></td>
		<td><%=ebook.getAuthor()%></td>
		<td><%=ebook.getPrice()%></td>
		<td><%=ebook.getQty()%></td>
		<td><a href='ebooksvc.jsp?svcid=delBook&serial=<%=ebook.getSerial()%>'>삭제</a></td>
		<td><a href='ebookedit.jsp?serial=<%=ebook.getSerial()%>'>수정</a></td>
		</tr>
<%			
		}
%>
		
	</table>
	<a href='ebookreg.jsp'>도서등록</a>
</html>