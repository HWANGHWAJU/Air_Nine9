<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<script
  src="https://code.jquery.com/jquery-3.2.1.js"
  integrity="sha256-DZAnKJ/6XZ9si04Hgrsxu/8s717jcIzLy3oi35EouyE="
  crossorigin="anonymous"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.2.0.min.js" ></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-2.1.0.min.js" ></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>





<!-- wrap -->
	<div id="container">
		<div id="content">
			<!-- location -->
			<div id="location"  class="" style="top: 0px;">
				<ol class="location_area">
					<li><a href="mainIndex.bo" id="Home">홈</a></li>
					<li><a href="javascript:document.reservationList1.submit();" class="menuDepth2">예약 조회/변경</a></li>
					<li class="current"><span class="menuDepth3" href="#none">
		                                
		                              온라인 체크인</span>
						<div class="btn_lnb"><a href="#none" id="ReservationMenu">예약 조회/변경 하위 메뉴</a><span class="hidden-title">열기</span></div>
						<div class="lnb_area" style="display: none;">
							<ul class="location_lnb">
								<li><a href="#none" class="menuDepth3_1">
		                                
		                              예약 조회/변경/환불</a></li>
								<li class="on"><a href="#none" class="menuDepth3_2">
		                                
		                              온라인 체크인</a></li>
							</ul>
						</div>
					</li>
				</ol>
			</div>
<div class="content_inner">
				<h1 class="pagetitle"><span id="AirlineSeatInfo">좌석 정보</span></h1>
				<div>
			        


<ul class="list-tab type-1">
</ul>

<script>
	var location_pathname = location.pathname.split("/")[3];
	$.each($(".list-tab > li > a"), function() {
		var $this		= $(this);
		var $this_href	= $this.attr("href");
		$this_href = $this_href.split("javascript:").join("");
		$this_href = $this_href.split("();").join("");
		
		if(location_pathname.indexOf($this_href) > -1) {
			$this.parents("li").addClass("on");
		} else {
			$this.parents("li").removeClass("on");
		}
	});
	
	function viewFlightSearch(){
		document.flightSearch.action = "/I/" + jsLangCode + "/viewFlightSearch.do";			
		document.flightSearch.submit();
	}
	
	function viewScheduleSearch(){
		document.flightSearch.action = "/I/" + jsLangCode + "/viewScheduleSearch.do";			
		document.flightSearch.submit();
	}
/*	function a1() {
		alert("이 좌석을 선택 하시겠습니까?")
		
	}*/
	
	function a1() {
	    // img 라는 변수를 선언하여 문서에서(document) 'img1'이라는 아이디(id)를 가진 요소(element)를 찾아서 그 요소를 img 라는 변수의 값으로 할당한다.
	    var img = document.getElementById('img1');
	    // 만약 img 라는 변수의 속성 중에서 src 라는 속성의 값이 'seat1' 라는 글자와 매치(match: 전체 문자열에서 일치하는부분문자열을 찾는다)가 된다면  { img 변수의 src 속성의 값을 'images/seat5.jpg' 으로 변경 시킨다. }
	    if (img.src.match("seat")) {
	        img.src = "images/seat/seat5.jpg";
	    // 그렇지 않다면 { img 변수의 src 속성값에 'images/seat1.jpg' 을 넣는다. }
	    } else {
	        img.src = "images/seat/seat1.jpg";
	   
	    }
	    
	}



	
	

</script>
		<div class="area-service">
						<div class="tbl-input-row01 mgt40" style="height: 810px;">
								<h1 align="center"><img alt="좌석정보이미지" src="images/seat/Info_seat.jpg">
								</h1>
						
							<table  style="width: 240px; height: 318px; position: relative; bottom:324px; right:6px; margin-left: auto; margin-right: auto;">
		
							


 						 
 							
							<tr>
							<td style="position: relative; top:15px;">
								<img alt="a1좌석" id="img1" src="images/seat/seat1.jpg" style="position: relative;  bottom:143px; right:5px; width:27px; height:31px; " onclick="a1();">
								<img alt="a2좌석" id="img1" src="images/seat/seat1.jpg" style="position: relative;  bottom:143px; right:5px; width:27px; height:31px; " onclick="a1();">
								<img alt="a3좌석" id="img1" src="images/seat/seat1.jpg" style="position: relative;  bottom:143px; right:6px; width:27px; height:31px; " onclick="a1();">
								<img alt="a1좌석" id="img1" src="images/seat/seat2.jpg" style="position: relative;  bottom:133px; right:5px; width:27px; height:31px; " onclick="a1();">
								<img alt="a1좌석" id="img1" src="images/seat/seat2.jpg" style="position: relative;  bottom:133px; right:5px; width:27px; height:31px; " onclick="a1();">
								<img alt="a1좌석" id="img1" src="images/seat/seat2.jpg" style="position: relative;  bottom:133px; right:5px; width:27px; height:31px; " onclick="a1();">
							</td>
							<td style="position: relative; top:15px;">
								<img alt="a4좌석" id="img1" src="images/seat/seat1.jpg" style="position: relative;  bottom:143px; right:3px;  width:27px; height:31px; " onclick="a1();">
								<img alt="a5좌석" id="img1" src="images/seat/seat1.jpg" style="position: relative;  bottom:143px; right:4px;  width:27px; height:31px; " onclick="a1();">
								<img alt="a6좌석" id="img1" src="images/seat/seat1.jpg" style="position: relative;  bottom:143px; right:4px;  width:27px; height:31px; " onclick="a1();">
								<img alt="a4좌석" id="img1" src="images/seat/seat2.jpg" style="position: relative;  bottom:133.5px; right:3px;  width:27px; height:31px; " onclick="a1();">
								<img alt="a5좌석" id="img1" src="images/seat/seat2.jpg" style="position: relative;  bottom:133px; right:4px;  width:27px; height:31px; " onclick="a1();">
								<img alt="a4좌석" id="img1" src="images/seat/seat2.jpg" style="position: relative;  bottom:133px; right:3px;  width:27px; height:31px; " onclick="a1();">
							</td>
							
							</tr>
							
							</table>
							
						
							
						</div>
						<div class="tbl-fot-info">
							<ul class="uList01">
								<li id="ScheduleSearch_Info1">항공스케줄은 정부인가 조건이며, 스케줄과 기종은 예고 없이 변경될 수 있습니다.</li>
								<li id="ScheduleSearch_Info2">임시편, 비정기편, 제휴 항공사 공동 운항편의 경우 스케줄 조회가 불가능합니다.</li>
								<li id="ScheduleSearch_Info3">스케줄 조회는 항공편 결항 및 지연 등의 정보가 반영되지  않으므로, 정확한 스케줄은 항공권 예매 시 확인하시기 바랍니다.</li>
								<li id="ScheduleSearch_Info4">출도착 시간은 현지시간 기준입니다. (+1은 다음날)</li>
							</ul>
							<div class="mgt30 tc">
								<a href="#none" id="btnSubmit" class="btn-type01-col01"><span name="lblSubmitBtn">확인</span></a>
							</div>
						</div>

					</div>
					
				</div>
			</div>
		</div>
	</div>

<!-- wrap -->
									
						
					
						

				

