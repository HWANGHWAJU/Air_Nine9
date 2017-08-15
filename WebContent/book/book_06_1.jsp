<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<link rel="stylesheet" type="text/css" href="stylesheets/sub/seat_choice.css">    
	<script type="text/javascript" src="_nineJs/nineSeat.js"></script>
	
				<h1 class="hidden-title" name="lblAncillary">부가서비스</h1>
				<!-- 탑승자정보 (S) -->
				<div class="booking-extraservice">
					<div class="booking-extraservice-area">
					
						<!-- 좌석 -->
						<div class="booking-extraservice-list">
							<div class="contents-area">
								<h2 class="b-tit" name="lblSeat">좌석</h2>
								<p class="info" id="SeatNotice1">홈페이지에서 원하시는 좌석을 선택하실 수 있습니다.</p>
									<!-- 왕복 -->
									
										
										<div class="journey-tbl" id="divJourney_1">
											<h3 class="journey-title" name="lblDepartureItinerary">가는여정</h3><div class="journey-message"><em class="point-color01">원하시는 좌석을 선택하실 수 있습니다.</em></div>
										</div>
										
										<div class="journey-tbl" id="divJourney_2" style="display:none;">
											<h3 class="journey-title" name="lblArrivalItinerary">오는여정</h3><div class="journey-message"><em class="point-color01">원하시는 좌석을 선택하실 수 있습니다.</em></div>
										</div>
									
							</div>
							<div class="choice-area">
								<div class="img-box">
									<img src="images/booking/img_booking_seat01.jpg" alt="">
								</div>
								<div class="pdt20 tc">
											<button type="button" class="btn-type05-col01 jsOpenLayer" id="SeatSelectLayerPopupOpen"  name="lblSelect" title="좌석 선택 레이어팝업 열림" data-target="#seatSelectedLayer">선택하기</button>
								</div>
							</div>
						</div>
						<!-- 좌석 표 -->
						<div class="booking-extraservice-list"  id="seatSelectedLayer" style="display:none;">
							<div class="contents-seat-area">
								<h2 class="hidden-title">좌석 선택 area</h2>
								
								<div class="In_LayerTop">
									<ul class="seat_section_selected" id="seat_section_selected">
										<li id="OWlist"  ><span class="active"><a href="#this">가는 여정</a></span></li>
										<li id="RTlist" style="display:block;"><span><a href="#this">오는 여정</a></span></li>
										<li class="planeName" style="float: right; right: 0px;"><span id="flightNum" style="padding-left: 50px;"></span><span id="TypeName" style="margin-left: 10px"></span></li>
									</ul>
								</div>
								
								<div class="In_LayerContents" > 
									<div class="In_LayerSeatView" id="OWseatView">
										<div class="seat-top">
											<div class="seat-section">
												<div class="restroom list01">
													<div class="left-content">
														<div class="icon-restroom">화장실</div>
													</div>
													<div class="right-content"></div>
												</div>
												<div class="entrance">
													<div class="left-content">출입구</div>
													<div class="right-content">출입구</div>
												</div>
											</div>
										</div>
										
										<div class="seat-middle">
											<div class="seat-table" id="seatSectionTable">
												<table>
													<colgroup>
														<col style="width:29px">
														<col style="width:29px">
														<col style="width:29px">
														<col style="width:29px">
														<col style="width:29px">
														<col style="width:29px">
														<col style="width:29px">
													</colgroup>
													
													<thead>
														<tr>
															<th scope="col">A</th>
															<th scope="col">B</th>
															<th scope="col">C</th>
															<th scope="col"></th>
															<th scope="col">D</th>
															<th scope="col">E</th>
															<th scope="col">F</th>
														</tr>
													</thead>
													
													<tbody id="tbodyseatSectionTable">
													
													</tbody>
													
													
												</table>
											</div>
										
										
										
										</div>
										
										<div class="seat-bottom">
											<div class="seat-section">
												<div class="restroom list03">
													<div class="left-content">
														<div class="icon-restroom">화장실</div>
													</div>
													<div class="right-content"></div>
												</div>
												<div class="emergency-exit list03">
													<div class="left-content">비상구</div>
													<div class="right-content">비상구</div>
												</div>
											</div>
										</div>
									</div>
									
									<div class="In_LayerSeatView" id="RTseatView" style="display:none;">
										<div class="seat-top">
											<div class="seat-section">
												<div class="restroom list01">
													<div class="left-content">
														<div class="icon-restroom">화장실</div>
													</div>
													<div class="right-content"></div>
												</div>
												<div class="entrance">
													<div class="left-content">출입구</div>
													<div class="right-content">출입구</div>
												</div>
											</div>
										</div>
										
										<div class="seat-middle">
											<div class="seat-table" id="seatSectionTable">
												<table>
													<colgroup>
														<col style="width:29px">
														<col style="width:29px">
														<col style="width:29px">
														<col style="width:29px">
														<col style="width:29px">
														<col style="width:29px">
														<col style="width:29px">
													</colgroup>
													
													<thead>
														<tr>
															<th scope="col">A</th>
															<th scope="col">B</th>
															<th scope="col">C</th>
															<th scope="col"></th>
															<th scope="col">D</th>
															<th scope="col">E</th>
															<th scope="col">F</th>
														</tr>
													</thead>
													
													<tbody id="tbodyseatSectionTable">
													
													</tbody>
													
													
												</table>
											</div>
										
										
										
										</div>
										
										<div class="seat-bottom">
											<div class="seat-section">
												<div class="restroom list03">
													<div class="left-content">
														<div class="icon-restroom">화장실</div>
													</div>
													<div class="right-content"></div>
												</div>
												<div class="emergency-exit list03">
													<div class="left-content">비상구</div>
													<div class="right-content">비상구</div>
												</div>
											</div>
										</div>
									</div>
										
									<div class="In_LayerPriceView">
										<h3><span>좌석별 운임 가격</span></h3>
										<div class="In_LayerSeatPriceList">
											<div class="seats">
												<img src="images/booking/seat0_enter_seat.PNG" style="width: 34px; height: 34px;">
													<div class="pricetag">
														<em class="title">앞 / 비상구 좌석</em>
														<span>KRW 15,000</span>
													</div>
											</div>
											<div class="seats">
												<img src="images/booking/seat4_normal_seat.PNG" style="width: 34px; height: 34px;">
													<div class="pricetag">
														<em class="title">일반 좌석</em>
														<span>KRW 5,000</span>
													</div>
											</div>												
											<div class="seats">
												<img src="images/booking/seat1_Iselected_seat.PNG" style="width: 34px; height: 34px;">
													<div class="pricetag">
														<span>좌석 선택</span>
													</div>
											</div>
											<div class="seats">
												<img src="images/booking/seat2_selected_seat.PNG" style="width: 34px; height: 34px;">
													<div class="pricetag">
														<span>선택 불가</span>
													</div>
											</div>
											<div class="seats">
												<img src="images/booking/seat3_paid_seat.PNG" style="width: 34px; height: 34px;">
													<div class="pricetag">
														<span>판매 완료</span>
													</div>
											</div>																					
										</div>
										
										<div class="In_LayerSeatSelectedView">
										
											<h3><span>선택 좌석</span></h3>
											<div class="seatListSpan"><span id="OWseatSpan"  class='active' style="float:left;">가는 여정</span>&nbsp;<span id="RTseatSpan" style="display:none; float: right; padding-right: 50px;">오는 여정</span></div>
											<div class="In_LayerSelectedSeatList" id="OWseatList">
													<ul>
														<li><span class="seatNum" ></span><em class="unit"></em><span class="seatPrice" ></span></li>
													</ul>	
											</div>
											<div class="In_LayerSelectedSeatList" id="RTseatList" style="display:none;">
													<ul>
														<li><span class="seatNum" ></span><em class="unit"></em><span class="seatPrice" ></span></li>
													</ul>	
											</div>											
											
											<h3><span>좌석 총 금액</span></h3>
											<div class="SeatTotalPrice">
												<div id="OWtotalSeatPrice"><em class="unit" style=" font-size: 18px;"></em><span class="totalSeatPrice"></span></div><br>
												<div id="RTtotalSeatPrice" style="display:none;"><em class="unit" style=" font-size: 18px;"></em><span class="totalSeatPrice"></span></div>
											</div>
											<div style="padding-top: 20px; line-height: 20px;">
												<span> 유아의 경우 좌석이 필요할 시 <br> 고객 센터로 문의 바랍니다. </span>
											</div>
											<div style="padding-top: 20px; margin:0 auto;">
												<button type="button" class="btn-type05-col01" style="margin-left:20px;" id="SeatResetBtn">선택 초기화</button>
											</div>
										</div>						
									</div>
								</div>

								
								
							</div>
						</div>
						
						<!-- 수하물 div -->
						<div class="booking-extraservice-list">
							<div class="choice-area">
								<div class="img-box">
									<img src="images/booking/img_booking_baggage01.jpg" alt="">
								</div>
								<div class="pdt20 tc">
									<button type="button" class="btn-type05-col01 jsOpenLayer" id="BagSelectLayerPopupOpen" href="I/KO/viewBaggageSelect" name="lblSelect" title="수하물 선택 레이어팝업 열림">선택하기</button>
								</div>
							</div>
							<div class="contents-area">
								<h2 class="b-tit" name="lblBaggage">수하물</h2>
								<p class="info" id="BaggageNotice1" style=""><span class="important">승객(성인 및 소아)당 기본 1개의 수하물(최대 23kg)은 무료</span>로 제공하고 있습니다.</p>
								<p class="info" id="BaggageNotice3" style="display:none;"><span class="important">승객(성인 및 소아)당 기본 2개의 수하물(각 최대 23kg)은 무료</span>로 제공하고 있습니다.</p>
								<p class="info" id="BaggageNotice4" style="display:none;"><span class="important">승객(성인 및 소아)당 기본 1개의 수하물(최대 15kg)은 무료</span>로 제공하고 있습니다.</p>
									<!-- 왕복 -->
									
										
										<div class="journey-tbl" id="divJourneyBag_1">
											<h3 class="journey-title" name="lblDepartureItinerary">가는여정</h3><div class="journey-message"><em class="point-color01">추가 수하물을 구매하실 수 있습니다.</em></div>
										</div>
											<div class="journey-tbl" id="divJourneyBag_2">
											<h3 class="journey-title" name="lblArrivalItinerary">오는여정</h3><div class="journey-message"><em class="point-color01">추가 수하물을 구매하실 수 있습니다.</em></div>
										</div>
									
							</div>
						</div>
						<!-- 수화물 선택 -->
						<div class="booking-extraservice-list"  id="BagSelectedLayer" style="display:none;">
							<div class="contents-seat-area">
								<h2 class="hidden-title">수화물 선택 area</h2>
								
								<div class="In_LayerTop">
									<ul class="seat_section_selected" id="seat_section_selected">
										<li id="OWlist"  ><span class="active"><a href="">가는 여정</a></span></li>
										<li id="RTlist" style="display:block;"><span><a href="">오는 여정</a></span></li>
										<li class="planeName" style="float: right;"><span id="flightNum" style="margin-right: 20px;"></span><span id="TypeName"></span></li>
									</ul>
								</div>
								
								<div class="In_LayerContents" >
									<div class="seat-top" style="border:1px;">
									
									</div>
								</div>
								
							</div>
						</div>
						
						<!-- 기내식 div -->
						<div class="booking-extraservice-list">
							<div class="choice-area">
								<div class="img-box">
									<img src="images/booking/img_booking_meals01.jpg" alt="">
								</div>
								<div class="pdt20 tc">
									
									
										<button type="button" class="btn-type05-col01 jsOpenLayer" id="MealSelectLayerPopupOpen" href="I/KO/viewMealSelect" name="lblSelect" title="기내식 선택 레이어팝업 열림">선택하기</button>
									
									
								</div>
							</div>
							<div class="contents-area">
								<h2 class="b-tit" name="lblMeal">기내식</h2>
								<p class="info" id="MealNotice1">노선별로 다양한 기내식이 준비되어 있습니다.</p>
								
									
										
										<div class="journey-tbl" id="divJourneyMeal_1">
											<h3 class="journey-title" name="lblDepartureItinerary">가는여정</h3><div class="journey-message"><em class="point-color01">기내식을 선택하실 수 있습니다.</em></div>
										</div>
										
										<div class="journey-tbl" id="divJourneyMeal_2">
											<h3 class="journey-title" name="lblArrivalItinerary">오는여정</h3><div class="journey-message"><em class="point-color01">기내식을 선택하실 수 있습니다.</em></div>
										</div>
									
							</div>
						</div>
						<!-- 기내식 선택 -->
						<div class="booking-extraservice-list"  id="MealSelectedLayer" style="display:none;">
							<div class="contents-seat-area">
								<h2 class="hidden-title">기내식 선택 area</h2>
								
								<div class="In_LayerTop">
									<ul class="seat_section_selected" id="seat_section_selected">
										<li id="OWlist"  ><span class="active"><a href="">가는 여정</a></span></li>
										<li id="RTlist" style="display:block;"><span><a href="">오는 여정</a></span></li>
										<li class="planeName" style="float: right;"><span id="flightNum" style="margin-right: 20px;"></span><span id="TypeName"></span></li>
									</ul>
								</div>
								
								<div class="In_LayerContents">
								</div>
								
							</div>
						</div>
						
						<!-- 확인버튼 -->
						<div class="pdt30 tc">
							<button id="Go_Pay" type="button" class="btn-type01-col01" name="lblConfirm">확인</button>
							<button type="button" href="I/KO/viewSeatNotice" class="btn-type02-col02 jsOpenLayer" style="display:none" id="seatNoticeLayer"></button>
						</div>
					</div>
					<!-- 탑승자정보 - 탑승객별 운임(E) -->

					<!-- 우측 간편 안내(S) -->
					<div class="booking-airlineticket-finalInfo">
						<div class="booking-airlineticket-finalInfo-title">
							<h2 id="ItineraryFare">여정 및 운임</h2>
						</div>
						<div class="booking-airlineticket-finalInfo-head">
								<!-- 왕복 -->
								
									
										<div class="booking-airlineticket-finalInfo-head-from">
											<div class="booking-airlineticket-finalInfo-head-kinds"><span class="icon_airlineticket_from02" name="lblDepartureItinerary">가는여정</span></div>
											<div class="booking-airlineticket-finalInfo-head-fly"><span class="diretory icon_airlineticket_oneway02" name="lblFrom">에서</span></div>
											<div class="booking-airlineticket-finalInfo-head-fly"></div>
											<div class="booking-airlineticket-finalInfo-head-date" id="Summary_1"><div class="booking-airlineticket-finalInfo-head-date"></div></div>
										</div> 
									
									
										<div class="booking-airlineticket-finalInfo-head-to">
											<div class="booking-airlineticket-finalInfo-head-kinds"><span class="icon_airlineticket_to02" name="lblArrivalItinerary">오는여정</span></div>
											<div class="booking-airlineticket-finalInfo-head-fly"><span class="diretory icon_airlineticket_oneway02" name="lblFrom">에서</span></div>
											<div class="booking-airlineticket-finalInfo-head-fly"></div>
											<div class="booking-airlineticket-finalInfo-head-date" id="Summary_2"><div class="booking-airlineticket-finalInfo-head-date"></div></div>
										</div>
						
						</div>
						
								<!-- 성인건수 -->
								<!-- 소아건수 -->
							<!-- 유아건수 -->
							<!-- 쿠폰할인금액 -->
			
						<div class="booking-airlineticket-finalInfo-body">
							<div class="booking-airlineticket-finalInfo-tblRow01">
								<table>
									<colgroup>
										<col style="width:33.3%">
										<col style="width:33.3%">
										<col style="width:33.3%">
									</colgroup>
									<tbody>
										<tr>
											<td class="tc tbl-adult"><span id="Adult">성인 </span><span id="Summary_ADT"></span><span name="lblPersonUnit">명</span></td>
											<td class="tc tbl-child"><span id="Child">소아 </span><span id="Summary_CHD"></span><span name="lblPersonUnit">명</span></td>
											<td class="tc tbl-lapinfant"><span id="Infant">유아 </span><span id="Summary_INF"></span><span name="lblPersonUnit">명</span></td>
										</tr>
									</tbody>
								</table>
							</div>
								
									<!-- 예상총액 -->
									<!-- 판매운임총액 -->
									<!-- 유류할증료총액 -->
								<!-- 세금제반요금총액 -->
										<!-- 지불금액 -->

							
									<!-- 예약단계 -->
									<div class="booking-airlineticket-finalInfo-tblRow02">
										<table>
											<caption id="SummaryNotice2">여정 및 운임 표 | 항공운임, 유류할증료, 세금/제반요금 쿠폰할인으로 구성되어있습니다.</caption>
											<colgroup>
												<col style="width:50%">
												<col style="width:50%">
											</colgroup>
											<tbody>
														<tr>
											<th scope="row" name="lblAirfare">항공운임</th>
											<td class="tr tbl-price">
												<span id="EquivFare"></span>
											</td>
										</tr>
										<tr>
											<th scope="row" name="lblFuelSurcharge">유류할증료</th>
											<td class="tr tbl-price">
												<span  id="FuelCharge"></span>
											</td>
										</tr>
										<tr>
											<th scope="row" name="lblTaxrate">세금/제반요금</th>
											<td class="tr tbl-price">
												<span  id="Tax"></span>
											</td>
										</tr>
										
											<tr>
												<th scope="row" name="lblCouponTitle">쿠폰할인</th>
												<td class="tr tbl-price" id="couponPrice">
													<span></span>
												</td>
											</tr>
											</tbody>
										</table>
									</div>
								
								
								
							
							<div class="head">
								<h3 name="lblAncillary">부가서비스</h3>
							</div>
							
							<div class="booking-airlineticket-finalInfo-tblRow02">
								<table>
									<caption id="SummaryNotice3">여정 및 운임 표 | 좌석, 기내식, 수화물으로 구성되어있습니다.</caption>
									<colgroup>
										<col style="width:50%">
										<col style="width:50%">
									</colgroup>
									<tbody>
									<tr>
										<th scope="row" class="" name="lblSeat">좌석</th>
										<td class="tr tbl-price" id="seatPrice">
											<span class="totalSeatPrice"></span>
										</td>
									</tr>
									<tr>
										<th scope="row" class="" name="lblMeal">기내식</th>
										<td class="tr tbl-price" id="mealPrice">
											<span class="totalMealPrice">0</span>
										</td>
									</tr>
									<tr>
										<th scope="row" class="" name="lblBaggage">수하물</th>
										<td class="tr tbl-price" id="baggagePrice">
											<span class="totalBagPrice">0</span>
										</td>
									</tr>
									</tbody>
								</table>
							</div>
							<div class="total-price">
								<h3 name="lblPredictionTotal">총액</h3>
								<div class="price-area">
									
											<!-- 예약단계 -->
											<em class="unit">KRW</em>
											<em class="price"></em>		
										
										
									
								</div>
							</div>
							
						</div>
						<!-- 우측 간편 안내(E) -->
						<p class="info-exmark01" id="SummaryNotice4">유류할증료 및 세금/제반요금을 포함한 총액으로 구매 시점과 환율에 따라 변동될 수 있습니다.</p>
						<p class="info-exmark01" id="SummaryNotice5">한국 출발 세금(BP)에는 국제여객공항이용료(인천/김포 17,000원), 출국납부금(10,000원), 국제빈곤퇴치기여금(1,000원)이 포함되어 있습니다.</p>

					</div>
					<!-- 탑승자정보 (E) -->

				</div>

	<form id="certify" name="certify" method="post" target="_self"></form>
	
	
	

