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
                                <li class="on"><a href="Opt_advance_seats.bo"><!-- 사전 좌석 구매 -->사전 좌석 구매</a></li>
                                <li><a href="Opt_overbaggage.bo"><!-- 사전 초과 수하물 구매 -->사전 초과 수하물 구매</a></li>
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
                    <li><a href="Opt_overbaggage.bo"><!-- 사전 초과 수하물 구매 --> 사전 초과 수하물 구매</a></li>
                    <li><!-- 사전 기내식 --><a href="Opt_meals.bo">사전 기내식 주문</a></li>
                    <li class="on"><a href="Opt_duty.bo"><!-- 기내 면세품 -->기내 면세품</a></li>
                    <li><a href="Opt_cafe.bo"><!-- Cafe Mint -->Café Mint</a></li>
                    <li><a href="Opt_packaging.bo"><!-- 유료 포장 아이템 -->공항 포장용품 </a></li>
                </ul>
                <!-- 내용 -->
                <div class="area-service">
                    <div class="box-info type-dutyfree">
                        <p>에어서울의 기내에서 합리적인 가격으로 화장품, 주류 등 면세품을 구매하실 수 있습니다.</p>
                    </div>
                    <h2 class="table-title-big mgt50"><!-- 기내면세품 결제 -->기내면세품 결제</h2>
                    <ul class="uList01">
                        <li> 현금 및 신용카드를 이용해 지불하실 수 있으며 국내에서 발행된 카드에 한해 5만원 이상 원화 결제 시 할부판매(2개월~12개월)가 가능합니다. </li>
                        <li> 신용카드로 및 여행자 수표를 사용하시는 분은 반드시 신분증을 제시하여 주시기 바랍니다. (타인 명의의 카드결제는 불가합니다) &nbsp;</li>
                        <li> 미화 800불, 그에 상당하는 원화 금액 한도 내에서 구입 가능하며, 국내 일반 카드는 원화로만 수수 가능합니다. * 현금 영수증 발급이 불가함을 양지하시기 바랍니다. (법인세법 시행 규칙 제79조 2항)  </li>
                        <li>이용 가능한 화폐 및 여행자 수표는 USD, KRW, JPY, CNY 입니다.</li>
                        <li>사전거래승인이 필요한 비자 일렉트론 카드(VISA ELECTRON CARD), 이지카드(EASY CARD), 체크카드(CHK CARD), 직불카드(DEBIT CARD), 체크 플러스 카드(CHK PLUS CARD),<br>기프트 카드(GIFT CARD)는 기내 수수가 불가함을 양지하시기 바랍니다. (체크카드 겸용 신용카드도 사용 불가합니다) </li>
                    </ul>
                    <h2 class="table-title-big mgt50">여행자 휴대품 면세 통관 범위 안내</h2>
                    <p class="txt-info-1">여행자 휴대품 면세 통관 범위는 해외에서 취득한 물품 포함 USD 600입니다. 단, 주류 1병(USD 400 이하 1L), 담배 200개비, 향수 60ml 이하는 USD 600에 포함되지 않습니다.</p>
                    <p class="btn-cafe-mint mgt20 tr"><a href="/CW/public/file/dutyfree.pdf" class="btn-type02-col02" target="_blank" style="background-color:#e11b72 !important;color:#fff;font-weight:bold;" title="">기내 면세품 자세히 보기</a></p>
                </div>
                <!-- //내용 -->
            </div>
        </div>
    </div>
	<p name="viewLayerLogin" href="I/KO/viewOneLogin" class="jsOpenLayer" style="display:none;"></p>




    <div id="ui-datepicker-div" class="ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all"></div>
