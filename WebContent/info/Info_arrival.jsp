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
	<li><a href="Info_reservation.bo"><span id="lblBooking">항공권 예매</span></a></li>
	<li><a href="Info_vat.bo"><span id="lblFareInfo">운임 안내</span></a></li>

	<li><a href="Info_schedule.bo"><span id="lblScheduleSearch">스케줄 조회</span></a></li>
	<li class="on"><a href="Info_arrival.bo"><span id="lblFlightSearch">출도착 조회</span></a></li>
</ul>


					<div class="area-service">
						<div class="subtab_section tab_2w first">
							<ul class="js-tab-section type-arrivalsanddepartures">
							
								<li class="li-1 on">
									<div class="subtab_area type-1">
										<h3 class="tab_title"><a href="#none"><span id="lblRouteSearch">노선 조회</span></a></h3>
									
										<div class="subtab_content">
											<!-- 내용 -->
											<ul class="uList01">
												<li id="lblFlightSearch_info1">오늘 기준으로 2일 전까지의 에어서울 항공편 출도착 정보를 확인하실 수 있습니다.</li>
												<li id="lblFlightSearch_info2">출/도착 일자 및 시간은 현지시간 기준이므로 현지 기준 날짜와 시간으로 조회하여 주십시오.</li>
												<li id="lblFlightSearch_info3">에어서울 운항 항공편에 한하여 출도착 조회가 가능하며, 공동 운항편 또는 외항사의 출도착 정보는 해당 항공사 홈페이지에서 조회하시기 바랍니다.</li>
											</ul>
											
											<div class="tbl-input-row01 mgt25">
												<table>
													<caption id="CaptionFlightSearch1">출도착 조회 입력 표 | 노선별 조회, 출발일로 구성되어있습니다.</caption>
													<colgroup>
														<col style="width:18.2%">
														<col>
													</colgroup>
													<tbody>
														<tr height="57px">
															<th scope="row"><label for="txtDepAirport"><span id="lblRouteDepArrSearch">노선별 조회</span></label></th>
															<td colspan="3">
																<div class="booking-journey js-radioLayer01-wrap">
																	<div class="bookgin_input">
																		<div class="booking js-radioLayer01">
																			<input type="text" id="txtDepAirport" id="txtDepAirport" placeholder="출발지" title="출발지 입력" readonly="readonly" class="ui-autocomplete-input" autocomplete="off">
																			<input type="hidden" id="hidDepAirport" value="">
																			<input type="hidden" id="hidDepCity" value="">
																			<input type="hidden" id="hidDepArea" value="">
																			<input type="hidden" id="hidDepValue" value="">
																			<button type="button" id="btnAirportLayerOpenDep" class="btn_booking js-radioLayer01-btn" data-target="#divBookingJourneyLayer"><span>출발지 팝업 열기</span></button>
																			<div id="divDepAirportAC" class="booking-journey-autocomplete" style="top:0px;height:0px;z-index:100;"><ul class="ui-autocomplete ui-front ui-menu ui-widget ui-widget-content" id="ui-id-1" tabindex="0" style="display: none;"></ul></div>
																		</div>
																		<div class="booking js-radioLayer01">
																			<input type="text" id="txtArrAirport" id="txtArrAirport" placeholder="도착지" title="도착지 입력" readonly="readonly">
																			<input type="hidden" id="hidArrAirport" value="">
																			<input type="hidden" id="hidArrCity" value="">
																			<input type="hidden" id="hidArrArea" value="">
																			<input type="hidden" id="hidArrValue" value="">
																			<button type="button" id="btnAirportLayerOpenArr" class="btn_booking js-radioLayer01-btn" data-target="#divBookingJourneyLayer"><span>도착지 팝업 열기</span></button>
																			<div id="divArrAirportAC" class="booking-journey-autocomplete" style="top:0px;height:0px;z-index:100;"></div>
																		</div>
																	</div>
																	<div id="divBookingJourneyLayer" class="booking-journey-layer">
																		<!-- 가는항공편, 오는항공편 선택시 hidden-title 명칭 변경되야함 접근성 -->
																		<h2 class="hidden-title"></h2>
						
						
																		<div class="layer-close-area">
																			<button type="button" class="layer-close"><span id="lblCloseBtn">닫기</span></button>
																		</div>
																	</div>
																</div>
																
															</td>
														</tr>
														<tr>
															<th scope="row"><label for="selDepDate1"><span id="lblDepDate">출발일</span></label></th>
															<td colspan="3">
																<div>
																	<span class="selectbox01 js-selectbox01">
																	    <span id="spanDepDate1" class="txt"></span>
																	    
																	    <select id="selDepDate1" title="출발일 선택" style="width: 228px;">
																			<option></option>
																	    </select>
																	
																	</span>
																</div>
															</td>
														</tr>
													</tbody>
												</table>
											</div>
											
											<div class="tbl-fot-info">
												<div class="mgt30 tc">
													<a id="btnSearch_Tab1" href="#none" class="btn-type01-col01"><span id="lblSearchBtn">조회</span></a>
												</div>
											</div>
											
										</div>
									</div>
								</li>
								
								<li class="li-2">									
									<div class="subtab_area type-1">
									
										<h3 class="tab_title"><a href="#none"><span id="lblFlightidSearch">편명 조회</span></a></h3>
										<div class="subtab_content">
											<!-- 내용 -->											
											<ul class="uList01">
												<li id="lblFlightSearch_info1">오늘 기준으로 2일 전까지의 에어서울 항공편 출도착 정보를 확인하실 수 있습니다.</li>
												<li id="lblFlightSearch_info2">출/도착 일자 및 시간은 현지시간 기준이므로 현지 기준 날짜와 시간으로 조회하여 주십시오.</li>
												<li id="lblFlightSearch_info3">에어서울 운항 항공편에 한하여 출도착 조회가 가능하며, 공동 운항편 또는 외항사의 출도착 정보는 해당 항공사 홈페이지에서 조회하시기 바랍니다.</li>
											</ul>											
											<div class="tbl-input-row01 mgt40">
												<table>
													<caption id="CaptionFlightSearch2">출도착 조회 입력 표 | 편명, 출발일로 구성되어있습니다.</caption>
													<colgroup>
														<col style="width:18.2%">
														<col style="width:31.8%">
														<col style="width:18.2%">
														<col style="width:31.8%">
													</colgroup>
													<tbody>
														<tr>
															
															<th scope="row"><label id="lblFlightid" for="txtFlightid">편명</label></th>
															<td>
																<div>
																	<span class="middle_txt mgr15"></span>
																	<span class="inp-txt"><input type="text" id="txtFlightid" style="width:191px;" title="편명-RS이후 * 글자"></span>
																</div>
															</td>
															<th scope="row"><label id="lblDepDate" for="selDepDate2">출발일</label></th>
															<td colspan="3">
																<div>
																	<span class="selectbox01 js-selectbox01">
																	    <span id="spanDepDate2" class="txt"></span>
																	    <select id="selDepDate2" title="출발일 선택" style="width: 228px;">
																			<option></option>
																		</select>
																	</span>
																</div>
															</td>
															
														</tr>
													</tbody>
												</table>
											</div>
											
											<div class="tbl-fot-info">
												<div class="mgt30 tc">
													<a id="btnSearch_Tab2" href="#none" class="btn-type01-col01"><span id="lblSearchBtn">조회</span></a>
												</div>
											</div>
											
										</div>
									</div>
								</li>
							</ul>
						</div>
						<div id="FlightSearchList_div" class="single-table-wrap mgt60 hide">
							<div class="table-column">
								<div class="flight-title02">
									<span id="spanSrchDepAirportid"></span> <span class="diretory icon-flight-oneway">에서</span> <span id="spanSrchArrAirportid"></span> <span class="date"><span id="spanSrchDepDate"></span></span>
								</div>
								<div class="tbl-data-col03 mgt20">
									<table>
										
										<caption id="CaptionFlightSearch3">출도착 조회 데이터 표 | 편명, 상태, 출발, 출발예정, 출발완료, 도착, 도착예정, 도착완료로 구성되어있습니다.</caption>
										<colgroup>
											<col style="width:12.5%">
											<col style="width:12.5%">
											<col style="width:12.5%">
											<col style="width:12.5%">
											<col style="width:12.5%">
											<col style="width:12.5%">
											<col style="width:12.5%">
											<col>
										</colgroup>
										
										<thead>
											<tr>
												<th scope="col"><span id="lblFlightid">편명</span></th>
												<th scope="col"><span id="lblStatus">상태</span></th>
												<th scope="col"><span id="lblDeparture_Scheduled">출발</span></th>
												<th scope="col"><span id="lblDeparture_Estimated">출발예정</span></th>
												<th scope="col"><span id="lblDeparture_Actual">출발완료</span></th>
												<th scope="col"><span id="lblArrived_Scheduled">도착</span></th>
												<th scope="col"><span id="lblArrived_Estimated">도착예정</span></th>
												<th scope="col"><span id="lblArrived_Completed">도착완료</span></th>
											</tr>
										</thead>
										<tbody id="FlightSearchList_tbody">
										
										</tbody>
									</table>
								</div>
							</div>
						</div>
						
						<div id="RealTimeDepArr_div" class="real-time-wrap mgt60 hide">
							<div class="table-title-wrap mgt40">
								<h3 class="table-title-big mgr05"><span id="lblRealTimeDepArrInfo">실시간 출도착 정보</span></h3>
								<span id="spanRealTimeDepArr_dateTime" class="title-date">2017.07.10(월) 11:02 기준</span>
							</div>

							<div class="real-time-contents mgt20">
								<div class="conts-wrap">
									<h4 class="real-time-conts-title"><span id="lblDeparture_Scheduled">출발</span></h4>
									<div class="cont">
										<div class="real-time-list-wrap">
											<ul id="RealTimeDep_ul" class="real-time-list" style="width: 100%;"><li>															<span class="flight"><strong class="hidden-title">출발편명</strong>RS 712  </span>															<span class="time"><strong class="hidden-title">출발시간</strong>09:47</span>															<span class="travel"><strong class="hidden-title">출발여정</strong> <strong>서울/인천(ICN) </strong> <span class="icon-flight-oneway">에서</span> 시즈오카(FSZ)</span>														</li><li>															<span class="flight"><strong class="hidden-title">출발편명</strong>RS 732  </span>															<span class="time"><strong class="hidden-title">출발시간</strong>09:07</span>															<span class="travel"><strong class="hidden-title">출발여정</strong> <strong>서울/인천(ICN) </strong> <span class="icon-flight-oneway">에서</span> 히로시마(HIJ)</span>														</li><li>															<span class="flight"><strong class="hidden-title">출발편명</strong>RS 702  </span>															<span class="time"><strong class="hidden-title">출발시간</strong>07:30</span>															<span class="travel"><strong class="hidden-title">출발여정</strong> <strong>서울/인천(ICN) </strong> <span class="icon-flight-oneway">에서</span> 다카마쓰(TAK)</span>														</li></ul>
										</div>
									</div>
									<ul class="real-time-btn" style="display: none;">
										<li><button type="button" class="prev"><span id="lblRealTimeDepArrInfo">실시간 출도착 정보</span><span> : Prev</span></button></li>
										<li class="button">
											<button type="button" class="stop on"><span id="lblRealTimeDepArrInfo">실시간 출도착 정보</span><span> : Stop</span></button>
											<button type="button" class="play"><span id="lblRealTimeDepArrInfo">실시간 출도착 정보</span><span> : Play</span></button>
										</li>
										<li><button type="button" class="next"><span id="lblRealTimeDepArrInfo">실시간 출도착 정보</span><span> : Next</span></button></li>
									</ul>
								</div>
								<div class="conts-wrap">
									<h4 class="real-time-conts-title"><span id="lblArrived_Scheduled">도착</span></h4>
									<div class="cont">
										<div class="real-time-list-wrap">
											<ul id="RealTimeArr_ul" class="real-time-list" style="width: 100%;">
												<li>														
													<span class="flight"><strong class="hidden-title">도착편명</strong>RS 512  </span>															
													<span class="time"><strong class="hidden-title">도착시간</strong>08:03</span>															
													<span class="travel"><strong class="hidden-title">도착여정</strong>코타키나발루(BKI)
													<span class="icon-flight-oneway">에서</span> <strong>서울/인천(ICN)</strong></span>														
												</li>
												<li>															
													<span class="flight"><strong class="hidden-title">도착편명</strong>RS 502  </span>															
													<span class="time"><strong class="hidden-title">도착시간</strong>06:38</span>															
													<span class="travel"><strong class="hidden-title">도착여정</strong>씨엠립(REP)<span class="icon-flight-oneway">에서</span> <strong>서울/인천(ICN)</strong></span>														</li></ul>
										</div>
									</div>
									<ul class="real-time-btn" style="display: none;">
										<li><button type="button" class="prev"><span id="lblRealTimeDepArrInfo">실시간 출도착 정보</span><span> : Prev</span></button></li>
										<li class="button">
											<button type="button" class="stop on"><span id="lblRealTimeDepArrInfo">실시간 출도착 정보</span><span> : Stop</span></button>
											<button type="button" class="play"><span id="lblRealTimeDepArrInfo">실시간 출도착 정보</span><span> : Play</span></button>
										</li>
										<li><button type="button" class="next"><span id="lblRealTimeDepArrInfo">실시간 출도착 정보</span><span> : Next</span></button></li>
									</ul>
								</div>
							</div>
						</div>
						<ul id="flightSearchList_Info" class="uList01 hide">
							<li id="FlightSearchList_info1">출발완료 시간은 항공기가 비행을 위해 주기장을 출발한 시간을 의미하며, 실제 항공기 이륙시간과는 공항 상황에 따라 15~20분 가량 차이가 있습니다.</li>
							<li id="FlightSearchList_info2">도착완료는 항공기 착륙 후 주기장에 도착하여 하기 준비가 된 상태로 실제 활주로 착륙 후 15~20분 가량이 소요됩니다.</li>
						</ul>
						
				    </div>
				</div>
			</div>
		</div>
	</div>
	<p id="viewLayerLogin" href="I/KO/viewOneLogin" class="jsOpenLayer" style="display:none;"></p>

