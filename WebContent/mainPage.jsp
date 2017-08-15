<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <script type="text/javascript" src="javascripts/mainBanner.js"></script>
 <script type="text/javascript">
 jQuery(document).ready(function($){
	 $(function()
			 {
			     var page = $(".page");
			     var pageindex = -1;

			     function showQuote(change)
			     {
			         pageindex += change;
			         if (pageindex < 0)
			         {
			             pageindex += page.length;
			         }
			         else if (pageindex >= page.length)
			         {
			             pageindex -= page.length;
			         }
			         page.stop(true, true).hide().eq(pageindex)
			             .fadeIn(1000)
			             .delay(1000)
			             .fadeOut(1000)
			             .queue(function() { showQuote(1); });
			     }  
			     showQuote(1);

			     $('.prev').on('click', function()
			     {
			         showQuote(-1);
			     });

			     $('.next').on('click', function()
			     {
			         showQuote(1);
			     });
			 });
	 
	
 });
</script>
<!-- 날씨 파싱부분 style 지정 -->	
	<style>
		.weather{
			width: 1000px;
			height: 100%;
			margin: 15px auto;
			text-align: center;
		}
		.weather tr{
			width: 100%;
			height: 100px;
		}
		.weather tr td{
			width: 250px;
			border: 1px solid lightgray
		}
		.WeatherTitle{
			font-size: 20px;
			text-align: center;
			color: #5D5D5D;
			letter-spacing: 10px
		}
		.font_head{
			margin: 10px;
			font-size: 16px;
		}
		.font_m{
			margin: 10px;
			font-size: 14px
		}
		
	</style>
	<!-- 날씨 파싱부분 style 지정 끝 -->	
	
<link rel="stylesheet" type="text/css" href="stylesheets/main/main02.css">
<div id="container">
	<div id="content">
		<div>
			<!-- 배너 -->
			<div id="bannerArea">
				<h2 class="hidden-title">에어서울 배너</h2>
				
				<div class="travel-banner-section">
				
					<div class="travel-banner1">
						<div class="banner-slider">
							<ul id="banner-img">
							 	<li>
									<a href="#this"><img src="images/mainbanner/main_event_20170629_ko.jpg" class="page"></a>
								</li>
								<li >
									<a href="#this"><img src="images/mainbanner/main_event_20170613_ko_1.jpg"class="page"></a>
								</li>
								<li >
									<a href="#this"><img src="images/mainbanner/main_event_20170613_ko_2.jpg"class="page"></a>
								</li>

								<li >
									<a href="#this"><img src="images/mainbanner/main_event_20170627_02_ko.jpg"class="page"></a>
								</li>
								<li >
									<a href="#this"><img src="images/mainbanner/mainVisual01_ko.jpg"class="page"></a>
								</li>						
							</ul>
						</div>
						
						<div class="indicator">

							<div class="control_group">
								<button type="button" class="prev"><span>이전</span></button>
								<button type="button" class="next"><span>다음</span></button>
							</div>
						</div> <!-- indicator -->
						
					</div><!-- travel-banner-section -->
				</div>
			</div> <!-- bannerArea -->

			
		</div> <!-- none div -->
		
		
		<!-- 빠른 예약 -->
		<div class="mintSmall">
		
		<form id="availInforForm" name="availInforForm" method="post" target="_self">
			<input type="hidden" name="hidBookConditionData"/>
		</form>
		
	<input type="hidden" id="viewLayerGUMInformation" href="I/KO/viewGumInformation" class="jsOpenLayer" />


		<!-- 여정 (E) -->
		<section class="quick_reservation">

	<div class="booking-journey-type-area">
		<span class="radiobox01 js-radiobox01">
			<label for="radRoundTripType" >
				<span id="spanTripTypeRoundTrip">왕복</span>
				<input id="radRoundTripType" name="radTripType" value="RT"  type="radio" checked="checked">
			</label>
		</span> 
		<span class="radiobox01 js-radiobox01">
			<label for="radOneWayTripType"> 
				<span id="spanTripTypeOneWay">편도</span>
				<input id="radOneWayTripType" name="radTripType" value="OW" type="radio" >
			</label>
		</span>
		
	</div> <!-- 왕복 RT 편도 OW -->
	
