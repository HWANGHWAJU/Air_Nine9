<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="false"%>
<%@ page import="dto.*" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%

	HttpSession sess = request.getSession();
	LoginUser user = (LoginUser)sess.getAttribute("User");	
	
	String id="";
	
	if(user != null){
		id = user.getMember_id();
		request.getSession().setAttribute("id", id);
	}
	
 %>


<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>메인 | 에어나인</title>
 <link rel="stylesheet" type="text/css" href="stylesheets/main/main.css">
    
  <link rel="stylesheet" type="text/css" href="stylesheets/sub/company.css">  
  <link rel="stylesheet" type="text/css" href="stylesheets/common/common.css">
  <link rel="stylesheet" type="text/css" href="stylesheets/sub/board.css">  
  <link rel="stylesheet" type="text/css" href="stylesheets/sub/service.css">
  <link rel="stylesheet" type="text/css" href="stylesheets/sub/utile.css">
  <link rel="stylesheet" type="text/css" href="stylesheets/sub/swiper.min.css">
  <link rel="stylesheet" type="text/css" href="stylesheets/sub/air_booking.css">
	<link rel="stylesheet" type="text/css" href="stylesheets/sub/booking.css">    
    
    <script type="text/javascript" src="javascripts/jquery-1.9.0.min.js"></script>
    <script type="text/javascript" src="javascripts/jquery.placeholder.js" ></script>
	
   <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script type="text/javascript" src="javascripts/moment.js"></script>
<!-- 	<script type="text/javascript" src="javascripts/jquery.oLoader.js"></script>
    <script type="text/javascript" src="javascripts/jquery.oLoader.min.js"></script> -->
	<script type="text/javascript" src="_nineJs/nine.js"></script>
</head>
<body>

<div id="wrap" class="${requestScope.wrap}">

	<!-- header -->
	<div id="header" >
		<div id="headerContent">
			<div class="hgroup" style="display:block;">
			 	<h1 class="logo">
			 	<a href="mainIndex.bo"><img src="./images/common/img_logo01.png" alt="AIR NINE"></a></h1>
	
	
				 <div class="hrgroup" id="flagLogin">
	
				<% if(user == null){ %>
				 	<span class="login" id="loginSpan"><a href="LoginJoin.bo">로그인</a></span>
				 	<span class="member jsHrgroup"> 
				 		<a href="#this">마이 페이지</a>
				 		<ul class="hrgroup-list">
				 			<li><a href="#this">나의 스탬프</a></li>
				 			<li><a href="#this">회원정보 수정</a></li>
				 			<li><a href="#this">회원 탈퇴</a></li>
				 		</ul>
				 	</span>
				<%}else{ %>
				 	<span class="login" id="loginSpan"><a href="none"><%=id %>님 안녕 : )</a></span>
				 	<span class="member jsHrgroup"> 
				 		<a href="#this">마이 페이지</a>
				 		<ul class="hrgroup-list">
				 			<li><a href="Mystamp.me">나의 스탬프</a></li>
				 			<li><a href="MemberModify.me?member_id=<%=id%>">회원정보 수정</a></li>
				 			<li><a href="MemberLogout.me">로그아웃</a></li>
				 			<li><a href="#this">회원 탈퇴</a></li>
				 		</ul>
				 	</span>
				<%} %>
				
				
				
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
	<!-- header -->
<script type="text/javascript">

var WrapClass=$("#wrap").attr("class");
console.log("Wrap Class :"+WrapClass);

if(WrapClass == "booking booking-step-on"){
	$("#smallHeader").css("display","block");
	$("#smallHeader").css("top","0px");
}

