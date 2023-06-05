<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	table {
		width: 600px;
		border-collapse: collapse;
		border: 1px solid black;
		text-align: center;
	}
	td, th{
	 border: 1px solid black;
	 padding: 10px 0;
	}
	td{
		text-align: left;
		padding-left:60px;
	}
	#checkId{
		margin-left: 20px;
	}
</style>
</head>
<body>
	<jsp:include page="../menu/menu.jsp"></jsp:include>
	<div align="center">
		<div><h1>회원가입</h1></div>
		<div>
			<form id="frm" action="memberInsert.do" method="post" onsubmit="return formCheck()">
				<div>
					<table border="1">
						<tr>
							<th width="150">*아이디</th>
							<td width="300">
								<input type="email" id="memberId" name="memberId" required="required">
								<button type="button" id="checkId" value="No" onclick="idCheck()">중복체크</button>
							</td>
						</tr>
						<tr>
							<th>*패스워드</th>
							<td>
								<input type="password" id="memberPw" name="memberPw" required="required">
							</td>
						</tr>
						<tr>
							<th>*패스워드 확인</th>
							<td>
								<input type="password" id="pwCheck" name="pwCheck" required="required">
							</td>
						</tr>
						<tr>
							<th>*이름</th>
							<td>
								<input type="text" id="memberName" name="memberName" required="required">
							</td>
						</tr>
						<tr>
							<th>*나이</th>
							<td>
								<input type="text" id="memberAge" name="memberAge" required="required">
							</td>
						</tr>
						<tr>
							<th>*전화번호</th>
							<td>
								<input type="tel" id="memberTel" name="memberTel" required="required">
							</td>
						</tr>
						<tr>
							<th>*성별</th>
							<td>
								<input type="text" id="memberGender" name="memberGender" required="required">
							</td>
						</tr>
					</table>
				</div><br>
				<div>
					<input type="submit" value="등록">&nbsp;&nbsp;
					<input type="reset" value="취소">&nbsp;&nbsp;
					<input type="button" onclick="location.href=main.do" value="홈가기">&nbsp;&nbsp;
				</div>
			</form>
		</div>
	</div>
</body>
<script type="text/javascript">
	function formCheck() {
		let frm = document.getElementById("frm");
		
		if(frm.checkId.value != "Yes") {
			alert("아이디 중복확인을 해주세요.")
			return false;
		} else {
			if(frm.memberPw.value != frm.pwCheck.value) {
				alert("비밀번호가 같지 않습니다. 다시 입력해주세요.");
				frm.memberPw.value = "";
				frm.pwCheck.value = "";
				frm.memberPw.focus();
				return false;
			} else {
				return true;
			}	
		}
	}
	
	function idCheck() {
		let id = document.getElementById("memberId").value;
		let checkId = document.getElementById("checkId").value;
		let url = "ajaxCheckId.do?id="+id;
		fetch(url) //ajax 호출 (get방식)
			.then(response => response.text()) // 결과를 텍스트로 받겠다.
			.then(text => htmlProcess(text));
	}
	
	function htmlProcess(data) {
		if(data == "Yes") {
			alert(document.getElementById("memberId").value +"\n 사용 가능한 아이디입니다.");
			document.getElementById("checkId").value = "Yes";
		} else {
			alert(document.getElementById("memberId").value +"\n 이미 사용 중인 아이디입니다.");
			document.getElementById("checkId").value = "";
			document.getElementById("memberId").focus();
		}
	}
</script>
</html>