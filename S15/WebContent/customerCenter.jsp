<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객센터 페이지</title>
	<link rel="stylesheet" href="css/mainPageStyle.css">
	<link rel="stylesheet" href="css/mainAndFooter.css">
	<link rel="stylesheet" href="css/customerCenterStyle.css">
	<script type="text/javascript">
		function readNotice() {
			window.open("notice/notice_read.jsp", "notice", "width=250, height=300");
		}
	</script>
</head>
<body>
	<body>
	<div class="main_wrap">
		<%@include file="menu.jsp" %>
	</div>
	<center>
		<div class = "customerCenter_div">
			<!-- 공지읽기, 쓰기 메뉴 -->
			<a href="javascript:readNotice()" class="custo_1">1:1 문의 작성 보기</a><br>
			<a href = "notice/notice_write.jsp" class="custo_2">1:1 문의 적기</a>
		</div>
	</center>
	<%@include file="footer.jsp" %>
</body>
	
</body>
</html>