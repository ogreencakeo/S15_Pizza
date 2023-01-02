<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 작성하기</title>
	<link rel="stylesheet" href="css/mainAndFooter.css">
	<style type="text/css">
		.board_table{
			width: 800px;
		}
		.board_table text{
			width: 550px;
		}
		.board_hr{
			margin-top: 100px;
		}
		.board_button{
			width: 100px;
			background-color: white;
			border: 2px solid #8eb1d1;
		}
		.board_button:hover {
			background-color: black;
			color: white;
		}
	</style>
</head>
<body>
	<div class="main_wrap">
		<%@include file="menu.jsp" %>
	</div>
	<center>
		<hr width="500" color="green" size="1" class="board_hr"/>
		<h3> 글작성하기</h3>
		<hr width="500" color="green" size="1" /> <br/><br/>
		<table width="800" cellpadding="0" cellspacing="0" border="1" class="board_table">
		<!-- 	<form action="write.do" method="post">  -->
			<form action = "insertBoard1.jsp">
				<tr>
					<td> 이름</td>
					<td><input type="text" name="bname" size="110"/></td>
				</tr>
				<tr>
					<td>제목</td>
					<td><input type="text" name="btitle" size="110"/></td>
				</tr>
				<tr>
					<td>내용</td>
					<td><textarea name="bcontent" rows="15" cols="112"></textarea></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit" value="등록" class="board_button"/></td>
				</tr>			
			</form>
		</table>
		<br/><br/>
		<!-- <a href="list.do">목록으로</a>  -->
	    <a href = "list2.jsp">목록으로</a>
	</center>
	<%@include file="footer.jsp" %>
</body>
</html>