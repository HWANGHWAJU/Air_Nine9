<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%

String id = "hyunju";
String email ="hyunju.it2@gmail.com";
String gender="F";
String last = "LEE";
String first ="HYUNJU";

request.getSession().setAttribute("id", id);
request.getSession().setAttribute("email",email);
request.getSession().setAttribute("gender",gender);
request.getSession().setAttribute("last", last);
request.getSession().setAttribute("first",first);

%>
<html lang="ko" class="gr__flyairseoul_com"><head> 
    <meta charset="UTF-8">
    <meta name="viewport" content="width=1200">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Expires" content="-1">
    <meta http-equiv="Content-Security-Policy" content="default-src *; script-src 'self' 'unsafe-inline' 'unsafe-eval' *; style-src  'self' 'unsafe-inline' *">
    <meta content="text/html; charset=UTF-8; X-Content-Type-Options=nosniff" http-equiv="Content-Type">
    <meta http-equiv="X-XSS-Protection" content="0">    
    <title>01. 여정 &lt; 항공권예약 &lt; AIR SEOUL</title>
    <link rel="shortcut" type="image/x-icon" href="images/common/favicon.ico">
    
 <link rel="stylesheet" type="text/css" href="stylesheets/main/main.css">
    
  <link rel="stylesheet" type="text/css" href="stylesheets/sub/company.css">  
  <link rel="stylesheet" type="text/css" href="stylesheets/common/common.css">
  <link rel="stylesheet" type="text/css" href="stylesheets/sub/board.css">  
  <link rel="stylesheet" type="text/css" href="stylesheets/sub/service.css">
  <link rel="stylesheet" type="text/css" href="stylesheets/sub/utile.css">
  <link rel="stylesheet" type="text/css" href="stylesheets/sub/swiper.min.css">
  <link rel="stylesheet" type="text/css" href="stylesheets/sub/air_booking.css">
	<link rel="stylesheet" type="text/css" href="stylesheets/sub/booking.css">    

	  
    <script type="text/javascript" src="javascripts/jquery-1.9.0.min.js"></script>
    <script type="text/javascript" src="javascripts/jquery.placeholder.js" ></script>
    <script type="text/javascript" src="javascripts/moment.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script type="text/javascript" src="_nineJs/nine.js"></script>

</head>


<body data-gr-c-s-loaded="true" style="zoom: 1; overflow-y: scroll;">
<div id="skipNavigation" tabindex="-1">
    <ul>
        <li><a href="#content">본문 바로가기</a></li>
        <li><a href="#gnb">주메뉴 바로가기</a></li>
    </ul>
</div>
<!-- wrap -->
<input type="hidden" id="memID" value="<%=id %>">
<input type="hidden" id="memEMAIL" value="<%=email %>">
<input type="hidden" id="memGender" value="<%=gender %>">
<input type="hidden" id="memLast" value="<%=last %>">
<input type="hidden" id="memFirst" value="<%=first %>">

<div id="wrap" class="booking booking-step-on">

