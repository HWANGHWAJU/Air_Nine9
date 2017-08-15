<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript" src="_nineJs/nineBooking.js"></script>

				<h1 class="hidden-title" name="lblPassengerInput"></h1>
				<!-- 탑승자정보 (S) -->
				<div class="booking-passengerinformation">
					<div class="booking-passengerinformation-input" id="passengerinformation">
						<!-- 탑승자정보 - 예매자 정보(S) -->
						<h2 class="table-title-big" id="BookingTitle">예매자 정보</h2>
						<div class="tbl-input-row01 mgt20">
							<table>
								<caption id="SummaryNotice1">연락처, 이메일 순으로 구성된 예매자 정보 입력표입니다.</caption>
								<colgroup>
									<col style="width:20%">
									<col>
								</colgroup>
								<tbody>
								<tr>
									<th scope="row" id="Contacts">연락처</th>
									<td>
										<div>
											<ul class="radio_list single">
												
												
													<!-- 휴대폰번호인지/기타인지 확인을 위함 -->
													<!-- 국가코드 -->
												
													<!-- 국가코드가 82 이면서 length 가 4 이면 휴대폰 -->
														<!-- 회원 -->
														<li><span class="radiobox01 js-radiobox01"><label for="CELLPHONE01" class="active"><input type="radio" id="CELLPHONE01" name="radioCellPhone" value="phone" checked="checked"> <span id="Cellphone">휴대폰</span> </label></span></li>
														<li><span class="radiobox01 js-radiobox01"><label for="CELLPHONE02"><input type="radio" id="CELLPHONE02" name="radioCellPhone" value="etcPhone"> <span id="OtherContacts">기타연락처</span></label></span></li>
											</ul>
										</div>
										<div class="mgt10">
											
												
											    
													<!-- 회원 -->
														<span class="inp-txt"><input type="text" id="selCountryCode" name="selCountryCode" readonly="readonly" style="width: 74px;" maxlength="3" value="" title="국가번호를 입력하세요"></span>
														<a href="#this" data-opener="numb1" class="btn-type02-col02 jsOpenLayer" id="CountryCodeLayer" title="국가번호 검색 팝업 열림" onclick="viewLayerCountrySearch();">국가번호 검색</a>
														
														
															
															
																	<!-- 휴대폰 포맷 -->
																	<span class="selectbox01 js-selectbox01" id="koreaPhoneFirstFormat">
															    	<span class="txt"></span>
															    	<select name="phoneFirstNumber" id="phoneFirstNumber" style="width: 78px;" title="휴대폰 번호 처음 자리">
																	    <option value="010" selected="">010</option>
																	    <option value="011">011</option>
																	    <option value="016">016</option>
																	    <option value="017">017</option>
																	    <option value="018">018</option>
																	    <option value="019">019</option>												    
															    	</select>
																	</span>
																	<span class="inp-txt" id="koreaPhoneSecondFormat"><input type="text" id="phoneSecondNumber" style="width: 78px;" maxlength="4"  title="휴대폰 번호 중간 자리"></span>
																	<span class="inp-txt" id="koreaPhoneThirdFormat"><input type="text" id="phoneThirdNumber" style="width: 78px;" maxlength="4" title="휴대폰 번호 마지막 자리"></span>
																	<span class="inp-txt" id="etcPhoneFormat" style="display:none;"><input type="text" id="etcPhoneNumber" style="width: 246px;" maxlength="16" title="기타연락처를 입력하세요"></span>
												
											<p class="tbl-info" id="SMSNotice">알림톡 또는 SMS로 항공권 구매 정보를 알려드립니다.</p>
										</div>
									</td>
								</tr>
								<tr>
									<th scope="row"><label for="email" id="EmailTitle">이메일</label></th>
									<td>
										<div>
											<span class="inp-txt"><input type="text" id="email" style="width: 456px;;ime-mode:disabled" placeholder="airseoul@gmail.com" maxlength="47" title="이메일을 입력하세요"></span>
										</div>
										<p class="tbl-info" id="EmailNotice">이메일로 항공권 구매 정보를 발송해 드립니다.</p>
									</td>
								</tr>
				                 	
								</tbody>
							</table>
						</div>
						<!-- 탑승자정보 - 예매자 정보(E) -->
				
						<!-- 탑승자정보 - 탑승자 정보(S) -->
						<h2 id="h2PaxInfoTitle" class="table-title-big mgt60">탑승자 정보</h2>
						<div id="originOne">
						<div class="booking-table-title mgt20">
						<h3 class="table-title-mid mgr25">성인 1</h3>
						<span class="checkbox01 js-checkbox01">
						<input type="checkbox" name="checkAgree" id="checkAgree">
						<label for="checkAgree">
						<span>회원 본인이 탑승하지 않는 경우 체크 해 주시기 바랍니다.</span>
						</label>
						</span>
						</div>
						<div class="tbl-input-row01 mgt20" id="dvAdt1" paxno="1">

		
						
						<table>
							<caption>영문 성명, 성별, 쿠폰할인으로 구성된 탑승자 정보입력표입니다.</caption>
								<colgroup>
									<col style="width:20%"><col>
								</colgroup>
				
							<tbody>
								<tr>
									<th scope="row">영문 성명</th>
										<td>
											<div>
												<span class="inp-txt mgr03">
												<input type="text" id="lastNameAdt1" name="lastName" style="width: 224px; ime-mode:disabled; text-transform:uppercase;" title="Last Name(성) 입력" placeholder="Last Name(성)"  maxlength="30" >
												</span>
												<span class="inp-txt mgr03">
												<input type="text" id="firstNameAdt1" name="firstName" style="width: 224px; ime-mode:disabled; text-transform:uppercase;" title="First Name(이름) 입력" placeholder="First Name(이름)"  maxlength="30" >
												</span>
											</div>
										</td>
								</tr>
								<tr>
									<th scope="row">성별</th>
										<td>
											<ul class="radio_list">
												<li>
													<span class="radiobox01 js-radiobox01">
														<label for="radioSexManAdt1" >
															<input type="radio" id="radioSexManAdt1" name="radioSexAdt1" value="M"  ><span>남</span> 
														</label>
													</span>
												</li>
												<li>
													<span class="radiobox01 js-radiobox01">
														<label for="radioSexWomanAdt1">
															<input type="radio" id="radioSexWomanAdt1" name="radioSexAdt1" value="F" ><span>여</span>
														</label>
													</span>
												</li>
											</ul>
										</td>
								</tr>
								<tr>
									<th scope="row">여권 번호</th>
										<td>
											<div>
												<span class="inp-txt mgr03">
													<input type="text" id="passportNumberAdt1" style="width:324px;">
												</span>
											</div>
										</td>
								</tr>
								<tr>
									<th scope="row">
									<label for="coupon">쿠폰할인</label>
									</th>
										<td>
											<div>
												<span class="selectbox01 js-selectbox01" id="Span_Coupon">
												<span class="txt ex"></span>
													<select id="coupon" title="쿠폰할인선택" style="width: 324px;">
														<option value="" selected="selected" class="ex">사용 가능한 쿠폰이 없습니다.</option>
													</select>
												</span>
											</div>
										</td>
								</tr>
							</tbody>
						</table>
						</div>
						</div>
						
						
						<!-- 탑승자정보 - 탑승자 정보(E) -->
						
						<ul class="uList01">
							<li id="BookingNotice1"><span class="important">탑승자의 이름을 여권 및 신분증 상 내용과 동일하게 입력하여 주시고, 결제 후 성명 변경은 불가합니다.</span><br>(회원 정보와 여권 정보가 다른 경우에 예약 전에 회원 정보를 먼저 변경 후 예약하시기 바랍니다.)</li>
							<li id="BookingNotice2">휴대전화번호 입력 시, 알림톡 및 SMS로 결제 정보 및 항공편 변경 정보를 확인하실 수 있습니다.</li>
							<li id="BookingNotice3">예약정보 수신 연락처에 작성하신 이메일로 구매 결과와 여정 안내서를 전송해 드립니다.</li>
						</ul>
				
						<div class="mgt10">
							<button class="btn-type02-col01 jsOpenLayer" href="I/KO/viewFareRule" id="TicketFareRule" title="항공권 운임규정 레이어 팝업 열기">항공권 운임규정</button>
						</div>
				
						<!-- 탑승자정보 - 탑승객별 운임(S) -->
						<h3 class="table-title-big mgt60" id="FareNotice">탑승객별 운임</h3>
						<p align="right"><span id="Unit">단위</span>&nbsp;<span></span></p>
						<div class="tbl-data-col01 mgt20">
							<table id="OWtable">
								<caption id="SummaryNotice2">영문 성명, 항공운임, 유류할증료, 세금/제반요금, 쿠폰할인, 결제금액, 합계(항공운임+유류할증료+세금/제반요금), 총액으로 구성된 탑승객별 운임안내표입니다.</caption>
								<colgroup>
									<col style="width:220px">
									<col style="width:110px">
									<col style="width:110px">
									<col style="width:110px">
									<col style="width:110px">
								</colgroup>
								<thead>
								<tr>
									<th scope="col" name="lblName">영문 성명</th>
									<th scope="col" name="lblAirfare">항공운임</th>
									<th scope="col" name="lblFuelSurcharge">유류할증료</th>
									<th scope="col" name="lblTaxrate">세금/제반요금</th>
									
										<th scope="col" name="lblCouponTitle">쿠폰할인</th>
									
									<th scope="col" name="lblPayment">결제금액</th>
								</tr>
								</thead>
								<tbody id="OWpassengerList">
								
								<!-- 성인건수 -->
								<!-- 소아건수 -->
								<!-- 유아건수 -->
								<!-- 예상총액 -->
								<!-- 항공운임총액 -->
								<!-- 유류할증료총액 -->
								<!-- 세금제반요금총액 -->
								<!-- 지불금액 -->
								
									<tr>						
										<td id="tdAdt1"></td>
										<td class="tbl-price" name="strongPrice1"></td>
										<!-- 총항공운임 -->
										<td class="tbl-price" name="strongPrice2"></td>
										<!-- 총유류할증료 -->
										<td class="tbl-price" name="strongPrice3"></td>
										<!-- 총세금제반요금 -->
										<td class="tbl-price"><strong class="point-color02" name="strongCoupon"></strong></td>
										<td class="tbl-price"><strong class="point-color02" name="strongPrice4"></strong></td>
										<!-- 총세금제반요금 -->
									</tr>
								
								</tbody>
								<tfoot id="OWfoot">
								<tr>
									<th scope="row" colspan="3" class="th_type01" id="SumTitle">합계(항공운임+유류할증료+세금/제반요금)</th>
									<td colspan="3" class="tbl-price bdln"><strong class="point-color02"></strong></td>
								</tr>
								<tr>
									<th scope="row" colspan="3" class="tbl-total" name="lblPredictionTotal">총액</th>
									<td colspan="3" class="tbl-price tbl-total bdln"><em class="point-color01">KRW <span id="spanTotalAmt"></span></em></td>
								</tr>
								</tfoot>
							</table>
						</div>
						<BR>
						
						<!-- 왕복 시 보여줌  -->
						<div id="whenRTview" style="display:none;">
						<h3 class="table-title-big mgt60" id="FareNotice">탑승객별 운임 _ 왕복</h3>
						<p align="right"><span id="Unit">단위</span>&nbsp;<span></span></p>
						<div class="tbl-data-col01 mgt20">
							<table id="RTtable">
								<caption id="SummaryNotice2">영문 성명, 항공운임, 유류할증료, 세금/제반요금, 쿠폰할인, 결제금액, 합계(항공운임+유류할증료+세금/제반요금), 총액으로 구성된 탑승객별 운임안내표입니다.</caption>
								<colgroup>
									<col style="width:220px">
									<col style="width:110px">
									<col style="width:110px">
									<col style="width:110px">
									<col style="width:110px">
								</colgroup>
								<thead>
								<tr>
									<th scope="col" name="lblName">영문 성명</th>
									<th scope="col" name="lblAirfare">항공운임</th>
									<th scope="col" name="lblFuelSurcharge">유류할증료</th>
									<th scope="col" name="lblTaxrate">세금/제반요금</th>
									
										<th scope="col" name="lblCouponTitle">쿠폰할인</th>
									
									<th scope="col" name="lblPayment">결제금액</th>
								</tr>
								</thead>
								<tbody id="RTpassengerList">
								
								<!-- 성인건수 -->
								<!-- 소아건수 -->
								<!-- 유아건수 -->
								<!-- 예상총액 -->
								<!-- 항공운임총액 -->
								<!-- 유류할증료총액 -->
								<!-- 세금제반요금총액 -->
								<!-- 지불금액 -->
								
									<tr>						
										<td id="RTtdAdt1"></td>
										<td class="tbl-price" name="strongPrice1"></td>
										<!-- 총항공운임 -->
										<td class="tbl-price" name="strongPrice2"></td>
										<!-- 총유류할증료 -->
										<td class="tbl-price" name="strongPrice3"></td>
										<!-- 총세금제반요금 -->
										<td class="tbl-price"><strong class="point-color02" name="strongCoupon"></strong></td>
										<td class="tbl-price"><strong class="point-color02" name="strongPrice4"></strong></td>
										<!-- 총세금제반요금 -->
									</tr>
								
								</tbody>
								<tfoot>
								<tr>
									<th scope="row" colspan="3" class="th_type01" id="SumTitle">합계(항공운임+유류할증료+세금/제반요금)</th>
									<td colspan="3" class="tbl-price bdln"><strong class="point-color02"></strong></td>
								</tr>
								<tr>
									<th scope="row" colspan="3" class="tbl-total" name="lblPredictionTotal">총액</th>
									<td colspan="3" class="tbl-price tbl-total bdln"><em class="point-color01">KRW <span id="spanTotalAmt"></span></em></td>
								</tr>
								</tfoot>
							</table>
						</div>
						</div>
						<ul class="uList01">
							<li id="SummaryNotice5">항공운임, 유류할증료 및 세금/제반 운임을 포함한 총액으로 구매 시점과 환율에 따라 변동될 수 있습니다.</li>
						</ul>
						
						<div class="pdt30 tc">
							<button onclick="fn_Confirm();" type="button" class="btn-type01-col01" id="BtnComplete">확인</button>
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
											<div class="booking-airlineticket-finalInfo-head-fly"><span class="diretory icon_airlineticket_oneway02" name="lblFrom"></span></div>
											<div class="booking-airlineticket-finalInfo-head-fly"></div>
											<div class="booking-airlineticket-finalInfo-head-date" id="Summary_1"><div class="booking-airlineticket-finalInfo-head-date"></div></div>
										</div> 
									
										<div class="booking-airlineticket-finalInfo-head-to" style="display:none;">
										<div class="booking-airlineticket-finalInfo-head-kinds"><span class="icon_airlineticket_to02" name="lblArrivalItinerary">오는여정</span></div>
										<div class="booking-airlineticket-finalInfo-head-fly"><span class="diretory icon_airlineticket_oneway02" name="lblFrom"></span></div>
										<div class="booking-airlineticket-finalInfo-head-fly"></div>
										<div class="booking-airlineticket-finalInfo-head-date" id="Summary_2"><div class="booking-airlineticket-finalInfo-head-date"></div></div>
										</div>
							
						</div>
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
								<div class="booking-airlineticket-finalInfo-tblRow02">
									<table>
										<caption id="SummaryNotice3">여정 및 운임 표 | 항공운임, 유류할증료, 세금/제반요금 쿠폰할인으로 구성되어있습니다.</caption>
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
								<div class="total-price">
									<h3 name="lblPredictionTotal">총액</h3>
									<div class="price-area">
										<em class="unit"></em>
										<em class="price"></em>
									</div>
								</div>
							</div>
						<p class="info-exmark01" id="SummaryNotice4">유류할증료 및 세금/제반요금을 포함한 총액으로 구매 시점과 환율에 따라 변동될 수 있습니다.</p>
						<p class="info-exmark01" id="SummaryNotice6">한국 출발 세금(BP)에는 국제여객공항이용료(인천/김포 17,000원), 출국납부금(10,000원), 국제빈곤퇴치기여금(1,000원)이 포함되어 있습니다.</p>
					</div>
					<!-- 우측 간편 안내(E) -->
				</div>
				<!-- 탑승자정보 (E) -->
						
		<div id="divLayerPopup0" class="layer countrySearch open" style="display:none;">
					<div class="layer_center_type midium_type">
						<div class="layer_area">
							<div class="layer_inner">
								<div class="layer_title">
									<h2 class="title" id="CountrySearch">국가 검색</h2>
								</div>
								<div class="layer_content" style="height:464px; overflow-y:hidden;">
								<p class="list_type1 mgt25" id="msgCountrySearchInfo">찾으시려는 국가명을 입력해 주시기 바랍니다.</p>
								<div class="search_area">
									<span class="inp-txt mgr03">
										<input type="text" id="txtCountrySearch" name="txtCountrySearch" style="width:338px;" title="국가명 입력" id="txtCountrySearch"> 
									</span>
									<button type="submit" id="btnSearch" class="btn-type02-col01">검색</button>
								</div>
								<div class="result_area">
									<div class="title_group">
										<p class="country" id="NameOfCountry">국가명</p>
										<p class="en_country" id="enNameOfCountry">영어 국가명</p>
									</div>
									<div class="result_box">
										<div id="result_list" class="result_list" style="display:none;">
										
										</div>
										<div id="none_data" class="none_data" style="margin:0; padding:90px;">
										<p id="msgNoData">검색 결과가 없습니다.</p>
										</div>
									</div>
		
								</div>
									<div class="btn_article">
										<ul>
											<li>
												<button type="button" id="btnConfirm" class="btn-type02-col03">확인</button>
											</li>
										</ul>
									</div>
								</div>
								<p class="btn_close">
									<a href="javascript:void(0);" onclick="closeCountryLayer(); return false;" class="jsCloseBtn" id="jsCloseBtn"></a>
								</p>
							</div>
						</div>
					</div>
				</div>
				
	<form id="certify" name="certify" method="post" target="_self"></form>
	

	
