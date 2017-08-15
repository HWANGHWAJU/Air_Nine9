<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%

String id = "hyunju";
String email ="hyunju.it2@gmail.com";
String gender="F";
String last = "LEE";
String first ="HYUNJU";

request.getSession().setAttribute("id", id);
request.getSession().setAttribute("email",email);
request.getSession().setAttribute("gender",gender);
request.getSession().setAttribute("last", last);
request.getSession().setAttribute("first",first);

%>
<html lang="ko" class="gr__flyairseoul_com"><head> 
    <meta charset="UTF-8">
    <meta name="viewport" content="width=1200">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Expires" content="-1">
    <meta http-equiv="Content-Security-Policy" content="default-src *; script-src 'self' 'unsafe-inline' 'unsafe-eval' *; style-src  'self' 'unsafe-inline' *">
    <meta content="text/html; charset=UTF-8; X-Content-Type-Options=nosniff" http-equiv="Content-Type">
    <meta http-equiv="X-XSS-Protection" content="0">    
    <title>01. 여정 &lt; 항공권예약 &lt; AIR SEOUL</title>
    <link rel="shortcut" type="image/x-icon" href="images/common/favicon.ico">
    
 <link rel="stylesheet" type="text/css" href="stylesheets/main/main.css">
    
  <link rel="stylesheet" type="text/css" href="stylesheets/sub/company.css">  
  <link rel="stylesheet" type="text/css" href="stylesheets/common/common.css">
  <link rel="stylesheet" type="text/css" href="stylesheets/sub/board.css">  
  <link rel="stylesheet" type="text/css" href="stylesheets/sub/service.css">
  <link rel="stylesheet" type="text/css" href="stylesheets/sub/utile.css">
  <link rel="stylesheet" type="text/css" href="stylesheets/sub/swiper.min.css">
  <link rel="stylesheet" type="text/css" href="stylesheets/sub/air_booking.css">
	<link rel="stylesheet" type="text/css" href="stylesheets/sub/booking.css">    
	<link rel="stylesheet" type="text/css" href="stylesheets/sub/AfterReservationcss.css">    

	  
    <script type="text/javascript" src="javascripts/jquery-1.9.0.min.js"></script>
    <script type="text/javascript" src="javascripts/jquery.placeholder.js" ></script>
    <script type="text/javascript" src="javascripts/moment.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script type="text/javascript" src="_nineJs/nine.js"></script>
<!-- 	<script type="text/javascript" src="_nineJs/nineBooking.js"></script> -->


</head>


<body data-gr-c-s-loaded="true" style="zoom: 1; overflow-y: scroll;">
<div id="skipNavigation" tabindex="-1">
    <ul>
        <li><a href="#content">본문 바로가기</a></li>
        <li><a href="#gnb">주메뉴 바로가기</a></li>
    </ul>
</div>
<!-- wrap -->
<input type="hidden" id="memID" value="<%=id %>">
<input type="hidden" id="memEMAIL" value="<%=email %>">
<input type="hidden" id="memGender" value="<%=gender %>">
<input type="hidden" id="memLast" value="<%=last %>">
<input type="hidden" id="memFirst" value="<%=first %>">

<div id="wrap" class="board">

