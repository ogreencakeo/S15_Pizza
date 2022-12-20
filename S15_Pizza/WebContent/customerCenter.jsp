<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객센터 페이지</title>
	<link rel="stylesheet" href="css/mainPageStyle.css">
	<link rel="stylesheet" href="css/mainAndFooter.css">
	<script type="text/javascript">
		function getShow(){
			document.getElementById("modal_login").style.display = "";
		}
		
		function getHide(){
			document.getElementById("modal_login").style.display = "none";
		}
	</script>
</head>
<body>
	<div class="main_wrap">
		<%@include file="menu.jsp" %>
		<div class="question_div">
			<div class="question_div1">
				<div class="question_div1_mark">질문</div>
				<div class="qustion_div1_question1">
					
				</div>
				<div class="question_answer1">
				</div>
			</div>
		</div>
		<%@include file="footer.jsp" %>
		<%@include file="login.jsp" %>
	</div>
	
</body>
</html>