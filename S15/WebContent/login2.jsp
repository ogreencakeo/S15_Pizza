<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
<!-- <script type="text/javascript">
	function getShow(){
		document.getElementById("modal_login").style.display = "";
	}
	
	function getHide(){
		document.getElementById("modal_login").style.display = "none";
	}
</script> -->
<style>
	/* .modal_login p{
		font-size: 20px;
		display: inline-block;
	}
	.modal_login button{
	    background-color: white;
	}
	.login_table tr td{
		text-align: center;
	} */
	<link rel="stylesheet" href="css/mainPageStyle.css">
	<link rel="stylesheet" href="css/mainAndFooter.css">
</style>
<!-- <form action="LoginOK" method="post">
	<div id="modal_login"  style="display:none;">
	 	<div class="modal_login">
	 		<hr width="150" size = "5" color="gray"/>
			<p>로그인</p>
			<button onclick="getHide()">✖</button>
			<hr width="150" size = "5" color="gray"/>
				<center>
					<table class="login_table">
						<tr>
							<td>아이디 : </td>
							<td><input type="text" name="id" required="required"></td>
						</tr>
						<tr>
							<td>비밀번호 : </td>
							<td><input type="password" name="pwd" required="required"></td>
						</tr>
						<tr >
							<td><input type="submit" value="로그인하기" ></td>
						</tr>
					</table>
				</center>
		</div>
	</div>
</form> -->
<body>
	<div class="main_wrap">
		<%@include file="menu.jsp" %>
	</div>
	<div class = "login_chang">
	</div>
	<%@include file="footer.jsp" %>
</body>