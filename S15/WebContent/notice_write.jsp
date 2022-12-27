<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
    
<%
	Calendar cal = Calendar.getInstance();
	int yy = cal.get(Calendar.YEAR);
	int mm = cal.get(Calendar.MONTH)+1;
	int dd = cal.get(Calendar.DAY_OF_MONTH);
	
	
	String fname = yy+"";
	if(mm<10)
		fname+=("0"+mm);
	else
		fname+=mm;
	if(dd<10)
		fname+=("0"+dd);
	else
		fname+=dd;
	
	fname+=".html";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
	<link rel="stylesheet" href="css/mainAndFooter.css">
</head>
<body>

	<div class="main_wrap">
		<%@include file="menu.jsp" %>
	</div>	
	<center>
		<h2>오늘의 공지사항</h2>
		<form action="notice_save.jsp" method="post">
			<table border=1 width=500>
				<tr>
					<th>제목</th>
					<td>
						<input type="text" name="title"/>
					</td>
				</tr>
				<tr>
					<th>공지내용</th>
					<td>
						<textarea name="info" rows="5" cols="50"></textarea> 
					</td>
				</tr>
				<tr>
					<th>파일명</th>
					<td>
						<input type="text" name="filename" value="<%=fname%>" disabled>
						<input type="hidden" name="filename" value="<%=fname%>">
					</td>
				</tr>
				<tr>
					<td colspan=2 align="center">
						<input type="submit" value="작성" />
						<input type="reset" value="취소" />
					</td>
				</tr>
			</table>
		</form>
		<br/>
		<% 
			out.println("<font color=#f587ab><b>");
			out.println(yy+"년"+mm+"월"+dd+"일");
			out.println("</b></font>");
		%>	
	</center>
	<%@include file="footer.jsp" %>

</body>
</html>