<div id="header" >
	<div id="headerContent">
		<div class="hgroup" style="display:block;">
		 	<h1 class="logo">
		 	<a href="mainIndex.bo"><img src="./images/common/img_logo01.png" alt="AIR NINE"></a></h1>
		 
			 <div class="hrgroup" id="flagLogin">
			 	<span class="login" id="loginSpan"><a href="#this">로그인</a></span>
			 	<span class="member jsHrgroup"> 
			 		<a href="#this">마이 페이지</a>
			 		<ul class="hrgroup-list">
			 			<li><a href="#this">나의 스탬프</a></li>
			 			<li><a href="#this">회원정보 수정</a></li>
			 			<li><a href="#this">회원 탈퇴</a></li>
			 		</ul>
			 	</span>
			 	<span class="customer jsHrgroup">
			 		<a href="#">회사 소개</a>
			 		<ul class="hrgroup-list">
			 			<li><a href="#">개요</a></li>
			 			<li><a href="#">CEO 인사말</a></li>
			 			<li><a href="#">기업철학</a></li>
			 			<li><a href="#">연혁</a></li>
			 			<li><a href="#">항공기 안내</a></li>
			 		</ul>
			 	</span>
			 </div>
			</div>
			
			<div id="smallHeader" style="display:none; top:0px;">
				<div class="small-head">
					<h1 class="logo"><a href="mainIndex.bo"><img src="./images/common/img_logo02.png" alt="AIR WILL"></a></h1>
				</div>
			</div>
				
			<div id="gnb" class="js-gnb">
			 	<ul class="depth01">
			        <form name="booking" action="/I/ko/viewBooking.do" method="POST">	
	          	 	    <input type="hidden" name="viewBooking" value="">
	         	     </form>
        	
	  	         	 <li class="depth01Lists">
			        	 <a href="javascript:booking();">항공권 예약</a>
				     		 <ul class="depth02" style="display: none;"></ul>
	 				</li>
		   	       <li class="depth01Lists">
		              
	                      <form name="reservationList1" action="viewReservationList.bo" method="POST">
	                        <input type="hidden" name="viewReservationList1" value="viewReservationList.bo">
	                      </form>
	 	   	           <a href="javascript:document.reservationList1.submit();">예약 조회/변경</a>
		      			<ul class="depth02" style="display: none;">
				 					       <li class="depth02Lists">
						                              <form name="reservationList2" action="viewReservationList.bo" method="POST">
						                                <input type="hidden" name="viewReservationList2" value="viewReservationList.bo">
						                              </form>
									           <a href="javascript:document.reservationList2.submit();">예약 조회/변경/환불</a>
									       </li>
								       <li class="depth02Lists">
						                              <form name="checkInList" action="viewCheckInList.bo" method="POST">
						                                <input type="hidden" name="viewCheckInList" value="viewCheckInList.bo">
						                              </form>
										           <a href="javascript:document.checkInList.submit();">온라인 체크인</a>
									       </li>
							</ul>
 				</li>
		          <li class="depth01Lists">
		              <a href="Info_FlightMain.bo">서비스 안내</a>
							<ul class="depth02" style="display: none;">
			    				       <li class="depth02Lists">
								           <a href="Info_reservation.bo">항공권 안내</a>
								       </li>
									       <li class="depth02Lists">
								           <a href="Opt_Main.bo">부가 서비스 구매</a>
								       </li>
									       <li class="depth02Lists">
								           <a href="/CW/ko/online-check-in.do">공항 서비스</a>
								       </li>
									       <li class="depth02Lists">
								           <a href="/CW/ko/cabin.do">기내 서비스</a>
								       </li>
									       <li class="depth02Lists">
									           <a href="/CW/ko/infant.do">도움이 필요한 고객</a>
								       </li>
			   				       <li class="depth02Lists">
									           <a href="/CW/ko/mobile.do">모바일 서비스</a>
								       </li>
								       <li class="depth02Lists">
								           <a href="/CW/ko/download.do">양식 다운로드</a>
								       </li>
				 			</ul>
 				</li>
		          <li class="depth01Lists">
		              <a href="#this">Travel Information</a>
							<ul class="depth02" style="display: none;">
				 					       <li class="depth02Lists">
							           <a href="#this">취항지 소개</a>
									       </li>
										       <li class="depth02Lists">
									           <a href="javascript:hotel();" title="호텔홈페이지바로가기[새창열림]">호텔</a>
									       </li>
											       <li class="depth02Lists">
									           <a href="javascript:rentcar();" title="렌터카홈페이지바로가기[새창열림]">렌터카</a>
									       </li>
									       <li class="depth02Lists">
									           <a href="#this">여행자보험</a>
									       </li>
					 			</ul>
 					</li>
		     	     <li class="depth01Lists">
	   					  <a href="Event_Main.bo">이벤트/새소식</a>
								<ul class="depth02" style="display: none;">
					    			      <li class="depth02Lists">
									           <a href="Event_Main.bo">이벤트</a>
										       </li>
									       <li class="depth02Lists">
										           <a href="Event_specialprice.bo">특가존</a>
										       </li>
											       <li class="depth02Lists">
										           <a href="/CW/ko/noticeList.do">공지사항</a>
										       </li>
					      				       <li class="depth02Lists">
										           <a href="/CW/ko/printList.do">미디어룸</a>
										       </li>
								</ul>
 					</li>
			</ul>
</div>
	<!-- S :20161116_타이틀수정_함성재 -->
	<div class="btn-area">
	    <a href="#header" id="headerOpen" class="smallheader-btn01" style="display:block;"><!-- 주메뉴열기 -->주메뉴 열기</a>
	    <a href="#gnb" id="headerClose" class="smallheader-btn02" style="display: none;"><!-- 주메뉴닫기 -->주메뉴 닫기</a>
	</div>
	<!-- E : 20161116 타이틀수정_함성재 -->

	</div>
</div> <!-- header -->

	<form id="availInfoForm" name="availInfoForm" method="post" target="_self">
		<input type="hidden" name="hidBookConditionData">
	</form>	
	<input type="hidden" id="viewLayerGUMInformation" href="I/KO/viewGumInformation" class="jsOpenLayer">
	



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