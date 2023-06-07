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
					<tr onmouseover = 'this.style.background="#9fff80";'
						onmouseleave = 'this.style.background="#ffffff";'
						onclick = noticeChoice(${n.noticeId});
					>
						<td>${n.noticeId}</td>
						<td>${n.noticeWriter}</td>
						<td>${n.noticeTitle}</td>
						<td>${n.noticeWdate}</td>
						<td>${n.noticeHit}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div><br>
	<div align="center">
		<c:if test="${not empty id }">
			<button type="button" onclick="location.href='noticeInsertForm.do'">새 글 작성</button>
		</c:if>
	</div>
	<div>
		<form id="frm" action="noticeSelect.do" method="post">
			<input type="hidden" id="noticeId" name="noticeId">
		</form>
	</div>
	<script type="text/javascript">
		function noticeChoice(id) {
			let frm = document.getElementById("frm");
			frm.noticeId.value = id;
			frm.submit();
		}
	</script>
</body>
</html>