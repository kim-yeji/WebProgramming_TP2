<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
$(document).ready(function() {
	//받아온 파라미터 값type이 today일 때만 동작
	if('<%=request.getParameter("type")%>' == 'today'){ 
   		$('.food').hide(); //전체를 숨기고
   		$('.todayM').show();//랜덤으로 선택 된 애들만 보여준다.
   		
 		var ediyaRan = Math.floor(Math.random() * 12);
   		var angelRan = Math.floor(Math.random() * 12);
   		var hollysRan = Math.floor(Math.random() * 15);
   		var tomntomsRan = Math.floor(Math.random() * 10);
   		var twosomeRan = Math.floor(Math.random() * 8);
   		
		$('.ediya').each(function(index){ //이디야의 인덱스를 다 검색해서
 	    	if(index != ediyaRan){ //랜덤으로 나온애가 아니면 다 숨김
 	    		$(this).hide(); 
 	    	}else{
 	    		$('#menuDiv1').html($(this).html()); //그걸 menuDiv1에 보여준다
 	    	}
		});  
		$('.angel').each(function(index){
 	    	if(index != angelRan){
 	    		$(this).hide(); 
 	    	}else{
 	    		$('#menuDiv2').html($(this).html());
 	    	}
		});  
		$('.hollys').each(function(index){
 	    	if(index != hollysRan){
 	    		$(this).hide(); 
 	    	}else{
 	    		$('#menuDiv3').html($(this).html());
 	    	}
		});  
		$('.tomntoms').each(function(index){
 	    	if(index != tomntomsRan){
 	    		$(this).hide(); 
 	    	}else{
 	    		$('#menuDiv4').html($(this).html());
 	    	}
		});  
		$('.twosome').each(function(index){
 	    	if(index != twosomeRan){
 	    		$(this).hide(); 
 	    	}else{
 	    		$('#menuDiv5').html($(this).html());
 	    	}
		});
		
	}
});
</script>
</head>
<body>
	<div class="todayM" style="display:none;"> 
		<b>Ediya's Recommendation</b>
		<div id="menuDiv1"></div>
	</div>
	
	<div class="todayM" style="display:none;">
		<b>Angel-in-us's Recommendation</b>
		<div id="menuDiv2"></div>
	</div>
	
	<div class="todayM" style="display:none;">
		<b>Hollys's Recommendation</b>
		<div id="menuDiv3"></div>
	</div>
	
	<div class="todayM" style="display:none;">
		<b>Tom n toms's Recommendation</b>
		<div id="menuDiv4"></div>
	</div>
	
	<div class="todayM" style="display:none;">
		<b>Twosome Place's Recommendation</b>
		<div id="menuDiv5"></div>
	</div>

	<!-- ********************************************************************************************************************* -->

	<!-- 메뉴들 나열-->
	<div id="t2">
		<div class="ediya beverage food" price="2500" menu="아메리카노" imgs="ediya/ice.JPG">
			<img src="<%=request.getContextPath()%>/images/ediya/ice.JPG"
				alt="아메리카노" height="170" width="170"><br> <span>아메리카노</span>
			<p>2500원</p>
			<button id="buyBtn" onclick="buyPopUp(this)">구매</button>
		</div>

		<div class="ediya beverage food" price="3200" menu="카푸치노" imgs="ediya/cappu.JPG">
			<img src="<%=request.getContextPath()%>/images/ediya/cappu.JPG"
				alt="카푸치노" height="170" width="170"><br> <span>카푸치노</span>
			<p>3200원</p>
			<button id="buyBtn" onclick="buyPopUp(this)">구매</button>
		</div>

		<div class="ediya beverage food" price="3500" menu="캬라멜마끼야또" imgs="ediya/caramel1.JPG">
			<img src="<%=request.getContextPath()%>/images/ediya/caramel1.JPG"
				alt="카라멜" height="170" width="170"><br> <span>캬라멜마끼야또</span>
			<p>3500원</p>
			<button id="buyBtn" onclick="buyPopUp(this)">구매</button>
		</div>

		<div class="ediya beverage food" price="3200" menu="초콜릿" imgs="ediya/choco.JPG">
			<img src="<%=request.getContextPath()%>/images/ediya/choco.JPG"
				alt="초코" height="170" width="170"><br> <span>초콜릿</span>
			<p>3200원</p>
			<button id="buyBtn" onclick="buyPopUp(this)">구매</button>
		</div>

		<div class="ediya beverage food" price="3800" menu="청포도스무디" imgs="ediya/grape1.JPG">
			<img src="<%=request.getContextPath()%>/images/ediya/grape1.JPG"
				alt="청포도" height="170" width="170"><br> <span>청포도
				스무디</span>
			<p>3800원</p>
			<button id="buyBtn" onclick="buyPopUp(this)">구매</button>
		</div>

		<div class="ediya beverage food" price="3200" menu="녹차라떼" imgs="ediya/green1.JPG">
			<img src="<%=request.getContextPath()%>/images/ediya/green1.JPG"
				alt="녹차" height="170" width="170"><br> <span>녹차라떼</span>
			<p>3200원</p>
			<button id="buyBtn" onclick="buyPopUp(this)">구매</button>
		</div>

		<div class="ediya beverage food" price="3200" menu="자두스무디" imgs="ediya/jadu1.JPG">
			<img src="<%=request.getContextPath()%>/images/ediya/jadu1.JPG"
				alt="자두" height="170" width="170"><br> <span>자두
				스무디</span>
			<p>3200원</p>
			<button id="buyBtn" onclick="buyPopUp(this)">구매</button>
		</div>

		<div class="ediya beverage food" price="3500" menu="카페모카" imgs="ediya/mocha1.JPG">
			<img src="<%=request.getContextPath()%>/images/ediya/mocha1.JPG"
				alt="모카" height="170" width="170"><br> <span>카페 모카</span>
			<p>3500원</p>
			<button id="buyBtn" onclick="buyPopUp(this)">구매</button>
		</div>


		<div class="angel beverage food" price="5600" menu="딸기스노우" imgs="angel/berry.JPG">
			<img src="<%=request.getContextPath()%>/images/angel/berry.JPG"
				alt="딸기" height="170" width="170"><br> <span>딸기
				스노우</span>
			<p>5600원</p>
			<button id="buyBtn" onclick="buyPopUp(this)">구매</button>
		</div>

		<div class="angel beverage food" price="5000" menu="카푸치노" imgs="angel/cappu.JPG">
			<img src="<%=request.getContextPath()%>/images/angel/cappu.JPG"
				alt="카푸치노" height="170" width="170"><br> <span>카푸치노</span>
			<p>5000원</p>
			<button id="buyBtn" onclick="buyPopUp(this)">구매</button>
		</div>

		<div class="angel beverage food" price="5000" menu="카라멜마끼야또" imgs="angel/caramel.JPG">
			<img src="<%=request.getContextPath()%>/images/angel/caramel.JPG"
				alt="캬라멜" height="170" width="170"><br> <span>캬라멜
				마끼야또</span>
			<p>5000원</p>
			<button id="buyBtn" onclick="buyPopUp(this)">구매</button>
		</div>

		<div class="angel beverage food" price="6000" menu="그린티스노우" imgs="angel/green.JPG">
			<img src="<%=request.getContextPath()%>/images/angel/green.JPG"
				alt="그린티" height="170" width="170"><br> <span>그린 티
				스노우</span>
			<p>6000원</p>
			<button id="buyBtn" onclick="buyPopUp(this)">구매</button>
		</div>

		<div class="angel beverage food" price="3900" menu="아메리카노" imgs="angel/hot.JPG">
			<img src="<%=request.getContextPath()%>/images/angel/hot.JPG"
				alt="아메리카노" height="170" width="170"><br> <span>아메리카노</span>
			<p>3900원</p>
			<button id="buyBtn" onclick="buyPopUp(this)">구매</button>
		</div>

		<div class="angel beverage food" price="5600" menu="망고스노우" imgs="angel/mango.JPG">
			<img src="<%=request.getContextPath()%>/images/angel/mango.JPG"
				alt="망고" height="170" width="170"><br> <span>망고
				스노우</span>
			<p>5600원</p>
			<button id="buyBtn" onclick="buyPopUp(this)">구매</button>
		</div>

		<div class="angel beverage food" price="5100" menu="카페모카" imgs="angel/mocha.JPG">
			<img src="<%=request.getContextPath()%>/images/angel/mocha.JPG"
				alt="카페모카" height="170" width="170"><br> <span>카페모카</span>
			<p>5100원</p>
			<button id="buyBtn" onclick="buyPopUp(this)">구매</button>
		</div>

		<div class="angel beverage food" price="6300" menu="핑크초코블라썸" imgs="angel/pink.JPG">
			<img src="<%=request.getContextPath()%>/images/angel/pink.JPG"
				alt="핑크" height="170" width="170"><br> <span>핑크 초코
				블라썸</span>
			<p>6300원</p>
			<button id="buyBtn" onclick="buyPopUp(this)">구매</button>
		</div>

		<div class="hollys beverage food"price="4600" menu="카푸치노" imgs="hollys/cappu.JPG">
			<img src="<%=request.getContextPath()%>/images/hollys/cappu.JPG"
				alt="cappu" height="170" width="170"><br> <span>카푸치노</span>
			<p>4600원</p>
			<button id="buyBtn" onclick="buyPopUp(this)">구매</button>
		</div>

		<div class="hollys beverage food"price="5900" menu="벨지안초코" imgs="hollys/choco.JPG">
			<img src="<%=request.getContextPath()%>/images/hollys/choco.JPG"
				alt="choco" height="170" width="170"><br> <span>벨지안
				초코</span>
			<p>5900원</p>
			<button id="buyBtn" onclick="buyPopUp(this)">구매</button>
		</div>

		<div class="hollys beverage food" price="5500" menu="청포도스파클링" imgs="hollys/grape.JPG">
			<img src="<%=request.getContextPath()%>/images/hollys/grape.JPG"
				alt="grape" height="170" width="170"><br> <span>청포도
				스파클링</span>
			<p>5500원</p>
			<button id="buyBtn" onclick="buyPopUp(this)">구매</button>
		</div>

		<div class="hollys beverage food" price="4100" menu="아메리카노" imgs="hollys/hot.JPG">
			<img src="<%=request.getContextPath()%>/images/hollys/hot.JPG"
				alt="hot" height="170" width="170"><br> <span>아메리카노</span>
			<p>4100원</p>
			<button id="buyBtn" onclick="buyPopUp(this)">구매</button>
		</div>

		<div class="hollys beverage food" price="5500" menu="자몽스파클링" imgs="hollys/jamong.JPG">
			<img src="<%=request.getContextPath()%>/images/hollys/jamong.JPG"
				alt="jamong" height="170" width="170"><br> <span>자몽
				스파클링</span>
			<p>5500원</p>
			<button id="buyBtn" onclick="buyPopUp(this)">구매</button>
		</div>

		<div class="hollys beverage food" price="4300" menu="할리스유자차" imgs="hollys/jeju.JPG">
			<img src="<%=request.getContextPath()%>/images/hollys/jeju.JPG"
				alt="jeju" height="170" width="170"><br> <span>할리스
				유자차</span>
			<p>4300원</p>
			<button id="buyBtn" onclick="buyPopUp(this)">구매</button>
		</div>

		<div class="hollys beverage food" price="4600" menu="카페라떼" imgs="hollys/latte.JPG">
			<img src="<%=request.getContextPath()%>/images/hollys/latte.JPG"
				alt="latte" height="170" width="170"><br> <span>카페
				라떼</span>
			<p>4600원</p>
			<button id="buyBtn" onclick="buyPopUp(this)">구매</button>
		</div>

		<div class="hollys beverage food" price="5300" menu="민트초코" imgs="hollys/mint.JPG">
			<img src="<%=request.getContextPath()%>/images/hollys/mint.JPG"
				alt="mint" height="170" width="170"><br> <span>민트
				초코</span>
			<p>5300원</p>
			<button id="buyBtn" onclick="buyPopUp(this)">구매</button>
		</div>

		<div class="hollys beverage food" price="5500" menu="카페모카" imgs="hollys/mocha.JPG">
			<img src="<%=request.getContextPath()%>/images/hollys/mocha.JPG"
				alt="mocha" height="170" width="170"><br> <span>카페
				모카</span>
			<p>5500원</p>
			<button id="buyBtn" onclick="buyPopUp(this)">구매</button>
		</div>

		<div class="hollys beverage food" price="5200" menu="화이트초코" imgs="hollys/whitechoco.JPG">
			<img
				src="<%=request.getContextPath()%>/images/hollys/whitechoco.JPG"
				alt="whitechoco" height="170" width="170"><br> <span>화이트
				초코</span>
			<p>5200원</p>
			<button id="buyBtn" onclick="buyPopUp(this)">구매</button>
		</div>

		<div class="tomntoms beverage food" price="4300" menu="카푸치노" imgs="tomntoms/cappu.JPG">
			<img src="<%=request.getContextPath()%>/images/tomntoms/cappu.JPG"
				alt="cappu" height="170" width="170"><br> <span>카푸치노</span>
			<p>4300원</p>
			<button id="buyBtn" onclick="buyPopUp(this)">구매</button>
		</div>

		<div class="tomntoms beverage food" price="4800" menu="카라멜마끼야또" imgs="tomntoms/caramel.JPG">
			<img
				src="<%=request.getContextPath()%>/images/tomntoms/caramel.JPG"
				alt="cappu" height="170" width="170"><br> <span>카라멜
				마끼야또</span>
			<p>4800원</p>
			<button id="buyBtn" onclick="buyPopUp(this)">구매</button>
		</div>

		<div class="tomntoms beverage food" price="5300" menu="자바칩탐앤치노" imgs="tomntoms/choco.JPG">
			<img src="<%=request.getContextPath()%>/images/tomntoms/choco.JPG"
				alt="choco" height="170" width="170"><br> <span>자바
				칩 탐앤치노</span>
			<p>5300원</p>
			<button id="buyBtn" onclick="buyPopUp(this)">구매</button>
		</div>

		<div class="tomntoms beverage food" price="4100" menu="청포도스무디" imgs="omntoms/grape.JPG">
			<img src="<%=request.getContextPath()%>/images/tomntoms/grape.JPG"
				alt="grape" height="170" width="170"><br> <span>청포도
				스무디</span>
			<p>4100원</p>
			<button id="buyBtn" onclick="buyPopUp(this)">구매</button>
		</div>

		<div class="tomntoms beverage food" price="4900" menu="그린티탐앤치노" imgs="tomntoms/green.JPG">
			<img src="<%=request.getContextPath()%>/images/tomntoms/green.JPG"
				alt="green" height="170" width="170"><br> <span>그린티
				탐앤치노</span>
			<p>4900원</p>
			<button id="buyBtn" onclick="buyPopUp(this)">구매</button>
		</div>

		<div class="tomntoms beverage food " price="3800" menu="아메리카노" imgs="tomntoms/hot.JPG">
			<img src="<%=request.getContextPath()%>/images/tomntoms/hot.JPG"
				alt="hot" height="170" width="170"><br> <span>아메리카노</span>
			<p>3800원</p>
			<button id="buyBtn" onclick="buyPopUp(this)">구매</button>
		</div>

		<div class="tomntoms beverage food" price="4800" menu="자몽에이드" imgs="tomntoms/jamong.JPG">
			<img src="<%=request.getContextPath()%>/images/tomntoms/jamong.JPG"
				alt="jamong" height="170" width="170"><br> <span>자몽
				에이드</span>
			<p>4800원</p>
			<button id="buyBtn" onclick="buyPopUp(this)">구매</button>
		</div>

		<div class="tomntoms beverage food " price="4900" menu="키위스무디" imgs="tomntoms/kiwi.JPG">
			<img src="<%=request.getContextPath()%>/images/tomntoms/kiwi.JPG"
				alt="kiwi" height="170" width="170"><br> <span>키위
				스무디</span>
			<p>4900원</p>
			<button id="buyBtn" onclick="buyPopUp(this)">구매</button>
		</div>

		<div class="tomntoms beverage food" price="4200" menu="카페라떼" imgs="tomntoms/latte.JPG">
			<img src="<%=request.getContextPath()%>/images/tomntoms/latte.JPG"
				alt="latte" height="170" width="170"><br> <span>카페라떼</span>
			<p>4200원</p>
			<button id="buyBtn" onclick="buyPopUp(this)">구매</button>
		</div>

		<div class="tomntoms beverage food" price="5500" menu="타로스무디" imgs="tomntoms/taro.JPG">
			<img src="<%=request.getContextPath()%>/images/tomntoms/taro.JPG"
				alt="taro" height="170" width="170"><br> <span>타로스무디</span>
			<p>5500원</p>
			<button id="buyBtn" onclick="buyPopUp(this)">구매</button>
		</div>
		
		<div class="twosome beverage food" price="4100" menu="아메리카노" imgs="twosome/ice.jpg">
			<img src="<%=request.getContextPath()%>/images/twosome/ice.jpg"
				alt="ice" height="170" width="170"><br> <span>아메리카노</span>
			<p>4100원</p>
			<button id="buyBtn" onclick="buyPopUp(this)">구매</button>
		</div>
		
		<div class="twosome beverage food" price="5500" menu="오렌지에이드" imgs="twosome/ade.JPG">
			<img src="<%=request.getContextPath()%>/images/twosome/ade.JPG"
				alt="ade" height="170" width="170"><br> <span>오렌지 에이드</span>
			<p>5500원</p>
			<button id="buyBtn" onclick="buyPopUp(this)">구매</button>
		</div>
		
		<div class="twosome beverage food" price="5800" menu="딸기복숭아프라페" imgs="twosome/berry.JPG">
			<img src="<%=request.getContextPath()%>/images/twosome/berry.JPG"
				alt="b" height="170" width="170"><br> <span>딸기복숭아 프라페</span>
			<p>5800원</p>
			<button id="buyBtn" onclick="buyPopUp(this)">구매</button>
		</div>
		
		<div class="twosome beverage food" price="4600" menu="카푸치노" imgs="twosome/cappu.JPG">
			<img src="<%=request.getContextPath()%>/images/twosome/cappu.JPG"
				alt="c" height="170" width="170"><br> <span>카푸치노</span>
			<p>4600원</p>
			<button id="buyBtn" onclick="buyPopUp(this)">구매</button>
		</div>
		
		<div class="twosome beverage food" price="5500" menu="로얄밀크티" imgs="twosome/tea.JPG">
			<img src="<%=request.getContextPath()%>/images/twosome/tea.JPG"
				alt="t" height="170" width="170"><br> <span>로얄 밀크티</span>
			<p>5500원</p>
			<button id="buyBtn" onclick="buyPopUp(this)">구매</button>
		</div>
		
		

	</div>

	<!-- //////////////////////////////////////////////////////////////////////////////////////////////////////////////// -->

	<div id="t3">
		
		
		<div class="twosome cake food" price="5300" menu="딸기케이크" imgs="twosome/berrycake.JPG">
			<img src="<%=request.getContextPath()%>/images/twosome/berrycake.JPG"
				alt="딸기" height="170" width="170"><br> <span>딸기케이크</span>
			<p>5300원</p>
			<button id="buyBtn" onclick="buyPopUp(this)">구매</button>
		</div>
		
		<div class="twosome cake food" price="5900" menu="벨지안가나슈" imgs="twosome/caramel.JPG">
			<img src="<%=request.getContextPath()%>/images/twosome/caramel.JPG"
				alt="c" height="170" width="170"><br> <span>벨지안 가나슈</span>
			<p>5900원</p>
			<button id="buyBtn" onclick="buyPopUp(this)">구매</button>
		</div>
		
		<div class="twosome cake food" price="6000" menu="딸기요거타르트" imgs="twosome/tart.JPG">
			<img src="<%=request.getContextPath()%>/images/twosome/tart.JPG"
				alt="t" height="170" width="170"><br> <span>딸기요거타르트</span>
			<p>6000원</p>
			<button id="buyBtn" onclick="buyPopUp(this)">구매</button>
		</div>
		
		<div class="angel cake food" price="5500" menu="뉴욕치즈케이크" imgs="angel/cheese.JPG">
			<img src="<%=request.getContextPath()%>/images/angel/cheese.JPG"
				alt="cheese" height="170" width="170"><br> <span>뉴욕
				치즈 케이크</span>
			<p>5500원</p>
			<button id="buyBtn" onclick="buyPopUp(this)">구매</button>
		</div>

		<div class="angel cake food" price="5700" menu="초코베리케이크" imgs="angel/chocoberry.JPG">
			<img
				src="<%=request.getContextPath()%>/images/angel/chocoberry.JPG"
				alt="chocoberry" height="170" width="170"><br> <span>초코
				베리 케이크</span>
			<p>5700원</p>
			<button id="buyBtn" onclick="buyPopUp(this)">구매</button>
		</div>

		<div class="ediya cake food" price="3300" menu="치즈케이크" imgs="ediya/cheese1.JPG">
			<img src="<%=request.getContextPath()%>/images/ediya/cheese1.JPG"
				alt="cheese" height="170" width="170"><br> <span>치즈
				케이크</span>
			<p>3300원</p>
			<button id="buyBtn" onclick="buyPopUp(this)">구매</button>
		</div>

		<div class="ediya cake food" price="1800" menu="블루베리스틱 케익" imgs="ediya/bc.JPG">
			<img src="<%=request.getContextPath()%>/images/ediya/bc.JPG"
				alt="bc" height="170" width="170"><br> <span>블루베리스틱 케익</span>
			<p>1800원</p>
			<button id="buyBtn" onclick="buyPopUp(this)">구매</button>
		</div>

		<div class="ediya cake food" price="1800" menu="녹차스틱케익" imgs="ediya/gc.JPG">
			<img src="<%=request.getContextPath()%>/images/ediya/gc.JPG"
				alt="gc" height="170" width="170"><br> <span>녹차 스틱
				케익</span>
			<p>1800원</p>
			<button id="buyBtn" onclick="buyPopUp(this)">구매</button>
		</div>

		<div class="hollys cake food" price="5800" menu="쿠키&치즈" imgs="hollys/cookie.JPG">
			<img src="<%=request.getContextPath()%>/images/hollys/cookie.JPG"
				alt="cake" height="170" width="170"><br> <span>쿠키&치즈</span>
			<p>5800원</p>
			<button id="buyBtn" onclick="buyPopUp(this)">구매</button>
		</div>

		<div class="hollys cake food" price="5600" menu="트리플초코" imgs="hollys/chococake.JPG">
			<img
				src="<%= request.getContextPath() %>/images/hollys/chococake.JPG"
				alt="chococake" height="170" width="170"><br> <span>트리플
				초코</span>
			<p>5600원</p>
			<button id="buyBtn" onclick="buyPopUp(this)">구매</button>
		</div>

		<div class="hollys cake food" price="5900" menu="티라미수" imgs="hollys/cake.JPG">
			<img src="<%= request.getContextPath() %>/images/hollys/cake.JPG"
				alt="cake" height="170" width="170"><br> <span>티라미수</span>
			<p>5900원</p>
			<button id="buyBtn" onclick="buyPopUp(this)">구매</button>
		</div>
	</div>
	<!-- //////////////////////////////////////////////////////////////////////////////////////////////////////////////// -->

	<div id="t4">
	<div class="angel sandwich food" price="2800" menu="햄에그치아바타" imgs="angel/egg.JPG">
			<img src="<%=request.getContextPath()%>/images/angel/egg.JPG"
				alt="egg" height="170" width="170"><br> <span>햄 에그
				치아바타</span>
			<p>2800원</p>
			<button id="buyBtn" onclick="buyPopUp(this)">구매</button>
		</div>

		<div class="angel sandwich food" price="3000" menu="햄에그치아바타" imgs="angel/ham.JPG">
			<img src="<%=request.getContextPath()%>/images/angel/ham.JPG"
				alt="ham" height="170" width="170"><br> <span>햄 에그
				치아바타</span>
			<p>3000원</p>
			<button id="buyBtn" onclick="buyPopUp(this)">구매</button>
		</div>

		<div class="ediya sandwich food" price="3600" menu="치킨샌드위치" imgs="ediya/bread1.JPG">
			<img src="<%=request.getContextPath()%>/images/ediya/bread1.JPG"
				alt="bread1" height="170" width="170"><br> <span>치킨
				샌드위치</span>
			<p>3600원</p>
			<button id="buyBtn" onclick="buyPopUp(this)">구매</button>
		</div>

		<div class="hollys sandwich food" price="5200" menu="베이컨포테이토" imgs="hollys/bread1.JPG">
			<img src="<%=request.getContextPath()%>/images/hollys/bread1.JPG"
				alt="bread1" height="170" width="170"><br> <span>베이컨
				포테이토</span>
			<p>5200원</p>
			<button id="buyBtn" onclick="buyPopUp(this)">구매</button>
		</div>
		<div class="hollys sandwich food" price="5200" menu="햄&모짜렐라빵" imgs="hollys/bread2.JPG">
			<img src="<%=request.getContextPath()%>/images/hollys/bread2.JPG"
				alt="bread2" height="170" width="170"><br> <span>햄&모짜렐라
				파니니</span>
			<p>5200원</p>
			<button id="buyBtn" onclick="buyPopUp(this)">구매</button>
		</div>

	</div>

</body>
</html>
