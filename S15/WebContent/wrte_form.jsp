<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<center>
		<hr width="500" color="green" size="1" />
		<h3> 글작성하기</h3>
		<hr width="500" color="green" size="1" /> 
		<table width="800" cellpadding="0" cellspacing="0" border="1">
			<form action="write.do" method="post">
				<tr>
					<td>이름</td>
					<td><input type="text" name="bname" size="20"/></td>
				</tr>
				<tr>
					<td>제목</td>
					<td><input type="text" name="btitle" size="50"/></td>
				</tr>
				<tr>
					<td>내용</td>
					<td><textarea name="bcontent" rows="10" cols="80"></textarea></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit" value="등록"/>&nbsp;&nbsp;<a href="list.do">목록으로</a></td>
				</tr>			
			</form>
		</table>
	</center>
</body>
</html>