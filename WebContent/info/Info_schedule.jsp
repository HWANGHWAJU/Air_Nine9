<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">





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
				<h1 class="pagetitle"><span id="AirlineTicketInfo">항공권 안내</span></h1>
				<div>
			        


<ul class="list-tab type-1">
	<li><a href="Info_reservation.bo"><span name="lblBooking">항공권 예매</span></a></li>
	<li><a href="Info_vat.bo"><span name="lblFareInfo">운임 안내</span></a></li>

	<li class="on"><a href="Info_schedule.bo"><span name="lblScheduleSearch">스케줄 조회</span></a></li>
	<li><a href="Info_arrival.bo"><span name="lblFlightSearch">출도착 조회</span></a></li>
</ul>

					<div class="area-service">
						<div class="tbl-input-row01 mgt40">
							<table>
								<caption><span id="CaptionScheduleSearch1">스케줄 조회 입력 표 | 검색조건, 여정선택, 출/도착지, 출/도착일로 구성되어있습니다.</span></caption>
								<colgroup>
									<col style="width:18.2%">
									<col>
								</colgroup>
								<tbody>
								<tr>
									<th scope="row"><span name="lblSearchReq">검색조건</span></th>
									<td>
										<div>
											<ul class="radio_list">
												<li><span class="radiobox01 js-radiobox01 term-weekly"> 
													<label for="radWeekly" class="active"> 
													<input type="radio" id="radWeekly" name="radTerm" checked="checked" value=""> 
														<span name="lblWeekly">주간</span> 
													</label> 
													</span>
												</li>
												<li><span class="radiobox01 js-radiobox01 term-selectOne"> 
														<label for="radSelectOne"> 
															<input type="radio" id="radSelectOne" name="radTerm"> 
																<span name="lblSelectOne">선택일</span> 
															</label> 
														</span>
												</li>
												
											</ul>
										</div>
									</td>
								</tr>
								<tr class="js-term-hide js-term-weekly js-term-selectOne" style="display: table-row;">
									<th scope="row"><span name="lblChooseJourney">여정선택</span></th>
									<td>
										<div>
															
												<div class="booking-journey-type-area">
													<span class="radiobox01 js-radiobox01">
														<label for="radRoundTripType" >
															<span id="spanTripTypeRoundTrip">왕복</span>
															<input id="radRoundTripType" name="radTripType" value="RT"  type="radio" checked="checked">
														</label>
													</span> 
													<span class="radiobox01 js-radiobox01" style="margin-left: 25px;">
														<label for="radOneWayTripType"> 
															<span id="spanTripTypeOneWay">편도</span>
															<input id="radOneWayTripType" name="radTripType" value="OW" type="radio" >
														</label>
													</span>
													
											</div> <!-- 왕복 RT 편도 OW -->
										</div>
									</td>
								</tr>
								<tr class="js-term-hide js-term-weekly js-term-selectOne" style="display: table-row;">
									<th scope="row"><label name="lblDepArrAirport" for="txtDepAirport">출/도착지</label></th>
									<td colspan="3">
										<div class="booking-journey js-radioLayer01-wrap">
											<div class="bookgin_input">
												<div class="booking js-radioLayer01">
													<input type="text" name="txtDepAirport" id="txtDepAirport" placeholder="출발지" title="출발지 입력" readonly="readonly" class="ui-autocomplete-input" autocomplete="off">
													<input type="hidden" id="hidDepAirport" value="">
													<input type="hidden" id="hidDepCity" value="">
													<input type="hidden" id="hidDepArea" value="">
													<input type="hidden" id="hidDepValue" value="">
													<button type="button" id="btnAirportLayerOpenDep" class="btn_booking js-radioLayer01-btn btnJourney" data-target="#divBookingJourneyLayer"><span>출발지 팝업 열기</span></button>
													<div id="divDepAirportAC" class="booking-journey-autocomplete" style="top:0px;height:0px;z-index:100;"><ul class="ui-autocomplete ui-front ui-menu ui-widget ui-widget-content" id="ui-id-1" tabindex="0" style="display: none;"></ul></div>
												</div>
												<div class="booking js-radioLayer01">
													<input type="text" name="txtArrAirport" id="txtArrAirport" placeholder="도착지" title="도착지 입력" readonly="readonly">
													<input type="hidden" id="hidArrAirport" value="">
													<input type="hidden" id="hidArrCity" value="">
													<input type="hidden" id="hidArrArea" value="">
													<input type="hidden" id="hidArrValue" value="">
													<button type="button" id="btnAirportLayerOpenArr" class="btnJourney btn_booking js-radioLayer01-btn btnJourney" data-target="#divBookingJourneyLayer"><span>도착지 팝업 열기</span></button>
													<div id="divArrAirportAC" class="booking-journey-autocomplete" style="top:0px;height:0px;z-index:100;"></div>
												</div>
											</div>
											<div id="divBookingJourneyLayer" class="booking-journey-layer">
												<!-- 가는항공편, 오는항공편 선택시 hidden-title 명칭 변경되야함 접근성 -->
												<h2 class="hidden-title">출발지 레이어팝업</h2>

										
													<div class="layer-close-area">
														<button type="button" class="layer-close"><span name="lblCloseBtn">닫기</span></button>
													</div>
												</div>
										</div>
									</td>
								</tr>
								<tr class="js-term-hide js-term-weekly js-term-selectOne" style="display: table-row;">
									<th scope="row"><label name="lblDepArrDate" for="txtDepBookingDate">출/도착일</label></th>
									<td colspan="3">
										<div class="booking-journey js-radioLayer01-wrap">
											<div class="bookgin_input">
												<div class="booking_date js-radioLayer01">
													<input type="text" id="txtDepBookingDate" readonly="readonly" title="출발일 선택" style="undefined;ime-mode:disabled" placeholder="출발일">
													<button type="button" class="btn_booking js-radioLayer01-btn" data-target="#bookingDateLayer"><span>출발일 팝업 열기</span></button>
												</div>
												<div class="booking_date js-radioLayer01 js-journey-hide js-journey-roundtrip booking-date-items-enddate" style="display: block;">
													<input type="text" id="txtArrBookingDate" readonly="readonly" title="도착일 선택" style="undefined;ime-mode:disabled" placeholder="도착일">
													<button type="button" class="btn_booking js-radioLayer01-btn" data-target="#bookingDateLayer"><span>도착일 팝업 열기</span></button>
												</div>
											</div>
											<div id="bookingDateLayer" class="booking-date-layer">
												<div class="booking-date-layer-btnarea">
													<button type="button" class="booking-date-layer-btntoday"><span name="lblToday" class="btn-type06-col01">오늘</span></button>
													<button type="button" class="booking-date-layer-btnleft"><span name="lblPrevMonth">이전달</span></button>
													<button type="button" class="booking-date-layer-btnright"><span name="lblNextMonth">다음달</span></button>
												</div>
												
												<div id="bookingDatePicker" >
												
												
												
												</div>
											
												<div class="layer-close-area">
													<!-- 2016-02-26 접근성 추가 (S) -->
													<div class="date-layer-info">
														<span name="lblTodayDate" class="today">오늘날짜</span>
														<span name="lblDepDate" class="start">출발일</span>
														<span name="lblArrDate" class="end">도착일</span>
														<span name="lblVisit" class="between">체류</span>
													</div>
													<button type="button" class="layer-close"><span class="hidden-title">출/도착일 선택 레이어</span><span name="lblCloseBtn">닫기</span></button>
													<!-- 2016-02-26 접근성 추가 (E) -->
												</div>
											</div>
										</div>
									</td>
								</tr>
								</tbody>
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

						<!-- 주간 조회 결과 값 (S) -->
						<div id="divWeeklyResult_Dep" name="divWeeklyResult" class="single-table-wrap mgt60 hide">
							<div class="table-column">
								<div class="flight-title01">
									<span name="lblDepartureItinerary" class="icon-flight-from">가는 여정</span> <span id="spanDepAirportName_1"></span> <span class="diretory icon-flight-oneway">에서</span> <span id="spanArrAirportName_1"></span>
								</div>
								<div class="tbl-data-col03 mgt20">
									<table>
										<caption><span id="CaptionScheduleSearch2_Dep"></span></caption>
										<colgroup>
											<col style="width:10%">
											<col style="width:10%">
											<col style="width:10%">
											<col style="width:10%">
											<col style="width:10%">
											<col span="7" style="width:7%">
										</colgroup>
										<thead>
											<tr class="first-head">
												<th name="lblFlightName" scope="col" rowspan="2">편명</th>
												<th name="lblAircraftType" scope="col" rowspan="2">기종</th>
												<th name="lblDepTime" scope="col" rowspan="2">출발시간</th>
												<th name="lblArrTime" scope="col" rowspan="2">도착시간</th>
												<th name="lblFlightTime" scope="col" rowspan="2">운항시간</th>
												<th name="lblFlightDay" scope="col" colspan="7">운항요일</th>
											</tr>
											<tr class="second-head">
												<th scope="col"><span name="lblSun" class="week">일</span> <span id="weekly_DepDate0" class="date"></span></th>
												<th scope="col"><span name="lblMon" class="week">월</span> <span id="weekly_DepDate1" class="date"></span></th>
												<th scope="col"><span name="lblTue" class="week">화</span> <span id="weekly_DepDate2" class="date"></span></th>
												<th scope="col"><span name="lblWed" class="week">수</span> <span id="weekly_DepDate3" class="date"></span></th>
												<th scope="col"><span name="lblThu" class="week">목</span> <span id="weekly_DepDate4" class="date"></span></th>
												<th scope="col"><span name="lblFri" class="week">금</span> <span id="weekly_DepDate5" class="date"></span></th>
												<th scope="col"><span name="lblSat" class="week">토</span> <span id="weekly_DepDate6" class="date"></span></th>
											</tr>
										</thead>
										<tbody id="weekly_DepFlight_tbody"></tbody>
									</table>
								</div>
							</div>
						</div>

						<div id="divWeeklyResult_Arr" name="divWeeklyResult" class="single-table-wrap mgt60 hide">
							<div class="table-column">
								<div class="flight-title01">
									<span name="lblArrivalItinerary" class="icon-flight-to">오는 여정</span> <span id="spanDepAirportName_2"></span> <span class="diretory icon-flight-oneway">에서</span> <span id="spanArrAirportName_2"></span>
								</div>
								<div class="tbl-data-col03 mgt20">
									<table>
										<caption><span id="CaptionScheduleSearch2_Arr"></span></caption>
										<colgroup>
											<col style="width:10%">
											<col style="width:10%">
											<col style="width:10%">
											<col style="width:10%">
											<col style="width:10%">
											<col span="7" style="width:7%">
										</colgroup>
										<thead>
											<tr class="first-head">
												<th name="lblFlightName" scope="col" rowspan="2">편명</th>
												<th name="lblAircraftType" scope="col" rowspan="2">기종</th>
												<th name="lblDepTime" scope="col" rowspan="2">출발시간</th>
												<th name="lblArrTime" scope="col" rowspan="2">도착시간</th>
												<th name="lblFlightTime" scope="col" rowspan="2">운항시간</th>
												<th name="lblFlightDay" scope="col" colspan="7">운항요일</th>
											</tr>
											<tr class="second-head">
												<th scope="col"><span name="lblSun" class="week">일</span> <span id="weekly_ArrDate0" class="date"></span></th>
												<th scope="col"><span name="lblMon" class="week">월</span> <span id="weekly_ArrDate1" class="date"></span></th>
												<th scope="col"><span name="lblTue" class="week">화</span> <span id="weekly_ArrDate2" class="date"></span></th>
												<th scope="col"><span name="lblWed" class="week">수</span> <span id="weekly_ArrDate3" class="date"></span></th>
												<th scope="col"><span name="lblThu" class="week">목</span> <span id="weekly_ArrDate4" class="date"></span></th>
												<th scope="col"><span name="lblFri" class="week">금</span> <span id="weekly_ArrDate5" class="date"></span></th>
												<th scope="col"><span name="lblSat" class="week">토</span> <span id="weekly_ArrDate6" class="date"></span></th>
											</tr>
										</thead>
										<tbody id="weekly_ArrFlight_tbody"></tbody>
									</table>
								</div>
							</div>
						</div>
						<!-- 주간 조회 결과 값 (E) -->

						<!-- 2016-04-12 추가 선택일 조회시 결과 값 (S) -->
						<div id="divSelectOneResult_Dep" name="divSelectOneResult" class="single-table-wrap mgt60 hide">
							<div class="table-column">
								<div class="flight-title01">
									<span name="lblDepartureItinerary" class="icon-flight-from">가는 여정</span> <span id="spanSelectOneDepAirportName_1"></span> <span class="diretory icon-flight-oneway">에서</span> <span id="spanSelectOneArrAirportName_1"></span>
								</div>
								<div class="tbl-data-col03 mgt20">
									<table>
										<caption><span id="CaptionScheduleSearch3_Dep"></span></caption>
										<colgroup>
											<col style="width:16.5%">
											<col style="width:16.5%">
											<col style="width:16.5%">
											<col style="width:16.5%">
											<col style="width:16.5%">
											<col style="width:17.5%">
										</colgroup>
										<thead>
											<tr class="first-head">
												<th name="lblFlightName" scope="col">편명</th>
												<th name="lblAircraftType" scope="col">기종</th>
												<th name="lblDepDate" scope="col">출발일</th>
												<th name="lblDepTime" scope="col">출발시간</th>
												<th name="lblArrTime" scope="col">도착시간</th>
												<th name="lblFlightTime" scope="col">운항시간</th>
											</tr>
										</thead>
										<tbody id="selectOne_DepFlight_tbody">
										</tbody>
									</table>
								</div>
							</div>
						</div>

						<div id="divSelectOneResult_Arr" name="divSelectOneResult" class="single-table-wrap mgt60 hide">
							<div class="table-column">
								<div class="flight-title01">
									<span name="lblArrivalItinerary" class="icon-flight-to">오는 여정</span> <span id="spanSelectOneDepAirportName_2"></span> <span class="diretory icon-flight-oneway">에서</span> <span id="spanSelectOneArrAirportName_2"></span>
								</div>
								<div class="tbl-data-col03 mgt20">
									<table>
										<caption><span id="CaptionScheduleSearch3_Arr"></span></caption>
										<colgroup>
											<col style="width:16.5%">
											<col style="width:16.5%">
											<col style="width:16.5%">
											<col style="width:16.5%">
											<col style="width:16.5%">
											<col style="width:17.5%">
										</colgroup>
										<thead>
											<tr class="first-head">
												<th name="lblFlightName" scope="col">편명</th>
												<th name="lblAircraftType" scope="col">기종</th>
												<th name="lblDepDate" scope="col">출발일</th>
												<th name="lblDepTime" scope="col">출발시간</th>
												<th name="lblArrTime" scope="col">도착시간</th>
												<th name="lblFlightTime" scope="col">운항시간</th>
											</tr>
										</thead>
										<tbody id="selectOne_ArrFlight_tbody">
										
										</tbody>
									</table>
								</div>
							</div>
						</div>
						<!-- 2016-04-12 추가 선택일 조회시 결과 값 (E) -->
					</div>
					<form id="certify" name="certify" method="POST"></form>
					<!-- 2016-09-02 추가 항공권 예약 바로가기 (CR) -->
                    <div class="btn_article2 hide" id="viewBooking"><button class="btn-type01-col01" id="ViewBooking">항공권 예약 바로가기</button></div>
				</div>
			</div>
		</div>
	</div>
	<p name="viewLayerLogin" href="I/KO/viewOneLogin" class="jsOpenLayer" style="display:none;"></p>

