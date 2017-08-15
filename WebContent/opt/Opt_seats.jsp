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
                    <li><a href="/CW/ko/main.do"><!-- 홈 -->홈</a></li>
                    <li><a href="/CW/ko/booking_reservation.do"><!-- 서비스 -->서비스 안내</a></li>
                    <li><a href="/CW/ko/advance_seat_selection.do"><!-- 부가 서비스 -->부가 서비스 구매</a>
                        <div class="btn_lnb"><a href="#none"><!-- 서비스 안내 하위메뉴 -->서비스 안내 하위메뉴</a><span class="hidden-title">열기</span></div>
                        <div class="lnb_area" style="display: none;">
                            <ul class="location_lnb">
                                <li><a href="/CW/ko/booking_reservation.do"><!-- 항공권 안내 -->항공권 안내</a></li>
                                <li class="on"><a href="/CW/ko/advance_seat_selection.do"><!-- 부가 서비스 -->부가 서비스 구매</a></li>
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
                   <li class="on"><a href="Opt_advance.bo"><!-- 사전 좌석 구매 -->사전 좌석 구매</a></li>
                    <li><a href="Opt_overbaggage.bo"><!-- 사전 초과 수하물 구매 --> 사전 초과 수하물 구매</a></li>
                    <li><!-- 사전 기내식 --><a href="Opt_meals.bo">사전 기내식 주문</a></li>
                    <li><a href="Opt_duty.bo"><!-- 기내 면세품 -->기내 면세품</a></li>
                    <li><a href="Opt_cafe.bo"><!-- Cafe Mint -->Café Mint</a></li>
                    <li><a href="Opt_packaging.bo"><!-- 유료 포장 아이템 -->공항 포장용품 </a></li>
                            </ul>
                        </div>
                    </li>
                </ol>
            </div>
            <!-- content_inner -->
            <div class="content_inner">
                
                <h1 class="pagetitle">부가 서비스 구매</h1>
                <ul class="list-tab type-1">
                      <li class="on"><a href="Opt_advance.bo"><!-- 사전 좌석 구매 -->사전 좌석 구매</a></li>
                    <li><a href="Opt_overbaggage.bo"><!-- 사전 초과 수하물 구매 --> 사전 초과 수하물 구매</a></li>
                    <li><!-- 사전 기내식 --><a href="Opt_meals.bo">사전 기내식 주문</a></li>
                    <li><a href="Opt_duty.bo"><!-- 기내 면세품 -->기내 면세품</a></li>
                    <li><a href="Opt_cafe.bo"><!-- Cafe Mint -->Café Mint</a></li>
                    <li><a href="Opt_packaging.bo"><!-- 유료 포장 아이템 -->공항 포장용품 </a></li>
                </ul>
                <!-- 내용 -->
                <div class="area-service">
                    <div class="box-info type-reservation">
                    
                   
                        <p>선호하는 좌석을 미리 선택하고 항공권과 함께 구매할 수 있습니다.<span class="pink"><br>(앞 좌석/비상구 좌석 구매 시 Priority Tag 증정! ※ 2017.05.01.부)</span></p>
                    </div>
                    <h2 class="table-title-big mgt50"><!-- 좌석 구분 및 등급 -->좌석 구분 및 등급</h2>
                    <div class="tbl-data-col03 type-1 mgt20">
                        <table>
                            <caption><!-- 좌석 구분 및 등급 | 구분,프리미엄 좌석, 앞좌석, 비상구 좌석, 일반 좌석으로 구성되어있습니다. --> 좌석 구분 및 등급 | 구분, 프리미엄 좌석, 앞좌석, 비상구 좌석, 일반 좌석으로 구성되어있습니다. </caption>
                            <colgroup>
                                <col style="width:15%">
                                <col span="3">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th scope="col"><!-- 구분 -->구분</th>
                                    <th scope="col"><!-- 프리미엄 좌석 -->프리미엄 좌석</th>
                                    <th scope="col"><!-- 앞좌석, 비상구 좌석 -->앞좌석, 비상구 좌석</th>
                                    <th scope="col"><!-- 일반 좌석 -->일반 좌석</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><!-- 일본 노선 -->195석 기준</td>
                                    <td>
                                        <p><!-- X -->X</p>
                                    </td>
                                    <td>
                                        <p><!-- 1열, 10열, 22열, 23F (23D,E 제외) -->1열, 10열, 22열, 23F</p>
                                    </td>
                                    <td>
                                        <p><!-- 앞좌석, 비상구 외 모든 좌석 (23D,E 포함) -->앞좌석, 비상구 외 모든 좌석</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td><!-- 171석 기준 -->171석 기준</td>
                                    <td>
                                        <p><!-- 1열, 2열, 3열 -->1열, 2열, 3열</p>
                                    </td>
                                    <td>
                                        <p><!-- 10열, 15열, 26열 (26K 제외) -->10열, 15열, 26열, 27K</p>
                                    </td>
                                    <td>
                                        <p><!-- 앞좌석, 비상구 외 모든 좌석 -->앞좌석, 비상구 외 모든 좌석</p>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <ul class="uList01">
                        <li><!-- 프리미엄 좌석은 171석 항공기에만 해당되는 좌석간격 39~40inch, 좌석넓이 22inch의 비즈니스 좌석입니다. (운항일자 : 2017년 7월 11일~ 7월 30일) -->프리미엄 좌석은 171석 항공기에만 해당되는 좌석간격 39~40inch, 좌석넓이 22inch의 비즈니스 좌석입니다. (운항일자 : 2017년 7월 11일~ 7월 30일)</li>
                    </ul>
                    <h2 class="table-title-big mgt50"><!-- 좌석 가격 -->좌석 가격 </h2>
                    <div class="tbl-data-col03 type-1 mgt20">
                        <table>
                            <caption>프리미엄 좌석(KRW, JPY, USD), 앞좌석(KRW, JPY, USD), 일반 좌석(KRW, JPY, USD), 일본 노선, 동남아 노선으로 구성된 좌석 가격표입니다.</caption><!-- 프리미엄좌석(KRW, JPY, USD), 앞좌석(KRW, JPY, USD), 일반 좌석(KRW, JPY, USD), 일본 노선, 동남아 노선으로 구성된 좌석 가격표입니다. -->
                            <colgroup>
                                <col>
                                <col span="9" style="width:9%">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th scope="col" rowspan="2"><!-- 구분 -->구분</th>
                                    <th scope="col" colspan="3"><!-- 프리미엄좌석 -->프리미엄 좌석</th>
                                    <th scope="col" colspan="3"><!-- 앞 좌석 -->앞 좌석</th>
                                    <th scope="col" colspan="3"><!-- 일반 좌석 -->일반 좌석</th>
                                </tr>
                                <tr>
                                    <th scope="col">KRW</th>
                                    <th scope="col">JPY</th>
                                    <th scope="col">USD</th>
                                    <th scope="col">KRW</th>
                                    <th scope="col">JPY</th>
                                    <th scope="col">USD</th>
                                    <th scope="col">KRW</th>
                                    <th scope="col">JPY</th>
                                    <th scope="col">USD</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th scope="row"><!-- 일본 노선 -->일본 노선</th>
                                    <td class="tbl-price">50,000</td>
                                    <td class="tbl-price">5,000</td>
                                    <td class="tbl-price">50</td>
                                    <td class="tbl-price">15,000</td>
                                    <td class="tbl-price">1,500</td>
                                    <td class="tbl-price">15</td>
                                    <td class="tbl-price">5,000</td>
                                    <td class="tbl-price">500</td>
                                    <td class="tbl-price">5</td>
                                </tr>
                                <tr>
                                    <th scope="row"><!-- 동남아 노선 -->동남아 노선</th>
                                    <td class="tbl-price">50,000</td>
                                    <td class="tbl-price">5,000</td>
                                    <td class="tbl-price">50</td>
                                    <td class="tbl-price">30,000</td>
                                    <td class="tbl-price">3,000</td>
                                    <td class="tbl-price">30</td>
                                    <td class="tbl-price">15,000</td>
                                    <td class="tbl-price">1,500</td>
                                    <td class="tbl-price">15</td>
                                </tr>
                                <tr>
                                    <th scope="row"><!-- 미주 노선 -->미주 노선</th>
                                    <td class="tbl-price">-</td>
                                    <td class="tbl-price">-</td>
                                    <td class="tbl-price">-</td>
                                    <td class="tbl-price">30,000</td>
                                    <td class="tbl-price">3,000</td>
                                    <td class="tbl-price">30</td>
                                    <td class="tbl-price">15,000</td>
                                    <td class="tbl-price">1,500</td>
                                    <td class="tbl-price">15</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <ul class="uList01">
                        <li><!-- 모든 통화는 출발지 현지 통화를 기준으로 적용하며, 동남아 출발은 USD로 구매 가능합니다. -->모든 통화는 출발지 현지 통화를 기준으로 적용하며, 동남아 출발은 USD로 구매 가능합니다.</li>
                        <li><!-- 공항에서 체크인 시 앞 좌석은 동일한 요금이 적용되며, 일반 좌석은 무료로 가능하나 선호 좌석 배정이 불가하며, 선착순으로 배정됩니다. -->공항에서 체크인 시 앞 좌석은 동일한 요금이 적용되며, 일반 좌석은 무료로 가능하나 선호 좌석 배정이 불가하며, 선착순으로 배정됩니다.</li>
                        <li><!-- 일본발 프리미엄 좌석은 정부 인가 조건부 구매 가능합니다. -->일본발 프리미엄 좌석은 정부 인가 조건부 구매 가능합니다.</li>
                    </ul>
                    <h2 class="table-title-big mgt50"><!-- A321-200 좌석 배치도 (195석) -->A321-200 좌석 배치도(195석)</h2>
                    <p class="mgt25"><img src="images/service/img_advance_seat_ko.jpg" alt="A321-200 좌석 배치도(195석) | 1열 앞자리 출입구와 화장실, 10열 앞자리 비상구, 22열 앞자리 비상구 와 화장실, 34열 뒷자리 비상구 와 화장실로 이루어져 있습니다."></p>
                    <h2 class="table-title-big mgt50"><!-- A321-200 좌석 배치도 (171석) -->A321-200 좌석 배치도(171석)</h2>
                    <p class="mgt25"><img src="images/service/img_primeum_seat_ko.jpg" alt="A321-200 좌석 배치도(171석) | 1열 앞자리 출입구와 화장실, 10열 / 15열 / 26열 앞자리 비상구, 37열 뒷자리 비상구 와 화장실로 이루어져 있습니다."></p>
                    <h2 class="table-title-big mgt50"><!-- 이용 방법 -->이용 방법</h2>
                    <div class="tbl-data-col03 type-1 mgt20">
                        <table>
                            <caption>이용방법으로 홈페이지 및 모바일, 예약센터로 구성되어 있습니다.ㅣ</caption>
                            <colgroup>
                                <col style="width:50%">
                                <col>
                            </colgroup>
                            <thead>
                                <tr>
                                    <th scope="col"><!-- 홈페이지 및 모바일 -->홈페이지 및 모바일</th>
                                    <th scope="col"><!-- 예약 센터 -->예약센터</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <ul class="uList01">
                                            <li>홈페이지 및 모바일에서 항공권 예매 시 동시에 구매 가능합니다.</li>
                                            <li>홈페이지 및 모바일에서 항공권 구매 이후 사전 좌석만 추가로 구매 가능합니다.</li>
                                        </ul>
                                    </td>
                                    <td>
                                        <ul class="uList01">
                                            <li>예약센터에서 항공권 예매 시 동시에 구매 가능합니다.</li>
                                            <li>예약센터에서 항공권을 구매한 이후 사전 좌석만 추가로 구매 가능합니다.</li>
                                        </ul>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <h2 class="table-title-big mgt50"><!-- 이용 규정 -->이용 규정</h2>
                    <ul class="uList01">
                        <li><!-- 항공편 출발 48시간 전까지 구매 가능합니다. -->항공편 출발 48시간 전까지 구매 가능합니다.</li>
                        <li><!-- 여정 변경 시 구매한 좌석은 자동 취소되며 좌석 운임은 환불됩니다. -->여정 변경 시 구매한 좌석은 자동 취소되며 좌석 운임은 환불됩니다.</li>
                        <li>
                            <p><!-- 여정 변경 완료 후 홈페이지 및 모바일을 통해 재 구매 가능합니다. -->여정 변경 완료 후 홈페이지 및 모바일을 통해 재구매 가능합니다.</p>
                            <p><!-- 단, 출발 3일 전부터 여정 변경 시 좌석은 자동 취소만 되며 좌석 운임은 환불되지 않습니다. -->단, 출발 48시간 전부터 여정 변경 시 좌석은 자동 취소만 되며 좌석 운임은 환불되지 않습니다.</p>
                        </li>
                        <li><!-- 여정 취소(환불) 시 좌석은 자동 취소되며 좌석 운임은 환불됩니다. 단, 출발 3일 전부터 여정 취소 시 좌석 운임은 환불되지 않습니다. -->여정 취소(환불) 시 좌석은 자동 취소되며 좌석 운임은 환불됩니다. 단, 출발 48시간 전부터 여정 취소 시 좌석 운임은 환불되지 않습니다. </li>
                        <li><!-- 타 항공사와 공동 운항편이나 제휴 항공사의 항공편은 사전 좌석 구매가 불가합니다. -->타 항공사와 공동 운항편이나 제휴 항공사의 항공편은 사전 좌석 구매가 불가합니다. </li>
                        <li><!-- 여행사를 통해 항공권을 구매하신 경우 출발 당일 공항에서만 좌석 배정이 가능합니다. -->여행사를 통해 항공권을 구매하신 경우 출발 당일 공항에서만 좌석 배정이 가능합니다.</li>
                    </ul>
                </div>
                <!-- //내용 -->
            </div>
        </div>
    </div>
	<p name="viewLayerLogin" href="I/KO/viewOneLogin" class="jsOpenLayer" style="display:none;"></p>
