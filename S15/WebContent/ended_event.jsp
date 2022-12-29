<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이벤트 페이지</title>
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
				<img src="image/end_event.PNG"><br/>
				<span>2028.12.25 &nbsp; &nbsp; ~ &nbsp; &nbsp; 2028.12.31</span>
			</div>
		</div>
		<br/><br/>
		<div class="eventPage_div 2">
			<div class="event_div 2">
				<img src="image/end_event2.PNG"><br/>
				<span>2028.7.14 &nbsp; &nbsp; ~ &nbsp; &nbsp; 2028.7.30</span>
			</div>
		</div>
		<br/><br/>
	</center>
	<%@include file="footer.jsp" %>
</body>
</html>