<div id="header" >
	<div id="headerContent">
		<div class="hgroup" style="display:block;">
		 	<h1 class="logo">
		 	<a href="mainIndex.bo"><img src="./images/common/img_logo01.png" alt="AIR NINE"></a></h1>
		 
			 <div class="hrgroup" id="flagLogin">
			 	<span class="login" id="loginSpan"><a href="#this">로그인</a></span>
			 	<span class="member jsHrgroup"> 
			 		<a href="#this">마이 페이지</a>
			 		<ul class="hrgroup-list">
			 			<li><a href="#this">나의 스탬프</a></li>
			 			<li><a href="#this">회원정보 수정</a></li>
			 			<li><a href="#this">회원 탈퇴</a></li>
			 		</ul>
			 	</span>
			 	<span class="customer jsHrgroup">
			 		<a href="#">회사 소개</a>
			 		<ul class="hrgroup-list">
			 			<li><a href="#">개요</a></li>
			 			<li><a href="#">CEO 인사말</a></li>
			 			<li><a href="#">기업철학</a></li>
			 			<li><a href="#">연혁</a></li>
			 			<li><a href="#">항공기 안내</a></li>
			 		</ul>
			 	</span>
			 </div>
			</div>
			
			<div id="smallHeader" style="display:block; top:0px;">
				<div class="small-head">
					<h1 class="logo"><a href="mainIndex.bo"><img src="./images/common/img_logo02.png" alt="AIR WILL"></a></h1>
				</div>
			</div>
				
			<div id="gnb" class="js-gnb">
			 	<ul class="depth01">
			        <form name="booking" action="/I/ko/viewBooking.do" method="POST">	
	          	 	    <input type="hidden" name="viewBooking" value="">
	         	     </form>
        	
	  	         	 <li class="depth01Lists">
			        	 <a href="javascript:booking();">항공권 예약</a>
				     		 <ul class="depth02" style="display: none;"></ul>
	 				</li>
		   	       <li class="depth01Lists">
		              
	                      <form name="reservationList1" action="viewReservationList.bo" method="POST">
	                        <input type="hidden" name="viewReservationList1" value="viewReservationList.bo">
	                      </form>
	 	   	           <a href="javascript:document.reservationList1.submit();">예약 조회/변경</a>
		      			<ul class="depth02" style="display: none;">
				 					       <li class="depth02Lists">
						                              <form name="reservationList2" action="viewReservationList.bo" method="POST">
						                                <input type="hidden" name="viewReservationList2" value="viewReservationList.bo">
						                              </form>
									           <a href="javascript:document.reservationList2.submit();">예약 조회/변경/환불</a>
									       </li>
								       <li class="depth02Lists">
						                              <form name="checkInList" action="viewCheckInList.bo" method="POST">
						                                <input type="hidden" name="viewCheckInList" value="viewCheckInList.bo">
						                              </form>
										           <a href="javascript:document.checkInList.submit();">온라인 체크인</a>
									       </li>
							</ul>
 				</li>
		          <li class="depth01Lists">
		              <a href="Info_FlightMain.bo">서비스 안내</a>
							<ul class="depth02" style="display: none;">
			    				       <li class="depth02Lists">
								           <a href="Info_reservation.bo">항공권 안내</a>
								       </li>
									       <li class="depth02Lists">
								           <a href="Opt_Main.bo">부가 서비스 구매</a>
								       </li>
									       <li class="depth02Lists">
								           <a href="/CW/ko/online-check-in.do">공항 서비스</a>
								       </li>
									       <li class="depth02Lists">
								           <a href="/CW/ko/cabin.do">기내 서비스</a>
								       </li>
									       <li class="depth02Lists">
									           <a href="/CW/ko/infant.do">도움이 필요한 고객</a>
								       </li>
			   				       <li class="depth02Lists">
									           <a href="/CW/ko/mobile.do">모바일 서비스</a>
								       </li>
								       <li class="depth02Lists">
								           <a href="/CW/ko/download.do">양식 다운로드</a>
								       </li>
				 			</ul>
 				</li>
		          <li class="depth01Lists">
		              <a href="#this">Travel Information</a>
							<ul class="depth02" style="display: none;">
				 					       <li class="depth02Lists">
							           <a href="#this">취항지 소개</a>
									       </li>
										       <li class="depth02Lists">
									           <a href="javascript:hotel();" title="호텔홈페이지바로가기[새창열림]">호텔</a>
									       </li>
											       <li class="depth02Lists">
									           <a href="javascript:rentcar();" title="렌터카홈페이지바로가기[새창열림]">렌터카</a>
									       </li>
									       <li class="depth02Lists">
									           <a href="#this">여행자보험</a>
									       </li>
					 			</ul>
 					</li>
		     	     <li class="depth01Lists">
	   					  <a href="Event_Main.bo">이벤트/새소식</a>
								<ul class="depth02" style="display: none;">
					    			      <li class="depth02Lists">
									           <a href="Event_Main.bo">이벤트</a>
										       </li>
									       <li class="depth02Lists">
										           <a href="Event_specialprice.bo">특가존</a>
										       </li>
											       <li class="depth02Lists">
										           <a href="/CW/ko/noticeList.do">공지사항</a>
										       </li>
					      				       <li class="depth02Lists">
										           <a href="/CW/ko/printList.do">미디어룸</a>
										       </li>
								</ul>
 					</li>
			</ul>
