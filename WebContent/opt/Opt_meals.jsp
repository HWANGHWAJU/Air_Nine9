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
                                <li class="on"><a href="Opt_meals.bo"><!-- 사전 기내식 주문 -->사전 기내식 주문</a></li>
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
                    <li class="on"><!-- 사전 기내식 --><a href="Opt_meals.bo">사전 기내식 주문</a></li>
                    <li><a href="Opt_duty.bo"><!-- 기내 면세품 -->기내 면세품</a></li>
                    <li><a href="Opt_cafe.bo"><!-- Cafe Mint -->Café Mint</a></li>
                    <li><a href="Opt_packaging.bo"><!-- 유료 포장 아이템 -->공항 포장용품 </a></li>
                </ul>
                <!-- 내용 -->
                <div class="area-service">
                    <div class="box-info type-meals">
                        <p>사전 기내식 주문으로 에어서울 기내에서 여유로운 식사를  즐기시기 바랍니다.</p>
                    </div>
                    <h2 class="table-title-big mgt50"><!-- 기내식 메뉴 안내 -->기내식 메뉴 안내 </h2>
                    <div class="area-meals clear_fix">
                        <div class="box-meals">
                            <h3><!-- 제목 -->건강 도시락</h3>
                            <p class="img_meals"><img src="images/service/img_meals_1.jpg" alt=""></p>
                            <p class="tit-info"><!-- 타이틀[건강도시락] --> 신선한 샐러드와 계절과일</p>
                            <p class="txt-info type-1"><!-- 가격 --><strong> KRW 12,000 / JPY 1,200</strong></p>
                            <h4><!-- 주문노선-->주문 노선</h4>
                            <p class="txt-info type-2"> 한국 ↔ 일본 노선 왕복 구간<br>한국 → 동남아 노선 편도 구간<br>인천 → 괌 편도 구간</p>
                        </div>
                        <div class="box-meals">
                            <h3><!-- 제목 -->일식도시락</h3>
                            <p class="img_meals"><img src="images/service/img_meals_2.jpg" alt=""></p>
                            <p class="tit-info"><!-- 타이틀 -->다양한 초밥에 생선찜을<br>곁들인 일식도시락 </p>
                            <p class="txt-info type-1"><!-- 가격 --><strong> KRW 15,000 / JPY 1,500</strong></p>
                            <h4><!-- 주문노선-->주문 노선</h4>
                            <p class="txt-info type-2">한국 ↔ 일본 노선 왕복 구간<br>한국 → 동남아 노선 편도 구간<br>인천 → 괌 편도 구간</p>
                        </div> 
                       <div class="box-meals">
                            <h3><!-- 제목 -->단호박 클럽 샌드위치</h3>
                            <p class="img_meals"><img src="images/service/img_meals_3.jpg" alt=""></p>
                            <p class="tit-info"><!-- 타이틀 -->단호박, 닭고기, 피클로 속을<br>채운 샌드위치 </p>
                            <p class="txt-info type-1"><strong> KRW 9,000 / JPY 900</strong></p>
                            <h4><!-- 주문노선-->주문 노선</h4>
                            <p class="txt-info type-2">한국 ↔ 일본 노선 왕복 구간<br>한국 → 동남아 노선 편도 구간<br>인천 → 괌 편도 구간</p>
                        </div>
                        <div class="box-meals">
                            <h3><!-- 제목 -->베이글 샌드위치</h3>
                            <p class="img_meals"><img src="images/service/img_meals_4.jpg" alt=""></p>
                            <p class="tit-info"><!-- 타이틀 -->크림치즈에 햄, 토마토, 로켓을<br>채운베이글 샌드위치 </p>
                            <p class="txt-info type-1"><strong> KRW 15,000 / JPY 1,500</strong></p>
                            <h4><!-- 주문노선-->주문 노선</h4>
                            <p class="txt-info type-2">한국 ↔ 일본 노선 왕복 구간<br>한국 → 동남아 노선 편도 구간<br>인천 → 괌 편도 구간</p>
                        </div>
                        <!-- S : 비비밥 -->
                       <div class="box-meals">
                            <h3><!-- 제목 -->불고기</h3>
                            <p class="img_meals"><img src="images/service/img_meals_5.jpg" alt=""></p>
                            <p class="tit-info"><!-- 타이틀 -->부드러운 소불고기와 밥 </p>
                            <p class="txt-info type-1"><!-- 가격 --><strong> KRW 12,000 / JPY 1,200</strong></p>
                            <h4><!-- 주문노선-->주문 노선</h4>
                            <p class="txt-info type-2">한국 ↔ 동남아 왕복 구간<br>인천 → 괌 편도 구간</p>
                        </div>
                        <!-- E : 비비밥 -->
                        <div class="box-meals">
                            <h3><!-- 제목 -->불갈비</h3>
                            <p class="img_meals"><img src="images/service/img_meals_6.jpg" alt=""></p>
                            <p class="tit-info"><!-- 타이틀 -->쫀득한 소갈비와 밥 </p>
                            <p class="txt-info type-1"><!-- 가격 --><strong> KRW 15,000 / JPY 1,500</strong></p>
                            <h4><!-- 주문노선-->주문 노선</h4>
                            <p class="txt-info type-2">한국 ↔ 동남아 왕복 구간<br>인천 → 괌 편도 구간</p>
                        </div>
                        <div class="box-meals">
                            <h3><!-- 제목 -->비빔밥</h3>
                            <p class="img_meals"><img src="images/service/img_meals_7.jpg" alt=""></p>
                            <p class="tit-info"><!-- 타이틀 -->신선한 나물과 소고기를<br>밥과 함께 비벼 드세요 </p>
                            <p class="txt-info type-1"><!-- 가격 --><strong> KRW 15,000 / JPY 1,500</strong></p>
                            <h4><!-- 주문노선-->주문 노선</h4>
                            <p class="txt-info type-2">한국 → 동남아 노선 편도 구간<br>韓國→關島單程區間</p>
                        </div>
                        <div class="box-meals">
                            <h3><!-- 제목 -->보양 닭찜</h3>
                            <p class="img_meals"><img src="images/service/img_meals_8.jpg" alt=""></p>
                            <p class="tit-info"><!-- 타이틀 -->영양 가득한 닭고기찜과 밥</p>
                            <p class="txt-info type-1"><!-- 가격 --><strong> KRW 12,000 / JPY 1,200</strong></p>
                            <h4><!-- 주문노선-->주문 노선</h4>
                            <p class="txt-info type-2">한국 ↔ 동남아 왕복 구간<br>인천 → 괌 편도 구간</p>
                        </div>
                        <div class="box-meals">
                            <h3><!-- 제목 -->안심 스테이크</h3>
                            <p class="img_meals"><img src="images/service/img_meals_9.jpg" alt=""></p>
                            <p class="tit-info"><!-- 타이틀 -->홀스래디쉬 소스를 곁들인<br>쇠고기 안심 스테이크</p>
                            <p class="txt-info type-1"><!-- 가격 --><strong> KRW 15,000 / JPY 1,500</strong></p>
                            <h4><!-- 주문노선-->주문 노선</h4>
                            <p class="txt-info type-2">한국 ↔ 동남아 왕복 구간<br>인천 → 괌 편도 구간</p>
                        </div>
                        <div class="box-meals">
                            <h3><!-- 제목 -->피시 앤 칩스</h3>
                            <p class="img_meals"><img src="images/service/img_meals_10.jpg" alt=""></p>
                            <p class="tit-info"><!-- 타이틀 -->고소한 흰살 생선 튀김과<br>프렌치 프라이</p>
                            <p class="txt-info type-1"><!-- 가격 --><strong> KRW 12,000 / JPY 1,200</strong></p>
                            <h4><!-- 주문노선-->주문 노선</h4>
                            <p class="txt-info type-2">한국 ↔ 동남아 왕복 구간<br>인천 → 괌 편도 구간</p>
                        </div>
                        <div class="box-meals">
                            <h3><!-- 제목 -->해산물 모듬</h3>
                            <p class="img_meals"><img src="images/service/img_meals_11.jpg" alt=""></p>
                            <p class="tit-info"><!-- 타이틀 -->새우, 오징어 등 각종 해산물 요리</p>
                            <p class="txt-info type-1"><!-- 가격 --><strong> KRW 15,000 / JPY 1,500</strong></p>
                            <h4><!-- 주문노선-->주문 노선</h4>
                            <p class="txt-info type-2">한국 ↔ 동남아 왕복 구간<br>인천 → 괌 편도 구간</p>
                        </div>
                        <div class="box-meals">
                            <h3><!-- 제목 -->함박스테이크</h3>
                            <p class="img_meals"><img src="images/service/img_meals_12.jpg" alt=""></p>
                            <p class="tit-info"><!-- 타이틀 -->함박스테이크와 감자가 어우러진<br>어린이 메뉴</p>
                            <p class="txt-info type-1"><!-- 가격 --><strong> KRW 10,000 / JPY 1,000</strong></p>
                            <h4><!-- 주문노선-->주문 노선</h4>
                            <p class="txt-info type-2">한국 ↔ 동남아 왕복 구간<br>인천 → 괌 편도 구간</p>
                        </div>
                        <div class="box-meals">
                            <h3><!-- 제목 -->스파게티</h3>
                            <p class="img_meals"><img src="images/service/img_meals_13.jpg" alt=""></p>
                            <p class="tit-info"><!-- 타이틀 -->어린이를 위한 볼로네즈 스파게티</p>
                            <p class="txt-info type-1"><!-- 가격 --><strong> KRW 10,000 / JPY 1,000</strong></p>
                            <h4><!-- 주문노선-->주문 노선</h4>
                            <p class="txt-info type-2">한국 ↔ 동남아 왕복 구간<br>인천 → 괌 편도 구간</p>
                        </div>
                    </div>
                    <h2 class="table-title-big mgt50"><!-- 이용 방법 -->이용 방법</h2>
                    <div class="tbl-data-col03 type-1 mgt20">
                        <table>
                            <caption>이용 방법</caption>
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
                                            <li>홈페이지 및 모바일에서 항공권 구매 이후 사전 기내식만 추가로 구매 가능합니다.</li>
                                        </ul>
                                    </td>
                                    <td>
                                        <ul class="uList01">
                                            <li>예약센터에서 항공권 예매 시 동시에 구매 가능합니다.</li>
                                            <li>예약센터에서 항공권을 구매한 이후 사전 기내식만 추가로 구매 가능합니다.</li>
                                        </ul>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <ul class="uList01">
                        <li><!-- 괌 출발 항공편의 사전 기내식 판매는 8월 중 안내 예정입니다. -->현재 괌 출발 항공편의 사전 기내식 판매는&nbsp;8월 중&nbsp;안내 예정입니다.</li>
                    </ul>
                    <h2 class="table-title-big mgt50"><!-- 이용 규정 -->이용 규정</h2>
                    <ul class="uList01">
                        <li><!-- 항공편 출발 48시간 전까지 구매 가능합니다. -->항공편 출발 48시간 전까지 구매 가능합니다.</li>
                        <li><!-- 여정 변경 시 구매한 기내식은 자동 취소되며, 기내식 운임은 환불됩니다. 여정 변경 완료 후 홈페이지 및 모바일을 통해 재 구매 가능합니다. -->여정 변경 시 구매한 기내식은 자동 취소되며, 기내식 운임은 환불됩니다. 여정 변경 완료 후 홈페이지 및 모바일을 통해 재구매 가능합니다.</li>
                        <li><!-- 단, 출발 3일 전부터 여정 변경 시 기내식은 자동 취소만 되며 기내식 운임은 환불되지 않습니다. -->단, 출발 48시간 전부터 여정 변경 시 기내식은 자동 취소만 되며 기내식 운임은 환불되지 않습니다. </li>
                        <li><!-- 여정 취소(환불) 시 기내식은 자동 취소되며, 기내식 운임은 환불됩니다. 단, 출발 3일 전부터 여정 취소 시 기내식 운임은 환불되지 않습니다. -->여정 취소(환불) 시 기내식은 자동 취소되며, 기내식 운임은 환불됩니다. 단, 출발 48시간 전부터 여정 취소 시 기내식 운임은 환불되지 않습니다.</li>
                        <li><!-- 타 항공사와 공동 운항편이나 제휴 항공사의 항공편은 기내식은 구매가 불가합니다. -->타 항공사와 공동 운항편이나 제휴 항공사의 항공편은 기내식 구매가 불가합니다.</li>
                        <li><!-- 이미지는 제공되는 제품과 차이가 있을 수 있으니 양해해 주시기 바랍니다. -->이미지는 제공되는 제품과 차이가 있을 수 있으니 양해해 주시기 바랍니다.</li>
                    </ul>
                    <h2 class="table-title-big mgt50"><!-- 주의 사항 -->주의 사항</h2>
                    <ul class="uList01"> 
                        <li><!-- 모든 메뉴에는 견과류, 글로텐, 달걀 또는 유제품이 포함될 수 있습니다. -->모든 메뉴에는 견과류, 글루텐, 달걀 또는 유제품이 포함될 수 있습니다.</li>
                        <li><!-- 특정 식품에 대한 알레르기 또는 유사 증상이 있는 손님께서는 주문 전 반드시 상기 메뉴를 확인하여 주시기 바랍니다. -->특정 식품에 대한 알레르기 또는 유사 증상이 있는 손님께서는 주문 전 반드시 상기 메뉴를 확인하여 주시기 바랍니다.</li>
                        <li><!-- 땅콩 알레르기 및 유사 증상이 있는 손님 안내 : 에어서울 기내에서는 땅콩 성분이 함유된 제품을 제공할 수 있고, 기내식에 직접적인 땅콩 사용 을 하지 않더라도 조리 과정 상 성분이 포함되었을 수 있으며, 다른 손님의 땅콩 소지 및 취식을 제한할 수 없습니다. 해당 손님께서는 여행 전 의사와 여행 계획에 대해 상의해 주시기 바랍니다. -->땅콩 알레르기 및 유사 증상이 있는 손님 안내 : 에어서울 기내에서는 땅콩 성분이 함유된 제품을 제공할 수 있고, 기내식에 직접적인 땅콩 사용을 하지 않더라도 조리 과정상 성분이 포함되었을 수 있으며, 다른 손님의 땅콩 소지 및 취식을 제한할 수 없습니다.  해당 손님께서는 여행 전 의사와 여행 계획에 대해 상의해 주시기 바랍니다.</li>
                        <li><!-- Café Mint 에서 간단한 음료, 간식 등을 구매하실 수 있습니다. -->Café Mint에서 간단한 음료, 간식 등을 구매하실 수 있습니다.</li>
                    </ul>
                </div>
                <!-- //내용 -->
            </div>
        </div>
    </div>
	<p name="viewLayerLogin" href="I/KO/viewOneLogin" class="jsOpenLayer" style="display:none;"></p>



    <div id="ui-datepicker-div" class="ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all"></div>
