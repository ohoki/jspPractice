<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	table {
		width: 70%;
		border-collapse: collapse;
		border: 1px solid black;
		text-align: center;
	}
	td, th{
	 border: 1px solid black;
	 padding: 5px 0;
	}
</style>
</head>
<body>
	<jsp:include page="../menu/menu.jsp"></jsp:include>
	<div align="center">
		<div><h1>게시글 목록</h1></div>
		<table>
			<thead>
				<tr>
					<th>게시물 번호</th>
					<th>작성자</th>
					<th>내용</th>
					<th>작성일</th>
					<th>조회수</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${notices}" var="n">
					<tr>
						<td>${n.noticeId}</td>
						<td>${n.noticeWriter}</td>
						<td>${n.noticeTitle}</td>
						<td>${n.noticeWdate}</td>
						<td>${n.noticeHit}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		
	</div>
</body>
</html>