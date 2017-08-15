<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<input type="hidden" name="ReservationCode" 		id="ReservationCode"  		value='${requestScope.ReservationCode }'>
<input type="hidden" name="jsReservation"				id="jsReservation"				value='${requestScope.jsReservation}' >



<div id="container">
	<div id="content">
		<div id="location" class=""  style="top:0px;">
			<ol class="location_area">
				<li><a href="mainIndex.bo" id="Home">홈</a></li>
				<li><a href="#this" class="menuDepth2">항공권 예매</a>
				<li class="current"><span class="menuDepth3" href="#none">예매 확인</span>
			</ol>
		</div>
		
		<div class="content_inner">
			<h1 class="pagetitle"><span id="ReservationResult">예매 확인</span></h1>
			
			<div class="booking-table-title mgt20">
				<h3 class="table-title-mid mgr25">일정</h3>
				<div class="CheckingTab">
				<span class="OWtab" style="margin-right: 30px;"><a href="#this" class="OWtxt">편도</a></span><span class="RTtab"><a href="#this" class="RTtxt">왕복</a></span>
				</div>
			</div>
			   
			<div id="Show_reservation_Result" class="mgt50 ">
				<div class="tbl-input-row01 mgt20 OW" >
					<table id="Reservation_FlightData" >
						<colgroup>
							<col style="width:20%">
						</colgroup>
						
						<tbody>
						<tr>
							<th scope="row">예약 번호</th>
								<td><span><input type="text" id="ReservationNumber" name="ReservationNumber"></span></td>
							<th scope="row">예약 날짜</th>
								<td><span><input type="text" id="ReservationDate" name="ReservationDate"></span></td>
						</tr>
							<tr>
								<th scope="row">항공기편</th>
								<td><span><input type="text" id="FlightName" name="FlightName"></span></td>
								<th scope="row">노선</th>
								<td colspan="3"><span><input type="text" id="RouteLine" name="RouteLine"></span></td>
							</tr>
							<tr>
								
								<th scope="row">출발지</th>
								<td><span><input type="text" id="DepName" name="DepName"></span></td>
								<th scope="row">출발 날짜</th>
								<td><span><input type="text" id="DepDate" name="DepDate"></span></td>
								<th scope="row">출발 시간</th>
								<td><span><input type="text" id="DepTime" name="DepTIme"></span></td>
							</tr>
							<tr>
								<th scope="row">도착지</th>
								<td><span><input type="text" id="ArrName" name="ArrName"></span></td>
								<th scope="row">도착 날짜</th>
								<td><span><input type="text" id="ArrDate" name="ArrDate"></span></td>
								<th scope="row">도착 시간</th>
								<td><span><input type="text" id="ArrTime" name="ArrTime"></span></td>
							</tr>
						</tbody>
						
					</table>
				</div>	
				
					<div class="tbl-input-row01 mgt20 RT" style="display:none;">
					<table id="Reservation_FlightData" >
						<colgroup>
							<col style="width:20%">
						</colgroup>
						
						<tbody>
						<tr>
							<th scope="row">예약 번호</th>
								<td><span><input type="text" id="RTReservationNumber" name="ReservationNumber"></span></td>
							<th scope="row">예약 날짜</th>
								<td><span><input type="text" id="RTReservationDate" name="ReservationDate"></span></td>
						</tr>
							<tr>
								<th scope="row">항공기편</th>
								<td><span><input type="text" id="RTFlightName" name="FlightName"></span></td>
								<th scope="row">노선</th>
								<td colspan="3"><span><input type="text" id="RTRouteLine" name="RouteLine"></span></td>
							</tr>
							<tr>
								
								<th scope="row">출발지</th>
								<td><span><input type="text" id="RTDepName" name="DepName"></span></td>
								<th scope="row">출발 날짜</th>
								<td><span><input type="text" id="RTDepDate" name="DepDate"></span></td>
								<th scope="row">출발 시간</th>
								<td><span><input type="text" id="RTDepTime" name="DepTIme"></span></td>
							</tr>
							<tr>
								<th scope="row">도착지</th>
								<td><span><input type="text" id="RTArrName" name="ArrName"></span></td>
								<th scope="row">도착 날짜</th>
								<td><span><input type="text" id="RTArrDate" name="ArrDate"></span></td>
								<th scope="row">도착 시간</th>
								<td><span><input type="text" id="RTArrTime" name="ArrTime"></span></td>
							</tr>
						</tbody>
						
					</table>
				</div>	
			</div>

			<div class="booking-table-title mgt20">
				<h3 class="table-title-mid mgr25">탑승객 정보</h3>
			</div>
			   
			<div id="Show_reservation_Result" class="mgt50">
				<div class="tbl-input-row01 mgt20" >
					<table id="Reservation_PersonData">
						<colgroup>
							<col style="width:20%">
						</colgroup>
						
						<tbody>
							<tr>
								<th scope="row">성명</th>
								<td><span><input type="text" id="AdtName1" name="AdtName1"></span></td>
								<th scope="row">성별</th>
								<td><span><input type="text" id="AdtGender1" name="AdtName1"></span></td>
								<th scope="row">여권 번호</th>
								<td><span><input type="text" id="AdtPass1" name="AdtPass1"></span></td>
			
							</tr>
							<tr>
							
							</tr>
						</tbody>
						
					</table>
				</div>	
			</div>


			<div class="booking-table-title mgt20">
				<h3 class="table-title-mid mgr25">결제 현황</h3>
			</div>
			
			<div id="Pay_InfomationDIV" class="mgt50">
				<div class="total-price" 
						style="    padding: 18px 20px 18px; 
   										 background-color: #efefef;
   										 ">
   					<table>
						<td><span style="font-weight: bold; font-size: 18px;">총액</span></td>
						<td style="text-align: right;"><em class="unit" style="font-size: 16px; font-weight:bold; color:#e21b72; ">KRW</em>
					<em class="price" style="font-size: 26px; text-align: right; "></em></td>		
					</table>
					</div>
			</div>
			
				<div class="pdt30 tc">
							<button onclick="fn_goMain();" type="button" class="btn-type01-col01" id="BtnComplete">메인으로</button>
				</div>
			
		</div>
	</div>
</div>

<script>
fn_ShowDatas();
function fn_goMain(){
	location.href="mainIndex.bo";
}
$(document).ready(function(){
	$(".OWtab").on("click", function(){
		$(".RTtab").removeClass("clicked");
		$(".OWtab").addClass("clicked");
		$(".OW").css("display","block");
		$(".RT").css("display","none");
	});
	
	$(".RTtab").on("click", function(){
		$(".OWtab").removeClass("clicked");
		$(".RTtab").addClass("clicked");
		$(".OW").css("display","none");
		$(".RT").css("display","block");
	});
});

</script>