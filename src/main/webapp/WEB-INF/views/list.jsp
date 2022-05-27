<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>한 줄 게시판 리스트</title>
</head>
<body>
	<h2>한 줄 게시판</h2>
	<hr>
	<table witdh="1000" cellpadding="0" cellspacing="0" border="1">
		<tr align="center" bgcolor="pink">
			<td>번호</td>
			<td>글쓴이</td>
			<td>한줄글</td>
			<td>삭제</td>
		</tr>
		<c:forEach items="${list}" var="dto">
		<tr>
			<td align="center">${dto.mnum }</td>
			<td>${dto.mwriter }</td>			
			<td width="600">
				<a href="mview?mnum=${dto.mnum }">${dto.mcontent }</a>
			</td>
			<td><input type="button" value="X" onclick="location.href='delete?mnum=${dto.mnum }'"></td>
		</tr>		
		</c:forEach>
		<tr>
			<td colspan="4" align="right">
				<input type="button" value="글쓰기" onclick="location.href='writeForm'">	
			</td>
		</tr>
	</table>
</body>
</html>