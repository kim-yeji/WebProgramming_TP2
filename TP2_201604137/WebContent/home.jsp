<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
SimpleDateFormat fmt = new SimpleDateFormat("HHmmss", Locale.KOREA);
String version = fmt.format(new Date());
%>
<html lang="en" dir="ltr">
<head>
<meta charset="utf-8">
								<!--jquery-ui-map--><!-- 
<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBs7V95odvEQcl2JX7BeQsKqTC60dL2xwg&callback=initMap"></script>
<script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
 -->
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.0/jquery-ui.js"></script>

<link href="<%= request.getContextPath() %>/css/home.css?v=<%=version %>" type="text/css" rel="stylesheet">
<link href="<%= request.getContextPath() %>/css/menu.css?v=<%=version %>" type="text/css" rel="stylesheet">
<link href="<%= request.getContextPath() %>/css/buy.css?v=<%=version %>" type="text/css" rel="stylesheet">
<script type="text/javascript" src="<%= request.getContextPath() %>/js/home.js?v=<%=version %>"></script>
<script type="text/javascript" src="<%= request.getContextPath() %>/js/menu.js?v=<%=version %>"></script>
<script type="text/javascript" src="<%= request.getContextPath() %>/js/buy.js?v=<%=version %>"></script>
<script type="text/javascript">
    
      function menu(obj){
		$("#banId").css('height','100%');

        if(obj == 1){
         	$(".container").load('home.jsp');
        }
        else if(obj == 2){
        	$("#banId").load('menu.jsp #t2'); //음료
        }
        else if(obj == 3){
        	$("#banId").load('menu.jsp #t3'); //케익
        }
        else if(obj == 4){ 
        	$("#banId").load('menu.jsp #t4'); //샌드위치
        }
        else if(obj == 5){
        	$("#banId").load('menuByPrice.jsp'); //가격별
        }
        else if(obj == 6){
        	$("#banId").load('menuByType.jsp'); //종류별
        }
        else if(obj == 7){
        	$("#banId").load('menuByBrand.jsp'); //브랜드별
        }
        else if(obj == 8){
        	$("#banId").load('menu.jsp?type=today'); //오늘의 메뉴(menu에 type에 today를 넣어서 파라미터를 던진다.)
        }
        else if(obj == 9){
        	$("#banId").load('mapmap.jsp'); //매장검색
        }
        else if(obj == 10){
        	$("#banId").load('mypage.jsp'); //내 구매정보
        }

      }


    </script>
