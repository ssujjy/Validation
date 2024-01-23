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
		}
		if(form.id.value.length < 4 || form.id.value.length > 12){
			alert("아이디는 4~12자 이내로 입력 가능합니다.")
			form.id.select()
			return
		}
		// 아이디는 영문 소문자만 입력 가능.
		for(i=0; i<form.id.value.length; i++){
			let ch = form.id.value.charAt(i);
			if((ch<'a' || ch>'z')&&(ch>'A' || ch>'Z')&&(ch>'0'||ch<'9')){
				alert("아이디는 영문 소문자만 입력 가능합니다. ");
				form.id.select();
				return;
			}
		}
		
		
		if(form.pw.value.length < 4 || form.pw.value.length >12){
			alert("비밀번호는 4~12자 이내로 입력 가능합니다.")
			form.pw.focus()
			return
		}
		
		// 비밀번호는 숫자만 입력 가능 합니다.
		for(i=0; i<form.pw.value.length; i++){
			let ch = form.pw.value.charAt(i);
			if(isNaN(ch)){
				alert("비밀번호는 숫자만 입력 가능합니다. ");
				form.pw.select();
				return;
			}
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