<input type="hidden" name="triptype" id="triptype">
<form name="GoBook07" method="post">
<input type="hidden" name ="jsBookingCondition" id="jsBookingCondition" value='${requestScope.jsBC }'>
<input type="hidden" name="jsFlightInfo"					 id="jsFlightInfo" value='${requestScope.jsF }'>
<input type="hidden" name="jsReservationPerson" id="jsReservationPerson" value='${requestScope.jsR }'>
<input type="hidden" name="jsPassengerDetail" 		 id="jsPassengerDetail" value='${requestScope.jsP}'>
<input type="hidden" name="jsScheduleNum" 			id="jsScheduleNum"		value='${requestScope.jsSC }'>
<input type="hidden" name="jsOption" 						id="jsOption">
<input type="hidden" name="jsOptionPrice" 				id="jsOptionPrice" >
</form>

<script type="text/javascript">

var jsBookingCondition = $("#jsBookingCondition").val();
var jsFlightInfo = $("#jsFlightInfo").val();
var jsReservationPerson = $("#jsReservatonPerson").val();
var jsPassengerDetail = $("#jsPassengerDetail").val();

GoBook_06(jsBookingCondition);
SettingDataBook05(jsFlightInfo,jsBookingCondition);

var JSbookingCondition = new BookingConditionDataObject();
var jsPassengerDataOject = new PassengerDataObject();
var jsSegmentDataObject = new SegmentDataObject();

