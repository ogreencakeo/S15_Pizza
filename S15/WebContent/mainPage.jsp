<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인페이지</title>
	<link rel="stylesheet" href="css/mainPageStyle.css">
	<link rel="stylesheet" href="css/mainAndFooter.css">
	<script type="text/javascript">
		function getShow(){
			document.getElementById("modal_login").style.display = "";
		}
		
		function getHide(){
			document.getElementById("modal_login").style.display = "none";
		}
	</script>
</head>
<body>
	<div class="main_wrap">
		<%@include file="menu.jsp" %>
		<div class="section_wrap">
            <div class="event_button one">
                <button></button>
            </div>
            <div class="main_event1_div">
                <img class="evnet_banner1" src="image/evnet_banner1.PNG">
            </div>
            <div class="event_button two">
                <button></button>
            </div>
            <div class="catagory_pizza_list">
                <ul>
                    <li>sdkas</li>
                    <li>sdkas</li>
                    <li>sdkas</li>
                    <li>sdkas</li>
                    <li>sdkas</li>
                </ul>
            </div>
        </div>
        <div class="section2_wrap">
            <div class="find_a_store">
                <div>
                    <img src="image/search_icon.png">
                    <div class="find_a_store_span">
                        <span>고객님 주위의 매장을 찾아볼까요?</span>
                        <span>매장 찾기</span>
                    </div>
                </div>
            </div>
            <div class="member_benefits">
                <div class="member_benefits_span">
                    <img src="image/member.png">
                    <span>혹시 회원이신가요?</span>
                    <span>회원 혜택</span>
                </div>
            </div>
        </div>
		<%@include file="footer.jsp" %>
		<%@include file="login.jsp" %>
	</div>
</body>
</html>