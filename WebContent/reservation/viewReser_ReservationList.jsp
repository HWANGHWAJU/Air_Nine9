<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import ="dto.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%

HttpSession sess = request.getSession();
LoginUser user = (LoginUser)sess.getAttribute("User");

String memId = "";

if(user != null) memId = user.getMember_id();

%>

<input type="hidden" id="memID" name="memID" value="<%=memId %>">


<!-- wrap -->

	<div id="container">
		<div id="content">
			<!-- location -->
			<div id="location" class="" style="top: 0px;">
				<ol class="location_area">
					<li><a href="/CW/KO/main.do" id="Home">홈</a></li>
					<li><a href="javascript:document.reservationList1.submit();" class="menuDepth2">예약 조회/변경</a></li>
					<li class="current"><span class="menuDepth3" href="#none">
		                                
		                              예약 조회/변경/환불</span>
						<div class="btn_lnb"><a href="#none" id="ReservationMenu">예약 조회/변경 하위 메뉴</a><span class="hidden-title">열기</span></div>
						<div class="lnb_area" style="display: none;">
							<ul class="location_lnb">
								<li class="on"><a href="#none" class="menuDepth3_1">
		                                
		                              예약 조회/변경/환불</a></li>
								<li><a href="#none" class="menuDepth3_2">
		                                
		                              온라인 체크인</a></li>
							</ul>
						</div>
					</li>
				</ol>
			</div>
			<!-- content_inner -->
			<div class="content_inner">
				<h1 class="pagetitle" name="lblReservationInquiryChange">예약 조회/변경</h1>
				<!-- tab 영역 (S) -->
				<div class="tab_section02 tab_2w first">
					<ul class="js-tab-section">
						<li class="OnOffTab" id="OnlineTab">
							<div class="tab_area">
								<h2 class="tab_title" confirmfunc="fn_isLogin">
									<a href="javascript:void(0);" id="OnlineReservationTab">온라인 예약조회/비회원 로그인 예약 조회</a>
								</h2>
								<div class="tab_content country">
									<!-- 온라인 예약내역 (S) -->
									<p id="noti1">에어서울 홈페이지 및 모바일에서 구매하신 항공권만 조회가 가능합니다.</p>
									
									<!-- 2016-04-01 추가 (S) -->
									<div class="tbl-input-row01 mgt20">
										<table>
											<caption id="noti2">예약 상태, 정렬, 검색기간으로 구성된 온라인 예약내역 입력표입니다.</caption>
											<colgroup>
												<col style="width:18.2%">
												<col>
												<col style="width:18.2%">
												<col>
											</colgroup>
											<tbody>
											<tr>
												<th scope="row"><label for="" id="ReservationStatus">예약 상태</label></th>
												<td colspan="3">
													<div>
														<ul class="radio_list">
															<li><span class="radiobox01 js-radiobox01"><label for="condition01" class="active">
															<input type="radio" id="condition01" name="reservationCondition" value="" checked="checked"> 
															<span id="RadioAll">전체</span> </label></span>
															</li>
															
															<li><span class="radiobox01 js-radiobox01"><label for="condition02">
															<input type="radio" id="condition02" name="reservationCondition" value="HK"> 
															<span id="Radiocommitment">확약</span></label></span>
															</li>
															
															<li><span class="radiobox01 js-radiobox01"><label for="condition03">
															<input type="radio" id="condition03" name="reservationCondition" value="XX"> 
															<span id="RadioCancel">취소</span></label></span>
															</li>
															
														</ul>
													</div>
												</td>
											</tr>
											<tr>
												<th scope="row"><label for="ReservationNumber" id="Sort">정렬</label></th>
												<td colspan="3">
													<div>
														<ul class="radio_list">
															<li><span class="radiobox01 js-radiobox01"><label for="sort01" class="active">
																<input type="radio" id="sort01" name="sorting" value="Board" checked="checked"> 
																<span id="BoardingStandard">탑승일 기준</span> </label></span>
															</li>
															
															<li><span class="radiobox01 js-radiobox01"><label for="sort02">
																<input type="radio" id="sort02" name="sorting" value="Issue"> 
																<span id="ReservationDateStandard">예약일 기준</span></label></span>
															</li>
														</ul>
													</div>
												</td>
											</tr>
											<tr>
												<th scope="row"><label for="txtOnlineDepartureDate1" id="SearchPeriod">검색기간</label></th>
												<td colspan="3">
													<div>
														<a class="btn-type02-col02 addDays" data-month="3" id="3Month">3개월</a>
														<a class="btn-type02-col02 addDays" data-month="6" id="6Month">6개월</a>
														<a class="btn-type02-col02 addDays" data-month="12" id="12Month">1년</a>
													</div>
													<div class="booking-journey js-radioLayer01-wrap">
														<div class="bookgin_input">
															<div class="booking_date js-radioLayer01">
																<input type="text" name="txtOnlineDepartureDate1" id="txtOnlineDepartureDate1" placeholder="" title="검색기간 시작일" style="undefined;ime-mode:disabled">
																<button type="button" class="btn_booking js-radioLayer01-btn" data-target="#onlineBookingDateLayer1" onclick="javascript:fn_createBookingMultiDateCal(1);"><span id="StartDayPopupOpen">검색기간 시작일 달력 레이어 팝업 열기</span></button>
															</div>
															<div class="booking_date js-radioLayer01 js-journey-hide js-journey-roundtrip">
																<input type="text" name="txtOnlineDepartureDate2" id="txtOnlineDepartureDate2" placeholder="" title="검색기간 종료일" style="undefined;ime-mode:disabled">
																<button type="button" class="btn_booking js-radioLayer01-btn" data-target="#onlineBookingDateLayer2" onclick="javascript:fn_createBookingMultiDateCal(2);"><span id="EndDayPopupOpen">검색기간 종료일 달력 레이어 팝업 열기</span></button>
															</div>
														</div>
														
														<div id="onlineBookingDateLayer1" class="booking-date-layer">
															<div class="booking-date-layer-btnarea">
																<button id="TodayButton1" type="button" class="booking-date-layer-btntoday"><span name="lblTodayDate" class="btn-type02-col01">오늘날짜</span></button>
																<button id="PrevMonthButton1" type="button" class="booking-date-layer-btnleft"><span name="lbl1MonthAgo">이전달</span></button>
																<button id="NextMonthButton1" type="button" class="booking-date-layer-btnright"><span name="lblNextMonth">다음달</span></button>
															</div>
															<div id="onlineDatePicker1" class="datePickerLayer"></div>
															<div class="layer-close-area">
																<div class="date-layer-info">
																	<span name="lblTodayDate" class="today">오늘날짜</span>
																	<span name="lblDepartureDay" class="start">출발일</span>
																	<span name="lblArrivalDay" class="end">도착일</span>
																	<span name="lblStay" class="between">체류</span>
																</div>
																<button type="button" class="layer-close"><span class="hidden-title" id="BoardingDayLayer01">시작일 달력 레이어 팝업</span><span name="lblClose">닫기</span></button>
															</div>
														</div>
														
														<div id="onlineBookingDateLayer2" class="booking-date-layer">
															<div class="booking-date-layer-btnarea">
																<button type="button" class="booking-date-layer-btntoday"><span class="btn-type02-col01" name="lblTodayDate">오늘날짜</span></button>
																<button type="button" class="booking-date-layer-btnleft"><span name="lbl1MonthAgo">이전달</span></button>
																<button type="button" class="booking-date-layer-btnright"><span name="lblNextMonth">다음달</span></button>
															</div>
															<!-- 출발지 도착지 선택시 hidden-title 명칭 변경되야함 접근성 -->
															<div id="onlineDatePicker2" class="datePickerLayer">
															
															</div>
															<div class="layer-close-area">
																<!-- 2016-02-26 접근성 추가 (S) -->
																<div class="date-layer-info">
																	<span class="today" name="lblTodayDate">오늘날짜</span>
																	<span class="start" name="lblDepartureDay">출발일</span>
																	<span class="end" name="lblArrivalDay">도착일</span>
																	<span class="between" name="lblStay">체류</span>
																</div>
																<button type="button" class="layer-close"><span class="hidden-title" id="BoardingDayLayer02">종료일 달력 레이어 팝업</span><span name="lblClose">닫기</span></button>
																<!-- 2016-02-26 접근성 추가 (E) -->
															</div>
														</div>
													</div>
												</td>
											</tr>

											</tbody>
										</table>
									</div>
									<div class="btn_article">
										<ul>
											<li><button type="button" id="btnOnlineConfirm" class="btn-type01-col01">확인</button></li>
										</ul>
									</div>
									<!-- 2016-04-01 추가 (E) -->
									
									<div id="reservationListTable" class="tbl-data-col02 mgt20">
										<table>
											<caption id="ReservationListTableCaption">예약 정보, 탑승일, 여정, 좌석, 상태로 구성된 온라인 예약내역 조회표입니다.</caption>
											<colgroup>
												<col style="width:150px"><!-- 2016-03-21 수정 -->
												<col style="width:140px">
												<col>
												<col style="width:90px"><!-- 2016-03-21 수정 -->
												<col style="width:110px">
												<col style="width:150px"><!-- 2016-03-21 추가 -->
											</colgroup>
											<thead>
											<tr>
												<th scope="col" id="RowReservationInfo">예약 정보</th>
												<th scope="col" name="lblRowBoardingDate">탑승일</th>
												<th scope="col" id="RowItinerary">여정</th>
												<th scope="col" id="RowSeatNo">좌석</th>
												<th scope="col" colspan="2" id="RowStatus">상태</th>
											</tr>
											</thead>
											<tbody>
											
											</tbody>
											
											
										</table>
									</div>
									
									<div class="paginate first">
										<div class="paginate_inner">
											<p class="direction first"><a href="#none" id="GoFirstPage">맨 처음 페이지로 이동</a></p>
											<p class="direction prev"><a href="#none" id="GoPrevPage">한 페이지 이전</a></p>
											<ul class="page_navi">
											
											</ul>
											<p class="direction next"><a href="#none" id="GoNextPage">한 페이지 다음</a></p>
											<p class="direction last"><a href="#none" id="GoLastPage">맨 마지막 페이지로 이동</a></p>
										</div>
									</div>
									
									<ul class="uList01 mgt40">
										<li id="noti3">여정 변경은 1회에 한하며, 출발 2시간 전까지 가능합니다. (단, 프로모션쿠폰 적용된 항공권은 변경불가.환불 후 재 구매)</li>
										<li id="noti4">여정 변경 및 환불 시 운임 규정에 따른 변경 수수료 및 환불 위약금/환불 수수료가 징수됩니다.</li>
										<li id="noti5">인터넷 및 모바일으로 구매한 후 예약센터를 통해 예약변경을 하였을 경우 실제 예약과 다르게 보일 수 있습니다.</li>
										<li name="lblNoti1">홈페이지 및 모바일을 통해서 구매하신 내역은 로그인 후 예약 조회, 변경, 취소 등이 가능합니다.</li>
										<li name="lblNoti2">예약번호 등 예약정보를 정확하게 입력하셔야 확인 가능합니다. 예) 12345678 또는 ABCDE</li>
										<li name="lblNoti3">탑승객의 영문성함을 정확히 입력하여야 확인 가능합니다.</li>
									</ul>
									<!-- 온라인 예약내역 (E) -->
								</div>

							</div>
						</li>
						<li class="OnOffTab on" id="OfflineTab">
							<div class="tab_area">
								<h2 class="tab_title"><a href="#none" id="OfflineReservationTab">오프라인 예약조회</a></h2>
								<div class="tab_content country">
									<!-- 오프라인 예약내역 컨텐츠 (S) -->
									<p id="noti7">에어서울 예약센터에서 예약하신 내역 조회가 가능합니다.</p>
									<div class="tbl-input-row01 mgt20">
										<table>
											<caption id="noti8">오프라인 예약내역 데이터 표 | 영문성명, 예약번호, 예약여정, 탑승일로 구성되어있습니다.</caption>
											<colgroup>
												<col style="width:18.2%">
												<col>
												<col style="width:18.2%">
												<col>
											</colgroup>
											<tbody>
											<tr>
												<th scope="row"><label for="lastname" id="EngName">영문성명</label></th>
												<td colspan="3">
													<div>
														<span class="inp-txt mgr01"><input type="text" name="txtLastName" style="width:226px;text-transform:uppercase;ime-mode:inactive;ime-mode:disabled" id="txtLastName" title="Last Name(성) 입력란" placeholder="Last Name(성)"></span>
														<span class="inp-txt"><input type="text" name="txtFirstName" style="width:226px;text-transform:uppercase;ime-mode:inactive;ime-mode:disabled" id="txtFirstName" title="First Name(이름) 입력란" placeholder="First Name(이름)"></span>
													</div>
												</td>
											</tr>
											<tr>
												<th scope="row"><label for="txtReservationNumber" id="ReservationNo">예약번호</label></th>
												<td colspan="3">
													<div>
														<span class="inp-txt"><input type="text" name="txtReservationNumber" style="width: 226px;text-transform:uppercase;" id="txtReservationNumber" maxlength="8"></span>
													</div>
												</td>
											</tr>
											<tr>
												<th scope="row"><label for="txtDepAirport" id="ReservationItinerary">예약여정</label></th>
												<td colspan="3">
													<div class="booking-journey js-radioLayer01-wrap">
														<div class="bookgin_input">
															<div class="booking js-radioLayer01">
																<input type="text" name="txtDepAirport" id="txtDepAirport" placeholder="출발지" title="출발지 입력란" readonly="" class="ui-autocomplete-input" autocomplete="off">
																<input type="hidden" id="hidDepAirport" value="">
																<input type="hidden" id="hidDepCity" value="">
																<input type="hidden" id="hidDepArea" value="">
																<input type="hidden" id="hidDepValue" value="">
																<button type="button" id="btnAirportLayerOpenDep" class="btn_booking js-radioLayer01-btn btnJourney" data-target="#divBookingJourneyLayer">
																	<span id="OpenDepartureLayerOpen">출발지 선택 팝업 열기</span>
																</button>
																<div id="divDepAirportAC" class="booking-journey-autocomplete" style="top:0px;height:0px;z-index:100;">
																	<ul class="ui-autocomplete ui-front ui-menu ui-widget ui-widget-content" id="ui-id-1" tabindex="0" style="display: none;"></ul>
																</div>
															</div>
															<div class="booking js-radioLayer01">
																<input type="text" name="txtArrAirport" id="txtArrAirport" placeholder="도착지" title="도착지 입력란" readonly="">
																<input type="hidden" id="hidArrAirport" value="">
																<input type="hidden" id="hidArrCity" value="">
																<input type="hidden" id="hidArrArea" value="">
																<input type="hidden" id="hidArrValue" value="">
																<button type="button" id="btnAirportLayerOpenArr" class="btn_booking js-radioLayer01-btn btnJourney" data-target="#divBookingJourneyLayer">
																	<span id="OpenArrivalLayerOpen">도착지 선택 팝업 열기</span>
																</button>
																<div id="divArrAirportAC" class="booking-journey-autocomplete" style="top:0px;height:0px;z-index:100;"></div>
															</div>
														</div>
														<div id="divBookingJourneyLayer" class="booking-journey-layer">
															<!-- 가는항공편, 오는항공편 선택시 hidden-title 명칭 변경되야함 접근성 -->
															<h2 class="hidden-title" id="DepartureLayerPopup">출발지 레이어 팝업</h2>
											
															<div class="layer-close-area">
																<button type="button" class="layer-close"><span id="spanBookingRouteLayerClose" name="lblClose">닫기</span></button>
															</div>
														</div>
														
													</div>
												</td>
											</tr>
											<tr>
												<th scope="row"><label for="txtOnlineDepartureDate3" name="lblRowBoardingDate">탑승일</label></th>
												<td colspan="3">
													<div class="booking-journey js-radioLayer01-wrap">
														<div class="bookgin_input">
															<div class="booking_date js-radioLayer01">
																<input type="text" name="txtOnlineDepartureDate3" id="txtOnlineDepartureDate3" placeholder="" title="" style="undefined;ime-mode:disabled">
																<button type="button" class="btn_booking js-radioLayer01-btn" data-target="#onlineBookingDateLayer3" onclick="javascript:fn_createBookingMultiDateCal(3)"><span id="BoardingDatePopupOpen">탑승일 팝업 열기</span></button>
															</div>
														</div>
														<div id="onlineBookingDateLayer3" class="booking-date-layer">
															<div class="booking-date-layer-btnarea">
																<button id="TodayButton1" type="button" class="booking-date-layer-btntoday"><span name="lblTodayDate" class="btn-type02-col01">오늘날짜</span></button>
																<button id="PrevMonthButton1" type="button" class="booking-date-layer-btnleft"><span name="lbl1MonthAgo">이전달</span></button>
																<button id="NextMonthButton1" type="button" class="booking-date-layer-btnright"><span name="lblNextMonth">다음달</span></button>
															</div>
															<div id="onlineDatePicker3" class="datePickerLayer">
															
															</div>
															<div class="layer-close-area">
																<div class="date-layer-info">
																	<span name="lblTodayDate" class="today">오늘날짜</span>
																	<span name="lblDepartureDay" class="start">출발일</span>
																	<span name="lblArrivalDay" class="end">도착일</span>
																	<span name="lblStay" class="between">체류</span>
																</div>
																<button type="button" class="layer-close"><span class="hidden-title" name="lblBoardingDayLayer">탑승일 선택 레이어</span><span name="lblClose">닫기</span></button>
															</div>
														</div>
													</div>
												</td>
											</tr>
											</tbody>
										</table>
									</div>
									<div class="btn_article">
										<ul>
											<li><button type="button" id="btnConfirm" class="btn-type01-col01" onclick="sub();">확인</button></li>
										</ul>
									</div>
									
									<ul class="uList01 mgt40">
										<li name="lblNoti2">예약번호 등 예약정보를 정확하게 입력하셔야 확인 가능합니다. 예) 12345678 또는 ABCDE</li>
										<li name="lblNoti3">탑승객의 영문성함을 정확히 입력하여야 확인 가능합니다.</li>
										<li name="lblNoti4">한 구간이라도 출발일이 지난 경우는 조회가 불가능합니다.</li>
										<li id="noti9">여행사를 통한 예약은 확인이 불가합니다.</li>
										<li name="lblNoti1">홈페이지 및 모바일을 통해서 구매하신 내역은 로그인 후 예약 조회, 변경, 취소 등이 가능합니다.</li>
										<li id="noti10" class="point-color01">홈페이지 및 모바일에서 비회원으로 예약하신 경우, [비회원 로그인 예약조회] 메뉴에서 예약번호 및 e-mail 입력 후 예약 조회 및 취소가 가능합니다.</li>
									</ul>
									<!-- 오프라인 예약내역 컨텐츠 (E) -->
								</div>
							</div>
						</li>
					</ul>
				</div>
				<!-- tab 영역 (E) -->
			</div>
		</div>
	</div>
	<p name="viewLayerLogin" href="I/KO/viewTwoLoginPnr1" class="jsOpenLayer" style="display:none;"></p>