<div>
<c:set var="vf" value="${requestScope.JF }"/>
<c:choose>
<c:when test="${vf==null }">
<c:set var="vf" value="null"/>
<input type="hidden" id="detailBookingCondition" name="detailBookingCondition" value='${vf }'>
</c:when>
<c:otherwise>
<input type="hidden" id="detailBookingCondition" name="detailBookingCondition" value='${vf }'>
</c:otherwise>
</c:choose>

<c:set var="vb" value="${requestScope.JSB }"/>
<c:choose>
<c:when test="${vb==null }">
<c:set var="vb" value="null"/>
<input type="hidden" id="jsbookingCondition" name="jsbookingCondition" value='${vb }'>
</c:when>
<c:otherwise>
<input type="hidden" id="jsbookingCondition" name="jsbookingCondition" value='${vb }'>
</c:otherwise>
</c:choose>
</div>

<form id="AllPrice">
<input type="hidden"  id="personPrice">
<input type="hidden"  id="RTpersonPrice">
<input type="hidden"  id="finallyTotal">
</form>

<input type="hidden" id="type" value="">


<form name="GoBook06"id="GoBook06" method="post">
<input type="hidden" name ="jsBookingCondition" id="jsBookingCondition" value="">
<input type="hidden" name="jsFlightInfo"					 id="jsFlightInfo" value="">
<input type="hidden" name="jsReservationPerson" id="jsReservationPerson" value="">
<input type="hidden" name="jsPassengerDetail" 		 id="jsPassengerDetail" value="">
<input type="hidden" name="jsScheduleNum" 			id="jsScheduleNum" 		value='${requestScope.SCnum }'>
</form>




