

/* 구매버튼을 눌렀을 때  */
function buyPopUp(obj){
	layer_open();
	  $('#branch').show();

	  $('#branch').val("궁동점"); //get&set 동시에
	  $('#recTime').val("오전 07:00 - 07:30");

	  $('#btnLayer').val("구매하기");
	  $('#btnLayer').off("click");
	  
	  $('#btnLayer').on('click',function(){
		  buyItem(obj,  $('#branch').val(), $('#recTime').val());
	  });
}

function buyItem(obj, loc, time){
	$('#btnClose').click();
	
	  $.post("AddItem.jsp",{   //저장
		  	price: $(obj).parent().attr('price'),
			menu: $(obj).parent().attr('menu'),
			imgs: $(obj).parent().attr('imgs'),
			loc: loc,
			time: time
	  },function(data){ //jsp로 정보들을 보내고 저장한 후 실행
		  $("#banId").load('mypage.jsp'); //내 구매정보
	  });
}
/* 가격별 정렬 */
function priceSearch(){
	var priceFrom =parseInt( $('#priceFrom').val());
	var priceTo = parseInt($('#priceTo').val());
	$('.food').each(function(){
		var price = $(this).attr('price');
		if(priceFrom <= price && priceTo >= price){
			$(this).show();
		}else{
			$(this).hide();
		}
	});
}

/* 종류별 정렬 */
function typeSearch(){
	 var searchType = $('#searchType').val();
	 
	 $('.food').hide();

	 if($.trim(searchType).length==0){
		 searchType="";
	 }
	 $('.beverage').each(function(){
		 if(searchType=='coffee'){
			 $(this).show();
			 $('.milk,.ade,.frappu,.tea,.smoothie,.etc').hide();
		 }else if(searchType=='milk'){
			 $(this).show();
			 $('.coffee,.ade,.frappu,.tea,.smoothie,.etc').hide();
		 }else if(searchType=='ade'){
			 $(this).show();
			 $('.coffee,.milk,.frappu,.tea,.smoothie,.etc').hide();
		 }else if(searchType=='frappu'){
			 $(this).show();
			 $('.milk,.ade,.coffee,.tea,.smoothie,.etc').hide();
		 }else if(searchType=='tea'){
			 $(this).show();
			 $('.milk,.ade,.frappu,.coffee,.smoothie,.etc').hide();
		 }else if(searchType=='smoothie'){
			 $(this).show();
			 $('.milk,.ade,.frappu,.tea,.coffee,.etc').hide();
		 }else if(searchType=='etc'){
			 $(this).show();
			 $('.milk,.ade,.frappu,.tea,.smoothie,.coffee').hide();
		 }else{
			 $(this).show();
		 }
	 });
}
/* 브랜드별 정렬 */
function brandSearch(){

	var searchBrand = $('#searchBrand').val();
	$('.food').each(function(){
		if(searchBrand=='ediya'){
			$(this).show();
			$('.angel,.hollys,.tomntoms,.twosome').hide();
		}else if(searchBrand=='angel'){
			$(this).show();
			$('.ediya,.hollys,.tomntoms,.twosome').hide();
		}else if(searchBrand=='hollys'){
			$(this).show();
			$('.ediya,.angel,.tomntoms,.twosome').hide();
		}else if(searchBrand=='tomntoms'){
			$(this).show();
			$('.ediya,.hollys,.angel,.twosome').hide();
		}else if(searchBrand=='twosome'){
			$(this).show();
			$('.ediya,.hollys,.tomntoms,.angel').hide();
		}
	});
	
}