<script type="text/javascript">

</script>
	
	<div class="right">
		<button type="button" id="btnBoardingInfo" class="btn-bell js-togglelayer" data-target="#boarding-information-laye">탑승안내</button>
		<button type="button" id="btnAgeCalculator" class="btn-age js-togglelayer" data-target="#ageCalculatorLayer" title="나이 계산기 레이어 열기">나이 계산기</button>
	</div>
	<div id="boarding-information-laye" class="boarding-information-layer mgt10" style="display:none;">
		<h2 id="h2HiddenTitleBoardingInfo" class="hidden-title">탑승안내</h2>

		<ul class="uList01">
			<li id="liPaxCntDesc1">소아/유아를 동반하는 보호자는 부모 또는 만 18세 이상의 성인이어야 하며, 소아/유아 동반 시 반드시 나이를 확인할 수 있는 서류를 준비하시기 바랍니다.</li>
			<li id="liPaxCntDesc2">소아와 유아의 나이는 첫 구간 탑승일을 기준으로한 나이입니다.</li>
		</ul>

		<div class="layer-close-area">
			<button type="button" class="layer-close"><span id="spanBoardingInforLayerClose">닫기</span></button>
		</div>
	</div>
	<div id="ageCalculatorLayer" class="age-calculator-layer mgt10" style="display:none;">
		<h2 id="h2HiddenTitleAgeCal" class="hidden-title">나이 계산기 레이어</h2>
		<p id="pAgeCalDesc" class="fz16">생년월일을 입력하시면, 소아/유아를 확인하실 수 있습니다.</p>
		<div class="mgt20">
			<span id="spanBirthDate" class="fz16 mgr30">생년월일</span>
			<span class="selectbox01 js-selectbox01">
				<span class="txt"></span>
				<select id="selAgeCalYear" style="width: 86px;" title="생년월일 년 선택란">
					<option id="optAgeCalYearDefault" value="" selected="selected" class="ex">년</option>
				</select>
			</span>
			<span class="selectbox01 js-selectbox01">
				<span class="txt"></span>
				<select id="selAgeCalMonth" style="width: 86px;" title="생년월일 년 선택란">
					<option id="optAgeCalMonthDefault" value="" selected="selected" class="ex">월</option>
				</select>
			</span>
			<span class="selectbox01 js-selectbox01 mgr15">
				<span class="txt"></span>
				<select id="selAgeCalDate" style="width: 86px;" title="생년월일 년 선택란">
					<option id="optAgeCalDateDefault" value="" selected="selected" class="ex">일</option>
				</select>
			</span>
			<button type="button" id="btnAgeCal" class="btn-type02-col01">계산</button>
		</div>

		<div class="info mgt15">
			<p id="pAgeCalMsg"></p>
		</div>

		<ul class="uList01">
			<li id="liAgeCalDesc1">첫 구간 탑승일 기준으로 만 2세 이상 ~ 만 12세 미만은 소아, 만 2세 미만은 유아 운임이 적용됩니다. (만 2세 미만은 유아 운임이 적용되면 좌석 미점유)</li>
			<li id="liAgeCalDesc2">소아/유아를 동반하는 보호자는 부모 또는 만 18세 이상의 성인이어야 하며, 소아/유아 동반 시 반드시 나이를 확인할 수 있는 서류를 준비하시기 발바니다.</li>
			<li id="liAgeCalDesc3">성인 승객 1분이 유아 1명 (만 2세 미만)을 동반할 수 있으며, 2명 이상 유아를 동반할 경우 추가되는 유아만큼 소아 운임의 항공권을 구매하셔야 합니다.</li>
			<li id="liAgeCalDesc4">유아에 대해 좌석 점유가 가능하며, 소아 운임이 적용됩니다.</li>
			<li id="liAgeCalDesc5">보호자 없이 혼자 여행하는 소아 예약 및 문의는 예약 센터 0081-0018으로 주시기 바랍니다.</li>
		</ul>

		<div class="layer-close-area">
			<button type="button" class="layer-close"><span id="spanAgeCalLayerClose">나이 계산기 레이어 닫기</span></button>
		</div>
	</div>
	<article class="quick-box">
		<!-- 여정 (S) -->
		
		
		
		
		<div class="booking-journey-input js-radioLayer01-wrap">
			<div class="booking-journey-items-from">
				<span class="booking-journey-items-select d js-radioLayer01">
					<input type="text" id="txtDepAirport" readonly="readonly"  title="출발지 입력" placeholder="출발지" class="ui-autocomplete-input" autocomplete="off"/>
					<input type="hidden" id="hidDepAirport" value="" />
					<input type="hidden" id="hidDepCity" value="" />
					<input type="hidden" id="hidDepArea" value="" />
					<input type="hidden" id="hidDepValue" value="" />
					<button type="button" class="booking-journey-items-button js-radioLayer01-btn" data-target="#divBookingJourneyLayer">
						<span id="spanBookingRouteLayerOpenDep">출발지 목록 레이어 열기</span>
					</button>
				</span>
				<div id="divDepAirportAC" class="booking-journey-autocomplete" style="top:0px;height:0px;">
					<ul class="ui-autocomplete ui-front ui-menu ui-widget ui-widget ui-widget-content" id="ui-id-1" tabindex="0" style="display:none;"></ul>
				</div>
			</div>
			<span id="btnDirectory" class="booking-journey-items-diretory-roundtrip" style="cursor:default;">
				<span id="spanBookingRouteLayerDisp">출발지와 도착지 왕복</span>
			</span>
			<div class="booking-journey-items-city">
				<span class="booking-journey-items-select a js-radioLayer01">
					<input type="text" id="txtArrAirport" readonly="readonly" title="도착지 입력" placeholder="도착지"/>
					<input type="hidden" id="hidArrAirport" value="" />
					<input type="hidden" id="hidArrCity" value="" />
					<input type="hidden" id="hidArrArea" value="" />
					<input type="hidden" id="hidArrValue" value="" />
					<button type="button" class="booking-journey-items-button js-radioLayer01-btn" data-target="#divBookingJourneyLayer">
						<span id="spanBookingRouteLayerOpenArr">도착지 목록 레이어 열기</span>
					</button>
				</span>
				<div id="divArrAirportAC" class="booking-journey-autocomplete" style="top:0px;height:0px;"></div>
			</div>
		</div>	
		
		<div id="divBookingJourneyLayer" class="booking-journey-layer">
			<h2 class="hidden-title"></h2>
			<div class="layer-close-area">
				<button type="button" class="layer-close"><span id="spanBookingRouteLayerClose">취항지 목록 레이어 닫기</span></button>
			</div>
		</div>
		<!-- 여정 (E) -->
		
		
		
		
		
		
		
		<!-- 날짜 (S) -->
		<div class="booking-date-input js-radioLayer01-wrap">
			<div class="booking-date-items-startdate">
				<span class="booking-items-select js-radioLayer01">
					<input type="text" id="txtDepBookingDate" readonly="readonly"  title="출발일 선택" placeholder="출발일"/>
					<button type="button" value="" class="booking-date-items-button js-radioLayer01-btn" data-target="#bookingDateLayer">
						<span id="spanBookingDateLayerOpenDep">출발일 선택 달력 레이어 열기</span>
					</button>
				</span>
			</div>
			<div class="booking-date-items-enddate">
				<span class="booking-items-select js-radioLayer01">
					<input type="text" id="txtArrBookingDate" readonly="readonly" title="도착일 선택" placeholder="도착일" />
					<button type="button" value="" class="booking-date-items-button js-radioLayer01-btn" data-target="#bookingDateLayer">
						<span id="spanBookingDateLayerOpenArr">도착일 선택 달력 레이어 열기</span>
					</button>
				</span>
			</div>
		</div>

		<div id="bookingDateLayer" class="booking-date-layer">
			<div class="booking-date-layer-btnarea">
				<button type="button" class="booking-date-layer-btntoday"><span id="spanDateLayerTodayButton" class="btn-type02-col01">오늘</span></button>
				<button type="button" class="booking-date-layer-btnleft"><span id="spanDateLayerPrevMonthButton">이전달</span></button>
				<button type="button" class="booking-date-layer-btnright"><span id="spanDateLayerNextMonthButton">다음덜</span></button>
			</div>
			<div id="bookingDatePicker">
			<!--  달력 여기에 열림. 
			
			두 개의 달력을 보여줌. datePicker를 활용, 해당 datePicker에 설정되어 있는 css id값을 활용하여 효과를 준다. 
			 조건 => 왕복? 편도?
					
			 -->
			
			</div>
			<div class="layer-close-area">
				<div class="date-layer-info">
					<span id="spanDateLayerInfoToday" class="today">오늘 날짜</span>
					<span id="spanDateLayerInfoStart" class="start">출발일</span>
					<span id="spanDateLayerInfoEnd" class="end">도착일</span>
					<span id="spanDateLayerInfoBetween" class="between">체류</span>
				</div>
				<button type="button" class="layer-close">
					<span id="spanDateLayerCloseButton">출발일/도착일 선택 달력 레이어 닫기</span>
				</button>
			</div>
		</div>
		<!-- 날짜 (E) -->
		
		<!-- 성인,소아,유아 -->
		<div class="booking-passenger-input">
			<div class="booking-passenger-items-adult">
				<div class="js-selectLayer01">
					<span class="booking-passenger-items-select">
						<input type="text" id="txtSelAdtPaxCnt" title="성인수 입력"readonly="readonly"/>
						<button type="button" id="btnSelAdtPaxCnt" class="booking-passenger-items-button js-selectLayer01-btn" data-target="#bookingPassengerLayerAdult">
							<span id="spanPaxCntLayerOpenAdt">성인수 선택 레이어 열기</span>
						</button>
					</span>
					<div id="bookingPassengerLayerAdult" class="booking-passenger-layer-adult">
						<ul>
							<li name="Pax_1">
								<button type="button" value="1"><span>성인 1</span></button>
							</li>
							<li name="Pax_2">
								<button type="button" value="2"><span>성인 2</span></button>
							</li>
							<li name="Pax_3">
								<button type="button" value="3"><span>성인 3</span></button>
							</li>
							<li name="Pax_4">
								<button type="button" value="4"><span>성인 4</span></button>
							</li>
							<li name="Pax_5">
								<button type="button" value="5"><span>성인 5</span></button>
							</li>
							<li name="Pax_6">
								<button type="button" value="6"><span>성인 6</span></button>
							</li>
							<li name="Pax_7">
								<button type="button" value="7"><span>성인 7</span></button>
							</li>
							<li name="Pax_8">
								<button type="button" value="8"><span>성인 8</span></button>
							</li>
							<li name="Pax_9">
								<button type="button" value="9"><span>성인 9</span></button>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="booking-passenger-items-child">
				<div class="js-selectLayer01">
					<span class="booking-passenger-items-select">
						<input type="text" id="txtSelChdPaxCnt" title="소아수 입력" readonly="readonly"/>
						<button type="button" id="btnSelChdPaxCnt" class="booking-passenger-items-button js-selectLayer01-btn" data-target="#bookingPassengerLayerChild">
							<span id="spanPaxCntLayerOpenChd">소아수 선택 레이어 열기</span>
						</button>
					</span>
					<div id="bookingPassengerLayerChild" class="booking-passenger-layer-child">
						<ul>
							<li name="Pax_0">
								<button type="button" value="0"><span>소아 0</span></button>
							</li>
							<li name="Pax_1">
								<button type="button" value="1"><span>소아 1</span></button>
							</li>
							<li name="Pax_2">
								<button type="button" value="2"><span>소아 2</span></button>
							</li>
							<li name="Pax_3">
								<button type="button" value="3"><span>소아 3</span></button>
							</li>
							<li name="Pax_4">
								<button type="button" value="4"><span>소아 4</span></button>
							</li>
							<li name="Pax_5">
								<button type="button" value="5"><span>소아 5</span></button>
							</li>
							<li name="Pax_6">
								<button type="button" value="6"><span>소아 6</span></button>
							</li>
							<li name="Pax_7">
								<button type="button" value="7"><span>소아 7</span></button>
							</li>
							<li name="Pax_8">
								<button type="button" value="8"><span>소아 8</span></button>
							</li>
							<li name="Pax_9">
								<button type="button" value="9"><span>소아 9</span></button>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="booking-passenger-items-lapinfant">
				<div class="js-selectLayer01">
					<span class="booking-passenger-items-select">
						<input type="text" id="txtSelInfPaxCnt" title="유아수 입력" readonly="readonly"/>
							<button type="button" id="btnSelInfPaxCnt" class="booking-passenger-items-button js-selectLayer01-btn" data-target="#bookingPassengerLayerLapinfant">
								<span id="spanPaxCntLayerOpenInf">유아수 선택 레이어 열기</span>
							</button>
					</span>
					<div id="bookingPassengerLayerLapinfant" class="booking-passenger-layer-lapinfant">
						<ul>
							<li name="Pax_0">
								<button type="button" value="0"><span>유아 0</span></button>
							</li>
							<li name="Pax_1">
								<button type="button" value="1"><span>유아 1</span></button>
							</li>
							<li name="Pax_2">
								<button type="button" value="2"><span>유아 2</span></button>
							</li>
							<li name="Pax_3">
								<button type="button" value="3"><span>유아 3</span></button>
							</li>
							<li name="Pax_4">
								<button type="button" value="4"><span>유아 4</span></button>
							</li>
							<li name="Pax_5">
								<button type="button" value="5"><span>유아 5</span></button>
							</li>
							<li name="Pax_6">
								<button type="button" value="6"><span>유아 6</span></button>
							</li>
							<li name="Pax_7">
								<button type="button" value="7"><span>유아 7</span></button>
							</li>
							<li name="Pax_8">
								<button type="button" value="8"><span>유아 8</span></button>
							</li>
							<li name="Pax_9">
								<button type="button" value="9"><span>유아 9</span></button>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</article>
	
		<ul id="ulOneWayDesc" class="uList01">
			<li id="liOneWayDesc1">편도 여정 시 국적에 따라 경유지 및 목적지 출입국 시 비자를 소지하지 않을 경우에는 해당 국가로 출국이 거절될 수 있습니다.</li>
			<li id="liOneWayDesc2">무비자 입국이 가능한 나라일 경우라도 편도 입국은 불가하오니 반드시 해당 대사관을 통하여 확인하시기 바랍니다.</li>
		</ul>
		<button type="button" id="goItinerary" class="reservieren">예매하기</button>
	</section>
				
				
				
				
				<form id="quickBookingForm" name="quickBookingForm" method="post">
					<input type="hidden" id="hidQuickBookingJsonData" name="hidQuickBookingJsonData" value="" />
				</form>
				<form id="certify" name="certify" method="post" target="_self" ></form>
					
				<link rel="stylesheet" type="text/css" href="stylesheets/sub/booking.css">

	</div>
	
	<!-- 특가 -->
	<div class="special">
		<div class="wrap">
				<p class="WeatherTitle">내일 날씨정보</p>
			<table class="weather">
				<tr>					
				<c:forEach items="${weathers1}" var="list">
					<td>
						<p class="font_head">${list.names}</p><br>
						<p class="font_m"><img src="${list.imgs}"></p>
						<p class="font_m">${list.weathers}</p>
						<p class="font_m">최저기온 : ${list.lows}</p>
						<p class="font_m">최고기온 : ${list.highs}</p>
					</td>
				</c:forEach>
				</tr>
			</table>
			<!-- 날씨2 -->
			<table class="weather">
				<tr>					
				<c:forEach items="${weathers2}" var="list">
					<td>
						<p class="font_head">${list.names}</p><br>
						<p class="font_m"><img src="${list.imgs}"></p>
						<p class="font_m">${list.weathers}</p>
						<p class="font_m">최저온도 : ${list.lows}</p>
						<p class="font_m">최고온도 : ${list.highs}</p>
					</td>
				</c:forEach>
				</tr>
			</table>
			<!-- 파싱  끝 -->

		</div><!-- wrap -->
	</div><!-- special -->
		
	<!-- 부가 서비스 구매 -->
	
	<div class="serviceList">
		<div class="serviceBuy">
			<h2>부가 서비스 구매</h2>
			
				<ul>
					<li>
						<a href="#">
							<div>
								<p class="tit">에어 서울 Cafe Mint</p>
								<p>
									기내에서 드실 수 있는 음료와 스낵, 다용도로<br>
									사용할 수 있는 쿠션 담요 등 기념품을 판매 합니다.
								</p>
							</div>
						</a>
					</li>
					<li>
						<a href="#">
							<div>
								<p class="tit">에어 서울 기내 면세품</p>
								<p>
									에어 서울의 기내에서 합리적인 가격으로<br>
									화장품, 주류 등 면세품을 구매하실 수 있습니다.
								</p>
							</div>
						</a>
					</li>
				</ul>
		</div><!-- serviceBuy -->
		
		<div class="quickLink">
			<h2>바로가기</h2>
			
				<ul>
					<li>
						<a href="viewCheckInList.bo">
							<span><img src="images/mainIcon/icon_main01.png"></span>
							<strong>미리하는 온라인 체크인</strong>
						</a>
					</li>
					<li>
						<a href="Info_arrival.bo">
							<span><img src="images/mainIcon/icon_main02.png"></span>
							<strong>실시간 출도착 조회</strong>
						</a>
					</li>
					<li>
						<a href="#">
							<span><img src="images/mainIcon/icon_main03.png"></span>
							<strong>미디어룸</strong>
						</a>
					</li>
				</ul>
		</div><!-- quickLink -->
		
	</div><!-- serviceList -->



	
	<!-- 이벤트, 게시판 -->
	
	<div class="eventNotice">
		<div class="event">
			<h2>진행중인 이벤트</h2>
			
			<div class="event-section">
				<div class="event-banner">
					<div class="banner-slider">
						<ul class="banner-img">
							<li></li>
						</ul>
					</div><!-- banner slider -->
					
					<div class="indicator">
						<div class="control_group">
							<button type="button" class="prev"><span>이전</span></button>
							<button type="button" class="next"><span>다음</span></button>
							
							<ul class="control">
								<li class="on">
									<button type="button" class="stop"><span>STOP</span></button>
								</li>
								<li>
									<button type="button" class="play"><span>PLAY</span></button>
								</li>
							</ul><!-- control -->
						</div><!-- control_group -->
					</div><!-- indicator -->
					<button type="button" class="more" onclick=""><span>more</span></button>
				</div><!-- event banner -->
			</div><!-- event section -->
			
			<ul>
			
			</ul>
			
		</div><!-- evnet -->







		
		<div class="notice">
			<ul class="tabMenu">
				<li class="on">
					<a href="#">
						<span class="hidden-txt">현재 선택됨</span>
						공지 사항
					</a>
				</li>
				<li>
					<a href="#">
						<span class="hidden-txt">현재 선택됨</span>
						보도 자료
					</a>
				</li>
			</ul>
			
			<!-- 공지사항 게시판  -->
			<div id="notice" class="list">
				<ul>
					<li></li>
				</ul>
			</div><!-- notice -->
			
			<!-- 보도자료 게시판 -->
			
			<div id="report" class="list" style="display:none;">
				<ul>
					<li></li>
				</ul>
			</div><!-- report -->
			
		</div><!-- notice -->
		
		
	</div><!-- event Notice -->
	
	
	<!-- 서비스 -->
	<div class="serviceMenuList">
		<a href="#this">
			<div>
				<img src="images/mainbanner/mainevent/Main_20170613_ko_1.jpg" alt="요나고의 색다른 매력을 에어서울과 함께 느껴 보세요!">
			</div>
			<p class="tit">색다른 여행</p>
			<p class="comment">
				요나고의 색다른 매력을 <br>
				에어 서울과 함께 느껴 보세요!<br>
				더운 나라 8ㅅ8
			</p>
		</a>
		<a href="#this">
			<div>
				<img src="images/mainbanner/mainevent/Main_20170613_ko_2.jpg" alt="완벽한 자연과 음식이 조화된 도야마로 같이 가 보실까요?">
			</div>
			<p class="tit">민트스토리</p>
			<p class="comment">
				완벽한 자연과 음식이 조화된<br>
				도야마로 같이 가 보실까요?<br>
				시러여!
			</p>
		</a>
		<a href="#this">
			<div>
				<img src="images/mainbanner/mainevent/Main_20170630_ko_3.jpg" alt="에어서울 추천 기내식 맛있는 요녀석들 하늘에서 즐기는 특별한 기내식 피시 앤 칩스">
			</div>
			<p class="tit">맛있는 욘석들</p>
			<p class="comment">
				7월 에어 서울 추천 기내식<br>
				피시 앤 칩스<br>
				낸나
			</p>
		</a>
	</div><!-- serviceMenuList-->
	
	<!-- 퀵 메뉴 -->
	<div class="quickMenuBox">
		<ul class="quickMenu">
			<form name="booking_new" action="" method="post">
				<input type="hidden" name="viewBooking" value="">
			</form>
			<li>
				<h3><a href="#">항공권 예약</a></h3>
				<ul></ul>
			</li>
			
			<li>
				<form name="reservationList1_new" action="" methos="post">
					<input type="hidden" name="viewReservationList1" value="">
				</form>
				<h3><a href="#this">예약 조회/변경</a></h3>
				<ul>
					<li>
						<form name="reservationList2_new" action="" method="post">
							<input type="hidden" name="viewReservationList2" value="">
						</form>
						<a href="#this">예약 조회/변경/환불</a>
					</li>
					<li>
						<form name="checkInList_new" action="" method="post">
							<input type="hidden" name="viewCheckInList" value="">
						</form>
						<a href="#this">온라인 체크</a>
					</li>
				</ul>
			</li>
			<li>
				<h3><a href="#this">서비스 안내</a></h3>
				<ul>
					<li><a href="#this">항공권 안내</a></li>
					<li><a href="#this">부가 서비스 구매</a></li>
					<li><a href="#this">공항 서비스</a></li>
					<li><a href="#this">기내 서비스</a></li>
					<li><a href="#this">도움이 필요한 고객</a></li>
					<li><a href="#this">모바일 서비스</a></li>
					<li><a href="#this">양식 다운로드</a></li>
				</ul>
			</li>
			<li>
				<h3><a href="#this">Travel Informaion</a></h3>
				<ul>
					<li><a href="#this">취향지 소개</a></li>
					<li><a href="#this">호텔</a></li>
					<li><a href="#this">렌터카</a></li>
					<li><a href="#this">여행자 보험</a></li>
				</ul>
			</li>
			<li>
				<h3><a href="#this">이벤트/새소식</a></h3>
				<ul>
					<li><a href="#this">이벤트</a></li>
					<li><a href="#this">특가존</a></li>
					<li><a href="#this">공지사항</a></li>
					<li><a href="#this">미디어룸</a></li>
				</ul>
			</li>
			<li class="right">
				<p><a href="#this">자주묻는질문</a></p>
				<p><a href="#this">1:1 문의</a></p>
				<p><a href="#this">사이트맵</a></p>
				<div>
					<a href="#"><img src="images/common/btn_fb.png" alt="facebook"></a>
					<a href="#"><img src="images/common/btn_ig.png"alt="instagram"></a>
					<a href="#"><img src="images/common/btn_yb.png" alt="youtube"></a>
				</div>
		</ul>
	</div><!-- quickMenuBox -->
		
		
	</div><!-- content -->
</div><!-- container -->

<script type="text/javascript">
$(document).ready(function(){
	
	var DateObj = new Date(); 
	var currentYear =Number(DateObj.getFullYear());
	var currentMonth = Number(DateObj.getMonth()+1);
	var currentDate =Number(DateObj.getDate());
	var selectTripType="";
	var nowTripType="";
	
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