<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메뉴페이지</title>
	<link rel="stylesheet" href="css/mainAndFooter.css">
	<link rel="stylesheet" href="css/menuPageStyle.css">
	<script type="text/javascript">
		function pizzamenu_move{
			location.href="<%=request.getContextPath()%>menuPage.jsp";
		}
		function check_event() {
			alert("이벤트 페이지에서 확인해주세요");
		}
		</script>
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
			<a href ="eventPage.jsp" onclick="check_event()">스페셜&할인</a>
		</div>
		<div class="menuPage_img_div">
			<div class="menuPage_img one">
				<img src= "image/combination_pizza.jpg"/><br/>
				<span class="color_gray">콤비네이션 피자</span><br/>
				# 많은 사람이 즐기는 기본 피자<br/>
				<b><span class="color_red"> L </span></b>: 15,000 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
				<b><span class="color_red"> M </span></b> : 10,000<br/>
				<span class="color_yellow">원산지</span><br/>
					돼지고기(국내산), 쇠고기(호주산) <br/> 
					립 스테이크(쇠고기): 호주산<br/>
				<span class="color_green">영양성분</span><br/>
					열량(kcal) : 1000 단백질(g) : 20 </br> 나트륨(mg) : 1024
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
			<div class="menuPage_img three">
				<img src= "image/potato_pizza.jpg"/><br/>
				<span class="color_gray">포테이토 피자</span><br/>
				# 갓구운 감자와 함께 먹는 맛있는 피자<br/>
				<b><span class="color_red"> L </span></b>: 17,000 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
				<b><span class="color_red"> M </span></b> : 12,500<br/>
				<span class="color_yellow">원산지</span><br/>
					돼지고기(국내산), 쇠고기(호주산) <br/> 
					립 스테이크(쇠고기): 호주산<br/>
				<span class="color_green">영양성분</span><br/>
					열량(kcal) : 1070 단백질(g) : 28 </br> 나트륨(mg) : 1050
			</div>
			<div class="menuPage_img four">
				<img src= "image/pepperoni_piza.jpg"/><br/>
				<span class="color_gray">페페로니 피자</span><br/>
				# 햄 조합이라니! 엄청난 JMT!<br/>
				<b><span class="color_red"> L </span></b>: 17,000 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
				<b><span class="color_red"> M </span></b> : 12,000<br/>
				<span class="color_yellow">원산지</span><br/>
					돼지고기(국내산), 쇠고기(호주산) <br/> 
					립 스테이크(쇠고기): 호주산<br/>
				<span class="color_green">영양성분</span><br/>
					열량(kcal) : 1100 단백질(g) : 35 </br> 나트륨(mg) : 1105
			</div>
		</div>
	</center>
	<%@include file="footer.jsp" %>
</body>
</html>