<form action="bookingReserveController.cK" method="post" name="f" id="f">

</form>
  <link rel="stylesheet" type="text/css" href="stylesheets/sub/myreservation.css">
<script type="text/javascript">

var memid = $("#memID").val(); //id 값 가져와서 저장


	if (memid != "") {

		$("#OfflineTab").removeClass("on");
		$("#OnlineTab").addClass('on');
	}


$("#OnlineReservationTab").click(function() {

	if (memid != "") {

		$("#OnlineTab").addClass("on");
		$("#OfflineTab").removeClass('on');
	} else {
		alert("로그인 페이지로 이동시켜라");
	}

});

$("#topbooking").click(function() {

	alert(memid);
	if (memid != "") {
		alert("로그인 되어있습니다");
		$("#OnlineTab").addClass("on");
		$("#OfflineTab").removeClass('on');

	} else {
		$("#OnlineTab").addClass("");
		$("#OfflineTab").removeClass('');
	}

});


/*    var sday = document.getElementById("txtOnlineDepartureDate1").value; //검색 시작날짜
  	 var eday = document.getElementById("txtOnlineDepartureDate2").value;//검색 마지막날짜
 */
 var srt ="";
 var radioEx ="";
 var radio ="";
 var sort ="";
var sday = "";
var eday = "";
var allData = "";
//   console.log(sday);

