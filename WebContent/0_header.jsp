<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" session="false"%>

<!DOCTYPE html>

<div id="header" >
	<div id="headerContent">
		<div class="hgroup" style="display:block;">
		 	<h1 class="logo">
		 	<a href="mainIndex.bo"><img src="./images/common/img_logo01.png" alt="AIR NINE"></a></h1>


			 <div class="hrgroup" id="flagLogin">

			 	<span class="login" id="loginSpan"><a href="LoginJoin.bo">로그인</a></span>
			 	<span class="member jsHrgroup"> 
			 		<a href="#this">마이 페이지</a>
			 		<ul class="hrgroup-list">
			 			<li><a href="#this">나의 스탬프</a></li>
			 			<li><a href="#this">회원정보 수정</a></li>
			 			<li><a href="#this">회원 탈퇴</a></li>
			 		</ul>
			 	</span>
			 	<span class="customer jsHrgroup">
			 		<a href="Company.bo">회사 소개</a>
			 		<ul class="hrgroup-list">
			 			<li><a href="Company.bo">개요</a></li>
			 			<li><a href="Company_ceo.bo">CEO 인사말</a></li>
			 			<li><a href="Company_philo.bo">기업철학</a></li>
			 			<li><a href="Company_hang.bo">항공기 안내</a></li>
			 		</ul>
			 	</span>
			 </div>
			</div>
			
			<div id="smallHeader" style="display:none; top:-40px;">
				<div class="small-head">
					<h1 class="logo"><a href="mainIndex.bo"><img src="./images/common/img_logo02.png" alt="AIR WILL"></a></h1>
				</div>
			</div>
				
			<div id="gnb" class="js-gnb">
			 	<ul class="depth01">

	  	         	
	  	         	 <li class="depth01Lists">
	  	         	 	<form name="booking" action="viewBooking.bo" method="POST">	
	          	 	    	<input type="hidden" name="viewBooking" value="viewBooking.bo">
	         	     	</form>
			        	 <a href="javascript:document.booking.submit();">항공권 예약</a>
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
					           <a href="#this">공항 서비스</a>
					       </li>
						       <li class="depth02Lists">
					           <a href="Info_seat.bo">기내 서비스</a>
					           </li>
					       <li class="depth02Lists">
					           <a href="Info_map.bo">항공 노선도</a>
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
					           <a href="#this">호텔</a>
					       </li>
							       <li class="depth02Lists">
					           <a href="#this">렌터카</a>
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
					           <a href="#this">공지사항</a>
					       </li>
      				       <li class="depth02Lists">
					           <a href="#this">미디어룸</a>
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
</div>

<script>
console.log($("#userId").val());
</script>