</div>
	<!-- S :20161116_타이틀수정_함성재 -->
	<div class="btn-area">
	    <a href="#header" id="headerOpen" class="smallheader-btn01" style="display:block;"><!-- 주메뉴열기 -->주메뉴 열기</a>
	    <a href="#gnb" id="headerClose" class="smallheader-btn02" style="display: none;"><!-- 주메뉴닫기 -->주메뉴 닫기</a>
	</div>
	<!-- E : 20161116 타이틀수정_함성재 -->

	</div>
</div> <!-- header -->





	<form id="availInfoForm" name="availInfoForm" method="post" target="_self">
		<input type="hidden" name="hidBookConditionData">
	</form>	
	<input type="hidden" id="viewLayerGUMInformation" href="I/KO/viewGumInformation" class="jsOpenLayer">
	
	
	
	<!-- booking 영역 start-->
	<div id="container">
		<div id="content">
			<div id="bookingStepWrap">
				

					<!-- 예약 STEP (S) -->
					<div id="divBookingStep" class="booking-step" style="top: 40px;">
						<ul>
							<li id="liBookingStepJourney" class="booking-step-journey active"> <!-- 출도착지 선택 -->
								<a href="javascript:fn_moveRouteStep();">
									<span name="lblHiddenTitleCurrent" class="place hidden-title">현재 단계</span>
									<span class="booking-step-title"><span class="step-number">01</span> <span id="spanStepTitleRoute">여정</span></span>
									<span class="booking-step-content">
										<span class="from"></span>
										<span></span>
										<span class="city"></span>
									</span>
								</a>
							</li>
							<li id="liBookingStepDate" class="booking-step-date"> <!-- 출발 날짜 선택 -->
								<a href="javascript:fn_moveDateStep();">
									<span class="booking-step-title"><span class="step-number">02</span> <span id="spanStepTitleDate">일정</span></span>
									<span class="booking-step-content">
										<span class="startdate"></span>
										<span class="directory"></span>
										<span class="enddate"></span>
									</span>
								</a>
							</li>
							<li id="liBookingStepPassenger" class="booking-step-passenger"> <!-- 탑승 인원 선택 -->
								<a href="javascript:fn_movePassengerStep();">
									<span class="booking-step-title"><span class="step-number">03</span> <span id="spanStepTitlePassenger">탑승인원</span></span>
									<span class="booking-step-content">
										<span class="adult"></span>
										<span class="child" style="display:none;"></span>
										<span class="lapinfant" style="display:none;"></span>
									</span>
								</a>
							</li>
							<li id="liBookingStepAirline" class="booking-step-airlineticket">
								<a href="javascript:;">
									<span class="booking-step-title"><span class="step-number">04</span> <span id="spanStepTitleAvail">운임선택</span></span>
								</a>
							</li>
							<li id="liBookingStepPassegnerInfo" class="booking-step-passengerinformation">
								<a href="javascript:;">
									<span class="booking-step-title"><span class="step-number">05</span> <span id="spanStepTitlePassengerInput">탑승객정보</span></span>
								</a>
							</li>
							<li id="liBookingStepExtraService" class="booking-step-extraservice">
								<a href="javascript:;">
									<span class="booking-step-title"><span class="step-number">06</span> <span id="spanStepTitleAncillary">부가서비스</span></span>
								</a>
							</li>
						</ul>
					</div> <!-- divBookingStep -->

					<!-- 예약 STEP (E) -->
<script type="text/javascript">


