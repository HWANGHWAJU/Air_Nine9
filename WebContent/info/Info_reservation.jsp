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
			</div><!-- location -->
<div class="content_inner">
                <h1 class="pagetitle">항공권 안내</h1>
                <div class="">
                    
<ul class="list-tab type-1">
    <li class="on">
        <div class="tab_area">
            <h2 class="tab_title"><a href="Info_reservation.bo"><!-- 항공권 예매 -->항공권 예매</a></h2>
        </div>
    </li>
    <li>
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
                        <!-- 항공권 예매-->
                        <div class="area-ticket">
                            <div class="box-info type-reservation">
                                <p>에어서울 홈페이지 및 모바일, 예약센터, 여행사를 통해 항공권 구매가 가능합니다.</p>
                            </div>
                            <h2 class="table-title-big mgt50">전자항공권(e-Ticket) 안내</h2>
                            <ul class="uList01">
                                <li>에어서울 홈페이지 및 모바일, 예약센터를 통해 항공권 구매 시 개인 이메일로 전자항공권(e-Ticket)을 발송해 드립니다. (예약센터로 신청 시 FAX도 가능)</li>
                                <li>전자항공권을 미리 인쇄하신 후, 탑승 수속 시 제출하시면 빠르고 간편하게 좌석 배정 및 탑승권(보딩패스)을 받으실 수 있습니다.</li>
                                <li>출/도착지 국가의 규정에 따라 출입국 신고와 세관 통과 시 제시를 요구하는 경우가 있으므로, 반드시 모든 여정을 마치실 때까지 전자항공권(e-Ticket)을 소지하셔야 합니다.</li>
                            </ul>
                            <h2 class="table-title-big mgt50">에어서울 예약센터</h2>
                            <div class="check-area">
                                <ul class="list-info">
                                    <li>
                                        <p class="tit"><!-- 전화번호 -->전화번호</p>
                                        <p class="txt">1800-8100(해외에서 이용 시 +82-1800-8100)</p>
                                    </li>
                                    <li>
                                        <p class="tit"><!-- 운영시간 -->운영시간</p>
                                        <p class="txt"><!-- 매일 08:00~20:00 -->매일 08:00~20:00</p>
                                    </li>
                                </ul>
                            </div>
                            <h2 class="table-title-big mgt50"><!-- 인터넷 예매 -->인터넷 예매</h2>
                            <p class="txt-info-1">에어서울 홈페이지와 모바일을 통해 항공권 구매가 가능합니다.</p>
                            <h3 class="tit-h3-1">국내, 해외 발행 카드 안내 </h3>
                            <div class="tbl-data-col02">
                                <table>
                                    <caption>국내, 해외 발행 카드 안내 | 국내 발행 신용카드/체크카드/법인카드, 해외 발행 신용카드로 구성되어 있습니다.</caption>
                                    <colgroup>
                                        <col style="width:50%">
                                        <col>
                                    </colgroup>
                                    <thead>
                                        <tr>
                                            <th scope="col">국내 발행 신용카드/체크카드/법인카드</th>
                                            <th scope="col">해외 발행 신용카드 </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>
                                                <p class="info-txt">한국 신용카드 및 은행에서 발행된 체크카드는 사용 가능합니다.</p>
                                                <p class="info-txt">기명식(개인성명 표기) 법인 카드만 가능하며 개인 신용카드와 동일하게 온라인 인증 프로그램(ISP/안심클릭) 등록 후 사용 가능합니다. </p>
                                            </td>
                                            <td>
                                                <p class="info-txt">온라인 인증 서비스를 받은 VISA, MASTER, JCB 카드만 사용 가능합니다.</p>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            
                            <!-- 2016-08-07 2차 추가(S) -->
                            <ul class="uList01">
                                <li><!-- 일부 법인카드의 경우 온라인 인증프로그램 등록에 제한이 있는 경우도 있습니다.&nbsp;이 경우 카드사로 문의해주시기 바랍니다. -->일부 법인카드의 경우 온라인 인증프로그램 등록에 제한이 있는 경우도 있습니다.&nbsp;이 경우 카드사로 문의해 주시기 바랍니다.</li>
                                <li><!-- 해외 발행 카드의 경우, 무기명 법인카드는 사용이 불가합니다. -->해외 발행 카드의 경우, 무기명 법인카드는 사용이 불가합니다.</li>
                            </ul>

                            <h3 class="tit-h3-1"><!-- 신용카드 인증 프로그램 안내 -->신용카드 인증 프로그램 안내</h3>
                            <div class="tbl-data-col02">
                                <table>
                                    <caption><!-- 신용카드 인증 프로그램 안내 | 안심클릭(MPI) 방식, 안전결제(ISP) 방식으로 구성되어 있습니다. -->신용카드 인증 프로그램 안내 | 안심클릭(MPI) 방식, 안전결제(ISP) 방식으로 구성되어 있습니다.</caption>
                                    <colgroup>
                                        <col style="width:50%">
                                        <col>
                                    </colgroup>
                                    <thead>
                                    <tr>
                                        <th scope="col"><!-- 안심클릭(MPI) 방식 -->안심클릭(MPI) 방식</th>
                                        <th scope="col"><!-- 안전결제(ISP) 방식 -->안전결제(ISP) 방식</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td>
                                            <p class="info-txt"><!-- 삼성, 롯데, 현대, 신한, 하나, NH -->삼성, 롯데, 현대, 신한, 하나, NH</p>
                                        </td>
                                        <td>
                                            <p class="info-txt"><!-- KB국민, BC(우리, 제주, 농협, 산업은행, 수협, 전북, 광주은행 등 -->KB국민, BC(농협, 수협, 우리, 제주, 산업, 전북, 광주은행 등)</p>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>

                            <ul class="uList01">
                                <li><!-- 결제금액 30만원 이상인 경우, 공인인증서 사용이 의무화되었습니다. -->결제금액 30만원 이상인 경우, 공인인증서 사용이 의무화되었습니다.</li>
                                <li><!-- 신용카드 인증 프로그램인 안전결제(ISP), 안심클릭의 인증 절차는 고객님이 사용하시는 카드 종류(개인 법인카드, 법인 공용카드)와&nbsp;카드사 정책에 따라 상이하여,&nbsp;30만원 미만의 경우에도 공인인증서가 필요할 수 있습니다. -->신용카드 인증 프로그램인 안전결제(ISP), 안심클릭의 인증 절차는 고객님이 사용하시는 카드 종류(개인 법인카드, 법인 공용카드)와&nbsp;카드사 정책에 따라 상이하여,&nbsp;30만원 미만의 경우에도 공인인증서가 필요할 수 있습니다.<br><!-- 자세한 내용은 소지하고 계신 신용카드사로 문의하여 주시기 바랍니다. -->자세한 내용은 소지하고 계신 신용카드사로 문의하여 주시기 바랍니다.</li>
                            </ul>
                            <!-- 2016-08-07 2차 추가(E) -->
                            <h2 class="table-title-big mgt50">실시간 계좌 이체 안내</h2>
                            <ul class="uList01">
                                <li>항공권 구매 금액을 실시간 고객님의 은행 계좌로부터 이체하는 서비스입니다. (폰뱅킹, 무통장입금 아님)</li>
                                <li>금융결제원에서 제공하는 BankPay 모듈 설치 후 이용 가능합니다. (Windows내 Explorer를 통해서만 이용 가능합니다.) </li>
                                <li>모바일에서는 전자결제서비스 어플리케이션을 설치 후 이용 가능합니다.</li>
                                <li>실시간 계좌 이체로 구매하신 항공권의 경우 홈페이지 및 모바일에서 예약 변경이 불가합니다. 예약을 변경하시는 경우 전체 환불 후 재구매 하셔야 합니다.</li>
                                <li>수수료는 별도 발생하지 않습니다.</li>
                            </ul>
                            <h2 class="table-title-big mgt50">항공권 환불</h2>
                            <p class="txt-info-1">항공권은 운임 규정에 따라 취소/환불할 수 있으며, 구입처에 따라 처리 절차가 다를 수 있으므로 해당 구입처로 문의 주시기 바랍니다.</p>
                        </div>  
                        <!-- //항공권 예매-->
                        <!-- //내용 -->
                    </div>
                </div>
            </div>
		</div>
	</div>
	<p id="viewLayerLogin" href="I/KO/viewOneLogin" class="jsOpenLayer" style="display:none;"></p>

<!-- wrap -->






    <div id="ui-datepicker-div" class="ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all"></div>
