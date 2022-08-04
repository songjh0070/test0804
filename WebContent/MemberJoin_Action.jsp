<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Dao.MemberDao"%>
<%@ page import="Dao.MemberDto"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
	<%
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		
		MemberDao mdao = new MemberDao();
		mdao.NewMember(id, pw, name);
	%>
<body>
	<script>
    		alert("가입되었습니다. 로그인 해주세요.");
    		location.href = "Login.jsp";
    	
    </script>
	
</body>
</html>