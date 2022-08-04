<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style>
		button{
			width : 210px;
			margin-top : 5px;
		}
	</style>
</head>
<body>
	<form action = "MemberJoin_Action.jsp">
		ID : <input type="text" name="id"  style = "margin-left : 24px;"  /><br/>
		PW : <input type="password" name = "pw" style = "margin-left : 15px;"/><br/>
		name : <input type="text" name = "name"/><br/>
		<button type="submit" >작성완료</button><br/>
	</form>
</body>
</html>