<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" href="css/mainAndFooter.css">
	<link rel="stylesheet" href="css/menuPageStyle.css">
	<script type="text/javascript">
		function check_event() {
			alert("이벤트 페이지에서 확인해주세요");
		}
	</script>
</head>
<body>
	<div class="main_wrap">
		<%@include file="menu.jsp" %>
	</div>
	<center>
		<div class="menu_list">
			<h2>메뉴</h2>
			<a href="menuPage.jsp">피자메뉴</a>
			<a href="pizzaSin.jsp">신메뉴</a>
			<a href="eventPage.jsp" onclick="check_event()">스페셜&할인</a>
		</div>
		<div class="menuPage_img_div">
			<div class="menuPage_img one">
				<img src= "image/spinach_cheese_piza.jpg"/><br/>
				<span class="color_gray">시금치 피자</span><br/>
				# 건강하게 먹고싶다면 시금치 피자<br/>
				<b><span class="color_red"> L </span></b>: 18,000 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
				<b><span class="color_red"> M </span></b> : 15,000<br/>
				<span class="color_yellow">원산지</span><br/>
					돼지고기(국내산), 쇠고기(호주산) <br/> 
					립 스테이크(쇠고기): 호주산<br/>
				<span class="color_green">영양성분</span><br/>
					열량(kcal) : 1010 단백질(g) : 20 </br> 나트륨(mg) : 1002
			</div>
			<div class="menuPage_img two">
				<img src= "image/bulgogi_pizza.jpg"/><br/>
				<span class="color_gray">불고기 피자</span><br/>
				# 풍부한 불고기와 함께 즐기세요<br/>
				<b><span class="color_red"> L </span></b>: 18,000 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
				<b><span class="color_red"> M </span></b> : 14,000<br/>
				<span class="color_yellow">원산지</span><br/>
					돼지고기(국내산), 쇠고기(호주산) <br/> 
					립 스테이크(쇠고기): 호주산<br/>
				<span class="color_green">영양성분</span><br/>
					열량(kcal) : 1090 단백질(g) : 34 </br> 나트륨(mg) : 1070
			</div>
		</div>
	</center>
	<%@include file="footer.jsp" %>
</body>
</html>