$("#btnOnlineConfirm").click(function() { //확인버튼을 클릭했을때... 
	
	var srt = $("[name$='sorting']:checked").val();
	var radioEx = $("[name$='reservationCondition']:checked").val();


	if (radioEx == "") {
		var radio = document.getElementById("condition01").value;
	} else if (radioEx == "HK") {
		var radio = document.getElementById("condition02").value;
	} else if (radioEx == "XX") {
		var radio = document.getElementById("condition03").value;
	}

	if (srt == "Board") {
		var sort = document.getElementById("sort01").value;
	} else if (srt == "Issue") {
		var sort = document.getElementById("sort02").value;
	}

					//alert("계절밥상");
					sday = $("#txtOnlineDepartureDate1").val();
					eday = $("#txtOnlineDepartureDate2").val();

					allData = {"memid" : memid,"sort" : sort,"radio" : radio,"sday" : sday,"eday" : eday}; //모든 데이터 저장

					//	console.log(allData);

					$.ajax({
								type : "POST",
								url : "./bookingReserveController2.cK",
								dataType : "JSON",
								data : allData,
								contextType : "application/x-www-form-urlencoded; charset=UTF-8",
								success : function(data) {

									console.log(data);

									if (data.length == 0) {
										alert("해당하는 정보가 없습니다.");

									} else {
										var bookingStr = "";
										
                      if(sort == "Board"){
                    	  for (var i = 0; i < data.length; i++) {
							bookingStr += "<tr>"
								+ "<td class='tc'>"
								+ data[i].name
								+ "</td>"
								+ "<td class='tc'>"
								+ data[i].sday
								+ "</td>"
								+ "<td class='tc'>"
								+ data[i].bst + '->'
								+ data[i].barr
								+ "</td>"
								+ "<td class='tc'>"
								+ data[i].seat
								+ "</td>"
								+ "<td class='tc'>"
								+ data[i].check
								+ "</td>" +

								"</tr>";

                    	  }}else{
						for (var i = 0; i < data.length; i++) {
							bookingStr += "<tr>"
								+ "<td class='tc'>"
								+ data[i].name
								+ "</td>"
								+ "<td class='tc'>"
								+ data[i].bday
								+ "</td>"
								+ "<td class='tc'>"
								+ data[i].bst + '->'
								+ data[i].barr
								+ "</td>"
								+ "<td class='tc'>"
								+ data[i].seat
								+ "</td>"
								+ "<td class='tc'>"
								+ data[i].check
								+ "</td>" +

								"</tr>";

					}}
										

										var $table = $("#reservationListTable").find('tbody');

										$table.html(bookingStr);

										$("#OnlineTab").addClass("on");
										$("#OfflineTab").removeClass('on');

									}

								}

							});//ajax끝 

				});



