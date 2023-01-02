<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%!
	String id, pw;
%> 
<%
	id = (String)session.getAttribute("id");
	pw = (String)session.getAttribute("pw");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 결과</title>
	<link rel="stylesheet" href="css/mainAndFooter.css">
</head>
<body>
	<div class="main_wrap">
		<%@include file="menu.jsp" %>
	</div>
	<center>
		<hr style="margin-top: 100px;">
		<b><%=id%>님 환영합니다.</b>
		<hr>
	</center>
	<%@include file="footer.jsp" %>
</body>
</html>