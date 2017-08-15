<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.function.Function"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="java.sql.Time"%>
<%@page import="java.util.Vector"%>
<%@page import="java.sql.Date"%>
<%@page import="dto.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%

HttpSession sess = request.getSession();
LoginUser user = (LoginUser)sess.getAttribute("User");

if(user!=null){
String id = user.getMember_id();
String email =user.getMember_email();
String gender=user.getMemger_gender();
String last = user.getMember_eng_last();
String first = user.getMember_eng_first();

request.getSession().setAttribute("id", id);
request.getSession().setAttribute("email",email);
request.getSession().setAttribute("gender",gender);
request.getSession().setAttribute("last", last);
request.getSession().setAttribute("first",first);

%>

<input type="hidden" id="memID" value="<%=id %>">
<input type="hidden" id="memEMAIL" value="<%=email %>">
<input type="hidden" id="memGender" value="<%=gender %>">
<input type="hidden" id="memLast" value="<%=last %>">
<input type="hidden" id="memFirst" value="<%=first %>">
<%} %>
			<!-- ---------------★민정수정★----------------------- -->		

			<!-- 항공권 (S) -->
			<div class="booking-airlineticket">
				<h1 class="hidden-title" id="FareSelect">운임선택</h1>

					<div class="booking-airlineticket-flightticket">
							<div class="booking-airlineticket-flightticket-head">
							<strong id="Dep_Airport" class="booking-airlineticket-flightticket-title">
						    <span class="icon_airlineticket_from01">가는여정</span>
					
					
						 <span id="Dep_DepartureAirport">${depArr.flightschedule_dep}</span> <!-- 출발지적어주는곳 --> 
					
						 
						 
						 <span class="diretory icon_airlineticket_oneway01">출발지에서 도착지까지 편도</span>
						  <span id="Dep_ArrivalAirport">${depArr.flightschedule_arr}</span></strong>
						<span id="Dep_Currency" class="currency" style="font-size:15px;">통화 : KRW</span>
					
				
						</div><!-- booking airlineticket flight ticket -->
				
							
			
		<div id="Div_Dep" style="">
		<div class="booking-airlineticket-minimum mgt20">
							<button onclick="javascript:fn_ClickCalendarBtn('Dep','Prev')" type="button" class="booking-airlineticket-minimum-btnPrev"><span id="DepPrev7Days">가는여정 이전 7일 보기</span></button>
							<button onclick="javascript:fn_ClickCalendarBtn('Dep','Next')" type="button" class="booking-airlineticket-minimum-btnNext"><span id="DepNext7Days">가는여정 이후 7일 보기</span></button>
							<ul id="Dep_Calendar" class="booking-airlineticket-minimum-dateList"><li value="20171028"><button style="cursor: default;" type="button"><span class="booking-airlineticket-minimum-date">2017.10.28 (토)</span><em class="booking-airlineticket-minimum-price">-</em></button></li><li value="20171029"><button style="cursor: default;" type="button"><span class="booking-airlineticket-minimum-date">2017.10.29 (일)</span><em class="booking-airlineticket-minimum-price">-</em></button></li><li value="20171030"><button style="cursor: default;" type="button"><span class="booking-airlineticket-minimum-date">2017.10.30 (월)</span><em class="booking-airlineticket-minimum-price">-</em></button></li><li onclick="javascript:fn_ClickCalendarDate(this)" value="20171031" class="active"><button type="button"><span class="booking-airlineticket-minimum-date">2017.10.31 (화)</span><em class="booking-airlineticket-minimum-price">10,000</em></button></li><li onclick="javascript:fn_ClickCalendarDate(this)" value="20171101"><button type="button"><span class="booking-airlineticket-minimum-date">2017.11.01 (수)</span><em class="booking-airlineticket-minimum-price">10,000</em></button></li><li onclick="javascript:fn_ClickCalendarDate(this)" value="20171102"><button type="button"><span class="booking-airlineticket-minimum-date">2017.11.02 (목)</span><em class="booking-airlineticket-minimum-price">10,000</em></button></li><li onclick="javascript:fn_ClickCalendarDate(this)" value="20171103"><button type="button"><span class="booking-airlineticket-minimum-date">2017.11.03 (금)</span><em class="booking-airlineticket-minimum-price">10,000</em></button></li></ul>
						</div>
				
						<div class="booking-airlineticket-flightticket-tbl mgt20">
							<table>
								<caption id="DepCaption">가는여정 - 운임선택 표 | 편명, 출발시간, 소요시간, 도착시간, 특가운임, 할인운임, 정상운임으로 구성되어있습니다.</caption>
								<colgroup>
									<col style="width:80px;">
									<col style="width:110px;">
									<col style="width:110px;">
									<col style="width:140px;">
									<col style="width:140px;">
									<col style="width:80px;">
									<col style="width:50px;">
									
								</colgroup>
								<thead>
								<tr>
									<th scope="col" name="lblFlightNo">편명</th>
									<th scope="col" name="lblDepartureTime">출발시간</th>
									<th scope="col" name="lblArrivalTime">도착시간</th>
									<th scope="col" name="lblNormalFare">기본운임</th>
									<th scope="col" name="lblDiscountFare">정상운임</th>
									<th id="Dep_Title_Promotional" scope="col" name="lblPromotionalFare">좌석</th>
									<th id="Dep_Title_Promotional"  name="lblPromotionalFare"  scope="col" >선택</th>
									
									
								</tr>
								</thead>
					
						
			<tbody id="Dep_Flight">
			<!-- 출발하는곳 뿌려주는곳 -->
		<%int i = 0; %>
 		<c:forEach var="v" items="${requestScope.v }">
					<c:set var="price" value="${v.route_baseprice }"/>
					<tr id="OneFlightInfo"align="center">
						<td class="tbl-flight"align="center">${v.plane_seat_flight_name }</td> <!-- 항공편명 -->
						<td class="tbl-start-time"align="center">${v.flightschedule_dep_time }</td><!-- 출발시간 -->
						<td class="tbl-end-time" align="center">${v.flightschedule_arr_time }</td><!-- 도착시간 -->
						<td class="tbl-price"align="right"><label for="FareRule_Dep1_NOR" ><strong class="point-color02">${v.route_baseprice}원</strong></label></td>
					<!-- 기본요금 -->
					
					<td class="tbl-price sale_price"  align="center"><label for="FareRule_Dep1_NOR" >
					<%
						
						Vector v = (Vector) request.getAttribute("v");
						flightschedule f =  (flightschedule)v.get(i);
						Time time = f.getFlightschedule_dep_time();
						double price = f.getRoute_baseprice();
						int deptime = time.getHours();

						if(deptime >= 20){
							price = (f.getRoute_baseprice() * 0.7);
						%>	
					<strong class="point-color02" >(30%할인)</strong>
						<% }
						else if(deptime <= 7){
							price = (f.getRoute_baseprice()* 0.8);
						%>
						<strong class="point-color02" >(20%할인)</strong>
						<%} %>
						<strong class="point-color02" >${v.sale_price }원</strong></label></td><!-- 할인요금 뿌려줄곳 -->
						<td align="center">좌석</td>
						<td class="tbl-price" align="left"> <!-- 라디오버튼 -->
							<span class="radiobox01 js-radiobox01">
								<label for="FareRule_Dep1_NOR">
									<input type="radio" id="FareRule_Dep1_NOR" name="Radio_Dep">
									<input type="hidden" id="flight" name="flight" value="${v.plane_seat_flight_name }">
									<input type="hidden" id="dep_time" name="dep_time" value="${v.flightschedule_dep_time }">
									<input type="hidden" id="arr_time" name="arr_time"	 value="${v.flightschedule_arr_time }">
									<input type="hidden" id="base_price" name="base_price" value="${v.route_baseprice }">
									<input type="hidden" id="sale_price" name="sale_price" value="${v.sale_price }">
									<input type="hidden" id="flight_number" name="flight_number" value='${v.flightschedule_number }'>			
								</label>
							</span>
						</td>
					</tr>	
					<%i++; 	%>
		</c:forEach>

							
					<tr><td colspan="8" class="tbl-jjim-area">
						<div name="FareRule_Dep1" class="jjim-wrap" style="display: none;">
							<div class="jjim-tbl">
								<table><caption>가는여정 - 운임규정 표</caption><colgroup><col><col style="width:135px;">
									<col style="width:135px;"><col style="width:135px;"></colgroup>
									<tbody>
										 
								 
								 <tr>
									 <th scope="row" class="tbl-jjim-title"><p class="baggage"><span class="mgr15"><img src="images/icons/common/icon_daystay01.png" alt="">
								 	</span> 예약변경 수수료</p></th><td class="">KRW30,000<br>JPY3,000<br></td>
									 <td class="">KRW30,000<br>JPY3,000<br></td><td class="">KRW30,000<br>JPY3,000<br></td>
								 </tr>
								 
								 <tr>
								 	<th scope="row" class="tbl-jjim-title"><p class="baggage"><span class="mgr15">
								 	<img src="images/icons/common/icon_refund.png" alt=""></span> 환불 위약금</p>
								 	</th>
								 	
									 <td class="">KRW30,000<br>JPY3,000<br></td>
									 <td class="">KRW30,000<br>JPY3,000<br></td>
									 <td class="">KRW30,000<br>JPY3,000<br></td>
								 </tr>
								 <tr>
								 	<th scope="row" class="tbl-jjim-title"><p class="baggage"><span class="mgr15">
										 <img src="images/icons/common/icon_baggage01.png" alt=""></span> 무료수하물 허용량</p></th>
								 	<td class="">1 개 (23kg/pc)</td><td class="">1 개 (23kg/pc)</td>
									 <td class="">1 개 (23kg/pc)</td>
								 </tr>
								 <tr>
								 	<th scope="row" class="tbl-jjim-title"><p class="baggage">
								 	<span class="mgr15"><img src="images/common/icon_sale_new.png" alt=""></span> 이벤트 특가 결합</p>
								 	</th>
								 <td class="">예약변경 불가</td>
								 <td class="">예약변경 불가</td>
								 <td class="">예약변경 불가</td></tr>
								 
								 
								 </tbody>
										 
							</table>
						</div>
					</div>
				</td>
			</tr>
			
		</tbody>



		</table>
		
	 </div>
	</div> <!-- div dep -->
	
					<div id="Dep_loading" class="loding_section" style="display: none;">
						<div class="loding_inner">
							<div>
								<img src="images/common/img_loding01.gif" alt="LOADING">
								<strong class="hidden-txt" name="lblLoading">로딩중입니다.</strong>
							</div>
						</div>
					</div>
			
					
					<!-- 왕복 파트 여정적어주는 곳  -->
					<div class="booking-airlineticket-flightticket-head mgt60" style="display:none;">
						<strong id="Arr_Airport" class="booking-airlineticket-flightticket-title">
						<span class="icon_airlineticket_to01">오는여정</span>
						 <span id="Arr_DepartureAirport">${depArr.flightschedule_arr}</span> 
						 <span class="diretory icon_airlineticket_oneway01">출발지에서 도착지까지 편도</span>
						  <span id="Arr_ArrivalAirport">${depArr.flightschedule_dep}</span></strong>
						<span id="Arr_Currency" class="currency" style="font-size:15px;">통화 : KRW</span>
					</div>
				
					<div id="Div_Arr" style="display:none;">
						<div class="booking-airlineticket-minimum mgt20">
							<button onclick="javascript:fn_ClickCalendarBtn('Arr','Prev')" type="button" class="booking-airlineticket-minimum-btnPrev"><span id="ArrPrev7Days">오는여정 이전 7일 보기</span></button>
							<button onclick="javascript:fn_ClickCalendarBtn('Arr','Next')" type="button" class="booking-airlineticket-minimum-btnNext"><span id="ArrNext7Days">오는여정 이후 7일 보기</span></button>
							<ul id="Arr_Calendar" class="booking-airlineticket-minimum-dateList"><li value="20171029"><button style="cursor: default;" type="button"><span class="booking-airlineticket-minimum-date">2017.10.29 (일)</span><em class="booking-airlineticket-minimum-price">-</em></button></li><li value="20171030"><button style="cursor: default;" type="button"><span class="booking-airlineticket-minimum-date">2017.10.30 (월)</span><em class="booking-airlineticket-minimum-price">-</em></button></li><li value="20171031"><button style="cursor: default;" type="button"><span class="booking-airlineticket-minimum-date">2017.10.31 (화)</span><em class="booking-airlineticket-minimum-price">-</em></button></li><li onclick="javascript:fn_ClickCalendarDate(this)" value="20171101" class="active"><button type="button"><span class="booking-airlineticket-minimum-date">2017.11.01 (수)</span><em class="booking-airlineticket-minimum-price">10,000</em></button></li><li onclick="javascript:fn_ClickCalendarDate(this)" value="20171102"><button type="button"><span class="booking-airlineticket-minimum-date">2017.11.02 (목)</span><em class="booking-airlineticket-minimum-price">10,000</em></button></li><li onclick="javascript:fn_ClickCalendarDate(this)" value="20171103"><button type="button"><span class="booking-airlineticket-minimum-date">2017.11.03 (금)</span><em class="booking-airlineticket-minimum-price">10,000</em></button></li><li onclick="javascript:fn_ClickCalendarDate(this)" value="20171104"><button type="button"><span class="booking-airlineticket-minimum-date">2017.11.04 (토)</span><em class="booking-airlineticket-minimum-price">14,000</em></button></li></ul>
						</div>
				
						<div class="booking-airlineticket-flightticket-tbl mgt20">
							<table>
								<caption id="ArrCaption">오는여정 - 운임선택 표 | 편명, 출발시간, 소요시간, 도착시간, 특가운임, 할인운임, 정상운임으로 구성되어있습니다.</caption>
								<colgroup>
									<col style="width:80px;">
									<col style="width:110px;">
									<col style="width:110px;">
									<col style="width:140px;">
									<col style="width:140px;">
									<col style="width:80px;">
									<col style="width:50px;">
									
								</colgroup>
								<thead>
								<tr>
									<th scope="col" name="lblFlightNo">편명</th>
									<th scope="col" name="lblDepartureTime">출발시간</th>
									<th scope="col" name="lblArrivalTime">도착시간</th>
									<th scope="col" name="lblNormalFare">기본운임</th>
									<th scope="col" name="lblDiscountFare">정상운임</th>
									<th id="Dep_Title_Promotional" scope="col" name="lblPromotionalFare">좌석</th>
									<th id="Dep_Title_Promotional"  name="lblPromotionalFare"  scope="col" >선택</th>
									
									
								</tr>
								</thead>
	
	
		<!--  DB뿌려주는 곳 -->
		<tbody id="Arr_Flight">
										
		<%int a = 0; %>
 		<c:forEach var="vec" items="${requestScope.vec }">
					<c:set var="price2" value="${vec.route_baseprice }"/>
					<tr id="RTFlightInfo" align="center">
						<td class=" tbl-flight"align="center">${vec.plane_seat_flight_name }</td> <!-- 항공편명 -->
						<td class="tbl-start-time" align="center">${vec.flightschedule_dep_time }</td><!-- 출발시간 -->
						<td class="tbl-end-time"align="center">${vec.flightschedule_arr_time }</td><!-- 도착시간 -->
						
						<!-- 기본요금 -->
						<td class="tbl-price" align="center"><label for="FareRule_Dep1_NOR" ><strong class="point-color02" >${vec.route_baseprice}원</strong></label></td>
			
					<!-- 할인요금 뿌려줄곳 -->
					<td class="tbl-price"align="center"><label for="FareRule_Dep1_NOR" >
					
					
					<%
						
						Vector vec = (Vector) request.getAttribute("vec");
						flightschedule flight =  (flightschedule)vec.get(a);
						Time time2 = flight.getFlightschedule_dep_time();
						double price2 = flight.getRoute_baseprice();
						int dep_time = time2.getHours();
				
						if(dep_time >= 20){
							price2 = (flight.getRoute_baseprice() * 0.7);
				
				%><strong class="point-color02" >(30%할인)</strong>
				
				<%	}else if (dep_time <=7){
					price2 = (flight.getRoute_baseprice()*0.8);
				%>
				<strong class="point-color02" >(20%할인)</strong>
				<%}%>

					
					<strong class="point-color02" >${vec.sale_price} 원</strong></label></td><!-- 할인요금 뿌려줄곳 -->
						<td align="center">좌석</td>
						
						
						<td class="tbl-price" align="left"> <!-- 라디오버튼 -->
							<span class="radiobox01 js-radiobox01">
								<label for="FareRule_Arr2_RT">
									<input type="radio" id="FareRule_Arr2_RT" name="Radio_Arr">
									<input type="hidden" id="flight" name="flight" value="${vec.plane_seat_flight_name }">
									<input type="hidden" id="dep_time" name="dep_time" value="${vec.flightschedule_dep_time }">
									<input type="hidden" id="arr_time" name="arr_time"	 value="${vec.flightschedule_arr_time }">
									<input type="hidden" id="base_price" name="base_price" value="${vec.route_baseprice }">
									<input type="hidden" id="sale_price" name="sale_price" value="${vec.sale_price }">
									<input type="hidden" id="flight_number" name="flight_number" value='${vec.flightschedule_number }'>	
								</label>
							</span>
						</td>
						</tr>
		<%a++;	%>
							
		</c:forEach>
					</tbody>
							</table>

						</div>
					</div>
					
					<div id="Arr_loading" class="loding_section" style="display: none;">
						<div class="loding_inner">
							<div>
								<img src="images/common/img_loding01.gif" alt="LOADING">
								<strong class="hidden-txt" name="lblLoading">로딩중입니다.</strong>
							</div>
						</div>
					</div>
			
					<ul class="uList01">
						<li id="Notice1">+1은 다음날 도착을 의미하며, 출, 도착 시각은 현지 시각 기준입니다.</li>
						<li id="Notice2">예약과 동시에 항공권을 구매하셔야 합니다. (예약만 불가)</li>
						<li id="Notice3">예약 가능한 자리 및 할인율은 실시간으로 변동되며, 결제 및 발권이 완료되어야 좌석이 확약 됩니다.</li>
						<li class="point-color01" id="Notice4">해당일에 운항편이 없거나 만석인 경우, 공란("-")으로 표시됩니다.</li>
						<li id="Notice5">여정 및 운임의 예상 총액은 항공편 및 운임 선택 시, 화면 우측에 표시됩니다.</li>
						<li id="Notice6">유류할증료와 세금/제반요금은 구매일/환율에 따라 변경될 수 있습니다.</li>
						<li id="Notice7">항공 운임은 출발지 국가의 통화를 기준으로 책정되며, 결제 시 해당 환율이 적용됩니다.</li>
						<li class="point-color01" id="Notice8">인터넷 시스템 정기 작업으로 매일 23시 50분 ~ 00시 10분까지 항공권 예매 및 여정변경/환불 서비스가 제한되며, 매주 일요일 22시 00분 ~ 22시 30분까지 시스템 정기점검 시간으로 홈페이지 이용이 불가하오니 이용에 참고하시기 바랍니다.</li>
						<li id="Notice9">상기 스케줄은 정부인가(해외 정부 포함) 조건으로, 부득이한 사유로 예고 없이 변경될 수 있습니다.</li>
						<li class="point-color01" id="Notice10">여정변경 수수료 및 환불 위약금은 항공권 운임 결제시 통화와 동일한 통화로 결제됩니다.</li>
						<li class="point-color01" id="Notice11">여정변경 수수료 및 환불 위약금은 승객 1인별로 편도 구간당 부과됩니다.</li>
					</ul>
					
					<!-- 왕복, 편도, Open-Jaw 해외발 Open - 20160902 -->
					<!-- <br/>
					<span id="NoticeOverseasDeparture" class="point-color01" style="display: none;"></span> -->
			
					<div id="Div_Confirm" class="pdt30 tc">
						<button onclick="javascript:fn_ClickConfirmBtn()" type="button" class="btn-type01-col01" name="lblConfirm">확인</button>
					</div>
					
						
				</div>
				
				
		

			</div>
			<!-- 항공권 (E) -->
			
		
			
			
			
			<!-- 우측 간편 안내(S) -->
			<div class="booking-airlineticket-finalInfo">
				<div class="booking-airlineticket-finalInfo-title">
					<h2 id="ItineraryFare">여정 및 운임</h2>
				</div>
				<div id="Summary_Segment" class="booking-airlineticket-finalInfo-head">
					<div id="Summary_Dep" class="booking-airlineticket-finalInfo-head-from">
						<div class="booking-airlineticket-finalInfo-head-kinds"><span class="icon_airlineticket_from02" id="DepartureItinerary">가는여정</span></div>
						<div class="booking-airlineticket-finalInfo-head-fly">&nbsp;</div>
						<div class="booking-airlineticket-finalInfo-head-fly">&nbsp;</div>
						<div class="booking-airlineticket-finalInfo-head-date">&nbsp;</div>
					</div>
					<div id="Summary_Arr" class="booking-airlineticket-finalInfo-head-to" style="display:none;">
						<div class="booking-airlineticket-finalInfo-head-kinds"><span class="icon_airlineticket_to02" id="ArrivalItinerary">오는여정</span></div>
						<div class="booking-airlineticket-finalInfo-head-fly">&nbsp;</div>
						<div class="booking-airlineticket-finalInfo-head-fly">&nbsp;</div>
						<div class="booking-airlineticket-finalInfo-head-date">&nbsp;</div>
					</div>
				</div> <!-- Summary_Segment -->
				
				
				<div class="booking-airlineticket-finalInfo-body">
					<div class="booking-airlineticket-finalInfo-tblRow01">
						<table>
							<colgroup>
								<col style="width:33.3%">
								<col style="width:33.3%">
								<col style="width:33.3%">
							</colgroup>
							<tbody><tr>
								<td class="tc tbl-adult"><span id="Adult">성인</span> <span id="Summary_ADT"></span><span name="lblPersonUnit">명</span></td>
								<td class="tc tbl-child"><span id="Child">소아</span> <span id="Summary_CHD"></span><span name="lblPersonUnit">명</span></td>
								<td class="tc tbl-lapinfant"><span id="Infant">유아</span> <span id="Summary_INF"></span><span name="lblPersonUnit">명</span></td>
							</tr>
						</tbody></table>
					</div>
					<div class="booking-airlineticket-finalInfo-tblRow02">
						<table>
							<caption id="SummaryCaption">여정 및 운임 표 | 항공운임, 유류할증료, 세금/제반요금으로 구성되어있습니다.</caption>
							<colgroup>
								<col style="width:50%">
								<col style="width:50%">
							</colgroup>
							<tbody>
							<tr>
								<th scope="row" class="" id="EquivFare">항공운임</th>
								<td class="tr tbl-price">
									<span id="Summary_EquivFare"></span>
								</td>
							</tr>
							<tr>
								<th scope="row" id="FuelCharge">유류할증료</th>
								<td class="tr tbl-price">
									<span id="Summary_FuelCharge"></span>
								</td>
							</tr>
							<tr>
								<th scope="row" class="" id="Tax">세금/제반요금</th>
								<td class="tr tbl-price">
									<span id="Summary_Tax"></span>
								</td>
							</tr>
							</tbody>
						</table>
					</div>
					<div class="total-price">
						<h3 id="PredictionTotalAmount">총액</h3>
						<div class="price-area">
							<em class="unit" id="Summary_Currency">&nbsp;</em>
							<em class="price" id="Summary_TotalAmount">&nbsp;</em>
						</div>
					</div>
				</div><!-- booking-airlineticket-finally-body -->
			
				<p class="info-exmark01" id="SummaryNotice">유류할증료 및 세금/제반요금을 포함한 총액으로 구매 시점과 환율에 따라 변동될 수 있습니다.</p>
				<p class="info-exmark01" id="SummaryNoticeTax">한국 출발 세금(BP)에는 국제여객공항이용료(인천/김포 17,000원), 출국납부금(10,000원), 국제빈곤퇴치기여금(1,000원)이 포함되어 있습니다.</p>
				
				<div class="change-currentcy-wrap mgt20">
					<div class="change-currentcy-head">
						<h2 class="change-currentcy-title"><span id="PaymentCurrency">결제 통화</span> <a href="I/KO/viewLayerPaymentCurrencyChangeInfo" class="change-currentcy-icon jsOpenLayer mgl05" id="PaymentCurrencyChangeInfoLayerPopup">결제 통화 변경 안내 레이어 팝업</a></h2>
					</div>
					<div class="change-currentcy-body mgt10">
						<span class="selectbox01 js-selectbox01">
							<span class="txt"></span>
						    <select id="PaymentCurrencySelect" style="width: 114px;" title="결제 통화 선택">
						    <option value="JPY" selected="selected">JPY</option><option value="KRW">KRW</option></select>
						</span>
						<button onclick="javascript:fn_ClickPaymentCurrencyChangeBtn()" type="button" class="btn-type02-col01 change-currentcy-submit" name="lblConfirm">확인</button>
					</div>
				</div><!-- change -->
				
			</div>
			<!-- 우측 간편 안내(E) -->
		
 <div class="inputClass"style="display:none;">
 <c:set var="bc" value="${requestScope.bc }"/>