// 페이지를 이동하면서 선택된 데이터값 저장하며 이동  
function fn_changeBookingStep(bookingStep, data) {
	
		var $divBookingStep_li			= $("#divBookingStep").find("li");
		var $liBookingStepJourney		= $("#liBookingStepJourney");
		var $liBookingStepDate			= $("#liBookingStepDate");
		var $liBookingStepPassenger		= $("#liBookingStepPassenger");
		var $liBookingStepAirline		= $("#liBookingStepAirline");
		var $liBookingStepPassegnerInfo	= $("#liBookingStepPassegnerInfo");
		var $liBookingStepExtraService	= $("#liBookingStepExtraService");
		
		if (bookingStep == "1") {
			$divBookingStep_li.removeClass("success").removeClass("active");
			
			$liBookingStepJourney.addClass("active");
			
			$divBookingStep_li.not("#liBookingStepJourney").find("[name=lblHiddenTitleCurrent]").remove();
			
		} else if (bookingStep == "2") {
	
			fn_setBookingStep("route", data);
			
			$liBookingStepJourney.removeClass("active") .addClass("success");
			
			$("#liBookingStepDate, #liBookingStepPassenger, #liBookingStepAirline, #liBookingStepPassegnerInfo").removeClass("success").removeClass("active");
			
			$liBookingStepDate.addClass("active") .find("a").append($liBookingStepJourney.find("[name=lblHiddenTitleCurrent]"));
			
			$divBookingStep_li.not("#liBookingStepDate").find("[name=lblHiddenTitleCurrent]").remove();
			
		} else if (bookingStep == "3") {
		
			fn_setBookingStep("date", data);
			
			$liBookingStepDate.removeClass("active").addClass("success");
			$("#liBookingStepPassenger, #liBookingStepAirline, #liBookingStepPassegnerInfo").removeClass("success").removeClass("active");
			$liBookingStepPassenger.addClass("active").find("a").append($liBookingStepDate.find("[name=lblHiddenTitleCurrent]"));
			$divBookingStep_li.not("#liBookingStepPassenger").find("[name=lblHiddenTitleCurrent]").remove();
			
		} else if (bookingStep == "4") {
			fn_setBookingStep("passenger", data);
			
			$liBookingStepPassenger.removeClass("active") .addClass("success");
			
			$("#liBookingStepAirline, #liBookingStepPassegnerInfo").removeClass("success").removeClass("active");
			
			$liBookingStepAirline.addClass("active").find("a").append($liBookingStepPassenger.find("[name=lblHiddenTitleCurrent]"));
			
			$liBookingStepAirline.find("[name=lblHiddenTitleCurrent]").eq(1).remove();
			
			$divBookingStep_li.not("#liBookingStepAirline").find("[name=lblHiddenTitleCurrent]").remove();
			
		} else if (bookingStep == "5") {//탑승객 정보 입력
			$liBookingStepAirline.removeClass("active").addClass("success");
		
			$liBookingStepPassegnerInfo.addClass("active").find("a").append($liBookingStepAirline.find("[name=lblHiddenTitleCurrent]"));
			
			$divBookingStep_li.not("#liBookingStepPassegnerInfo").find("[name=lblHiddenTitleCurrent]").remove();
			
		} else if (bookingStep == "6") {
			$('#divBookingStep > ul > li > a').removeAttr('href').css({'cursor' : 'default'}); // 모든 Step 이벤트 삭제 & 마우스 기본으로 설정
			
			fn_setBookingStep("route", data);
			fn_setBookingStep("date", data);
			fn_setBookingStep("passenger", data);
			
			$("#liBookingStepJourney, #liBookingStepDate, #liBookingStepPassenger, #liBookingStepAirline, #liBookingStepPassegnerInfo").addClass("success");
		
			$("#liBookingStepPassegnerInfo").removeClass('active');
		
			$liBookingStepExtraService.addClass("active").find("a").append($liBookingStepJourney.find("[name=lblHiddenTitleCurrent]"));
			
			$divBookingStep_li.not("#liBookingStepExtraService").find("[name=lblHiddenTitleCurrent]").remove();
			
		} else if (bookingStep == "7") {
			$('#divBookingStep > ul > li > a').removeAttr('href').css({'cursor' : 'default'}); // 모든 Step 이벤트 삭제 & 마우스 기본으로 설정
			
			fn_setBookingStep("route", data);
			fn_setBookingStep("date", data);
			fn_setBookingStep("passenger", data);
			
			$divBookingStep_li.addClass("success").find("[name=lblHiddenTitleCurrent]").remove();
			$("#liBookingStepExtraService").removeClass('active');
			
		}
	}


	function fn_setBookingStep(mode, data) {
	
		if (mode == "route") {
			var jqBookingStepJourney = $("#liBookingStepJourney");		
			$(jqBookingStepJourney).find("span.from").html(data.segmentDatas[0].departureAirport);
			$(jqBookingStepJourney).find("span.city").html(data.segmentDatas[0].arrivalAirport);
			
 			if (data.TRIPTYPE == "RT") {
				$(jqBookingStepJourney).find("span.booking-step-content span").eq(1).addClass("roundtrip");
//				$(jqBookingStepJourney).find("span.city").html(data.segmentDatas[1].departureAirportName);
			} else if (data.TRIPTYPE == "OW") {
				$(jqBookingStepJourney).find("span.booking-step-content span").eq(1).addClass("oneway");
//				$(jqBookingStepJourney).find("span.city").html(data.segmentDatas[0].arrivalAirportName);
			} else {
				
			} 
		} else if (mode == "date") {
			var jqBookingStepDate = $("#liBookingStepDate");
		//	$(jqBookingStepDate).find("span.startdate").html(moment(data.segmentDatas[0].departureDateTime).format("YYYY.MM.DD [(]dd[)]"));
			$(jqBookingStepDate).find("span.startdate").html(moment(data.segmentDatas[0].departureDateTime).format("YYYY.MM.DD [(]dd[)]"));
			console.log("출발 날짜 :"+data.segmentDatas[0].departureDateTime);
			console.log("SELECT TRIPTYPE :"+ data.TRIPTYPE);
			console.log(moment(data.segmentDatas[0].departureDateTime).format("YYYY.MM.DD [(]dd[)]"));
			
			if (data.TRIPTYPE == "RT") {
				console.log(moment(data.segmentDatas[1].departureDateTime).format("YYYY.MM.DD [(]dd[)]"));
				$(jqBookingStepDate).find("span.directory").css("display", "block");
				$(jqBookingStepDate).find("span.enddate").html(moment(data.segmentDatas[1].departureDateTime).format("YYYY.MM.DD [(]dd[)]"));
			} else if (data.TRIPTYPE == "OW") {
				$(jqBookingStepDate).find("span.directory").css("display", "none");
				$(jqBookingStepDate).find("span.enddate").css("display", "none");
			}
			
		} else if (mode == "passenger") {
			var jqBookingStepPassenger = $("#liBookingStepPassenger");
			var adultPaxCnt = 0;
			var childPaxCnt = 0;
			var infantPaxCnt = 0;

			$.each(data.passengerDatas, function(idx) {
				if (data.passengerDatas[idx].paxType == "ADT") {
					adultPaxCnt = data.passengerDatas[idx].passengerNo;
				} else if (data.passengerDatas[idx].paxType == "CHD") {
					childPaxCnt = data.passengerDatas[idx].passengerNo;
				} else if (data.passengerDatas[idx].paxType == "INF") {
					infantPaxCnt = data.passengerDatas[idx].passengerNo;
				}
			});
			$(jqBookingStepPassenger).find("span.adult").html("성인 " + adultPaxCnt);
			if (childPaxCnt > 0) {
				$(jqBookingStepPassenger).find("span.child").css("display", "");
				$(jqBookingStepPassenger).find("span.child").html(" / 소아 " + childPaxCnt);
			}
			if (infantPaxCnt > 0) {
				$(jqBookingStepPassenger).find("span.lapinfant").css("display", "");
				$(jqBookingStepPassenger).find("span.lapinfant").html(" / 유아" + infantPaxCnt);
			}
		}
	}