<!-- wrap -->
	 

<!-- 0526 header div 부분 닫음처리  -->

<!-- wrap -->






    <div id="ui-datepicker-div" class="ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all"></div>

    <script type="text/javascript">
    
    $(document).ready(function(){
    	
   	var today = moment().format('YYYY.MM.DD');

    	
	
	for(var i=2; i>=0; i--){
			var yDate = moment().add(-i,'days').format('YYYY.MM.DD');
			console.log(yDate);
			$("#selDepDate1 option:last").after("<option value='"+yDate+"' selected='' >"+yDate+"</option>");
			$("#selDepDate2 option:last").after("<option value='"+yDate+"' selected='' >"+yDate+"</option>");
		}
	

	
	
    	var _tab = $(".tab_title");
    	$(".tab_title").on("click", function(){		
    		var $Li = $(this).parents("li");	
 //   			console.log($(this).parents("li").attr("class"));	
    		_tab.each(function(i){
    			var _tabLi = _tab.eq(i).parents("li");
    			
    			if(_tabLi.hasClass("on")){
    				_tabLi.removeClass("on");
    			}    			
    		});
    		$Li.addClass("on");
    		$("#FlightSearchList_div").addClass('hide');
    		$("#FlightSearchList_tbody").empty();
    	});
    	
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

    	$(".btn_booking").on("focus", function() {
    		var $this = $(this);
    		if (!$this.hasClass("active")) {	// 현재 레이어가 활성화된 상태에서는 수행하지 않는다.
    			var $divBookingJourneyLayer_id = $("#divBookingJourneyLayer");
    		
    		console.log($this.index(".btn_booking"));
    		
    			if ($this.index(".btn_booking") == 0) {
    				$divBookingJourneyLayer_id.find("div.booking-journey-layer-section-arr").css("display", "none");
    				$divBookingJourneyLayer_id.find("div.booking-journey-layer-section-dep").css("display", "");
    			} else {
    				$divBookingJourneyLayer_id.find("div.booking-journey-layer-section-dep").css("display", "none");
    				$divBookingJourneyLayer_id.find("div.booking-journey-layer-section-arr").css("display", "");
    			}
    		}
    	});

    	$(".btn_booking").on("click", function() {
    		var $spanBookingRouteLayerOpenDep_id	= $('#btnAirportLayerOpenDep');
    		var $spanBookingRouteLayerOpenArr_id	= $('#btnAirportLayerOpenArr');
    		var $layerCloseBtnName_id				= $('#spanBookingRouteLayerClose');
    		var $divBookingJourneyLayer_id = $("#divBookingJourneyLayer");


    		// 출발지 레이어 활성화/비활성화 시
    		if($("#btnAirportLayerOpenDep").parents(".d").hasClass('active')) {
    			$('#btnAirportLayerOpenDep').parents(".d").removeClass('active');
    			$divBookingJourneyLayer_id.slideUp(150);
    		} else {
    			$('#btnAirportLayerOpenDep').parents(".d").addClass('active');
    			$divBookingJourneyLayer_id.slideDown(150);
    		}
    		
    		// 도착지 레이어 활성화/비활성화 시
    		if($("#btnAirportLayerOpenArr").parents(".a").hasClass('active')) {
    			$('#btnAirportLayerOpenArr').parents(".a").removeClass('active');
    			$divBookingJourneyLayer_id.slideUp(150);
    		} else {
    			$('#btnAirportLayerOpenArr').parents(".a").addClass('active');
    			$divBookingJourneyLayer_id.slideDown(150);
    		}
    	});
    	
    });
    
    </script>
    
    