<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <style>
       #map {
        height: 400px;
        width: 100%;
       }
    </style>
  </head>
  <body>
    <div id="map"></div>
    <script>
      function initMap() {
        var ediya = {lat: 36.362950, lng: 127.348224}; 
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 14,
          center: ediya
          
        });
        var iconBase = 'https://developers.google.com/maps/documentation/javascript/examples/full/images/beachflag.png';
        
        var features = [
            {
              position: new google.maps.LatLng(36.356213, 127.336071),
              title: '엔제리너스'
              
            }, {
              position: new google.maps.LatLng(36.361558, 127.343884),
              title: '투썸플레이스'
            }, {
              position: new google.maps.LatLng(36.361091, 127.344783),
              title: '할리스커피'
            }, {
              position: new google.maps.LatLng(36.358555, 127.354297),
              title: '이디야'
            },{
              position: new google.maps.LatLng(36.361445, 127.344007),
              title: '이디야'
            },{
              position: new google.maps.LatLng(36.357184, 127.337238),
              title: '탐앤탐스'
            },{
              position: new google.maps.LatLng(36.356732, 127.336275),
              title: '엔제리너스'
            },{
              position: new google.maps.LatLng(36.362950, 127.348224),
              title: '이디야'
            }
          ];
        
        
        features.forEach(function(feature) {
            var marker = new google.maps.Marker({
              position: feature.position,
              map: map
            });
          });
      }
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBs7V95odvEQcl2JX7BeQsKqTC60dL2xwg&callback=initMap">
    </script>
  </body>
</html>