</script>
		</div><!-- bookingStepWrap -->

			<div class="booking-wrap" style="top: 0px;">
			<!-- 여정 (S) -->
			
			<c:set var="book" value="${param.book }"/>
			<c:if test="${book == null }">
				<c:set var="book" value="book_01.jsp"/>
			</c:if>
			<jsp:include page="${book }"/>
			</div>


		</div><!-- content -->
	</div>	<!-- container -->



</div><!-- wrap -->




<script type="text/javascript">
$(document).ready(function(){
	
	var DateObj = new Date(); 
	var currentYear =Number(DateObj.getFullYear());
	var currentMonth = Number(DateObj.getMonth()+1);
	var currentDate =Number(DateObj.getDate());
	var selectTripType="";
	var nowTripType="";
	
	var bookingStep="";
	
	var memid = $("#memID").val();
	var memEmail = $("#memEMAIL").val();
	var memGender = $("#memGender").val();
	var memLast = $("#memLast").val();
	var memFirst = $('#memFirst').val();
	
	
	console.log("id :" +memid+"  Email :"+memEmail);
	console.log("gender :"+memGender+"  Last :"+memLast +"  First :"+memFirst);
		
//		console.log("main Booking :"+mainBooking);

		//main 화면에서 빠른 예매를 이용하여 예약을 진행할 경우 입력 받은 값을 가지고 바로 
		// 노선 스케줄을 볼 수 있는 화면으로. book_04
		

	
		$("#txtDepBookingDate").val(moment().add('2','days').format('YYYY.MM.DD'));
		$("#txtArrBookingDate").val(moment().add('3','days').format('YYYY.MM.DD'));
		
		$("#txtSelAdtPaxCnt").val("성인1");
		$("#txtSelChdPaxCnt").val("소아0");
		$("#txtSelInfPaxCnt").val("유아0");
		
		$.ajax({
			type : "POST",
			url : "./searchDep.na",
			dataType : "JSON",
			contextType : "application/x-www-form-urlencoded; charset=UTF-8",
			success : function(data){
					DconvJs(data);
			}
		});
		
		$("#divBookingJourneyLayer div.booking-journey-layer-section-arr").off("click").remove();
		// 출/도착지 레이어 구성 시 화면 구성
		$(".booking-journey-items-button").on("focus", function() {
			var $this = $(this);
			if (!$this.hasClass("active")) {	// 현재 레이어가 활성화된 상태에서는 수행하지 않는다.
				var $divBookingJourneyLayer_id = $("#divBookingJourneyLayer");
				if ($this.index(".booking-journey-items-button") == 0) {
					$divBookingJourneyLayer_id.find("div.booking-journey-layer-section-arr").css("display", "none");
					$divBookingJourneyLayer_id.find("div.booking-journey-layer-section-dep").css("display", "");
				} else {
					$divBookingJourneyLayer_id.find("div.booking-journey-layer-section-dep").css("display", "none");
					$divBookingJourneyLayer_id.find("div.booking-journey-layer-section-arr").css("display", "");
				}
			}
		});
		
		$(".booking-journey-items-button").on("click", function() {
			var $spanBookingRouteLayerOpenDep_id	= $('#spanBookingRouteLayerOpenDep');
			var $spanBookingRouteLayerOpenArr_id	= $('#spanBookingRouteLayerOpenArr');
			var $layerCloseBtnName_id				= $('#spanBookingRouteLayerClose');
			var $divBookingJourneyLayer_id = $("#divBookingJourneyLayer");
	
		
			// 출발지 레이어 활성화/비활성화 시
			if($("#spanBookingRouteLayerOpenDep").parents(".d").hasClass('active')) {
				$('#spanBookingRouteLayerOpenDep').parents(".d").removeClass('active');
				$divBookingJourneyLayer_id.slideUp(150);
			} else {
				$('#spanBookingRouteLayerOpenDep').parents(".d").addClass('active');
				$divBookingJourneyLayer_id.slideDown(150);
			}
			
			// 도착지 레이어 활성화/비활성화 시
			if($("#spanBookingRouteLayerOpenArr").parents(".a").hasClass('active')) {
				$('#spanBookingRouteLayerOpenArr').parents(".a").removeClass('active');
				$divBookingJourneyLayer_id.slideUp(150);
			} else {
				$('#spanBookingRouteLayerOpenArr').parents(".a").addClass('active');
				$divBookingJourneyLayer_id.slideDown(150);
			}
		});
	
		
		
});


</script>

</body>
</html>