<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="../menu/menu.jsp"></jsp:include>
	<div align="center">
		<h1>${message}</h1>
		<button type="button" onclick="location.href='memberList.do'">멤버 목록</button>
	</div>
</body>
</html>