function fn_createBookingMultiDateCal(num){
	
	$("#onlineDatePicker"+num).datepicker({
		minDate : moment().toDate(),
		maxDate : moment().add(323,'days').endOf('month').toDate(),
		numberOfMonths : 2,
		onSelect : function(valueDate,key){
	/* 			alert("key :"+$(this).attr("class") +" valueDate: "+valueDate); */
			var d = moment(valueDate).format("YYYY.MM.DD");
//			alert(d);
			$("#txtOnlineDepartureDate"+num).val(d);
			$("#onlineBookingDateLayer"+num).slideUp(1); 
		}
	});
	
	
	
}

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

$(".btnJourney").on("focus", function() {
	var $this = $(this);
	if (!$this.hasClass("active")) {	// 현재 레이어가 활성화된 상태에서는 수행하지 않는다.
		var $divBookingJourneyLayer_id = $("#divBookingJourneyLayer");
	
	console.log($this.index(".btnJourney"));
	
		if ($this.index(".btnJourney") == 0) {
			$divBookingJourneyLayer_id.find("div.booking-journey-layer-section-arr").css("display", "none");
			$divBookingJourneyLayer_id.find("div.booking-journey-layer-section-dep").css("display", "");
		} else {
			$divBookingJourneyLayer_id.find("div.booking-journey-layer-section-dep").css("display", "none");
			$divBookingJourneyLayer_id.find("div.booking-journey-layer-section-arr").css("display", "");
		}
	}
});

