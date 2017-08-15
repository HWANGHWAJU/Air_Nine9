<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">

<!-- wrap -->
<div id="container">
        <div id="content">
            <!-- location -->
            <div id="location" class="" style="top: 0px;">
                <ol class="location_area">
                    <li><a href="mainIndex.bo"><!-- 홈 -->홈</a></li>
                    <li><a href="Info_FlightMain.bo"><!-- 서비스 -->서비스 안내</a></li>
                    <li><a href="Opt_Main.bo"><!-- 부가 서비스 -->부가 서비스 구매</a>
                        <div class="btn_lnb"><a href="#none"><!-- 서비스 안내 하위메뉴 -->서비스 안내 하위메뉴</a><span class="hidden-title">열기</span></div>
                        <div class="lnb_area" style="display: none;">
                            <ul class="location_lnb">
                                <li><a href="/CW/ko/booking_reservation.do"><!-- 항공권 안내 -->항공권 안내</a></li>
                                <li class="on"><a href="Opt_Main.bo"><!-- 부가 서비스 -->부가 서비스 구매</a></li>
                                <li><a href="/CW/ko/online-check-in.do"><!-- 공항 서비스 -->공항 서비스</a></li>
                                <li><a href="/CW/ko/cabin.do"><!-- 기내 서비스 -->기내 서비스</a></li>
                                <li><a href="/CW/ko/infant.do"><!-- 도움이 필요한 고객 -->도움이 필요한 고객</a></li>
                                <li><a href="/CW/ko/mobile.do"><!-- 모바일 서비스 -->모바일 서비스</a></li>
                                <li><a href="/CW/ko/download.do"><!-- 양식 다운로드 -->양식 다운로드</a></li>
                            </ul>
                        </div>
                    </li>
                    <li class="current"><span><!-- 사전 좌석 구매 -->사전 좌석 구매</span>
                        <div class="btn_lnb"><a href="#none"><!-- 부가 서비스 하위메뉴 -->부가 서비스 구매 하위메뉴</a><span class="hidden-title">열기</span></div>
                        <div class="lnb_area" style="display: none;">
                            <ul class="location_lnb">
                                <li><a href="Opt_advance_seats.bo"><!-- 사전 좌석 구매 -->사전 좌석 구매</a></li>
                                <li class="on"><a href="Opt_overbaggage.bo"><!-- 사전 초과 수하물 구매 -->사전 초과 수하물 구매</a></li>
                                <li><a href="Opt_meals.bo"><!-- 사전 기내식 주문 -->사전 기내식 주문</a></li>
                                <li><a href="Opt_duty.bo"><!-- 기내 면세품 -->기내 면세품</a></li>
                                <li><a href="Opt_cafe.bo">Café Mint</a></li>
                                <li><a href="Opt_packaging.bo"><!-- 유료 아이템 -->공항 포장용품</a></li>
                            </ul>
                        </div>
                    </li>
                </ol>
            </div>
            <!-- content_inner -->
