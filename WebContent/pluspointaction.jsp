<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		int rnd = (int)(Math.random()*1000);
	%>

	<script>
		alert('<%=rnd%>포인트 추가');
		location.href='MainPage.jsp';
	</script>
</body>
</html>