<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> --%>

<%@ page import = "board2.BoardDTO" %>
<%@ page import = "board2.BoardDAO" %>
<jsp:useBean id="boa" class = "board2.BoardDAO"/>    
    
<%
	BoardDTO arr[] = boa.select();
	if(arr ==null || arr.length ==0){
		out.println("등록된 글이 없습니다...!!!");
		return;
	}
%>  
    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 목록</title>
<link rel="stylesheet" href="css/mainAndFooter.css">
</head>
<body>
	<div class="main_wrap">
		<%@include file="menu.jsp"%>
	</div>
	<center>
		<table width="800" cellpadding="0" cellspacing="0" border=1>
			<!-- 제목 -->
			<tr>
				<td align="center" width="50">이름</td>
				<td align="center" width=200>제목</td>
				<td align="center" width=200>내용</td>
			</tr>
			
			<br />
			<%
				for(int i = 0; i< arr.length; i++){
					String bname2 = arr[i].getBname();
					String btitle2 = arr[i].getBtitle();
					String bcontent2 = arr[i].getBcontent();
			%>
			<tr>
				<td><%=bname2%></td>
				<td><%=btitle2 %></td>
				<td><%=bcontent2 %></td>		
			</tr>
			<%
					}
			%>
	
		</table>
		<br>
		<br>
		<br> <!-- <a href="write_view.do">글쓰기</a>  -->
		<a href = "write_form2.jsp">글쓰기</a>
	</center>
	<%@include file="footer.jsp"%>
</body>
</html>