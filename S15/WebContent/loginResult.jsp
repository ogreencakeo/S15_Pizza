<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%!
	String id, pw;
%> 
<%
	id = (String) session.getAttribute("id");
	pw = (String) session.getAttribute("pw");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 결과</title>
</head>
<body>
	<center>
		<hr>
		<b><%=id%>님 환영합니다.</b>
		<hr>
	</center>
	<%@include file="mainPage.jsp" %>
</body>
</html>