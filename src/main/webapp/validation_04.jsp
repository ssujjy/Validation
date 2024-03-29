<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	function checkMember(){
		let regExpId = /^[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;		//시작은 문자로만.
		let regExpName = /^[가-힣]*$/;
		let regExpPasswd = /^[0-9]*$/;
		let regExpPhone = /^\d{3}-\d{3,4}-\d{4}$/; 	//자릿수만.
		let regExpEmail = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
		
		let form = document.Member;
		
		let id = form.id.value;
		let pw = form.pw.value;
		let name = form.name.value;
		let phone = form.phone1.value + "-" + form.phone2.value + "-" + form.phone3.value;
		let email = form.email.value;
		
		if(!regExpId.test(id)){
			alert("아이디는 문자로 시작해주세요.");
			form.id.select();
			return;
		}
		if(!regExpName.test(name)){
			alert("이름은 한글로만 입력해주세요.");
			form.name.select();
			return;
		}
		if(!regExpPasswd.test(pw)){
			alert("비밀번호는 숫자로만 입력해주세요.");
			form.pw.select();
			return;
		}
		if(!regExpPhone.test(phone)){
			alert("연락처 입력을 확인해주세요.");
			return;
		}
		if(!regExpEmail.test(email)){
			alert("이메일 입력을 확인해주세요.");
			form.email.select();
			return;
		}
		
		form.submit();
	}
</script>
<body>
	<h3>회원 가입</h3>
	<form action="validation_02_process.jsp" name="Member" method="post">
		<p> 아이디 : <input type="text" name="id">
		<p> 비밀번호 : <input type="password" name="pw">
		<p> 이름 : <input type="text" name="name">
		<p> 연락처 : 
		<select name="phone1">
			<option value="010">010</option>
			<option value="011">011</option>
			<option value="016">016</option>
			<option value="017">017</option>
			<option value="018">018</option>
			<option value="019">019</option>
		</select>
		-
		<input type="text" name="phone2" maxlength="4" size=4>
		-
		<input type="text" name="phone3" maxlength="4" size=4>
		<p> 이메일 : <input type="text" name="email">
		<p> <input type="button" value="가입하기" onclick="checkMember()" >
	</form>
</body>
</html>