<div class="content_inner">
                
                <h1 class="pagetitle">부가 서비스 구매</h1>
                <ul class="list-tab type-1">
                <li><a href="Opt_advance.bo"><!-- 사전 좌석 구매 -->사전 좌석 구매</a></li>
                    <li class="on"><a href="Opt_overbaggage.bo"><!-- 사전 초과 수하물 구매 --> 사전 초과 수하물 구매</a></li>
                    <li><!-- 사전 기내식 --><a href="Opt_meals.bo">사전 기내식 주문</a></li>
                    <li><a href="Opt_duty.bo"><!-- 기내 면세품 -->기내 면세품</a></li>
                    <li><a href="Opt_cafe.bo"><!-- Cafe Mint -->Café Mint</a></li>
                    <li><a href="Opt_packaging.bo"><!-- 유료 포장 아이템 -->공항 포장용품 </a></li>
                </ul>
                <!-- 내용 -->
                <div class="area-service baggage">
                    <div class="baggage_content show">
                        <!-- 초과 수하물 내용 -->
                        <!-- 2016-08-05 추가 (S) -->
                        <div class="box-info type_excess">
                            <p><!-- 홈페이지 및 모바일을 통해 항공권 구매 시 초과 수하물을 구매하실 수 있습니다. -->2017.07.11부 초과 수하물 규정이 변경되었습니다.<br>(미주 외 구간 1PC/23KG → 1PC/15KG)</p>
                        </div>
                        <!-- S : 20170605_NEW PAGE -->
                        <div class="baggae_txt">
                            <ul class="uList01 mgb30">
                                <li><!-- 초과 수하물 요금 변경 시행 일자 : 2017년 7월 11일부 -->초과 수하물 요금 변경 시행 일자 : 2017년 7월 11일부</li>
                                <li><!-- 대상: 발권일 기준 7월 11일 이후 발권 승객 -->대상: 발권일 기준 7월 11일 이후 발권 승객</li>
                                <li><!-- 기존 예약자의 경우 유예기간 동안(7월 11일~10월 10일) 승객에게 유리한 규정으로 적용 가능합니다. -->유예기간(7월 11일 ~ 10월 10일) 동안 발권한 승객의 경우 구/신 규정 중 선택 가능합니다.</li>
                            </ul>
                            
                            <ul class="infor_list">
                                <li><h2 class="table-title-big mgb10"><!-- 개수 초과 요금 (7월 11일 이후 발권 규정) -->개수 초과 요금 (7월 11일 이후 발권 규정)</h2>
                                    <span>*<!-- 2017년 7월 11일 이후 발권 및 초과 위탁수하물 구매 승객 대상 초과 요금이 아래와 같이 변경 적용됩니다. --> 2017년 7월 11일 이후 발권 및 초과 위탁수하물 구매 승객 대상 초과 요금이 아래와 같이 변경 적용됩니다.</span>
                                    <ul class="uList01">
		                                <li><!-- 무료 수하물 1개를 추가 할 경우에 개수 초과에 해당되는 초과 수하물만 구매하실 수 있으며, 무게나 부피가 초과하는 수하물은 공항에서 구매 가능합니다. -->무료 수하물 1개를 추가할 경우에 개수 초과에 해당되는 초과 수하물만 구매하실 수 있으며, 무게나 부피가 초과하는 수하물은 공항에서 구매 가능합니다.</li>
		                            </ul>
                                    <ul class="infor_list_sub">
                                        <li>
                                            <!-- 2017-06-05 수정 (S) -->
                                            <div class="tbl-data-col03 type-2 mgt20">
                                                <table>
                                                    <caption><!-- 개수 초과 요금 표 | 구간, 초과요금(KRW, USD)으로 구성되어있습니다. -->개수 초과 요금 표 | 구간, 초과요금(KRW, USD)으로 구성되어있습니다.</caption>
                                                    <colgroup>
                                                        <col style="">
                                                        <col span="2" style="width:20%">
                                                    </colgroup>
                                                    <thead>
                                                    <tr>
                                                        <th scope="col" rowspan="2"><!-- 구간 -->구간</th>
                                                        <th scope="colgroup" colspan="3"><!-- 초과요금 -->초과요금</th>
                                                    </tr>
                                                    <tr>
                                                        <th scope="col">KRW</th>
                                                        <th scope="col">USD</th>
                                                    </tr>
                                                    </thead>
                                                    <tbody>
                                                    <tr>
                                                        <td><!-- 일본, 중국 -->일본, 중국</td>
                                                        <td class="tr">50,000</td>
                                                        <td class="tr">50</td>
                                                    </tr>
                                                    <tr>
                                                        <td><!-- 홍콩 / 마카오 -->홍콩 / 마카오</td>
                                                        <td class="tr">60,000</td>
                                                        <td class="tr">60</td>
                                                    </tr>
                                                    <tr>
                                                        <td><!-- 동남아(씨엠립, 코타키나발루) -->동남아(씨엠립, 코타키나발루)</td>
                                                        <td class="tr">80,000</td>
                                                        <td class="tr">80</td>
                                                    </tr>
                                                    <tr>
                                                        <td><!-- 미주(괌) -->미주(괌)</td>
                                                        <td class="tr">50,000</td>
                                                        <td class="tr">50</td>
                                                    </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <ul class="uList01">
                                                <li><!-- 무료 수하물 1개를 추가 할 경우 개수 추가 시 1개(23kg 이내) 당 요금입니다. -->초과 수하물 구매 시 1개(15kg 이내) 당 요금입니다.</li>
                                                <li><!-- 미주 노선의 경우 초과 수하물 구매 시 1개(23kg 이내) 당 요금입니다. -->미주 노선의 경우 초과 수하물 구매 시 1개(23kg 이내) 당 요금입니다.</li>
                                                <li><!-- 미주 노선 무료 위탁수하물 허용량 수 : 1인 2개 -->미주 노선 무료 위탁수하물 허용량 수 : 1인 2개</li>
                                            </ul>
                                        </li>
                                        <li><!-- 가) 이용 방법 --><h3 class="tit-h3-1"> 이용 방법 </h3>
                                            <ul class="uList01">
                                                <li><!-- 홈페이지 및 모바일에서 항공권 예매 시 동시에 구매 가능합니다. -->홈페이지 및 모바일에서 항공권 예매 시 동시에 구매 가능합니다.</li>
                                                <li><!-- 홈페이지 및 모바일에서 항공권을 구매한 이후 초과 수하물만 추가로 구매 가능합니다. -->홈페이지 및 모바일에서 항공권을 구매한 이후 초과 수하물만 추가로 구매 가능합니다.</li>
                                            </ul>
                                        </li>
                                        <li><!-- 나) 이용 규정 --><h3 class="tit-h3-1">이용 규정</h3>
                                            <ul class="uList01">
                                                <li><!-- 항공편 출발 48시간 전까지 구매 가능합니다. -->항공편 출발 48시간 전까지 구매 가능합니다.</li>
                                                <li><!-- 여정 변경 시 구매한 초과 수하물은 자동 취소되며 초과 수하물 요금은 환불됩니다.여정 변경 완료 후 홈페이지 및 모바일을 통해 재 구매 가능합니다. -->여정 변경 시 구매한 초과 수하물은 자동 취소되며 초과 수하물 요금은 환불됩니다. 여정 변경 완료 후 홈페이지 및 모바일을 통해 재구매 가능합니다.<br><!-- 단, 출발 48시간 전부터 여정 변경 시 초과 수하물은 자동 취소만 되며 초과 수하물요금은 환불되지 않습니다. --></li>
                                                <li><!-- 여정 취소(환불)시 초과 수하물은 자동 취소되며 초과 수하물 요금은 환불됩니다. -->여정 취소(환불) 시 초과 수하물은 자동 취소되며 초과 수하물 요금은 환불됩니다. <br><!-- 단, 출발 48시간 전부터 여정 취소 시 초과 수하물 요금은 환불되지 않습니다. --></li>
                                                <li><!-- 타 항공사와 공동 운항편이나 제휴 항공사의 항공편은 사전 초과 수하물 구매가 불가합니다. -->타 항공사와 공동 운항편이나 제휴 항공사의 항공편은 사전 초과 수하물 구매가 불가합니다.</li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                            <h2 class="table-title-big mgt40"><!-- 개수 초과 요금 (7월 11일 이전 발권 규정) -->개수 초과 요금(7월 11일 이전 발권 규정) </h2>
                            <p class="mgt30">* <!-- 2017년 7월 11일 이전 발권 및 초과 위탁수하물 구매 승객 대상 초과 요금 안내 -->2017년 7월 11일 이전 발권 및 초과 위탁수하물 구매 승객 대상 초과 요금 안내</p>
                            <div class="tbl-data-col03 type-2 mgt20">
                                <table>
                                    <caption><!-- 개수 초과 요금 표 | 구간, 초과요금(KRW, USD)으로 구성되어있습니다. -->개수 초과 요금 표 | 구간, 초과요금(KRW, USD)으로 구성되어있습니다.</caption>
                                    <colgroup>
                                        <col style="">
                                        <col span="2" style="width:20%">
                                    </colgroup>
                                    <thead>
                                    <tr>
                                        <th scope="col" rowspan="2"><!-- 구간 -->구간</th>
                                        <th scope="colgroup" colspan="3"><!-- 초과요금 -->초과요금</th>
                                    </tr>
                                    <tr>
                                        <th scope="col">KRW</th>
                                        <th scope="col">USD</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td><!-- 일본(나가사키,다카마쓰,요나고,우베,히로시마) -->일본(나가사키, 다카마쓰, 요나고, 우베, 히로시마)</td>
                                        <td class="tr">60,000</td>
                                        <td class="tr">60</td>
                                    </tr>
                                    <tr>
                                        <td><!-- 일본(도야마,시즈오카) / 동남아(마카오) -->일본(도야마, 시즈오카) / 동남아(마카오)</td>
                                        <td class="tr">80,000</td>
                                        <td class="tr">80</td>
                                    </tr>
                                    <tr>
                                        <td><!-- 동남아(씨엠립, 코타키나발루) -->동남아(씨엠립, 코타키나발루)</td>
                                        <td class="tr">110,000</td>
                                        <td class="tr">110</td>
                                    </tr>
                                    
                                    </tbody>
                                </table>
                            </div>
                            <ul class="uList01">
                                <li><!-- 초과 수하물 구매 시 1개(23kg 이내) 당 요금입니다. -->초과 수하물 구매 시 1개(23kg 이내) 당 요금입니다.</li>
                                
                            </ul>
                        </div>
                        <!-- E : 20170605_NEW PAGE -->
                    </div>
                </div>
                <!-- //내용 -->
            </div>
        </div>
    </div>
	<p name="viewLayerLogin" href="I/KO/viewOneLogin" class="jsOpenLayer" style="display:none;"></p>




    <div id="ui-datepicker-div" class="ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all"></div>
