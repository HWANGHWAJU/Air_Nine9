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
					<li><a href="/CW/KO/main.do" id="Home">홈</a></li>
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
                <h1 class="pagetitle"><!-- 항공권 안내 -->항공권 안내</h1>
                <div class="">
                    
<ul class="list-tab type-1">
    <li>
        <div class="tab_area">
            <h2 class="tab_title"><a href="Info_reservation.bo"><!-- 항공권 예매 -->항공권 예매</a></h2>
        </div>
    </li>
    <li class="on">
        <div class="tab_area">
            <h2 class="tab_title"><a href="Info_vat.bo"><!-- 운임 안내 -->수수료 안내</a></h2>
        </div>
    </li>
    <li>
        <div class="tab_area">
            <h2 class="tab_title"><a href="Info_schedule.bo"><!-- 스케줄 조회 -->스케줄 조회</a></h2>
        </div>
    </li>
    <li>
        <div class="tab_area">
            <h2 class="tab_title"><a href="Info_arrival.bo"><!-- 출도착 조회 -->출도착 조회</a></h2>
        </div>
    </li>
</ul>
                    <div class="tab_content">
                    <!-- 내용 -->
                        <div class="area-ticket">
                            <div class="box-info type-fare">
                                <p>항공권 클래스의 운임 규정에 따라 수수료가 부과됩니다.</p>
                            </div>
                            <h2 class="table-title-big mgt50"><!-- 수수료 안내 -->수수료 안내</h2>
                            <div class="tbl-data-col03 type-1 mgt20 mgb40">
                                <table>
                                    <caption>수수료(환불 및 재발행수수료, 예약 부도 수수료), 지역(최초 출발 구간 기준), 한국, 일본, 동남아, 통화, KRW, JPY, USD로 구성된 수수료 안내표입니다.</caption>
                                    <colgroup>
                                        <col style="width:20%">
                                        <col>
                                        <col style="width:17%">
                                        <col style="width:17%">
                                        <col style="width:17%">
                                    </colgroup>
                                    <thead>
                                        <tr>
                                            <th scope="col" rowspan="2"><!-- 수수료 -->수수료</th>
                                            <th scope="col"><!-- 지역 (최초 출발 구간 기준) -->지역(최초 출발 구간 기준)</th>
                                            <th scope="col"><!-- 한국 -->한국</th>
                                            <th scope="col"><!-- 일본 -->일본</th>
                                            <th scope="col"><!-- 동남아 -->동남아</th>
                                        </tr>
                                        <tr>
                                            <th scope="col"><!-- 통화 -->통화</th>
                                            <th scope="col">KRW</th>
                                            <th scope="col">JPY</th>
                                            <th scope="col">USD</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <th scope="row" rowspan="3"><!-- 환불 및 재발행 수수료 -->환불 및 재발행 수수료</th>
                                            <td><!-- 정상 운임 -->정상 운임</td>
                                            <td class="tbl-price"> 30,000</td>
                                            <td class="tbl-price"> 3,000</td>
                                            <td class="tbl-price"> 30</td>
                                        </tr>
                                        <tr>
                                            <td><!-- 할인 운임 -->할인 운임</td>
                                            <td class="tbl-price"> 30,000</td>
                                            <td class="tbl-price"> 3,000</td>
                                            <td class="tbl-price"> 30</td>
                                        </tr>
                                        <tr>
                                            <td><!-- 특가 운임 -->특가 운임</td>
                                            <td class="tbl-price"> 30,000</td>
                                            <td class="tbl-price"> 3,000</td>
                                            <td class="tbl-price"> 30</td>
                                        </tr>
                                        <tr>
                                            <th scope="row"><!-- 예약부도수수료(No Show Penalty) -->예약부도수수료<br>(No Show Penalty)</th>
                                            <td>-</td>
                                            <td class="tbl-price"> 100,000</td>
                                            <td class="tbl-price"> 10,000</td>
                                            <td class="tbl-price"> 100</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <p><!-- * 2017년 3월 26일 구매 항공권부터 한국 발 국제선 위약금이 아래와 같이 변경됩니다. -->* 2017년 3월 26일 구매 항공권부터 한국 출발 국제선 위약금이 아래와 같이 변경됩니다.</p>
                            <div class="tbl-data-col03 type-1 mgt20">                 
                                <table>
                                    <caption> <!-- 수수료[환불 및 재발행 수수료, 예약부도수수료(No Show Penalty)], 지역, 한국출발(최초출발구간기준)/KRW, 시점별 부과, ~출발 91일전 이전, 출발 90일 이내 ~ 61일 이전, 출발 60일 이내 ~ 31일 이전, 출발 30일 이내 ~ 출발 당일(No-Show 이전) 구성된 수수료 안내 표입니다. --> 수수료[환불 및 재발행 수수료, 예약부도수수료(No Show Penalty)], 지역, 한국출발(최초출발구간기준)/KRW, 시점별 부과, ~출발 91일전 이전, 출발 90일 이내 ~ 61일 이전, 출발 60일 이내 ~ 31일 이전, 출발 30일 이내 ~ 출발 당일(No-Show 이전) 구성된 수수료 안내 표입니다. </caption>
                                    <colgroup>
                                        <col style="width:20%">
                                        <col>
                                        <col style="width:16%">
                                        <col style="width:16%">
                                        <col style="width:16%">
                                        <col style="width:16%">
                                    </colgroup>
                                    <thead>
                                        <tr>
                                            <th scope="col" rowspan="2"><!-- 수수료 -->수수료</th>
                                            <th scope="col"><!-- 지역 -->지역</th>
                                            <th scope="col" colspan="4"><!-- 한국출발(최초출발구간기준)/KRW -->한국출발(최초출발구간기준)/KRW</th>
                                        </tr>
                                        <tr>
                                            <th scope="col"><!-- 시점별 부과 -->시점별 부과</th>
                                            <th scope="col"><!-- ~ 출발 91일전 이전 -->~ 출발 91일전 이전</th>
                                            <th scope="col"><!-- 출발 90일 이내 ~ 61일 이전 -->출발 90일 이내 ~ 61일 이전</th>
                                            <th scope="col"><!-- 출발 60일 이내 ~ 31일 이전  -->출발 60일 이내 ~ 31일 이전</th>
                                            <th scope="col"><!-- 출발 30일 이내 ~ 출발 당일 (No-Show 이전) -->출발 30일 이내 ~ 출발 당일 (No-Show 이전)</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <th scope="row" rowspan="3"><!-- 환불 및 재발행 수수료 -->환불 및 재발행 수수료</th>
                                            <td><!-- 정상 운임 -->정상 운임</td>
                                            <td class="tbl-price"> <!-- 없음 --> 없음</td>
                                            <td class="tbl-price"> 10,000</td>
                                            <td class="tbl-price"> 20,000</td>
                                            <td class="tbl-price"> 40,000</td>
                                        </tr>
                                        <tr>
                                            <td><!-- 할인 운임 -->할인 운임</td>
                                            <td class="tbl-price"> <!-- 없음 --> 없음</td>
                                            <td class="tbl-price"> 20,000</td>
                                            <td class="tbl-price"> 40,000</td>
                                            <td class="tbl-price"> 60,000</td>
                                        </tr>
                                        <tr>
                                            <td><!-- 특가 운임 -->특가 운임</td>
                                            <td class="tbl-price"> <!-- 없음 --> 60,000</td>
                                            <td class="tbl-price"> 60,000</td>
                                            <td class="tbl-price"> 60,000</td>
                                            <td class="tbl-price"> 60,000</td>
                                        </tr>
                                        <tr>
                                            <th scope="row"><!-- 예약부도수수료(No Show Penalty) -->예약부도수수료<br>(No Show Penalty)</th>
                                            <td>-</td>
                                            <td class="tbc-price" colspan="4"> 100,000</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <ul class="uList01">
                                <li><!-- 수수료는 1인당 편도 구간 기준으로 각각 적용됩니다. -->수수료는 1인당 편도 구간 기준으로 각각 적용됩니다.</li>
                                <li><!-- 구매 시와 상이한 조건 (날짜, 요일, 탑승편, 클래스 등)으로 변경 시 운임 차액과 변경 위약금이 발생할 수 있습니다. -->구매 시와 상이한 조건(날짜, 요일, 탑승편, 클래스 등)으로 변경 시 운임 차액과 변경 위약금이 발생할 수 있습니다.</li>
                                <li><!-- 변경 시 상위 운임으로만 항공권 처리가 가능합니다. 운임이 인하될 경우 차액환불은 불가합니다. -->변경 시 상위 운임으로만 항공권 처리가 가능합니다. 운임이 인하될 경우 차액환불은 불가합니다.</li>
                                <li><!-- 성인과 소아는 동일한 수수료가 적용되며, 좌석을 점유하지 않는 유아는 수수료가 부과되지 않습니다. -->성인과 소아는 동일한 수수료가 적용되며, 좌석을 점유하지 않는 유아는 수수료가 부과되지 않습니다.</li>
                                <li><!-- No Show 수수료는 항공편 탑승 수속 마감 전까지 예약을 취소하지 않은 경우에 부과되며, 환불수수료와는 별도 적용됩니다. -->No Show 수수료는 항공편 탑승 수속 마감 전까지 예약을 취소하지 않은 경우에 부과되며, 환불수수료와는 별도 적용됩니다.</li>
                            </ul>
                        </div>
                    <!-- //내용 -->
                    </div>
                </div>
            </div>
		</div>
	</div>
	<p name="viewLayerLogin" href="I/KO/viewOneLogin" class="jsOpenLayer" style="display:none;"></p>

<!-- wrap -->




    <div id="ui-datepicker-div" class="ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all"></div>