<input type="text" id="triptype" name="triptype"  value="${bc.tripType }">
<input type="text" id="departureAirport" name="departureAirport"  value="${bc.dep }">
<input type="text" id="departureDateTime" name="departureDateTime"  value="${bc.depDate }">
<input type="text" id="arrivalDateTime" name="arrivalDateTime" value="${bc.arrDate }">
<input type="text" id="arrivalAirport" name="arrivalAirport"  value="${bc.arr }">
<input type="text" id="adtPaxCnt" name="adtPaxCnt"  value="${bc.adt }">
<input type="text" id="chdPaxCnt" name="chdPaxCnt"  value="${bc.chd }">
<input type="text" id="infPaxCnt" name="infPaxCnt"  value="${bc.inf }">

</div>		

<!-- wrap -->
<div>
<c:set var="v" value="${requestScope.JS }"/>
<c:choose>
<c:when test="${v==null }">
<c:set var="v" value="null"/>
<input type="hidden" id="mainBookingCondition" name="mainBookingCondition" value='${v }'>
</c:when>
<c:otherwise>
<input type="hidden" id="mainBookingCondition" name="mainBookingCondition" value='${v }'>
</c:otherwise>
</c:choose>
</div>


	



<div id="hidden-priceDep">
</div>
<div id="hidden-priceArr">
</div>

