<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="../menu/menu.jsp"></jsp:include>
	<div align="center">
		<div><h1>제품 목록 보기</h1></div>
		<table border="1">
			<thead align="center">
				<tr>
					<th width="100">제품 코드</th>
					<th width="100">제품 명</th>
					<th width="100">제품 이미지</th>
					<th width="100">이미지 경로</th>
				</tr>
			</thead>
			<tbody align="center">
				<c:forEach items="${products}" var="p">
					<tr onmouseover = 'this.style.background="#9fff80";'
						onmouseleave = 'this.style.background="#ffffff";'>
						<td>${p.productId}</td>
						<td>${p.productName}</td>
						<td>${p.productImg}</td>
						<td>${p.productDir}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div><br>
	<div align="center">
		<c:if test="${not empty id }">
			<button type="button" onclick="location.href='productInsertForm.do'">제품 등록</button>
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