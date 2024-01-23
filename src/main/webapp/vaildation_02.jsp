<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 로그인 유효성 체크 </title>
</head>
<!--  var, let : 바뀌는 변수, const : final과 같이 바뀌지 않는 변수 -->
<script type="text/javascript">
	function checkLogin(){
		let form = document.loginForm
		if(form.id.value == ""){
			alert("아이디를 입력해 주세요.")
			form.id.focus()
			return false
		}else if(form.pw.value == ""){
			alert("비밀번호를 입력해 주세요.")
			form.pw.focus()
			return false
		}
		form.submit()
	}
</script>
<body>
	<form name="loginForm" action="validation_02_process.jsp" method="post">
		아이디 : <input type="text" name="id"><br>
		비밀번호 : <input type="password" name="pw"><br>
		<input type="button" value="ok" onclick="checkLogin()">
	</form>
</body>
</html>