<form id="goPassengerInfoView"  name="goPassengerInfoView" method="post" target="_self">
<input type="hidden" name="detailBooking">
<input type="hidden" name="jsDetailBooking">
<input type="hidden" id="OWscheduleNum" name="OWscheduleNum">
<input type="hidden" id="RTscheduleNum" name="RTscheduleNum">
</form>
		<!-- ---------------★민정수정완료★----------------------- -->



<script type="text/javascript">
	
$(document).ready(function(){
	jsRadiobox01();
//	pop();

		var $tripType = $("#triptype").val();
		
		var $departureAirport=$("#departureAirport").val();
		var $departureDate = moment($("#departureDateTime").val()).format('YYYY.MM.DD [(]dd[)]' );
		
		var $arrivalAirport = $("#arrivalAirport").val();
		
		var $adult = $("#adtPaxCnt").val();
		var $chd = $("#chdPaxCnt").val();
		var $inf = $("#infPaxCnt").val(); 
		
		var mainBooking = $("#mainBookingCondition").val();

		var OWscheduleNum = "";
		var RTscheduleNum = "";
		
//		console.log("$adult :"+$adult);
		
 		if(mainBooking != "null"){
			GoBook_04(mainBooking);
		}	 
	

		
 		var dep = "";
		var arr = "";
		var flight="";
		var dep_time = "";
		var arr_time = "";
		var base_price ="";
		var sale_price = "";
		
		var dep2TOarr="";
		var arr2TOdep="";

		var radioCount ="";
	
		var price = function(){
			var base_price ="";
			var sale_price="";
		}
		
		alert("여행 타입 :   "+$tripType+"  출발 :  "+$departureAirport+"  도착 :  "+$arrivalAirport); 
 		console.log("여행 타입 :   "+$tripType+"  출발 :  "+$departureAirport+"  도착 :  "+$arrivalAirport); 
		
    	

 		
 		if($tripType=='RT'){
 			$(".booking-airlineticket-flightticket-head").css("display","block");
 			$("#Div_Arr").css("display","block");
 			$("#Summary_Arr").css("display","block");
 			radioCount =2;
 		}else{
 			radioCount=1;
 		}

 	
 		var priceArry = [2];
 		
 		var pDep = new price();
 		var pArr = new price();
 		
 		 $("#Dep_Flight").find("input:radio").each(function(i, radio){
 				
 			 console.log("Dep Radio INDEX :"+i);
 					var $this = $(this);
 					
 			    	$this.on("change", function(){
 			    		
 			    		var $label = $this.parent('label');
 			    		 flight=$label.find("#flight").val();
 			    		dep_time =$label.find("#dep_time").val();
 			    		 arr_time =$label.find("#arr_time").val();
 			    		 base_price =$label.find("#base_price").val();
 			    		 sale_price =$label.find("#sale_price").val();
 			    		 OWscheduleNum = $label.find("#flight_number").val();
 			    		 
 			    		 $("#OWscheduleNum").val( OWscheduleNum);
 			    		 
 			        	console.log("flight :"+flight+"  dep_time :"+dep_time+"  arr_time : "+arr_time+"  base_price :"+base_price+"  sale_price :"+sale_price);
 			        	console.log("Flight_Number :"+OWscheduleNum);
 			        
 			        	
 			        	var seg = 
 			        					   "<div class='booking-airlineticket-finalInfo-head-kinds'><span class='icon_airlineticket_from02' id='DepartureItinerary'>가는여정</span><span id='depFlight'>"+flight+"</span></div>"+
 			        					   "<div class='booking-airlineticket-finalInfo-head-fly'>"+$departureAirport+"&nbsp;<span class='directory icon_airlineticket_oneway02'></span></div>" +
 			        					   "<div class='booking-airlineticket-finalInfo-head-fly'>"+$arrivalAirport+"</div> "+
 			        					   "<div class='booking-airlineticket-finalInfo-head-date'>"+$departureDate+" <span id='deptime'>"+dep_time+"</span> ~<span id='arrtime'> "+arr_time+"</span></div>";

 			        	$("#Summary_Dep").html(seg);
			        
 			        	
 	 			        	pDep.base_price = base_price;
 	 			        	pDep.sale_price = sale_price;

 	 			        	var priceStr = "<input type='hidden' id='depBaseprice' value='"+pDep.base_price+"'>"+
 	 			        							 	"<input type='hidden' id='depSaleprice' value='"+pDep.sale_price+"'>";
 	 			        	
 	 			        	$("#hidden-priceDep").html(priceStr);							 	
 	 			        							 	
 	 			        	console.log("pDep.base :"+pDep.sale_price); 	
 	 			        	
 	 			        	var CheckedRadioCount =$("input:radio:checked").length;
 	 			    	 			        	
 	 			        	if($tripType == 'RT'){
    	
	 	 			        	if(CheckedRadioCount == 2){
	 	 			        		fn_TotalFee(pDep, pArr, $adult, $chd, $inf);
	 	 			        	}
 	 			        	}else{
 	 			        		fn_TotalFee(pDep, 0, $adult, $chd, $inf);
 	 			        	}
 	 			        	
 			        });
 			});
 		
 		
 		
		if($tripType=='RT'){
			
			 dep2TOarr =$("#arrivalAirport").val();
			 arr2TOdep=$("#departureAirport").val();
			
			 var arr2comeDate = $("#arrivalDateTime").val();
			 
			 console.log("출발지 -> 도착지 :   "+$tripType+"  출발 :  "+$departureAirport+"  도착 :  "+$arrivalAirport); 	
			 console.log(" 도착지 -> 출발지 : "+$tripType+"  출발 :"+arr2TOdep+"  도착 :"+dep2TOarr);
			
			 $("#Arr_Flight").find("input:radio").each(function(i, radio){
					
				 console.log("Arr Radio INDEX :"+i);
						var $this = $(this);
						
				    	$this.on("change", function(){
				    		
				    		var $label = $this.parent('label');
				    		 flight=$label.find("#flight").val();
				    		 dep_time =$label.find("#dep_time").val();
				    		 arr_time =$label.find("#arr_time").val();
				    		 base_price =$label.find("#base_price").val();
				    		 sale_price =$label.find("#sale_price").val();
				    		 RTscheduleNum = $label.find("#flight_number").val();
				        	console.log("flight :"+flight+"  dep_time :"+dep_time+"  arr_time : "+arr_time+"  base_price :"+base_price+"  sale_price :"+sale_price);
  			      			console.log("RT Flight Number :"+RTscheduleNum);
	 			        	
  			      		 $("#RTscheduleNum").val( RTscheduleNum);
  			      			
	 			        	pArr.base_price = base_price;
	 			        	pArr.sale_price = sale_price;
		   	
 	 			        	var priceStr = "<input type='hidden' id='arrBaseprice' value='"+pArr.base_price+"'>"+
													 	"<input type='hidden' id='arrSaleprice' value='"+pArr.sale_price+"'>";
	
								$("#hidden-priceArr").html(priceStr);							 	
						
	 			        	
				        	var seg = 
				        					   "<div class='booking-airlineticket-finalInfo-head-kinds'><span class='icon_airlineticket_to02' id='ArrivalItinerary'>오는여정</span><span id='arrFlight'>"+flight+"</span></div>"+
				        					   "<div class='booking-airlineticket-finalInfo-head-fly'>"+dep2TOarr+"&nbsp;<span class='directory icon_airlineticket_oneway02'></span></div>" +
				        					   "<div class='booking-airlineticket-finalInfo-head-fly'>"+arr2TOdep+"</div> "+
				        					   "<div class='booking-airlineticket-finalInfo-head-date'><span id='rtdepartureDate'>"+arr2comeDate+"</span> <span id='rtdeptime'>"+dep_time+"</span> ~ <span id='rtarrtime'>"+arr_time+"</span></div>";
	
				        	$("#Summary_Arr").html(seg);

				        	
 	 			        	var CheckedRadioCount =$("input:radio:checked").length;
 	 			    	 			        	

    	
	 	 			        	if(CheckedRadioCount == 2){
	 	 			        		fn_TotalFee(pDep, pArr, $adult, $chd, $inf);
	 	 			        	}

				        });
				    	
				});
				
		}

});	



 
 function fn_setTotal(equ, fue, tax, total){
	 var $EquivFare = $("#Summary_EquivFare");
	 var $FuelCharge = $("#Summary_FuelCharge");
	 var $Tax = $("#Summary_Tax");
	 var $Unit = $("#Summary_Currency");
	 var $Total = $("#Summary_TotalAmount");
	 $EquivFare.text(equ);
	 $FuelCharge.text(fue);
	 $Tax.text(tax);
	 $Unit.text("KRW");
	 $Total.text(total);
 }


 function fn_TotalFee(pDep, pArr, adult, chd, inf){
	console.log("요금 계산 ");
	
	var aircharge =0; //항공 운임
	var fuelsurcharge = 0; //유류 할증료
	var airtax =28000	; //세금, 제반 요금 
	
	var personPrice = 0;
	var totalPrice = 0;
	 
	console.log("PassengerC :"+adult);
	
	var adutlPrice =0;
	var chdPrice =0;
	var infPrice = 0;
	
	var chdfee = 0.6;
	var inffee = 0.1;
	
	console.log("chd :"+chdfee +"   inf :"+  inffee);
	
	adultPrice = Number(pDep.sale_price);
	chdPrice =Number(pDep.base_price * chdfee) *chd;
	infPrice =Number(pDep.base_price * inffee) * inf;
	
	console.log("성인 :"+adultPrice+"  소아 :"+chdPrice+"  유아  :  "+infPrice);
	
	personPrice = (Number(adultPrice) + Number(chdPrice) + Number(infPrice));
	var deptax= Number(airtax*adult) + Number(airtax*chd)+Number(airtax*inf);
	console.log(" 출발  :   "+personPrice);
	
	var arrtax="";
	if(pArr){
		
		adultPrice =Number(adultPrice)+ Number(pArr.sale_price);
		chdPrice = Number(chdPrice) +Number(pArr.base_price * chdfee*chd);
		infPrice = Number(infPrice) + Number(pArr.base_price * inffee*inf);

		console.log("성인 :"+adultPrice+"  소아 :"+chdPrice+"  유아  :  "+infPrice);
		personPrice = (Number(adultPrice) + Number(chdPrice) + Number(infPrice));
		arrtax = Number(airtax*adult) + Number(airtax*chd)+Number(airtax*inf);
		console.log(" 도착  :   "+personPrice);
	}
	
	
	
	aircharge = personPrice;
	airtax = Number(deptax)+Number(arrtax);
	fuelsurcharge = fuelsurcharge * 2;
	
	totalPrice = (Number(aircharge)+ Number(fuelsurcharge)+Number(airtax));
	
	
	fn_setTotal(aircharge,fuelsurcharge, airtax, totalPrice);
	
} 

/*	쓰고싶지 않았지만 난 패배했다. 이현주	*/
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
	
	
	
	
	
/*		
	$("#OneFlightInfo").find($(".radiobox01")).on("click", function(){
	var $this = $(this);
	var $label = $($(this).find("label"));
	var start = $($label.find("#dep_time")).val();

		if($this.is(":checked")){
			console.log("active 있어");
			$label.removeClass('active').addClass('disabled');
		}else{
	
		$label.removeClass('disables').addClass('active');
		console.log("Start_Time :"+start);
	}

});
	

$("#RTFlightInfo").find($(".radiobox01")).on("click", function(){
	var $this = $(this);
	var $label = $($(this).find("label"));
	var start = $($label.find("#dep_time")).val();

		if($this.is(":checked")){
			console.log("active 있어");
			$label.removeClass('active').addClass('disabled');
		}else{
	
		$label.removeClass('disables').addClass('active');
		console.log("Start_Time :"+start);
	}

}); */

						
		</script>