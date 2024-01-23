<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 유효성 검사 - 자바스크립트 </title>
</head>
<script type="text/javascript">
	function checkForm(){
		alert("아이디 : " + document.loginForm.id.value + "\n" +
			"비밀번호 : " + document.loginForm.passwd.value		
		)
	}
</script>
<body>
	<form name="loginForm" action="">
		<p> 아이디 : <input type="text" name="id"> </p>
		<p> 비밀번호 : <input type="password" name="passwd"> </p>
		<p> <input type="button" value="ok" onclick="checkForm()"> </p>
	</form>
</body>
</html>