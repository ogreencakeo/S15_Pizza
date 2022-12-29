<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이벤트페이지</title>
	<link rel="stylesheet" href="css/mainAndFooter.css">
	<link rel="stylesheet" href = "css/eventPageStyle.css">
</head>
<body>
	<div class="main_wrap">
		<%@include file="menu.jsp" %>
	</div>
	<center>
		<h2>이벤트</h2>
		<div class="event_list">
			<a href="eventPage.jsp">예정행사</a>
			<a href="preceeding_evnet.jsp">진행중인 행사</a>
			<a href="ended_event.jsp">종료된 행사</a>
		</div>
		<div class="eventPage_div 1">
			<div class="event_div 1">
				<img src="image/ep_event.PNG"><br/>
				<span>2029.1.28 &nbsp; &nbsp; ~ &nbsp; &nbsp; 2029.2.17</span>
			</div>
		</div>
		<br/><br/>
	</center>
	
	<%@include file="footer.jsp" %>
</body>
</html>