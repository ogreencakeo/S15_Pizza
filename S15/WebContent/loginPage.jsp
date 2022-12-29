<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%-- <%
	if(session.getAttribute("valid") !=null){
%>
<jsp:forward page="loginPage.jsp"/>	
<% 
	}
%> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
	<link rel="stylesheet" href="css/mainAndFooter.css">
	<link rel="stylesheet" href="css/loginPageStyle.css"> 
<body>
	<div class="main_wrap">
		<%@include file="menu.jsp" %>
	</div>
	<center>
		<div class = "login_chang">
			<hr width="500" size="4" color="red">
			<h3>로그인</h3>
			<hr width="500" size="4" color="red" class="b">
			<img class="pizza_logo_img" src="image/pizza_logo_img.png"><br/>
			<!-- <form action="LoginOK" method="post">
				아이디 : <input type="text" name="id" class="a" required="required"/><br/>
				비밀번호 : <input type="password" name="pw" class="aa" required="required"/><br/> 
				<input type="submit" value="로그인하기" class="login_button"/>
				<input type="reset" value="취소" class="login_button"/>
			</form> -->
			
			<form action="loginOK.jsp" method="post">
			아이디 :<input type="text" name="id" value="<%if(session.getAttribute("id") !=null) 
				out.println(session.getAttribute("id"));%>" class="a" required="required"><br/>
			비밀번호 : <input type="password" name="pw"  class="aa" required="required"><br/>
			<input type="submit" value="로그인"  class="login_button">
			<input type="reset" value="취소" class="login_button"/>
	</form>
		</div>
	</center>

	<!-- <form action="LoginOK" method="post">
		<center>
			<div class = "login_chang">
				<hr width="500" size="4" color="red">
				<h3>로그인</h3>
				<hr width="500" size="4" color="red" class="b">
				<img class="pizza_logo_img" src="image/pizza_logo.png"><br/>
				아이디 : <input type="text" name="id" class="a" required="required"/><br/>
				비밀번호 : <input type="password" name="pw" class="aa" required="required"/><br/> 
				<input type="submit" value="로그인하기" class="login_button"/>
				<input type="reset" value="취소" class="login_button"/>
			</div>
		</center>
	</form> -->
	
	<%@include file="footer.jsp" %>
</body>
</html>