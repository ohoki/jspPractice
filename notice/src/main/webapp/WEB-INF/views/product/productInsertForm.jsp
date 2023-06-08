<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
	<jsp:include page="../menu/menu.jsp"></jsp:include>
	<div><h1>제품 등록</h1></div>
	<div>
		<form id="frm" action="productInsert.do" method="post" enctype="multipart/form-data">
			<div>
				<table border="1">
					<tr>
						<th width="100">제품코드</th>
						<td width="100">
							<input type="text" id="productId" name="productId"> 
						</td>
					</tr>
					<tr>
						<th>제품명</th>
						<td>
							<input type="text" id="productName" name="productName"> 
						</td>
					</tr>
					<tr>
						<th>이미지</th>
						<td>
							<input type="file" id="pfile" name="pfile"> 
						</td>
					</tr>
				</table>
			</div><br>
			<div>
				<input type="submit" value="등록하기">&nbsp;&nbsp;
				<input type="reset" value="취소하기">&nbsp;&nbsp;
				<input type="button" value="목록보기" onclick="location.href='prodcutList.do'">
			</div>
		</form>
	</div>
	</div>
</body>
</html>