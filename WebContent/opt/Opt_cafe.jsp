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
                                <li><a href="Opt_advance_seats.bo"><!-- 사전 좌석 구매 -->사전 좌석 구매</a></li>
                                <li><a href="Opt_overbaggage.bo"><!-- 사전 초과 수하물 구매 -->사전 초과 수하물 구매</a></li>
                                <li><a href="Opt_meals.bo"><!-- 사전 기내식 주문 -->사전 기내식 주문</a></li>
                                <li><a href="Opt_duty.bo"><!-- 기내 면세품 -->기내 면세품</a></li>
                                <li class="on"><a href="Opt_cafe.bo">Cafeé Mint</a></li>
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
                    <li><a href="Opt_duty.bo"><!-- 기내 면세품 -->기내 면세품</a></li>
                    <li class="on"><a href="Opt_cafe.bo"><!-- Cafe Mint -->Café Mint</a></li>
                    <li><a href="Opt_packaging.bo"><!-- 유료 포장 아이템 -->공항 포장용품 </a></li>
                </ul>
                <!-- 내용 -->
                <div class="area-service">
                    <div class="box-info type-cafe-mint">
                        <p>에어서울 Café Mint에서는 기내에서 드실 수 있는 음료와 스낵, 다용도로 사용할 수 있는 쿠션 담요 등 기념품을 판매하고 있으니 편리하게 이용하시기 바랍니다.</p>
                    </div>
                    <h2 class="table-title-big mgt50"><!-- 이용 안내 -->이용 안내</h2>
                    <ul class="uList01">
                        <li>Café Mint 메뉴는 현금(W, $, Y, 元) 및 신용카드로 결제 가능합니다. (직불카드, 체크카드, 기프트 카드 등 제외)</li>
                        <li>현금결제는 단일 화폐로만 결제 가능하며 엔화는 100엔 이상의 동전만 사용 가능합니다.</li>
                        <li>일부 단거리 노선에서는 판매하는 상품 종류가 제한될 수 있습니다.</li>
                        <li>상품 이미지는 제공되는 것과 다를 수 있으며, 조기 품절될 수 있습니다. </li>
                        <li><!-- 20160920 추가 -->음료 주문 시 얼음을 요청하시면 제공해 드리나, 3시간 이상의 비행 구간 해외 출발 편에서는 제공되지 않으며,  기내 사정으로 품절될 수 있습니다. </li>
                        <li>개봉하신 제품은 반품이 안됩니다.</li>
                    </ul>
                    <h2 class="table-title-big mgt50"><!-- 주의 사항 -->주의사항</h2>
                    <ul class="uList01">
                        <li><!-- 20160920 추가 -->특정 식품에 대한 알레르기 또는 유사 증상이 있는 손님께서는  사전에  상품을  확인하여 주시기 바랍니다.</li>
                        <li><!-- 20160920 추가 -->땅콩 알레르기 및 유사 증상이 있는 손님 안내 : 에어서울 기내에서는 땅콩 성분이 함유된 제품을 제공할 수 있고, 다른 손님의 땅콩 소지 및 취식을 제한할 수 없습니다.  해당 손님께서는 여행 전 의사와 여행 계획에 대해 상의해 주시기 바랍니다. </li>
                    </ul>
                    <p class="btn-cafe-mint mgt20 tr"><a href="/CW/public/file/cafe-mint.pdf" class="btn-type02-col02" target="_blank" style="background-color:#e11b72 !important;color:#fff;font-weight:bold;" title="">Café Mint 메뉴 자세히 보기</a></p>
                </div>
                <!-- //내용 -->
            </div>
        </div>
    </div>
	<p name="viewLayerLogin" href="I/KO/viewOneLogin" class="jsOpenLayer" style="display:none;"></p>



    <div id="ui-datepicker-div" class="ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all"></div>
