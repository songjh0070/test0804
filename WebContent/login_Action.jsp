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
<body>
	<%
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		
		MemberDao mdao = new MemberDao();
		mdao.MemberLogin(id, pw);
		
		mdao.member();
		
		if(mdao.MemberLogin(id,pw) == 1){
			%>
				<script>
					alert('로그인 완료');
					location.href = 'MainPage.jsp?id=<%=id%>&name=<%=name%>&pw=<%=pw%>';
				</script>
			<%
		}else{
			%>
				<script>
					alert('로그인 실패!');
					location.href = 'Login.jsp';
				</script>
			<%
		}
	%>
</body>
</html>