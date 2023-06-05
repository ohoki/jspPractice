<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	fieldset{
		width: 600px;
		margin: auto;
		text-align: center;
	}
	label{
		display: inline-block;
		width: 100px;
	}
	div{
		margin:10px 0;
	}
</style>
</head>
<body>
	<jsp:include page="../menu/menu.jsp"></jsp:include>
	<div align="center"><h1>로그인</h1></div>
	<form id="frm" action="memberLogin.do" method="post">
		<fieldset>
			<div>
				<label for="memberId">아이디:</label>
				<input type="email" name="memberId" id="memberId">
			</div>
			<div>
				<label for="memberPw">비밀번호:</label>
				<input type="password" name="memberPw" id="memberPw">
			</div>
			<input type="submit" value="로그인">
    	</fieldset>
	</form>
</body>
</html>