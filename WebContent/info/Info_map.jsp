<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">




<!-- jQuery libaray 추가 -->
<!-- 
<script type="text/javascript" src="/js/common/jquery/jquery-1.8.3.min.js"></script> -->

<!-- jQuery 예약어 충동 방지 처리 -->
<!-- <script type="text/javascript">
jQuery.noConflict();
</script>9210 -->

<!-- <script type="text/javascript" src="/js/common/jquery/prototype.js"></script> -->



  <head>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <title>Air_nine</title>
    <style>
      /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
      #map {
        width: 100%;
        height: 100%;
        left: 0;
        top:0;
        position: absolute;
        
      }
      
      .map_con{
      	width: 100%;
      	padding-bottom: 41.6%;
      	height: 0;
      	overflow: hidden;
      	position: relative;
      
      }
      /* Optional: Makes the sample page fill the window. */
      html, body {
       
        margin: 0;
        padding: 0;
      }
    </style>
  </head>
  
  

  <body>
  
  
  	<div class="map_con">
    <div id="map" class="slide">
    	<div style="height: 100%;  width: 100%; position: relative; overflow: hidden; background-color: rgb(229, 227, 223);">
    
    </div>
   	 </div>
    </div>

    <script>
    
    $(document).ready(function(){
    	$("#map").css("position","fixed !important");
    	
    });
    
      var customLabel = {
        airport: {
          label: 'A'
        },
        capital: {
        	label :'C'
        }
        
       
      };

        function initMap() {
        var map = new google.maps.Map(document.getElementById('map'), {
          center: new google.maps.LatLng(35.158456, 129.061170),
          zoom: 5,
        
        });
        
   
       
        
        
        var infoWindow = new google.maps.InfoWindow;

          // Change this depending on the name of your PHP or XML file
          downloadUrl('./info/airline.xml', function(data) {
            var xml = data.responseXML;
            var markers = xml.documentElement.getElementsByTagName("marker");
          	var path = [];
          	
          	 Array.prototype.forEach.call(markers, function(markerElem) {
          	 for (var i = 0; i < markers.length; i++) {
          	      var lat = parseFloat(markers[i].getAttribute("lat"));
          	      var lng = parseFloat(markers[i].getAttribute("lng"));
          	      var point = new google.maps.LatLng(lat,lng);
          	      path.push(point);
          	      
          	    }

          	 
             var polyline = new google.maps.Polyline({
       	      path: path,
       	      strokeColor: "#5b8de1",
       	      strokeOpacity: 1.0,
       	      strokeWeight: 2
       	      
             });
             
       	    
       	    polyline.setMap(map);
       	    map.setCenter(point);
       	    
       });
        
            
            Array.prototype.forEach.call(markers, function(markerElem) {
              var name = markerElem.getAttribute('name');
              var address = markerElem.getAttribute('address');
              var type = markerElem.getAttribute('type');
              var point = new google.maps.LatLng(
                  parseFloat(markerElem.getAttribute('lat')),
                  parseFloat(markerElem.getAttribute('lng')));

              var infowincontent = document.createElement('div');
              var strong = document.createElement('strong');
              strong.textContent = name
              infowincontent.appendChild(strong);
              infowincontent.appendChild(document.createElement('br'));

              var text = document.createElement('text');
              text.textContent = address
              infowincontent.appendChild(text);
              var image = './images/icons/airplane.png';
              
              var marker = new google.maps.Marker({
                map: map,
                position: point,
                label: image.label,
                icon:image

              });
            
              marker.addListener('click', function() {
                infoWindow.setContent(infowincontent);
                infoWindow.open(map, marker);
                
              });
            });
          });
        }
          
          



      function downloadUrl(url, callback) {
        var request = window.ActiveXObject ?
            new ActiveXObject('Microsoft.XMLHTTP') :
            new XMLHttpRequest;

        request.onreadystatechange = function() {
          if (request.readyState == 4) {
            request.onreadystatechange = doNothing;
            callback(request, request.status);
          }
        };

        request.open('GET', url, true);
        request.send(null);
        
        
        flightPath.setMap(map);
      }
      
     
      function doNothing() {}
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBgPVdIxMygb061BWDAPys5x5Q1l5ey8QE&callback=initMap">
    </script>
    

    
  </body>
</html>