$(".btnJourney").on("click", function() {
	var $spanBookingRouteLayerOpenDep_id	= $('#OpenDepartureLayerOpen');
	var $spanBookingRouteLayerOpenArr_id	= $('#OpenArrivalLayerOpen');
	var $layerCloseBtnName_id				= $('#spanBookingRouteLayerClose');
	var $divBookingJourneyLayer_id = $("#divBookingJourneyLayer");


	// 출발지 레이어 활성화/비활성화 시
	if($("#OpenDepartureLayerOpen").parents(".d").hasClass('active')) {
		$('#OpenDepartureLayerOpen').parents(".d").removeClass('active');
		$divBookingJourneyLayer_id.slideUp(150);
	} else {
		$('#OpenDepartureLayerOpen').parents(".d").addClass('active');
		$divBookingJourneyLayer_id.slideDown(150);
	}
	
	// 도착지 레이어 활성화/비활성화 시
	if($("#OpenArrivalLayerOpen").parents(".a").hasClass('active')) {
		$('#OpenArrivalLayerOpen').parents(".a").removeClass('active');
		$divBookingJourneyLayer_id.slideUp(150);
	} else {
		$('#OpenArrivalLayerOpen').parents(".a").addClass('active');
		$divBookingJourneyLayer_id.slideDown(150);
	}
});