<script type="text/javascript">
$(document).ready(function(){
	
/* 	jsRadiobox01(); */
	
	var detailFlight = $("#detailBookingCondition").val();
	var detailBooking = $("#jsbookingCondition").val();

	console.log("Booking :"+detailBooking);
	console.log("Flight :"+ detailFlight);
	
	GoBook_05(detailBooking);
	
	var jsBookingCondition = new BookingConditionDataObject();
	var jsPassengerDataOject = new PassengerDataObject();

	
	jsBookingCondition = jQuery.parseJSON(detailBooking);
	jsPassengerDataObject =[];
	
	jsPassengerDataObject = jsBookingCondition.passengerDatas; //이미 Json으로 변형되었음. 
	
	console.log(jsPassengerDataObject);
	
	var type =jsBookingCondition.TRIPTYPE;
	
	$("#type").val(type);
	
	if(type=='RT'){
		$(".booking-airlineticket-finalInfo-head-to").css("display","block");
		$("#OWfoot").css("display","none");
		$("#whenRTview").css("display","block");
	}

	SettingDataBook05(detailFlight, detailBooking);
	SettingFinalPrice(detailFlight,jsPassengerDataObject);
	
	var OWpersonPrice = $("#personPrice").val(); //PersonPrice (안에 성인, 소아, 유아 )
	var RTpersonPrice = $("#RTpersonPrice").val();
	var FinallyPrice = $("#finallyTotal").val();
	
	fn_SetUnitPrice(type, OWpersonPrice, RTpersonPrice, FinallyPrice);
	
	$("input:radio").on("click", function(){
		var name = $(this).attr("id");
		console.log(name);
		jsRadiobox01();
	});	
	
	
});
function fn_Confirm(){
	alert("다 작성 되었는지 확인하는 함수 짜기");
}
/* function jsRadiobox01(){
    $(".js-radiobox01").find("input").each(function(i, radio){
        var $radio = $(this);

        $radio.off("focus blur change");


        if($radio.is(":checked")==true){
            if($radio.is(":disabled")==true){
                $radio.parent('label').addClass('disabled');
            } else{
                $radio.parent('label').addClass('active');
            }
        }

        else if($radio.is(":disabled")==true){
            $radio.parent('label').addClass('disabled');
        }

        $radio.focus(function(){
            $radio.closest(".radiobox01").addClass("focus");
        })
        $radio.blur(function(){
            $radio.closest(".radiobox01").removeClass("focus");
        })

        $radio.on("change", function(){
            $("input[name='" + $(this).attr("name") +"']").parent("label").removeClass("active");
            $(this).prop("checked", true).parent('label').addClass('active');
        });
    });
} */

</script>
	