JSbookingCondition = jQuery.parseJSON(jsBookingCondition);

jsPassengerDataObject =[];
jsSegmentDataObject =[];

jsPassengerDataObject = JSbookingCondition.passengerDatas; //이미 Json으로 변형되었음
jsSegmentDataObject = JSbookingCondition.segmentDatas;

SettingFinalPrice(jsFlightInfo,jsPassengerDataObject);

var JSflightInfo = new FlightInfo();
JSflightInfo = jQuery.parseJSON(jsFlightInfo);

var JSflightDetail = new FlightDetailInfo();

JSflightDetail = [];
JSflightDetail = JSflightInfo.flightDetailInfo;

var type = JSflightInfo.triptype;

$("#triptype").val(type);

var OWdate = jsSegmentDataObject[0].departureDateTime;
var RTdate = "";
//console.log(OWdate);

var OWflight=JSflightDetail[0].depflight;
var RTflight="";

var OWflightType ="";
var RTflightType = "";

if(OWflight.substring(0,2)=='RS'){
	OWflightType="A321-200";
}else{
	OWflightType="P-A321-200";
}


$("#flightNum").text(OWflight);
$("#TypeName").text(OWflightType);

if(type=='RT'){
	$("#divJourney_2").css("display","block");
	$("#RTlist").css("display","block");
	$("#RTseatSpan").css("display","block");
	$("#RTtotalSeatPrice").css("display","block");
	
	RTflight = JSflightDetail[1].depflight;
	RTdate = jsSegmentDataObject[1].departureDateTime;
//	console.log(RTdate);
	if(RTflight.substring(0,2)=='RS'){
		RTflightType="A321-200";
	}else{
		RTflightType="P-A321-200";
	}
	
	$("#RTlist").on("click", function(){
		$(this).find("span").addClass('active');
		$("#OWlist").find("span").removeClass('active');
		$("#OWseatView").css("display","none");
		$("#OWseatSpan").removeClass('active');
		$("#RTseatSpan").addClass("active");
		$("#OWseatList").css("display","none");
		$("#RTseatList").css("display","block");
		$("#RTseatView").css("display","block");
		$("#flightNum").text(RTflight);
		$("#TypeName").text(RTflightType);
	});
	
}

$("#OWlist").on("click", function(){
	$(this).find("span").addClass('active');
	$("#RTlist").find("span").removeClass('active');
	$("#RTseatSpan").removeClass("active");
	$("#OWseatSpan").addClass("active");
	$("#RTseatList").css("display","none");
	$("#OWseatList").css("display","block");
	$("#OWseatView").css("display","block");
	$("#RTseatView").css("display","none");
	$("#flightNum").text(OWflight);
	$("#TypeName").text(OWflightType);
});

var scNUM = $("#jsScheduleNum").val();

var scDate = function(){
	this.ow = "";
	this.rt = "";
}

var jsSCdate = new scDate();
jsSCdate.ow = OWdate;
jsSCdate.rt = RTdate;

Show_Seat(scNUM, jsSCdate);

</script>

