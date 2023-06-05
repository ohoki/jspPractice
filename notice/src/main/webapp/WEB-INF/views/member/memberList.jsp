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
		<div><h1>회원 목록 보기</h1></div>
		<table>
			<thead>
				<tr>
					<th>아이디</th>
					<th>이름</th>
					<th>나이</th>
					<th>전화번호</th>
					<th>성별</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${members}" var="m">
					<tr>
						<td>${m.memberId}</td>
						<td>${m.memberName}</td>
						<td>${m.memberAge}</td>
						<td>${m.memberTel}</td>
						<td>${m.memberGender}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>