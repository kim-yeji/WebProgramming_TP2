<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
$(document).ready(function() {
	$.ajax({
        type : "POST",
        dataType : "json",
        url : "loadItem.jsp",
        success : function(json) {
      	  if(json.menuList.length > 0){
				var list = json.menuList;
  			  	var htmlStr = "";
    			$(list).each(function() {
    				htmlStr += '<div class="listC">';
    				htmlStr += '<div class="imgC"><img src="<%=request.getContextPath()%>/images/'+$(this).attr('imgs')+'" alt="'+$(this).attr('menu')+'" height="170" width="170"></div>';
    				htmlStr += '<div class="menuC">'+$(this).attr('menu')+'</div>';
    				htmlStr += '<div class="priceC">'+$(this).attr('price')+'</div>';
    				htmlStr += '<div class="locC">'+$(this).attr('loc')+'</div>';
    				htmlStr += '<div class="timeC">'+$(this).attr('time')+'</div>';
    				htmlStr += '</div>';
    			});
    			$('#myFood').html(htmlStr);
      	  }
      	  
        },
        error : function(e) {
            alert('error');
        }
	});
});
</script>
</head>
<body>

<div id="myFood"></div>

</body>
</html>