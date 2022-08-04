<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 화면</title>
</head>

	<style>
		button{
			width : 210px;
			margin-top : 5px;
		}
		
	</style>
	
<body>
	<form action = "login_Action.jsp">
		ID : <input type="text" name="id"  style = "margin-left : 10px;" /><br/>
		PW : <input type="password" name = "pw"/><br/>
		<button type="submit" >로그인</button><br/>
	</form>
		<button onclick="location.href='MemberJoin.jsp';" >회원가입</button>
</body>
</html>