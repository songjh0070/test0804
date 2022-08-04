<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="js/jquery-3.6.0.min.js"></script>
</head>
	<style>
		body{
			width : 1070px;
			margin : 0 auto;
		}
		
		.body{
			margin-top : 20px;
		}
		
		.head_right{
			float : right;
		}
		p{
			margin : 0;
		}
		
		.bottom{
			border : 1px solid gray;
			float : right;
		}
	</style>
	
	<script>
		$(function(){
			$('#logout').click(function(){
				alert('로그아웃 되었습니다');
				$(location).attr("href", "Login.jsp");
			});
			
		});
	</script>
	<%
		String id = request.getParameter("id");
	
		
	%>
<body>
	<div class = "head">
		<strong style = "font-size : 30px;">메인 페이지</strong>
		<div class = "head_right">
			<span>누구(<%=id %>)님 안녕하세요</span>
			<button id="logout" style = "display : inline-block;">로그아웃</button>
			<p>포인트 : 점</p>
		</div>
		
		
	</div>
	<div class = "body">
		<div class = "body_text">
			<strong style = "font-size : 20px;">구입할 컨텐츠를 선택하세요</strong>
		</div>
		<div class = "body_img">
			<div style="display : inline-block;">
				<img src="Images/Intro_350_408.png">
				<p>100,000포인트</p>
			</div>
			<div style="display : inline-block;">
				<img src="Images/Java_350_408.png">
				<p>500,000포인트</p>
			</div>
			<div style="display : inline-block;">
				<img src="Images/Cpp_350_408.png">
				<p>300,000포인트</p>
			</div>
		</div>
	</div>
	
	<div class = "bottom">
		<div><광고></div>
		<img onclick = "location.href='pluspointaction.jsp'" src = "Images/korea_it.png">
	</div>
	
</body>
</html>