<!-- wrap -->

<form name="scheduleLookup"  id="scheduleLookup" method="post">
	<input type="hidden" id="tripType" name="tripType">
	<input type="hidden" id="searchCon" name="searchCon">
	<input type="hidden" id="dep"				name="dep">
	<input type="hidden" id="arr" 				name="arr">
	<input type="hidden" id="depDate" 	name="depDate">
	<input type="hidden" id="arrDate" 	name="arrDate">
</form>
 


    <div id="ui-datepicker-div" class="ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all"></div>
<script type="text/javascript">

$(document).ready(function(){
	jsRadiobox01();
	$.ajax({
		type : "POST",
		url : "./searchDep.na",
		dataType : "JSON",
		contextType : "application/x-www-form-urlencoded; charset=UTF-8",
		success : function(data){
				DconvJs(data);
		}
	});

	var searchCondition ="";	

	$("input:radio[name='radTerm']").click(function(){
		searchCondition = $(this).attr("id");
		console.log($(this).attr("id"));
	});
	$("#radWeekly").trigger("click");
	
	
	
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


	function jsRadiobox01(){
	    $(".js-radiobox01").find("input").each(function(i, radio){
	        var $radio = $(this);

	        $radio.off("focus blur change");

	        /* checked가 되어있는경우 */
	        if($radio.is(":checked")==true){
	            if($radio.is(":disabled")==true){
	                $radio.parent('label').addClass('disabled');
	            } else{
	                $radio.parent('label').addClass('active');
	            }
	        }
	        /* disable이 되어있는경우 */
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
	}
	var count  = 1;

	$("#bookingDatePicker").datepicker({
			minDate : moment().toDate(),
			maxDate : moment().add(323,'days').endOf('month').toDate(),
			numberOfMonths : 2,
			onSelect : function(valueDate,key){

				var d = moment(valueDate).format("YYYY.MM.DD");
				if(count == 1){
					$("#txtDepBookingDate").val(d);
					count++;
				}else if(count ==2 ){
					$("#txtArrBookingDate").val(d);
					count =1 ;
				}
				$("#bookingDateLayer").slideUp(1); 
			}
			
		});
		
	$(".btn_booking").on("click", function(){
		var $this = $(this);
		var $target = $($(this).attr("data-target"));

			$(".ui-datepicker-inline").css("width","700px");

		if($this.hasClass("active")){
			$this.removeClass("active");
			$target.slideUp(200);
		}else{
			$this.addClass("active");
			$target.slideDown(200);
		}

		$(".layer-close").on("click", function(){
			$this.removeClass("active");
			$target.slideUp(200);
		});

	});
});

</script>