<title>빠르고 간단한 테이크 아웃</title>
</head>
<body>
	<div class="container">
		<!-- Header : 간판 -->
		<header> <img id="headerImg" src="<%= request.getContextPath() %>/images/Header_1.jpg" alt="coffee take out"> </header>

		<!-- 메뉴바  -->
		<div class="menubar">
			<ul>
				<li><a href="javascript:menu('1');">홈</a></li>
				<li><a href="#" id="current">메뉴보기</a>
					<ul>
						<li><a href="javascript:menu('2');">음료</a></li>
						<li><a href="javascript:menu('3');">케익</a></li>
						<li><a href="javascript:menu('4');">샌드위치</a></li>
					</ul></li>
				<li><a href="#">메뉴검색</a>
					<ul>
						<li><a href="javascript:menu('5');">가격별</a></li>
						<li><a href="javascript:menu('6');">종류별</a></li>
						<li><a href="javascript:menu('7');">브랜드별</a></li>
					</ul></li>
				<li><a href="#recommend">메뉴추천</a>
					<ul>
						<li><a href="javascript:menu('8');">오늘의 메뉴</a></li>
					</ul></li>
				<li><a href="javascript:menu('9');">매장검색</a></li>
				<li><a href="javascript:menu('10');">내 구매정보</a></li>
			</ul>
		</div>


		<!-- 광고 자동 슬라이드 배너-->
		<div class="banner" id="banId">
			<ul>
				<li><img
					src="<%= request.getContextPath() %>/images/slide1.jpg"
					alt="slideImg1" width="1000" height="600"></li>
				<li><img
					src="<%= request.getContextPath() %>/images/slide2.jpg"
					alt="slideImg2" width="1000" height="600"></li>
				<li><img
					src="<%= request.getContextPath() %>/images/slide3.jpg"
					alt="slideImg3" width="1000" height="600"></li>
			</ul>
		</div>


		<footer>Copyright &copy; kimyeji</footer>
	</div>
	
	
	<!-- 팝업창 (예약 버튼, 시간과 지점 검색) -->
	<div id="layerId" class="layer">
		<div id="backLayer" class="bg"></div>
		<div id="addLayer" class="pop-layer" style="width: 400px; padding: 10px;">
			<div class="layerHeader rAr">
				<img  id="btnClose" src="images/remove-symbol.png" alt="x">
			</div>
			<div class="layerContent">
				<div class="ctgr">
					지점 선택       
					<select id="branch" name="branch" style="width: 170px; height:27px;">
						<option value="궁동점">궁동점</option>
						<option value="둔산점">둔산점</option>
						<option value="은행점">은행점</option>
						<option value="노은점">노은점</option>
						<option value="봉명점">봉명점</option>

					</select>
				</div>
				
				<div class="ctgr">
					시간 선택 
					<select id="recTime" name="recTime" style="width: 170px;height:27px;">
					
						<option value="오전 07:00 - 07:30">오전 07:00 - 07:30</option>
						<option value="오전 07:30 - 08:00">오전 07:30 - 08:00</option>
						<option value="오전 08:00 - 08:30">오전 08:00 - 08:30</option>
						<option value="오전 08:30 - 09:00">오전 08:30 - 09:00</option>
						<option value="오전 09:00 - 09:30">오전 09:00 - 09:30</option>
						<option value="오전 09:30 - 10:00">오전 09:30 - 10:00</option>
						<option value="오전 10:00 - 10:30">오전 10:00 - 10:30</option>
						<option value="오전 10:30 - 11:00">오전 10:30 - 11:00</option>
						<option value="오전 11:00 - 11:30">오전 11:00 - 11:30</option>
						<option value="오전 11:30 - 12:00">오전 11:30 - 12:00</option>
						<option value="오후 12:00 - 12:30">오후 12:00 - 12:30</option>
						<option value="오후 12:30 - 01:00">오후 12:30 - 01:00</option>
						<option value="오후 01:00 - 01:30">오후 01:00 - 01:30</option>
						<option value="오후 01:30 - 02:00">오후 01:30 - 02:00</option>
						<option value="오후 02:00 - 02:30">오후 02:00 - 02:30</option>
						<option value="오후 02:30 - 03:00">오후 02:30 - 03:00</option>
						<option value="오후 03:00 - 03:30">오후 03:00 - 03:30</option>
						<option value="오후 03:30 - 04:00">오후 03:30 - 04:00</option>
						<option value="오후 04:00 - 04:30">오후 04:00 - 04:30</option>
						<option value="오후 04:30 - 05:00">오후 04:30 - 05:00</option>
						<option value="오후 05:00 - 05:30">오후 05:00 - 05:30</option>
						<option value="오후 05:30 - 06:00">오후 05:30 - 06:00</option>
						<option value="오후 06:00 - 06:30">오후 06:00 - 06:30</option>
						<option value="오후 06:30 - 07:00">오후 06:30 - 07:00</option>
						<option value="오후 07:00 - 07:30">오후 07:00 - 07:30</option>
						<option value="오후 07:30 - 08:00">오후 07:30 - 08:00</option>

					</select>
				</div>
				
				<div class="ctgr rAr">
					<input type="button" id="btnLayer" value="구매하기" style="width: 100px;" >
				</div>
			</div>
		</div>
	</div>
	
</body>
</html>