</script>
	
	
	<!-- container -->
	<div>
	
	
		<c:set var="page"  value="${param.page }"/>
		<c:choose>
			<c:when test="${page == null }">
			<c:set var="page" value="mainPage.jsp"/>
			</c:when>
		</c:choose>
		
		<jsp:include page="${page }"/>
	
	</div>
	<!-- container -->
	

	<!-- footer -->
	<div>
		<div id="footer">
		<div class="footer_inner">
			<div class="footer-top-list">
                <ul>
                    
                    <li><a href="#this"><!-- 국제운송약관 -->국제운송약관</a></li>
                    
                    
                    <li><a href="#this"><!-- 홈페이지 이용약관 -->홈페이지 이용약관</a></li>
                    <li><a href="#this"><strong><!-- 개인정보취급방침 -->개인정보 처리방침</strong></a></li>
                    
                    <li><a href="#this"><!-- 이메일무단수집거부 -->이메일무단수집거부</a></li>
                    
                    <li><a href="#this"><!-- 항공 교통 이용자 서비스 계획 -->항공교통이용자 서비스 계획</a></li>
                    <li><a href="#this"><!-- 소비자 안전 관련 정보 공개 -->소비자 안전 관련 정보 공개</a></li>
                    <li><a href="#this"><!-- 운임 및 요금 안내 -->운임 및 요금 안내</a></li>
                </ul>
            </div> <!-- footer top list -->
			
			<div class="footer_content">
                <div class="foonter_wd100">
	                
	                <div class="footer-family-site">
                        <div class="footer-family-site_inner clear_fix">
		                    <span class="select js-selectbox01">
		                        <!-- 2016-08-04 변경(S) -->
		                        <div class="group-link-list">
		                            <button type="button" title="그룹사 바로가기 열기" class="group-btn"><span><!-- 그룹사 바로가기 -->그룹사 바로가기</span></button>
		                            <div class="group-link" style="display: none;">
		                                <ul>
		                                    <li><a href="http://www.kumhoasiana.com/" target="_blank" title="새창 금호아시아나그룹 홈페이지"><!-- 금호아시아나그룹 -->금호아시아나그룹</a></li>
		                                    <li><a href="http://www.kumhobuslines.co.kr/" target="_blank" title="새창 금호고속 홈페이지"><!-- 금호고속 -->금호고속</a></li>
		                                    <li><a href="http://www.usquare.co.kr/" target="_blank" title="새창 금호터미널 홈페이지"><!-- 금호터미널 -->금호터미널</a></li>
		                                    <li><a href="http://www.kumhotire.co.kr" target="_blank" title="새창 금호타이어 홈페이지"><!-- 금호타이어 -->금호타이어</a></li>
		                                    <li><a href="http://www.kumhoenc.com" target="_blank" title="새창 금호건설 홈페이지"><!-- 금호건설 -->금호건설</a></li>
		                                    <li><a href="http://flyasiana.com/" target="_blank" title="새창 아시아나항공 홈페이지"><!-- 아시아나항공 -->아시아나항공</a></li>
		                                    <li><a href="http://www.asianaidt.com/" target="_blank" title="새창 아시아나IDT 홈페이지"><!-- 아시아나IDT -->아시아나IDT</a></li>
		                                    <li><a href="http://www.kumhoresort.co.kr/" target="_blank" title="새창 금호리조트 홈페이지"><!-- 금호리조트 -->금호리조트</a></li>
		                                    <li><a href="http://www.airbusan.com/" target="_blank" title="새창 에어부산 홈페이지"><!-- 에어부산 -->에어부산</a></li>
		                                    <li><a href="http://www.asianaairport.com/" target="_blank" title="새창 아시아나에어포트 홈페이지"><!-- 아시아나에어포트 -->아시아나에어포트</a></li>
		                                    <li><a href="http://www.asianasabre.co.kr/" target="_blank" title="새창 아시아나세이버 홈페이지"><!-- 아시아나세이버 -->아시아나세이버</a></li>
		                                    <li><a href="http://www.kacf.net/" target="_blank" title="새창 금호아시아나문화재단 홈페이지"><!-- 금호아시아나문화재단 -->금호아시아나문화재단</a></li>
		                                    <li><a href="http://www.kumhoedunet.co.kr" target="_blank" title="새창 금호아시아나인재개발원 홈페이지"><!-- 금호아시아나인재개발원 -->금호아시아나인재개발원</a></li>
		                                    
		                                </ul>
		                                <button type="button" class="group-close-btn"><span><!-- 그룹사 바로가기 닫기 -->그룹사 바로가기 닫기</span></button>
		                            </div>
		                        </div>
		                    </span>
		                    <!-- 20160909 추가 -->
                            <div class="blet_list_typeA clear_fix">
                                 <ol class="clear_fix">
                                    <li>
                                        <a href="http://www.kumhoasiana.com/ " target="_blank" title="새창 금호아시아나그룹 홈페이지"><!-- 금호아시아나그룹 --><img src="images/common/f_icon_img1.png" alt=""></a>
                                        <span>금호아시아나그룹</span>
                                    </li>
                                    <li>
                                        <a href="http://www.kumhobuslines.co.kr/ " target="_blank" title="새창 금호고속 홈페이지"><!-- 금호고속 --><img src="images/common/f_icon_img2.png" alt=""></a>
                                        <span>금호고속</span>
                                     </li>
                                     <li>
                                        <a href="http://www.usquare.co.kr/ " target="_blank" title="새창 금호터미널 홈페이지"><!-- 금호터미널 --><img src="images/common/f_icon_img3.png" alt=""></a>
                                        <span>금호터미널</span>
                                     </li>
                                     <li>
                                        <a href="http://www.kumhotire.co.kr " target="_blank" title="새창 금호타이어 홈페이지"><!-- 금호타이어 --><img src="images/common/f_icon_img4.png" alt=""></a>
                                        <span>금호타이어</span>
                                     </li>
                                     <li>
                                        <a href="http://www.kumhoenc.com" target="_blank" title="새창 금호건설 홈페이지"><!-- 금호건설 --><img src="images/common/f_icon_img5.png" alt=""></a>
                                        <span>금호건설</span>
                                     </li>
                                     <li>
                                        <a href="http://flyasiana.com/ " target="_blank" title="새창 아시아나항공 홈페이지"><!-- 아시아나항공 --><img src="images/common/f_icon_img6.png" alt=""></a>
                                        <span>아시아나항공</span>
                                     </li>
                                     <li>
                                        <a href="http://www.asianaidt.com/ " target="_blank" title="새창 아시아나IDT 홈페이지"><!-- 아시아나IDT --><img src="images/common/f_icon_img7.png" alt=""></a>
                                        <span>아시아나IDT</span>
                                     </li>
                                     <li>
                                        <a href="http://www.kumhoresort.co.kr/ " target="_blank" title="새창 금호리조트 홈페이지"><!-- 금호리조트 --><img src="images/common/f_icon_img8.png" alt=""></a>
                                        <span>금호리조트</span>
                                     </li>
                                     <li>
                                        <a href="http://www.airbusan.com/ " target="_blank" title="새창 에어부산 홈페이지"><!-- 에어부산 --><img src="images/common/f_icon_img9.png" alt=""></a>
                                        <span>에어부산</span>
                                     </li>
                                     <li>
                                        <a href="http://www.asianaairport.com/ " target="_blank" title="새창 아시아나에어포트 홈페이지"><!-- 아시아나에어포트 --><img src="images/common/f_icon_img10.png" alt=""></a>
                                        <span>아시아나에어포트</span>
                                     </li>
                                     <li>
                                        <a href="http://www.asianasabre.co.kr/ " target="_blank" title="새창 아시아나세이버 홈페이지"><!-- 아시아나세이버 --><img src="images/common/f_icon_img11.png" alt=""></a>
                                        <span>아시아나세이버</span>
                                     </li>
                                     <li>
                                        <a href="http://www.kacf.net/ " target="_blank" title="새창 금호아시아나문화재단 홈페이지"><!-- 금호아시아나문화재단 --><img src="images/common/f_icon_img12.png" alt=""></a>
                                        <span>금호아시아나문화재단</span>
                                     </li>
                                     <li>
                                        <a href="http://www.kumhoedunet.co.kr " target="_blank" title="새창 금호아시아나인재개발원 홈페이지"><!-- 금호아시아나인재개발원 --><img src="images/common/f_icon_img13.png" alt=""></a>
                                        <span>금호아시아나인재개발원</span>
                                     </li>
                                 </ol>
                            </div> <!-- blet list type -->
                        </div> <!-- family site inner -->
	                 </div> <!-- family site -->
	                 
	                
	                
	                
	                
	                <div class="footer_utilMenu_box clear_fix">
		                <h1 class="footer_logo"><a href="#link"><img src="images/common/img_footer_logo02.png" alt="AIR SEOUL"></a></h1>
		                <div class="footer-info-box">
                            <span><a href="/CW/ko/site_map.do" class="btn-type04-col01 mgr5"><!-- 사이트맵 -->사이트맵</a></span>
                            <span><a href="/CW/ko/faqList.do" class="btn-type04-col01 mgr5"><!-- 자주하는 질문 -->자주묻는질문</a></span>
                            <span><a href="javascript:loginCheck('qna');" class="btn-type04-col01 mgr5"><!-- 1:1문의 -->1:1 문의</a></span>
                            <span><a href="https://www.facebook.com/AirSeoul" target="_blank" title="Facebook  바로가기 [새창열림]" class="btn-type04-col05 mgr5"><img src="images/common/f_icon_facebook.png" alt="facebook"></a></span>
                            <span><a href="https://www.instagram.com/airseoul_official/" target="_blank" title="인스타그램 바로가기 [새창열림]" class="btn-type04-col05 mgr5"><img src="images/common/f_icon_instagram.png" alt="instagram"></a></span>
                            <span><a href="https://www.youtube.com/airseoul" target="_blank" title="유투브 홈페이지 바로가기[새창열림]" class="btn-type04-col05 mgr5"><img src="images/common/f_icon_youtube.png" alt="youtube"></a></span>
                        </div>
                    </div> <!-- footer uitlMenu -->
                    
					<div class="footer-address"> 
	                    <div class="footer-info-lists">
	                        <span><!-- 에어서울 주식회사 대표이사 류광희 -->에어서울 주식회사 대표이사 류광희</span>
	                        <span><!-- (우)03185 서울특별시 종로구 새문안로 76 금호아시아나 본관 -->(우)03185 서울특별시 종로구 새문안로 76 금호아시아나 본관</span>
	                    </div>
	                    <div class="footer-info-lists">
	                        <span><!-- 국제선 예약 1800-8100 -->국제선 예약 1800-8100</span><!-- 2016-08-05 추가 -->
	                        <span><!-- 사업자 등록 번호 : 825-81-00091 -->사업자 등록 번호 : 825-81-00091 <a href="http://ftc.go.kr/info/bizinfo/communicationList.jsp" target="_blank" class="btn_business" title="새창"><!-- 사업자정보확인 -->사업자정보확인</a></span>
                            <span><!-- 통신판매업 신고번호 제 2016-인천중구-0199 -->통신판매업 신고번호 제 2016-인천중구-0199</span>
	                    </div>
	                    <div class="footer-info-lists">
	                        
	                        <span><!-- 호스팅 서버 위치 : 아시아나IDT(주) 전산센터(서울 강서구 오쇠동) -->호스팅 서버 위치 : 아시아나IDT(주) 전산센터(서울 강서구 오쇠동)</span>
	                        
	                        <span><!-- 개인정보관리책임자 경영본부장 상무 조진만 -->개인정보보호책임자 경영본부장 조진만</span>
	                    </div>
	                    <p class="copyright">ⓒ AIR SEOUL, Inc. All Rights Reserved.</p>
	                </div> <!-- footer address -->
				</div> <!-- foonter -->
			</div>
			 <!-- footer content -->
			
		    
		    
		    
		    
			<!-- 20160706 수정 -->
		    <div class="footer_sublogo">
		        <ul>
		            <li><a href="http://www.i-award.or.kr/Web/" target="_blank" title="WEB AWARD 13th WINNER 홈페이지 바로가기[새창열림]"><img src="images/common/img_web_award.jpg" alt="WEB AWARD 13th WINNER"></a></li>
		            <li><a href="http://www.i-award.or.kr/Smart/" target="_blank" title="APP AWARD 16 WINNER 홈페이지 바로가기[새창열림]"><img src="images/common/img_app_award.jpg" alt="APP AWARD 16 WINNER"></a></li>
		            <li><a href="http://gd.kidp.or.kr/" target="_blank" title="우수디자인 산업통상자원부선정 홈페이지 바로가기[새창열림]"><img src="images/common/img_goodDesign.jpg" alt="우수디자인 산업통상자원부선정"></a></li>
		            <li><a href="http://www.vkc.or.kr/" target="_blank" title="2016-2018 한국방문의해 홈페이지 바로가기 [새창열림]"><img src="images/common/img_visit.jpg" alt="2016-2018 한국방문의해"></a></li>
		            <li><a href="http://www.kumhoasiana.com/main/main.asp" target="_blank" title="금호아시아나 홈페이지 바로가기[새창열림]"><img src="images/common/img_flyasiana.jpg" alt="금호아시아나"></a></li>
                    
		        </ul>
		    </div> <!-- footer sublog -->
		    
		    <!--// 20160706 수정 -->
		</div>
		<!-- footer inner -->
		<div class="scroll-top-btn">
            <button type="button"><img src="images/common/btn_top.gif" alt="페이지 최상단으로 이동"></button>
        </div>
        
         <form name="boardForm" id="boardForm" method="POST">
           <input type="hidden" name="seq" id="seq">
           <input type="hidden" name="pageNo" id="pageNo" value="1">
         </form> 
            
          <form name="eventForm" id="eventForm" method="POST">
            <input type="hidden" name="type" id="type">
            <input type="hidden" name="seq" id="eSeq">
        </form> 
        
        <form name="qnaForm" id="qnaForm" method="POST">
           <input type="hidden" name="seq" id="qSeq">
           <input type="hidden" name="id" id="qnaMId">
           <input type="hidden" name="pageNo" id="pageNo" value="1">
           <input type="hidden" name="term" id="term_sub">
         </form>
         
         <form name="qnaFormTop" id="qnaFormTop" method="POST">
           <input type="hidden" name="id" id="qnaId">
           <input type="hidden" name="pageNo" id="pageNo" value="1">           
         </form>
         
         
          <form name="rsvForm" id="rsvForm" method="POST">
            <input type="hidden" name="viewBooking">                      
         </form>     
         
         <form name="reservationSchedule" action="/I/ko/viewScheduleSearch.do" method="POST">
	        <input type="hidden" name="reservationSchdule" value="#link">
	    </form>
	    <form name="reservationInOut" action="/I/ko/viewFlightSearch.do" method="POST">
	        <input type="hidden" name="reservationInOut" value="#link">
	    </form>
          
	</div>
	
	</div>
	<!-- footer -->

</div>


</body>
</html>