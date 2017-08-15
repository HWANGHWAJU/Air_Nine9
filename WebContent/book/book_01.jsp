<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
			<div class="booking-journey">
				<h1 id="h1HiddenTitleRoute" class="hidden-title">여정</h1>
				<div class="booking-journey-meseege tc">
					<p class="mgt20"><img src="images/booking/img_booking_01.png" alt="Where would you like to go?"></p>
				</div>
			
				<div class="booking-journey-type-area mgt20 tc">
					<span class="radiobox01 js-radiobox01">
						<label for="radRoundTripType" class="active">
							<span id="spanTripTypeRoundTrip">왕복</span>
							<input type="radio" id="radRoundTripType" name="radTripType" value="RT" checked="checked">
						</label>
					</span>
					<span class="radiobox01 js-radiobox01">
						<label for="radOneWayTripType">
							<span id="spanTripTypeOneWay">편도</span>
							<input type="radio" id="radOneWayTripType" name="radTripType" value="OW">
						</label>
					</span>
				</div>
			
				<div class="booking-journey-input mgt30 js-radioLayer01-wrap">
					<div class="booking-journey-items-from">
						<span class="booking-journey-items-select d js-radioLayer01">
							<input type="text" id="txtDepAirport" readonly="readonly" title="출발지 입력" placeholder="출발지" class="ui-autocomplete-input" autocomplete="off">
							<input type="hidden" id="hidDepAirport" value="">
							<input type="hidden" id="hidDepCity" value="">
							<input type="hidden" id="hidDepArea" value="">
							<input type="hidden" id="hidDepValue" value="">
							<button type="button" class="booking-journey-items-button js-radioLayer01-btn" data-target="#divBookingJourneyLayer"><span id="spanBookingRouteLayerOpenDep">출발지 목록 레이어 열기</span></button>
						</span>
						<div id="divDepAirportAC" class="booking-journey-autocomplete" style="top:0px; height:0px;"><ul class="ui-autocomplete ui-front ui-menu ui-widget ui-widget-content" id="ui-id-1" tabindex="0" style="display: none;"></ul></div>
					</div>
					<span id="btnDirectory" class="booking-journey-items-diretory-roundtrip" style="cursor:default;"><span>출발지와 도착지 왕복</span></span>
					<div class="booking-journey-items-city">
						<span class="booking-journey-items-select a js-radioLayer01">
							<input type="text" id="txtArrAirport" readonly="readonly" title="도착지 입력" placeholder="도착지" class="ui-autocomplete-input" autocomplete="off">
							<input type="hidden" id="hidArrAirport" value="">
							<input type="hidden" id="hidArrCity" value="">
							<input type="hidden" id="hidArrArea" value="">
							<input type="hidden" id="hidArrValue" value="">
							<button type="button" class="booking-journey-items-button js-radioLayer01-btn" data-target="#divBookingJourneyLayer"><span id="spanBookingRouteLayerOpenArr">도착지 목록 레이어 열기</span></button>
						</span>
						<div id="divArrAirportAC" class="booking-journey-autocomplete" style="top:0px; height:0px;"><ul class="ui-autocomplete ui-front ui-menu ui-widget ui-widget-content" id="ui-id-2" tabindex="0" style="display: none;"></ul></div>
					</div>
				</div>

				<div id="divBookingJourneyLayer" class="booking-journey-layer" style="display: none;">
					<h2 class="hidden-title">출발지 레이어팝업</h2>
									
					<div class="layer-close-area">
						<button type="button" class="layer-close"><span id="spanBookingRouteLayerClose">출발지 목록 레이어 닫기</span></button>
					</div>
				</div>
				
				<ul id="ulOneWayDesc" class="uList01" style="display:none;">
					<li id="liOneWayDesc1">편도 여정 시 국적에 따라 경유지 및 목적지 출입국 시 비자를 소지하지 않을 경우에는 해당 국가로 출국이 거절될 수 있습니다.</li>
					<li id="liOneWayDesc2">무비자 입국이 가능한 나라일 경우라도 편도 입국은 불가하오니 반드시 해당 대사관을 통하여 확인하시기 바랍니다.</li>
				</ul>
			
				<div class="pdt30 tc">
					<button type="button" id="btnAirportConfirm" class="btn-type01-col01"><span id="spanAirportConfirm">확인</span></button>
				</div>
			</div>
			<!-- 여정 (E) -->
			
			<!-- 날짜 (S) -->
			<div class="booking-date" style="display: none;">
				<h1 id="h1HiddenTitleDate" class="hidden-title">일정</h1>
				<div class="booking-date-input js-radioLayer01-wrap">
					<div class="booking-date-items-startdate">
						<span class="booking-items-select js-radioLayer01">
							<input type="text" id="txtDepBookingDate" readonly="readonly" title="출발일 선택" placeholder="출발일">
							<button type="button" value="" class="booking-date-items-button js-radioLayer01-btn" data-target="#bookingDateLayer"><span id="spanBookingDateLayerOpenDep">출발일 선택 달력 레이어 열기</span></button>
						</span>
					</div>
					<div class="booking-date-items-enddate">
						<span class="booking-items-select js-radioLayer01">
							<input type="text" id="txtArrBookingDate" readonly="readonly" title="도착일 선택" placeholder="도착일">
							<button type="button" value="" class="booking-date-items-button js-radioLayer01-btn" data-target="#bookingDateLayer"><span id="spanBookingDateLayerOpenArr">도착일 선택 달력 레이어 열기</span></button>
						</span>
					</div>
				</div>
			
				<div id="bookingDateLayer" class="booking-date-layer">
					<div class="booking-date-layer-btnarea">
						<button type="button" class="booking-date-layer-btntoday"><span id="spanDateLayerTodayButton" class="btn-type02-col01">오늘</span></button>
						<button type="button" class="booking-date-layer-btnleft"><span id="spanDateLayerPrevMonthButton">이전달</span></button>
						<button type="button" class="booking-date-layer-btnright"><span id="spanDateLayerNextMonthButton">다음달</span></button>
					</div>
					<div id="bookingDatePicker"></div>
					<div class="layer-close-area">
						<div class="date-layer-info">
							<span id="spanDateLayerInfoToday" class="today">오늘날짜</span>
							<span id="spanDateLayerInfoStart" class="start">출발일</span>
							<span id="spanDateLayerInfoEnd" class="end">도착일</span>
							<span id="spanDateLayerInfoBetween" class="between">체류</span>
						</div>
						<button type="button" class="layer-close"><span id="spanDateLayerCloseButton">출발일/도착일 선택 달력 레이어 닫기</span></button>
					</div>
				</div>
			
				<div class="pdt30 tc">
					<button type="button" id="btnDateConfirm" class="btn-type01-col01">확인</button>
				</div>
			</div>
			<!-- 날짜 (E) -->
			
			<!-- 승객 (S) -->
			<div class="booking-passenger" style="display: none;">
				<h1 id="h1HiddenTitlePaxCnt" class="hidden-title">탑승인원</h1>
				<div class="booking-passenger-input">
					<div class="booking-passenger-items-adult mgr20">
						<h2 id="h2PaxTitleAdt" class="booking-passenger-items-title">성인</h2>
						<div class="js-selectLayer01">
							<span class="booking-passenger-items-select mgt10">
								<input type="text" id="txtSelAdtPaxCnt" value="1" title="성인수 입력">
								<button type="button" id="btnSelAdtPaxCnt" class="booking-passenger-items-button js-selectLayer01-btn" data-target="#bookingPassengerLayerAdult">
									<span id="spanPaxCntLayerOpenAdt">성인수 선택 레이어 열기</span>
								</button>
							</span>
							<div id="bookingPassengerLayerAdult" class="booking-passenger-layer-adult">
								<ul>
									<li name="Pax_1"><button type="button" value="1"><span>1</span></button></li>
									<li name="Pax_2"><button type="button" value="2"><span>2</span></button></li>
									<li name="Pax_3"><button type="button" value="3"><span>3</span></button></li>
									<li name="Pax_4"><button type="button" value="4"><span>4</span></button></li>
									<li name="Pax_5"><button type="button" value="5"><span>5</span></button></li>
									<li name="Pax_6"><button type="button" value="6"><span>6</span></button></li>
									<li name="Pax_7"><button type="button" value="7"><span>7</span></button></li>
									<li name="Pax_8"><button type="button" value="8"><span>8</span></button></li>
									<li name="Pax_9"><button type="button" value="9"><span>9</span></button></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="booking-passenger-items-child mgr20">
						<h2 id="h2PaxTitleChd" class="booking-passenger-items-title">소아 <span>만 2세 이상 ~ 만 12세 미만(탑승일 기준)</span></h2>
						<div class="js-selectLayer01">
							<span class="booking-passenger-items-select mgt10">
								<input type="text" id="txtSelChdPaxCnt" value="0" title="소아수 입력">
								<button type="button" id="btnSelChdPaxCnt" class="booking-passenger-items-button js-selectLayer01-btn" data-target="#bookingPassengerLayerChild">
									<span id="spanPaxCntLayerOpenChd">소아수 선택 레이어 열기</span>
								</button>
							</span>
							<div id="bookingPassengerLayerChild" class="booking-passenger-layer-child">
								<ul>
									<li name="Pax_0"><button type="button" value="0"><span>0</span></button></li>
									<li name="Pax_1"><button type="button" value="1"><span>1</span></button></li>
									<li name="Pax_2"><button type="button" value="2"><span>2</span></button></li>
									<li name="Pax_3"><button type="button" value="3"><span>3</span></button></li>
									<li name="Pax_4"><button type="button" value="4"><span>4</span></button></li>
									<li name="Pax_5"><button type="button" value="5"><span>5</span></button></li>
									<li name="Pax_6"><button type="button" value="6"><span>6</span></button></li>
									<li name="Pax_7"><button type="button" value="7"><span>7</span></button></li>
									<li name="Pax_8"><button type="button" value="8"><span>8</span></button></li>
									<li name="Pax_9"><button type="button" value="9"><span>9</span></button></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="booking-passenger-items-lapinfant">
						<h2 id="h2PaxTitleInf" class="booking-passenger-items-title">유아 <span>만 2세 미만(탑승일 기준)</span></h2>
						<div class="js-selectLayer01">
							<span class="booking-passenger-items-select mgt10">
								<input type="text" id="txtSelInfPaxCnt" value="0" title="유아수 입력">
								<button type="button" id="btnSelInfPaxCnt" class="booking-passenger-items-button js-selectLayer01-btn" data-target="#bookingPassengerLayerLapinfant">
									<span id="spanPaxCntLayerOpenInf">유아수 선택 레이어 열기</span>
								</button>
							</span>
							<div id="bookingPassengerLayerLapinfant" class="booking-passenger-layer-lapinfant">
								<ul>
									<li name="Pax_0"><button type="button" value="0"><span>0</span></button></li>
									<li name="Pax_1"><button type="button" value="1"><span>1</span></button></li>
									<li name="Pax_2"><button type="button" value="2"><span>2</span></button></li>
									<li name="Pax_3"><button type="button" value="3"><span>3</span></button></li>
									<li name="Pax_4"><button type="button" value="4"><span>4</span></button></li>
									<li name="Pax_5"><button type="button" value="5"><span>5</span></button></li>
									<li name="Pax_6"><button type="button" value="6"><span>6</span></button></li>
									<li name="Pax_7"><button type="button" value="7"><span>7</span></button></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			
				<div class="mgt20 tr">
					<ul class="uList01 mgb10">
						<li id="liPaxCntDesc1">소아/유아를 동반하는 보호자는 부모 또는 만 18세 이상의 성인이어야 하며, 소아/유아 동반 시 반드시 나이를 확인할 수 있는 서류를 준비하시기 바랍니다.</li>
						<li id="liPaxCntDesc2">소아와 유아의 나이는 첫 구간 탑승일을 기준으로한 나이입니다.</li>
					</ul>
					<button type="button" id="btnAgeCalculator" class="btn-type03-col01 js-togglelayer" data-target="#ageCalculatorLayer" title="나이 계산기 레이어 열기">나이 계산기</button>
				</div>
			
				<div id="ageCalculatorLayer" class="age-calculator-layer mgt10">
					<h2 id="h2HiddenTitleAgeCal" class="hidden-title">나이 계산기 레이어</h2>
					<p id="pAgeCalDesc" class="fz16">생년월일을 입력하시면, 소아/유아를 확인하실 수 있습니다.</p>
					<div class="mgt20">
						<span id="spanBirthDate" class="fz16 mgr30">생년월일</span>
						<span class="selectbox01 js-selectbox01">
							<span class="txt ex"></span>
						    <select id="selAgeCalYear" style="width: 86px;" onchange="javascript:fn_ChangeAgeCalYear();" title="생년월일 년 선택란">
							    <option id="optAgeCalYearDefault" value="" selected="selected" class="ex">년</option><option value="2017">2017</option><option value="2016">2016</option><option value="2015">2015</option><option value="2014">2014</option><option value="2013">2013</option><option value="2012">2012</option><option value="2011">2011</option><option value="2010">2010</option><option value="2009">2009</option><option value="2008">2008</option><option value="2007">2007</option><option value="2006">2006</option><option value="2005">2005</option>
						    </select>
						</span>
						<span class="selectbox01 js-selectbox01">
							<span class="txt ex"></span>
						    <select id="selAgeCalMonth" style="width: 86px;" onchange="javascript:fn_ChangeAgeCalMonth();" title="생년월일 월 선택란">
							    <option id="optAgeCalMonthDefault" value="" selected="selected" class="ex">월</option>
						    </select>
						</span>
						<span class="selectbox01 js-selectbox01 mgr15">
							<span class="txt ex"></span>
						    <select id="selAgeCalDate" style="width: 86px;" title="생년월일 일 선택란">
							    <option id="optAgeCalDateDefault" value="" selected="selected" class="ex">일</option>
						    </select>
						</span>
						<button type="button" id="btnAgeCal" class="btn-type02-col01">계산</button>
					</div>
			
					<div class="info mgt15">
						<p id="pAgeCalMsg"></p>
					</div>
			
					<ul class="uList01">
						<li id="liAgeCalDesc1">첫 구간 탑승일 기준으로 만 2세 이상 ~ 만 12세 미만은 소아, 만 2세 미만은 유아 운임이 적용됩니다. (만2세 미만은 유아 운임이 적용되며 좌석 미점유)</li>
						<li id="liAgeCalDesc2">소아/유아를 동반하는 보호자는 부모 또는 만 18세 이상의 성인이어야 하며, 소아/유아 동반 시 반드시 나이를 확인할 수 있는 서류를 준비하시기 바랍니다.</li>
						<li id="liAgeCalDesc3">성인 승객 1분이 유아 1명(만2세 미만)을 동반할 수 있으며, 2명 이상 유아를 동반할 경우 추가되는 유아만큼 소아 운임의 항공권을 구매하셔야 합니다.</li>
						<li id="liAgeCalDesc4">유아에 대해 좌석 점유가 가능하며, 소아 운임이 적용됩니다.</li>
						<li id="liAgeCalDesc5">보호자 없이 혼자 여행하는 소아 예약 및 문의는 예약센터 1800-8100으로 주시기 바랍니다.</li>
					</ul>
			
					<div class="layer-close-area">
						<button type="button" class="layer-close"><span id="spanAgeCalLayerClose">나이 계산기 레이어 닫기</span></button>
					</div>
				</div>
			
				<div class="pdt30 tc">
					<button type="button" id="btnPaxCntConfirm" class="btn-type01-col01">확인</button>
				</div>
			
			</div>
			<!-- 승객 (E) -->
	