/* $("#onlineDatePicker2").datepicker({
	minDate : moment().toDate(),
	maxDate : moment().add(323,'days').endOf('month').toDate(),
	numberOfMonths : 2,
	onSelect : function(valueDate,key){
 			alert("key :"+$(this).attr("class") +" valueDate: "+valueDate); 
		var d = moment(valueDate).format("YYYY.MM.DD");
		alert(d);
		$("#txtOnlineDepartureDate2").val(d);
		$("#onlineBookingDateLayer2").slideUp(1); 
	}
});

$("#onlineDatePicker3").datepicker({
	minDate : moment().toDate(),
	maxDate : moment().add(323,'days').endOf('month').toDate(),
	numberOfMonths : 2,
	onSelect : function(valueDate,key){
 			alert("key :"+$(this).attr("class") +" valueDate: "+valueDate); 
		var d = moment(valueDate).format("YYYY.MM.DD");
		alert(d);
		$("#txtOnlineDepartureDate3").val(d);
		$("#onlineBookingDateLayer3").slideUp(1); 
	}
}); */

$(".btn_booking").on("click", function(){
var $this = $(this);
var $target = $($(this).attr("data-target"));

/*  	$("#onlineDatePicker").find("div").css("width","inherit");  */
	$(".ui-datepicker-inline").css("width","700px");

if($this.hasClass("active")){
	$this.removeClass("active");
	$target.slideUp(200);
}else{
/* 		$("#onlineDatePicker").find("div").css("width","inherit");  */
	$this.addClass("active");
	$target.slideDown(200);
}

$(".layer-close").on("click", function(){
	$this.removeClass("active");
	$target.slideUp(200);
});

});


	function sub() {
		if (document.getElementById("txtLastName").value == "") {
			alert("성을 입력해 주세요");
		} else if (document.getElementById("txtFirstName").value == "") {
			alert("이름을 입력해 주세요");
		} else if (document.getElementById("txtReservationNumber").value == "") {
			alert("예약번호를 입력해 주세요");
		} else if (document.getElementById("txtDepAirport").value == "") {
			alert("출발지를 선택해 주세요");
		} else if (document.getElementById("txtArrAirport").value == "") {
			alert("도착지를 선택해 주세요");
		} else if (document.getElementById("txtOnlineDepartureDate3").value == "") {
			alert("탑승일을 선택해 주세요");
		} else {
			var lname = document.getElementById("txtLastName").value;
			var fname = document.getElementById("txtFirstName").value;
			var number = document.getElementById("txtReservationNumber").value;
			var depa = document.getElementById("txtDepAirport").value;
			var arra = document.getElementById("txtArrAirport").value;
			var odd = document.getElementById("txtOnlineDepartureDate3").value;

			// 	location.href="bookingReserveController.bo?lname="+lname+"&fname="+fname+"&number="+number;
			var iv = document.getElementById("f");
			iv.innerHTML = "<input type='hidden' name='lname' value="+lname+">";
			iv.innerHTML += "<input type='hidden' name='fname' value="+fname+">";
			iv.innerHTML += "<input type='hidden' name='number' value="+number+">";
			iv.innerHTML += "<input type='hidden' name='depa' value="+depa+">";
			iv.innerHTML += "<input type='hidden' name='arra' value="+arra+">";
			iv.innerHTML += "<input type='hidden' name='odd' value="+odd+">";

			f.submit();
		}
	}


</script>
