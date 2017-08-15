<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="ko"><head> 
    <meta charset="UTF-8">
    <meta name="viewport" content="width=1200">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Expires" content="-1">
    <meta http-equiv="Content-Security-Policy" content="default-src *; script-src 'self' 'unsafe-inline' 'unsafe-eval' *; style-src  'self' 'unsafe-inline' *">
    <meta content="text/html; charset=UTF-8; X-Content-Type-Options=nosniff" http-equiv="Content-Type">
    <meta http-equiv="X-XSS-Protection" content="0">    
    <title>결제 | 항공권예약 | AIR SEOUL</title>
    <link rel="shortcut icon" type="image/x-icon" href="images/common/favicon.ico">

    
 <link rel="stylesheet" type="text/css" href="stylesheets/main/main.css">
    
  <link rel="stylesheet" type="text/css" href="stylesheets/sub/company.css">  
  <link rel="stylesheet" type="text/css" href="stylesheets/common/common.css">
  <link rel="stylesheet" type="text/css" href="stylesheets/sub/board.css">  
  <link rel="stylesheet" type="text/css" href="stylesheets/sub/service.css">
  <link rel="stylesheet" type="text/css" href="stylesheets/sub/utile.css">
  <link rel="stylesheet" type="text/css" href="stylesheets/sub/swiper.min.css">
  <link rel="stylesheet" type="text/css" href="stylesheets/sub/air_booking.css">
	<link rel="stylesheet" type="text/css" href="stylesheets/sub/booking.css">    
	  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">  
    
    <!-- 20160722 추가 -->
    <link rel="icon" href="images/common/favi_16x16.png" type="image/gif" sizes="16x16">
    <link rel="icon" href="images/common/favi_32x32.png" type="image/gif" sizes="32x32">
    <link rel="icon" href="images/common/favi_152x152.png" type="image/gif" sizes="152x152">
    <!-- //20160722 추가 -->
    
    <script type="text/javascript" src="javascripts/jquery-1.9.0.min.js" integrity="sha256-f6DVw/U4x2+HjgEqw5BZf67Kq/5vudRZuRkljnbF344=" crossorigin="anonymous"></script>
    <script type="text/javascript" src="javascripts/jquery.placeholder.js" integrity="sha256-D0z/WvHCFVmfM20arTM7cavf9COZnKP2APL1wgJM2zs=" crossorigin="anonymous"></script>
    <script type="text/javascript" src="javascripts/designCommon_onServer.js" integrity="sha256-zaUYj87NrCgWZiGpUuGSj6B3n4DDF1IB1kRTRi2nRM0=" crossorigin="anonymous"></script>
    <script type="text/javascript" src="javascripts/common.js" integrity="sha256-gpVqWCQma8Kcykn1BO/7ZMXi/hmAmI8j+kxGyFv0emY=" crossorigin="anonymous"></script>
    
    <!--  booking 용 -->
    <script type="text/javascript" src="/js/moment-with-locales.min.js" integrity="sha256-ux71WpItTNhT37K4H/K6736bh+ne8//2w1t5ON8EZZs=" crossorigin="anonymous"></script>
    <script type="text/javascript" src="/js/airs_common.js" integrity="sha256-Q3ppIiwonlHmJaWDxFetGb/j5b9oWjQrYvR3U/zP58M=" crossorigin="anonymous"></script>
    
    <script>
    var loginstr = '로그인';
    var logoutstr = '로그아웃';
    var hidLang = "ko";
    
    //페이징 다국어
    var PagingFirstTxt = "맨 처음 페이지로 이동"; //맨 처음 페이지로 이동
    var PagingPrevTxt = "이전 페이지로 이동"; //이전 페이지로 이동
    var PagingNextTxt = "다음 페이지로 이동"; //다음 페이지로 이동
    var PagingLastTxt = "맨 마지막 페이지로 이동"; //맨 마지막 페이지로 이동
        
    //designcommonjs 다국어
    var layerPopOpenTxt = "레이어 팝업 열기";//레이어 팝업 열기
    var layerPopCloseTxt = "레이어 팝업 닫기";//레이어 팝업 닫기
    
    var locationOpenTxt = "열기";//열기
    var locationCloseTxt = "닫기";//닫기
    
    var selectChoiceTxt = "선택됨";//선택됨
    
    var acodianOpenTxt = "내용 열기";//내용 열기
    var acodianCloseTxt = "내용 닫기";//내용 닫기
    
    </script>
    <script type="text/javascript" src="javascripts/airs_login.js" integrity="sha256-11/Fa/hfFb7c8wHKNIZT5Vhbb0o0NqhXb2bvf5S6uAU=" crossorigin="anonymous"></script>
    <script type="text/javascript"> 
	function loadJsFile(tagUrl){
	       $.ajax( {
	             url : tagUrl,
	                xhrFields: {
	                  withCredentials: true
	                }
	        });
	}
</script>

</head>



  
<body style="zoom: 1; overflow-y: scroll;">
<div id="skipNavigation">
    <ul>
        <li><a href="#content">본문 바로가기</a></li>
        <li><a href="#gnb">주메뉴 바로가기</a></li>
    </ul>
</div>
<!-- wrap -->

<div id="wrap" class="booking booking-step-on">



<div id="header">	
	<div id="headerContent">
		<div class="hgroup" style="display: none;">
			<h1 class="logo"><a href="/CW/ko/main.do">
			<img src="images/common/img_logo01.png" alt="AIR SEOUL"></a></h1>
			<div class="hrgroup" id="flagLogin">
				<span class="login" id="loginSpan">
					<a href="/I/ko/executeLogout.do" style="cursor:pointer;" id="logout" class="">로그아웃</a>
				</span>
				<span class="member jsHrgroup">
					<!--<a href="#">회원가입</a>-->
					<a href="#">마이페이지</a>
					<ul class="hrgroup-list">
						<li><a href="javascript:loginCheck('coupon');">나의 쿠폰</a></li>
						<li><a href="javascript:loginCheck('mod');">회원정보 수정</a></li>
						<li><a href="javascript:loginCheck('del');">회원탈퇴</a></li>
					</ul>
				</span>
				<span class="customer jsHrgroup">
                    
                    <a href="/CW/ko/company.do"><!-- 회사소개 -->회사소개</a>
                    <ul class="hrgroup-list">
                        <li><a href="/CW/ko/company.do"><!-- 회사소개 -->개요</a></li>
                        <li><a href="/CW/ko/ceoGreeting.do"><!-- CEO 인사말 -->CEO 인사말</a></li>
                        <li><a href="/CW/ko/philosophy.do"><!-- 기업철학 -->기업철학</a></li>
                        <li><a href="/CW/ko/history.do"><!-- 연혁 -->연혁</a></li>
                        <li><a href="/CW/ko/ci.do"><!-- CI -->CI</a></li>
                        <li><a href="/CW/ko/aircraft.do"><!-- 항공기 안내 -->항공기 안내</a></li>
                    </ul>
				</span>
				<span class="lang jsHrgroup"><!--  다국어 오픈지  lang jsHrgroup 으로 변경 -->
                    <a href="javascript:langchange('ko');"><span class="country">한국어</span></a> 
                     
                     
                     
                     
                    <ul class="hrgroup-list">
                        
                        <li><a href="javascript:langchange('en');"><span class="country">English</span></a></li>
                        <li><a href="javascript:langchange('ja');"><span class="country">日本語</span></a></li>
                        <li><a href="javascript:langchange('ch');"><span class="country">简体中文</span></a></li>
                        <li><a href="javascript:langchange('zh');"><span class="country">繁體中文</span></a></li>
                    </ul>
				</span>
			</div>
		</div>
		<div id="smallHeader">
			<div class="small-head">
				<h1 class="logo"><a href="/CW/ko/main.do"><img src="images/common/img_logo02.png" alt="AIR SEOUL"></a></h1>
			</div>
		</div>
		

<div id="gnb" class="js-gnb">
 	<ul class="depth01">
		 
		      
		          
                      <form name="booking" action="/I/ko/viewBooking.do" method="POST">
                        <input type="hidden" name="viewBooking" value="">
                      </form>
                      
                  
		          
		      
		      
		          <li class="depth01Lists">
		              
		              <a href="javascript:booking();">항공권 예약</a>
		      
		       
 			<ul class="depth02">
 			     
 				
 				
 			</ul>
 		</li>
		
		      
		          
		          
		              
		          
		      
		      
		          <li class="depth01Lists">
		              
	                      <form name="reservationList1" action="/I/ko/viewReservationList.do" method="POST">
	                        <input type="hidden" name="viewReservationList1" value="/I/ko/viewReservationList.do">
	                      </form>
	                      
	                  
		              <a href="javascript:document.reservationList1.submit();">예약 조회/변경</a>
		      
		       
 			<ul class="depth02">
 			     
 				
 				    
		                
                        
                        
                        
                        
		                
		                    
		                
		            
					
				 		
					       <li class="depth02Lists">
					            
		                              <form name="reservationList2" action="/I/ko/viewReservationList.do" method="POST">
		                                <input type="hidden" name="viewReservationList2" value="/I/ko/viewReservationList.do">
		                              </form>
		                              
		                          
		                          
					           <a href="javascript:document.reservationList2.submit();">예약 조회/변경/환불</a>
					       </li>
				    	
				 		
    				
 				
 				    
		                
                        
                        
                        
                        
		                
		                    
		                
		            
					
				 		
					       <li class="depth02Lists">
					            
		                          
		                              <form name="checkInList" action="/I/ko/viewCheckInList.do" method="POST">
		                                <input type="hidden" name="viewCheckInList" value="/I/ko/viewCheckInList.do">
		                              </form>
		                              
		                          
					           <a href="javascript:document.checkInList.submit();">온라인 체크인</a>
					       </li>
				    	
				 		
    				
 				
 				
 			</ul>
 		</li>
		
		      
		          
		          
		              
		          
		      
		      
		          <li class="depth01Lists">
		              
		              <a href="/CW/ko/booking_reservation.do">서비스 안내</a>
		      
		       
 			<ul class="depth02">
 			     
 				
 				    
		                
                        
                        
                        
                        
		                
		                    
		                
		            
					
				 		
					       <li class="depth02Lists">
					            
		                          
					           <a href="/CW/ko/booking_reservation.do">항공권 안내</a>
					       </li>
				    	
				 		
    				
 				
 				    
		                
                        
                        
                        
                        
		                
		                    
		                
		            
					
				 		
					       <li class="depth02Lists">
					            
		                          
					           <a href="/CW/ko/advance_seat_selection.do">부가 서비스 구매</a>
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
		              
		              <a href="/CW/ko/mint_story.do">Travel Information</a>
		      
		       
 			<ul class="depth02">
 			     
 				
 				    
		                
                        
                        
                        
                        
		                
		                    
		                
		            
					
				 		
					       <li class="depth02Lists">
					            
		                          
					           <a href="/CW/ko/mint_story.do">취항지 소개</a>
					       </li>
				    	
				 		
    				
 				
 				    
		                
                        
                            
                            
                        
                        
                        
                        
		                
		            
					
				 		
					       <li class="depth02Lists">
					            
		                          
					           <a href="javascript:hotel();" title="호텔홈페이지바로가기[새창열림]">호텔</a>
					       </li>
				    	
				 		
    				
 				
 				    
		                
                        
                        
                           
                           
                        
                        
                        
		                
		            
					
				 		
					       <li class="depth02Lists">
					            
		                          
					           <a href="javascript:rentcar();" title="렌터카홈페이지바로가기[새창열림]">렌터카</a>
					       </li>
				    	
				 		
    				
 				
 				    
		                
                        
                        
                        
                        
		                
		                    
		                
		            
					
				 		
					       <li class="depth02Lists">
					            
		                          
					           <a href="/I/ko/viewTravelInsurance.do">여행자보험</a>
					       </li>
				    	
				 		
    				
 				
 				
 			</ul>
 		</li>
		
		      
		          
		          
		              
		          
		      
		      
		          <li class="depth01Lists">
		              
		              <a href="/CW/ko/ingEvent.do">이벤트/새소식</a>
		      
		       
 			<ul class="depth02">
 			     
 				
 				    
		                
                        
                        
                        
                        
		                
		                    
		                
		            
					
				 		
					       <li class="depth02Lists">
					            
		                          
					           <a href="/CW/ko/ingEvent.do">이벤트</a>
					       </li>
				    	
				 		
    				
 				
 				    
		                
                        
                        
                        
                        
		                
		                    
		                
		            
					
				 		
					       <li class="depth02Lists">
					            
		                          
					           <a href="/CW/ko/specialPrice.do">특가존</a>
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
	    <a href="#header" id="headerOpen" class="smallheader-btn01"><!-- 주메뉴열기 -->주메뉴 열기</a>
	    <a href="#gnb" id="headerClose" class="smallheader-btn02" style="display: none;"><!-- 주메뉴닫기 -->주메뉴 닫기</a>
	</div>
	<!-- E : 20161116 타이틀수정_함성재 -->

<script>
$.ajax({
    type: 'POST',
    url: '/CW/ko/mb.do',
    success: function(result) {
        if(result.success){
        	var list = result.lists;
            var currentUrl =  document.location.pathname;
        	for (var i = 0; i < list.length ; i++ ){
        		if (list[i].openNow == "N"){
        			if (currentUrl == list[i].menuUrl){
        				alert(list[i].message);
        				history.back();
        			}
        		}
        	}
        }
        else {
            alert(result.errMsg);
        }
    }
});

</script>
	</div>
</div>
<script>
$(document).ready(function(){
	
	$("#loginSpan").find("a").on("click", function(){	
		var idStr = $("#loginSpan").find("a").attr("id");
		if(idStr == 'logout') {	
			location.href="/I/ko/executeLogout.do";
		} else {
		}
	});
	
	var special_pattern = /[&<>\"/]/gi;
	$("input").on("change", function(){		
		var txt = $(this).val();  
        if(special_pattern.test(txt)==true){
            var chaTxt = replaceXss(txt);        
            $(this).val(chaTxt); 
            return false;
        }       		  
	 });

	$("input").on("keyup", function(){
		var txt = $(this).val();  
        if(special_pattern.test(txt)==true){
            var chaTxt = replaceXss(txt);        
            $(this).val(chaTxt); 
            return false;
        }  	
   });
	
	
});

function gofagList(){
	location.href = "/CW/ko/qna_list.do?id=" + _userId;
}

function langchange(lang){
    var temp = window.location.pathname.split("/");     //현재경로 /로 자르기
    temp[1]="CW";
    temp[2]=lang;                                                   //두번째 경로 클릭한 언어로 바꾸기
    temp[3]="main.do";
    var goPage = "";
    for(var i = 1; i < temp.length; i++){                     //바꾼 경로 다시 붙이기
        	goPage += "/"+temp[i];
    }
    location.href=goPage;
}
//로그인CHECK
function loginCheck(str){
	
    if(_userId=='' || _userId == null){
        if (confirm("로그인 후 사용이 가능합니다. 로그인 하시겠습니까?")){
        	if(str =="qna"){
        		sessionStorage.setItem("tempsession", "qna");
        	}else if( str =="coupon"){
        		sessionStorage.setItem("tempsession", "coupon");
        	}else if( str =="mod"){
                sessionStorage.setItem("tempsession", "mod");
            }else if( str =="del"){
                sessionStorage.setItem("tempsession", "del");
            }else{
            	sessionStorage.setItem("tempsession", "qna");
            }
        	
        	if(str == "qna"){        	
        		$("#loginSpan").find("a").attr("href", "I/ko/viewOneLogin");        		
        	}          	
        	$("#loginSpan").find("a").trigger("click");        	
        	$("#loginSpan").find("a").attr("href", "I/ko/viewTwoLoginPnr2");
        }
    }else{
    	if(str =="qna"){ 	
    		moveQnaTop(_userId);    		
        }else if( str =="coupon"){
        	location.href="/I/ko/viewCouponList.do";
        }else if( str =="mod"){
        	location.href="/I/ko/viewMemberModify.do";
        }else if( str =="del"){
        	location.href="/I/ko/viewMemberDelete.do";
        }else{
        	moveQnaTop(_userId);
        }
    }
}

// 로그인 CallBack 함수
var loginSuccuss = function() {
    $("#loginSpan").find("a").attr("id", "logout");
    $("#loginSpan").find("a").removeClass("jsOpenLayer");
    $("#loginSpan").find("a").text('로그아웃');
    $("#loginSpan").find("a").attr("href", "/I/ko/executeLogout.do");
    // 1:1문의에서 로그인시 이름 휴대폰 이메일 값 셋팅
    var link =  document.location.pathname;
    var tempsession = sessionStorage.getItem('tempsession');
    var seq = sessionStorage.getItem('seq');
    
    if(link == "/CW/ko/qna_regiForm.do"){
    	getMyInfo();
    }
    if(tempsession=="qna"){
    	sessionStorage.setItem("tempsession","");                  //로그인 버튼 클릭후 로그인시 세션값으로 인한 페이지 이동 X
    	moveQnaTop(_userId);
    }
    if(tempsession=="coupon"){
    	sessionStorage.setItem("tempsession","");                  //로그인 버튼 클릭후 로그인시 세션값으로 인한 페이지 이동 X
        location.href="/I/ko/viewCouponList.do";
    }
    if(tempsession=="mod"){
    	sessionStorage.setItem("tempsession","");                  //로그인 버튼 클릭후 로그인시 세션값으로 인한 페이지 이동 X
        location.href="/I/ko/viewMemberModify.do";
    }
    if(tempsession=="del"){
    	sessionStorage.setItem("tempsession","");                  //로그인 버튼 클릭후 로그인시 세션값으로 인한 페이지 이동 X
        location.href="/I/ko/viewMemberDelete.do";
    }
    if(tempsession=="winnercheck"){
        sessionStorage.setItem("tempsession","");                  //로그인 버튼 클릭후 로그인시 세션값 초기화
        winnercheck(seq);                                                   //로그인 후 당첨자 확인 버튼 클릭
        sessionStorage.setItem("seq","");                               //당첨자이벤트 seq 초기화
    }
    
};

</script>

	
	





<script type="text/javascript">
var _langCode = 'KO';					// 언어코드
var _kName = '정해원';			// 한글 성명(내국인만 해당)
var _eName = 'JUNG/HEAWON';		// 영어 성명(내외국인 전체)
var _userId = 'z7913546';			// 유저 아이디
var _userEmail = 'dok2andtablo@naver.com';		// 유저 이메일
var _isLogin = true;			// 로그인 여부.(true : 로그인 상태, false : 로그아웃 상태)
var _isMember = true;			// 회원 여부.(true : 회원 상태, false : 비회원 상태)
var _couponCnt = '';	// 로그인 했을경우 보유쿠폰수(없을시 공백)
var _birthDay = '19951110';		// 생년월일(YYYYMMDD)
var _userName = '';						// 로그인 했을 경우 이름(없을시 공백)
var _loginType = '';					// 로그인 타입

if (_kName == '') {
   _userName = _eName;
} else {
	_userName = _kName;
}

var checkLangCode = ['EN', 'JA', 'ZH', 'CH'];
var paths = location.pathname.split('/');
if (-1 < checkLangCode.indexOf(paths[2].toUpperCase())) {
	_langCode = paths[2].toUpperCase();
}

$(function() {
	setAlertLogin();
});

var setAlertLogin = function() {
	if (_isLogin) {
		setTimeout(function() {viewAlertLogoutLayer('alertLogout'); }, 1700000);
	}
};

var viewAlertLogoutLayer = function (controller) {
	var jsOpenLayerBtnId = $(this).data('opener');

	// 기존에 Open 된 Layer 가 존재하는지 확인
	var jsLayerCnt = $('div.layer.open').length;

	var _url = '/I/' + _langCode + '/' + controller + '.do';
	var dimmedLogin = '<span class="dimmed" id="dimmedLogin"></span>';
	var _height = $('#container').outerHeight();
	var _html = '<div id="divLayerPopup' + jsLayerCnt + '" class="layer"></div>';
	var _focus = $(this);

	$('body').css('overflow', 'hidden');
	$('#wrap').append(dimmedLogin);
	$('#dimmedLogin').animate({'opacity': 0.4}, 300);
	$('#wrap').append(_html).find('#divLayerPopup' + jsLayerCnt).load(_url, function() {
		$(this).addClass('open').data('opener', jsOpenLayerBtnId).fadeIn(function() {
			callback();
		});
	});

	function callback() {
		var _window = $(window).height();
		var _layerH = $('.layer_inner').height();
		var _contentH = $('.layer_content').height();
		var term = _window - _layerH;

		if (_window < _layerH) { // window height 768 미만
			if (_window < 500) {
				$('.layer_content').outerHeight(300).css('overflow-y', 'scroll');
				_layerH = $('.layer_inner').height();
			} else {
				var _contentH = _window - 260;
				$('.layer_content').outerHeight(_contentH).css('overflow-y', 'scroll');
			}
		}

		$(window).resize(function() {
			var re_window = $(window).height();
			var re_layerH = $('.layer_inner').height();
			if (re_window < 768) {
				if (re_window > 500) {
					var re_contentH = re_window - 260;
					$('.layer_content').outerHeight(re_contentH).css('overflow-y', 'scroll');
				}
			} else {
				var re_contentH = re_window - 260;
				$('.layer_content').outerHeight(re_contentH).css('overflow-y', 'scroll');
			}
		});

		$('input[placeholder], textarea[placeholder]').placeholder({ customClass:'my-placeholder' });
// 		$('.layer_title .title').attr('tabindex', '0').focus();

		$('.js-scroll-height').each(function() {
			var height = $(window).outerHeight();
			$(this).css('height', height);
		});

		$('.jsLoginCloseBtn').click(function() {
			if ($('#alertLogout_alarmLogout:visible').length == 0) {
				location.href = '/CW/' + _langCode + '/main.do';
			} else {
				$('#divLayerPopup' + jsLayerCnt).fadeOut(function(){ $(this).remove(); });
				$('#dimmedLogin').fadeOut(function(){ $(this).remove(); });
				_focus.focus();
				$('body').css('overflow', 'auto');
				return false;
			}
		});

		$('.jsPwChangeCloseBtn').click(function() {
			if ($('#pwChange_FormTitle:visible').length == 0) {
				location.href = '/CW/' + _langCode + '/main.do';
			} else {
				$('#divLayerPopup' + jsLayerCnt).fadeOut(function(){ $(this).remove(); });
				$('#dimmedLogin').fadeOut(function(){ $(this).remove(); });
				_focus.focus();
				$('body').css('overflow', 'auto');
				return false;
			}
		});

		$('#divLayerPopup' + jsLayerCnt).append('<a class="layerlastarea" href="javascript:;"></a>');
// 		.attr('tabindex', 0);
// 		$('.layer_content').attr('tabindex', 0);

// 		$('.layerlastarea').on('focus', function() {
// 			$('.layer_title .title').focus();
// 		});
		$('#divLayerPopup' + jsLayerCnt).on('focus', function() {
			$('.jsCloseBtn').focus();
		});

		layername();
	}

	function layername() {
		var _i = $('.layer_title .title').size();
		if (_i == 0) return false;
		var _tit = $('.layer_title .title').eq(0).text();
		$('.btn_close a').attr('title', _tit + ' 레이어 닫기');
	}

	return false;
};

var memberLogout = function() {
	$.ajax({
		url: '/I/' + _langCode + '/executeLogout.do',
		method: 'POST',
		dataType: 'json',
		cache : false,
		success: function(result) {
			_kName = '';
			_eName = '';
			_userId = '';
			_userEmail = '';
			_isLogin = false;
			_isMember = false;
			_couponCnt = '0';
			_birthDay = '';
			_userName = '';
			_loginType = '';
		}
	});
};
</script>



















	<div id="container">
		<div id="content">
			<div id="bookingStepWrap">
				 
				 
				 

				 
				 
				 
				 
				 

				 
				 
				 
				 
				 

				 
				
				 

				
					
				
					
				

				
					
						
					
					
					

					
					
					
					
					

					
					
					
					
					
				

				 
				 
				 
				 

				

				
						<!-- 일반 예약시 예상총액 -->
				
				
				

				
					
						
							<!-- 왕복 또는 편도  -->
							

<!-- 예약 STEP (S) -->
<div id="divBookingStep" class="booking-step">
	<ul>
		<li id="liBookingStepJourney" class="booking-step-journey success">
			<a style="cursor: default;">
				
				<span class="booking-step-title"><span class="step-number">01</span> <span id="spanStepTitleRoute">여정</span></span>
				<span class="booking-step-content">
					<span class="from">서울/인천(ICN)</span>
					<span class="roundtrip"></span>
					<span class="city">다카마쓰(TAK)</span>
				</span>
			</a>
		</li>
		<li id="liBookingStepDate" class="booking-step-date success">
			<a style="cursor: default;">
				<span class="booking-step-title"><span class="step-number">02</span> <span id="spanStepTitleDate">일정</span></span>
				<span class="booking-step-content">
					<span class="startdate">2017.07.11 (화)</span>
					<span class="directory">~</span>
					<span class="enddate">2017.07.12 (수)</span>
				</span>
			</a>
		</li>
		<li id="liBookingStepPassenger" class="booking-step-passenger success">
			<a style="cursor: default;">
				<span class="booking-step-title"><span class="step-number">03</span> <span id="spanStepTitlePassenger">탑승인원</span></span>
				<span class="booking-step-content">
					<span class="adult">성인 1</span>
					<span class="child" style="display:none;"></span>
					<span class="lapinfant" style="display:none;"></span>
				</span>
			</a>
		</li>
		<li id="liBookingStepAirline" class="booking-step-airlineticket success">
			<a style="cursor: default;">
				<span class="booking-step-title"><span class="step-number">04</span> <span id="spanStepTitleAvail">운임선택</span></span>
			</a>
		</li>
		<li id="liBookingStepPassegnerInfo" class="booking-step-passengerinformation success">
			<a style="cursor: default;">
				<span class="booking-step-title"><span class="step-number">05</span> <span id="spanStepTitlePassengerInput">탑승객정보</span></span>
			</a>
		</li>
		<li id="liBookingStepExtraService" class="booking-step-extraservice success">
			<a style="cursor: default;">
				<span class="booking-step-title"><span class="step-number">06</span> <span id="spanStepTitleAncillary">부가서비스</span></span>
			</a>
		</li>
	</ul>
</div>
<!-- 예약 STEP (E) -->

<script type="text/javascript">
	var jsBookingStepScreenText;
	var jsBookingStepJsonUrl = '/lang/homepage/include/BookingStep.json';
	var jsLangCode = "";
	function fn_setBookingStepLanguageInfo(language) {
		jsLangCode = language;
		jsBookingStepScreenText = $.cfn_getProgramScreenText(language, jsBookingStepJsonUrl);	// 화면 텍스트 가져오기
		$.cfn_setProgramScreenText(jsBookingStepScreenText);	// 가져온 텍스트 화면에 설정
	}
	
	function cfn_changeBookingStep(bookingStep, data) {
		var $divBookingStep_li			= $("#divBookingStep").find("li");
		var $liBookingStepJourney		= $("#liBookingStepJourney");
		var $liBookingStepDate			= $("#liBookingStepDate");
		var $liBookingStepPassenger		= $("#liBookingStepPassenger");
		var $liBookingStepAirline		= $("#liBookingStepAirline");
		var $liBookingStepPassegnerInfo	= $("#liBookingStepPassegnerInfo");
		var $liBookingStepExtraService	= $("#liBookingStepExtraService");
		
		if (bookingStep == "1") {
			$divBookingStep_li.removeClass("success")
							  .removeClass("active");
			
			$liBookingStepJourney.addClass("active");
			
			$divBookingStep_li.not("#liBookingStepJourney")
							  .find("[name=lblHiddenTitleCurrent]")
							  .remove();
			
		} else if (bookingStep == "2") {
			fn_setBookingStep("route", data);
			
			$liBookingStepJourney.removeClass("active")
								 .addClass("success");
			
			$("#liBookingStepDate, #liBookingStepPassenger, #liBookingStepAirline, #liBookingStepPassegnerInfo").removeClass("success")
																												.removeClass("active");
			
			$liBookingStepDate.addClass("active")
							  .find("a")
							  .append($liBookingStepJourney.find("[name=lblHiddenTitleCurrent]"));
			
			$divBookingStep_li.not("#liBookingStepDate")
							  .find("[name=lblHiddenTitleCurrent]")
							  .remove();
			
		} else if (bookingStep == "3") {
			fn_setBookingStep("date", data);
			
			$liBookingStepDate.removeClass("active")
							  .addClass("success");
			$("#liBookingStepPassenger, #liBookingStepAirline, #liBookingStepPassegnerInfo").removeClass("success")
																							.removeClass("active");
			$liBookingStepPassenger.addClass("active")
								   .find("a")
								   .append($liBookingStepDate.find("[name=lblHiddenTitleCurrent]"));
			$divBookingStep_li.not("#liBookingStepPassenger")
							  .find("[name=lblHiddenTitleCurrent]")
							  .remove();
			
		} else if (bookingStep == "4") {
			fn_setBookingStep("passenger", data);
			
			$liBookingStepPassenger.removeClass("active")
								   .addClass("success");
			
			$("#liBookingStepAirline, #liBookingStepPassegnerInfo").removeClass("success")
																   .removeClass("active");
			
			$liBookingStepAirline.addClass("active")
								 .find("a")
								 .append($liBookingStepPassenger.find("[name=lblHiddenTitleCurrent]"));
			
			$liBookingStepAirline.find("[name=lblHiddenTitleCurrent]")
								 .eq(1)
								 .remove();
			
			$divBookingStep_li.not("#liBookingStepAirline")
							  .find("[name=lblHiddenTitleCurrent]")
							  .remove();
			
		} else if (bookingStep == "5") {//탑승객 정보 입력
			$liBookingStepAirline.removeClass("active")
								 .addClass("success");
		
			$liBookingStepPassegnerInfo.addClass("active")
									   .find("a")
									   .append($liBookingStepAirline.find("[name=lblHiddenTitleCurrent]"));
			
			$divBookingStep_li.not("#liBookingStepPassegnerInfo")
							  .find("[name=lblHiddenTitleCurrent]")
							  .remove();
			
		} else if (bookingStep == "6") {
			$('#divBookingStep > ul > li > a').removeAttr('href')
											  .css({'cursor' : 'default'}); // 모든 Step 이벤트 삭제 & 마우스 기본으로 설정
			
			fn_setBookingStep("route", data);
			fn_setBookingStep("date", data);
			fn_setBookingStep("passenger", data);
			
			$("#liBookingStepJourney, #liBookingStepDate, #liBookingStepPassenger, #liBookingStepAirline, #liBookingStepPassegnerInfo").addClass("success");
			
			$liBookingStepExtraService.addClass("active")
									  .find("a")
									  .append($liBookingStepJourney.find("[name=lblHiddenTitleCurrent]"));
			
			$divBookingStep_li.not("#liBookingStepExtraService")
							  .find("[name=lblHiddenTitleCurrent]")
							  .remove();
			
		} else if (bookingStep == "7") {
			$('#divBookingStep > ul > li > a').removeAttr('href')
											  .css({'cursor' : 'default'}); // 모든 Step 이벤트 삭제 & 마우스 기본으로 설정
			
			fn_setBookingStep("route", data);
			fn_setBookingStep("date", data);
			fn_setBookingStep("passenger", data);
			
			$divBookingStep_li.addClass("success")
							  .find("[name=lblHiddenTitleCurrent]")
							  .remove();
			
		}
	}
	
	function fn_setBookingStep(mode, data) {
		if (mode == "route") {
			var jqBookingStepJourney = $("#liBookingStepJourney");		
			$(jqBookingStepJourney).find("span.from").html(data.segmentDatas[0].departureAirportName);

			if (data.TRIPTYPE == "RT") {
				$(jqBookingStepJourney).find("span.booking-step-content span").eq(1).addClass("roundtrip");
				$(jqBookingStepJourney).find("span.city").html(data.segmentDatas[1].departureAirportName);
			} else if (data.TRIPTYPE == "OW") {
				$(jqBookingStepJourney).find("span.booking-step-content span").eq(1).addClass("oneway");
				$(jqBookingStepJourney).find("span.city").html(data.segmentDatas[0].arrivalAirportName);
			} else {
				
			}
		} else if (mode == "date") {
			var jqBookingStepDate = $("#liBookingStepDate");
			$(jqBookingStepDate).find("span.startdate").html(moment(data.segmentDatas[0].departureDateTime).locale(jsLangCode).format("YYYY.MM.DD [(]dd[)]"));
			if (data.TRIPTYPE == "RT") {
				$(jqBookingStepDate).find("span.directory").css("display", "");
				$(jqBookingStepDate).find("span.enddate").html(moment(data.segmentDatas[1].departureDateTime).locale(jsLangCode).format("YYYY.MM.DD [(]dd[)]"));
			} else if (data.TRIPTYPE == "OW") {
				$(jqBookingStepDate).find("span.directory").css("display", "none");
				$(jqBookingStepDate).find("span.enddate").css("display", "none");
			} else {
				
			}
		} else if (mode == "passenger") {
			var jqBookingStepPassenger = $("#liBookingStepPassenger");
			var adultPaxCnt = 0;
			var childPaxCnt = 0;
			var infantPaxCnt = 0;

			$.each(data.passengerDatas, function(idx) {
				if (data.passengerDatas[idx].paxType == "ADT") {
					adultPaxCnt++;
				} else if (data.passengerDatas[idx].paxType == "CHD") {
					childPaxCnt++;
				} else if (data.passengerDatas[idx].paxType == "INF") {
					infantPaxCnt++;
				}
			});
			$(jqBookingStepPassenger).find("span.adult").html($.cfn_setText(jsBookingStepScreenText, "msgAdt") + " " + adultPaxCnt);
			if (childPaxCnt > 0) {
				$(jqBookingStepPassenger).find("span.child").css("display", "");
				$(jqBookingStepPassenger).find("span.child").html(" / " + $.cfn_setText(jsBookingStepScreenText, "msgChd") + " " + childPaxCnt);
			}
			if (infantPaxCnt > 0) {
				$(jqBookingStepPassenger).find("span.lapinfant").css("display", "");
				$(jqBookingStepPassenger).find("span.lapinfant").html(" / " + $.cfn_setText(jsBookingStepScreenText, "msgInf") + " " + infantPaxCnt);
			}
		}
	}
	
	//상단에 01여정 click
	function fn_moveRouteStep() {	
		var jqBookingStepJourney = $("#liBookingStepJourney");
		if($(jqBookingStepJourney).find("span.from").html() != ''){
			jsBookConditionDataObj.reservationPageIdx = "1";
			document.availInfoForm.hidBookConditionData.value = JSON.stringify(jsBookConditionDataObj);
			document.availInfoForm.action = '/I/' + jsLangCode + '/viewBooking.do';
			document.availInfoForm.submit();
		}	
	}
	
	//상단에 02여정 click
	function fn_moveDateStep() {
		var jqBookingStepJourney = $("#liBookingStepDate");
		if($(jqBookingStepJourney).find("span.startdate").html() != ''){
			jsBookConditionDataObj.reservationPageIdx = "2";
			document.availInfoForm.hidBookConditionData.value = JSON.stringify(jsBookConditionDataObj);
			document.availInfoForm.action = '/I/' + jsLangCode + '/viewBooking.do';
			document.availInfoForm.submit();
		}	
	}
	
	//상단에 03여정 click
	function fn_movePassengerStep() {	
		var jqBookingStepJourney = $("#liBookingStepPassenger");
		if($(jqBookingStepJourney).find("span.adult").html() != ''){
			jsBookConditionDataObj.reservationPageIdx = "3";
			document.availInfoForm.hidBookConditionData.value = JSON.stringify(jsBookConditionDataObj);
			document.availInfoForm.action = '/I/' + jsLangCode + '/viewBooking.do';
			document.availInfoForm.submit();
		}	
	}	
</script>

						
						
					
				
				
			</div>
			<div class="booking-wrap">
				<h1 id="h1HiddenTitlePayment" class="hidden-title">결제</h1>
				<!-- 결제 WRAP (S) -->
				<div class="booking-payment">
					<div class="booking-payment-contents">
						<!-- 승객정보 사전입력 (S) -->
						<h2 class="table-title-big apisInfo" name="lblApisInfo" style="display: none;">탑승자 정보 사전 확인 (미주노선 이용 고객)</h2>
						<div class="info-box01 apisInfo" style="display: none;">
							<div class="contents-area">
								<div class="btn-area">
									<button href="I/KO/viewLayerPreAPISInput" class="btn-type02-col01 mgr05 jsOpenLayer"><span id="InputApisInfo">탑승자 정보 사전 입력하기</span></button>
								</div>
								<ul class="uList01">
									<li id="apisInfo1">미주노선 이용 고객께서는 반드시 승객정보 사전확인 후에 결제를 진행하시기 바랍니다.</li>
									<li id="apisInfo2">항공기 출발 72시간 전까지는 체류지 주소를(우편번호, 도시 등) 반드시 등록하셔야 하오니, 홈페이지 및 예약센터(1800-8100)를 통하여 체류지 상세 주소를 입력 부탁 드립니다. 사전 주소 입력이 안될 경우, 탑승이 거절될 수 있습니다.</li>
								</ul>
							</div>
						</div>
						<br><br>
						<!-- 승객정보 사전입력 (E) -->
						<!-- 신용카드 결제 시 (S) -->
						<h2 id="h2SubTitlePaymentInfo" class="table-title-big">결제 정보</h2>
						<div class="tbl-input-row01 mgt20">
							<table>
								<caption id="payTbInfo">결제 수단, 카드종류, 할부선택으로 구성된 한국발행 신용카드 결제 정보입니다.</caption>
								<colgroup>
									<col style="width:160px">
									<col>
								</colgroup>
								<tbody>
								<tr>
									<th id="thPaymentType" scope="row">결제 수단</th>
									<td>
										<div>
											<ul class="radio_list">
												
												
													<li>
														<span class="radiobox01 js-radiobox01 creditcard">
															<label for="radPaymentTypeCC" class="active"><input type="radio" id="radPaymentTypeCC" name="radPaymentType" checked="checked" value="cc"> <span id="spanPaymentTypeCC">한국발행 신용카드</span></label>
														</span>
													</li>
													
												
												
													<li>
														<span class="radiobox01 js-radiobox01 cacao">
															<label for="radPaymentTypeKP"><input type="radio" id="radPaymentTypeKP" name="radPaymentType" value="kp"> <span id="spanPaymentTypeKP">카카오페이</span></label>
														</span>
													</li>
													
												
												
												
													<li>
														<span class="radiobox01 js-radiobox01 borderpayment">
															<label for="radPaymentTypeCI"><input type="radio" id="radPaymentTypeCI" name="radPaymentType" value="ci"> <span id="spanPaymentTypeCI">해외발행신용카드</span></label>
														</span>
													</li>
													
												
												
												
												
												
											</ul>
										</div>
									</td>
								</tr>
								<tr class="js-creditcard hide" style="display: table-row;">
									<th scope="row"><label id="labelCardClassCC" for="selCardClassCC">카드종류</label></th>
									<td>
										<div>
											<span class="selectbox01 js-selectbox01">
											    <span class="txt ex">카드선택</span>
											    <select id="selCardClassCC" style="width: 200px;" title="카드종류 선택">
												    <option id="optCardClassDefault1" value="" selected="selected" class="ex">카드선택</option>
													<option id="optKBCard" value="016">KB국민카드</option>
													<option id="optBCCard" value="026">BC카드(하나,농협BC 포함)</option>
													<option id="optWooriCard" value="026">우리카드</option>
													<option id="optSamsungCard" value="031">삼성카드</option>
													<option id="optLotteCard" value="047">롯데카드</option>
													<option id="optHyundaiCard" value="027">현대카드</option>
													<option id="optShinhanCard" value="029">신한카드</option>
													<option id="optNHCard" value="018">NH카드(농협자체)</option>
													<option id="optKEBCard" value="008">외환카드</option>
													<option id="optJejuCard" value="011">제주카드</option>
													<option id="optCitiCard" value="022">씨티카드</option>
													<option id="optKDBCard" value="026">산은카드</option>
													<option id="optSuhyupCard" value="017">수협카드</option>
													<option id="optJeonbukCard" value="010">전북카드</option>
													<option id="optHanaSKCard" value="006">하나카드(舊 외환카드)</option>
													<option id="optGwanjuCard" value="002">광주카드</option>
											    </select>
											</span>
										</div>
<!-- 										
										<div class="mgt10">
											<span id="spanAssociatedCardInfo"></span>
											<button type="button" id="btnAssociatedCardDetail" class="btn-type04-col01"></button>
										</div>
										<div class="mgt20">
											<img src="images/booking/temp_cardbanner01.jpg" alt="KB국민카드, BC카드, 롯데카드, 삼성카드, 신한카드, 하나SK카드, 현대카드, NH카드"/>
										</div>
-->
									</td>
								</tr>
								<tr class="js-creditcard hide" style="display: table-row;">
									<th scope="row"><label id="labelInstallmentTypeCC" for="selInstallmentTypeCC">할부선택</label></th>
									<td>
										<div>
											<span class="selectbox01 js-selectbox01">
											    <span class="txt">일시불</span>
											    <select id="selInstallmentTypeCC" style="width: 200px;" title="할부선택">
												    <option id="optInstallmentType00" value="00" selected="selected">일시불</option>
												    <option id="optInstallmentType02" value="02">2개월 할부</option>
													<option id="optInstallmentType03" value="03">3개월 할부</option>
													<option id="optInstallmentType04" value="04">4개월 할부</option>
													<option id="optInstallmentType05" value="05">5개월 할부</option>
													<option id="optInstallmentType06" value="06">6개월 할부</option>
													<option id="optInstallmentType07" value="07">7개월 할부</option>
													<option id="optInstallmentType08" value="08">8개월 할부</option>
													<option id="optInstallmentType09" value="09">9개월 할부</option>
													<option id="optInstallmentType10" value="10">10개월 할부</option>
													<option id="optInstallmentType11" value="11">11개월 할부</option>
													<option id="optInstallmentType12" value="12">12개월 할부</option>
											    </select>
											</span>
											<a href="I/KO/installment_show" id="InstallmentTypeNotice" class="btn-type02-col01 jsOpenLayer">무이자 카드 안내</a>
										</div>
									</td>
								</tr>
								<tr class="js-borderpayment hide">
									<th scope="row"><label id="thCardTypeCI" for="selCardClassCI">카드종류</label></th>
									<td>
										<div>
											<span class="selectbox01 js-selectbox01">
											    <span class="txt ex">카드선택</span>
											    <select id="selCardClassCI" style="width: 200px;" title="카드종류 선택">
												    <option id="optCardClassDefault2" value="" selected="selected" class="ex">카드선택</option>
													<option value="050">VISA</option>
													<option value="049">MASTER</option>
													<option value="028">JCB</option>
											    </select>
											</span>
										</div>
									</td>
								</tr>
								<tr class="js-borderpayment hide">
									<th id="thCardNumberCI" scope="row">카드번호</th>
									<td>
										<div class="mgt10">
											<span class="inp-txt"><input type="text" id="txtCardNumberCI1" style="width: 80px;" maxlength="4" title="카드넘버 첫번째 자리 입력"></span>
											<span class="inp-txt"><input type="password" id="txtCardNumberCI2" style="width: 80px;" maxlength="4" title="카드넘버 두번째 자리 입력"></span>
											<span class="inp-txt"><input type="password" id="txtCardNumberCI3" style="width: 80px;" maxlength="4" title="카드넘버 세번째 자리 입력"></span>
											<span class="inp-txt"><input type="text" id="txtCardNumberCI4" style="width: 80px;" maxlength="4" title="카드넘버 네번째 자리 입력"></span>
										</div>
									</td>
								</tr>
								<tr class="js-borderpayment hide">
									<th id="thCardExCI" scope="row">유효기간</th>
									<td>
										<div class="mgt10">
											<div>
												<span class="selectbox01 js-selectbox01">
												    <span class="txt ex">월</span>
												    <select id="expireMonth_IV" name="expireMonth_IV" title="유효기간 월 선택" style="width: 200px;">
													    <option id="cardMonth1" value="" selected="selected" class="ex">월</option>
														<option value="01">01</option>
														<option value="02">02</option>
														<option value="03">03</option>
														<option value="04">04</option>
														<option value="05">05</option>
														<option value="06">06</option>
														<option value="07">07</option>
														<option value="08">08</option>
														<option value="09">09</option>
														<option value="10">10</option>
														<option value="11">11</option>
														<option value="12">12</option>
												    </select>
												</span>

												<span class="selectbox01 js-selectbox01">
												    <span class="txt ex">연도</span>
												    <select id="expireYear_IV" name="expireYear_IV" title="유효기간 년 선택" style="width: 200px;">
													    <option id="cardYear1" value="" selected="selected" class="ex">연도</option>
													    
													    	<option value="17">2017</option>
													    
													    	<option value="18">2018</option>
													    
													    	<option value="19">2019</option>
													    
													    	<option value="20">2020</option>
													    
													    	<option value="21">2021</option>
													    
													    	<option value="22">2022</option>
													    
													    	<option value="23">2023</option>
													    
													    	<option value="24">2024</option>
													    
													    	<option value="25">2025</option>
													    
													    	<option value="26">2026</option>
													    
													    	<option value="27">2027</option>
													    
													    	<option value="28">2028</option>
													    
													    	<option value="29">2029</option>
													    
													    	<option value="30">2030</option>
													    
													    	<option value="31">2031</option>
													    
													    	<option value="32">2032</option>
													    
												    </select>
												</span>
											</div>
										</div>
									</td>
								</tr>
								<tr class="js-econtextcard hide">
									<th id="thCardTypeEC" scope="row">카드종류/<br>신용카드 보안인증</th>
									<td>
										<div>
											<p class="warning-message" id="ChCardTxt">카드를 선택해 주시기 바랍니다.</p>
											<span class="selectbox01 js-selectbox01">
											    <span class="txt ex">카드선택</span>
											    <select id="cardClass_EC" name="cardClass_EC" onchange="cardClass_ECchange()" style="width: 200px;" title="카드종류 선택">
												    <option id="optCardClassDefault3" value="" selected="selected" class="ex">카드선택</option>
													<option value="VI">VISA</option>
													<option value="CA">MASTERCARD</option>
													<option value="JC">JCB</option>
													<option value="AX">AMERICAN EXPRESS</option>
											    </select>
											</span>
											<span class="selectbox01 js-selectbox01">
											    <span class="txt ex" id="txt_select">암호화 여부</span>
												<!-- 인증번호 선택 - 카드종류 선택시 나타남. -->
												<select id="cardSecurity_EC" name="cardSecurity_EC" style="border: 1px solid #9e9e9e;overflow: hidden;background-color: #fff;height:23px;width:100px" title="신용카드 보안인증 암호화 여부 선택">
													<option id="security_Flag" value="" selected="selected" class="ex">암호화 여부</option>
													<option value="0">NONE</option>
												</select>
											</span>
										</div>
									</td>
								</tr>
								<tr class="js-econtextcard hide">
									<th id="thCardNumberEC" scope="row">카드번호</th>
									<td>
										<!-- Visa/Master/JCB 카드번호 입력 -->
										<div>
											<span class="inp-txt"><input type="text" id="creditNo1_EC" style="width: 80px;" maxlength="4" title="카드넘버 첫번째 자리 입력"></span>
											<span class="inp-txt"><input type="password" id="creditNo2_EC" style="width: 80px;" maxlength="4" title="카드넘버 두번째 자리 입력"></span>
											<span class="inp-txt"><input type="password" id="creditNo3_EC" style="width: 80px;" maxlength="4" title="카드넘버 세번째 자리 입력"></span>
											<span class="inp-txt"><input type="text" id="creditNo4_EC" style="width: 80px;" maxlength="4" title="카드넘버 네번째 자리 입력"></span>
										</div>
									</td>
								</tr>
								<tr class="js-econtextcard hide">
									<th scope="row" class="cvv_th"><label for="" id="thCvvNumberEC">인증번호(CVV2)</label><br><a href="I/KO/cvvInfo" class="btn-type04-col01 jsOpenLayer" id="cvv_viewInfo">안내</a></th>
									<td>
										<div>
											<span class="inp-txt"><input type="password" id="cvvCode_EC" placeholder="CVV" style="width: 80px;" maxlength="4" title="인증번호(CVV2) 입력"></span>
										</div>
									</td>
								</tr>
								<tr class="js-econtextcard hide">
									<th id="thCardExEC" scope="row">유효기간</th>
									<td>
										<div>
											<span class="selectbox01 js-selectbox01"> <span class="txt ex">월</span> <select id="expireMonth_EC" name="expireMonth_EC" title="유효기간 월 선택" style="width: 200px;">
													<option id="cardMonth2" value="" selected="selected" class="ex">월</option>
													<option value="01">01</option>
													<option value="02">02</option>
													<option value="03">03</option>
													<option value="04">04</option>
													<option value="05">05</option>
													<option value="06">06</option>
													<option value="07">07</option>
													<option value="08">08</option>
													<option value="09">09</option>
													<option value="10">10</option>
													<option value="11">11</option>
													<option value="12">12</option>
											</select>
											</span> <span class="selectbox01 js-selectbox01"> <span class="txt ex">연도</span> <select id="expireYear_EC" name="expireYear_EC" title="유효기간 년 선택" style="width: 200px;">
													<option id="cardYear2" value="" selected="selected" class="ex">연도</option>
													
														<option value="2017">2017</option>
													
														<option value="2018">2018</option>
													
														<option value="2019">2019</option>
													
														<option value="2020">2020</option>
													
														<option value="2021">2021</option>
													
														<option value="2022">2022</option>
													
														<option value="2023">2023</option>
													
														<option value="2024">2024</option>
													
														<option value="2025">2025</option>
													
														<option value="2026">2026</option>
													
														<option value="2027">2027</option>
													
														<option value="2028">2028</option>
													
														<option value="2029">2029</option>
													
														<option value="2030">2030</option>
													
														<option value="2031">2031</option>
													
														<option value="2032">2032</option>
													
											</select>
											</span>
										</div>
									</td>
								</tr>
								<tr class="js-econtextcard hide">
									<th id="thNameEC1" scope="row">카드 소유자 성명</th>
									<td>
										<div>
											<span class="inp-txt"><input type="text" id="firstName_JP" placeholder="성" style="width: 100px; ime-mode:disabled; text-transform:uppercase;" title="성 입력"></span><!-- 이름 -->
											<span class="inp-txt"><input type="text" id="lastName_JP" placeholder="이름" style="width: 100px; ime-mode:disabled; text-transform:uppercase;" title="이름 입력"></span><!-- 성 -->
										</div>
									</td>
								</tr>
								<tr class="js-econtextcash hide">
									<th id="thEmailEA" scope="row">이메일</th>
									<td>
										<div>
											<span class="inp-txt"><input type="text" id="emailId_EC" style="width: 100px;" placeholder="이메일ID" title="이메일ID 입력"></span>
											<span> @ </span>
											<span class="inp-txt"><input type="text" id="emailDomain_EC" style="width: 150px;" title="도메인 입력" placeholder="도메인"></span>
										</div>
									</td>
								</tr>
								<tr class="js-econtextcash hide">
									<th id="thNameEC2" scope="row">결제자 성명</th>
									<td>
										<div>
											<span class="inp-txt"><input type="text" id="firstName_JP1" placeholder="성" style="width: 100px; ime-mode:disabled; text-transform:uppercase;" title="성 입력"></span><!-- 이름 -->
											<span class="inp-txt"><input type="text" id="lastName_JP1" placeholder="이름" style="width: 100px; ime-mode:disabled; text-transform:uppercase;" title="이름 입력"></span><!-- 성 -->
										</div>
									</td>
								</tr>
								</tbody>
							</table>
						</div>

						<!--  카드결제 (국내) (S) -->
						<ul class="uList01 js-creditcard hide" style="display: block;">
							<li id="liCCDesc1">신용카드(체크카드 포함) 및 계좌 이체로 발권이 가능하며 결제 후 결제수단 변경이 불가합니다.</li>
							<li id="liCCDesc2">국내 신용카드 : 국내 발행 카드 이용 시 안전한 신용카드 거래를 위해 신용카드 인증이 필요합니다.</li>
							<li id="liCCDesc3">계좌 이체 : 인터넷 익스플로러에서만 계좌 이체가 가능합니다.</li>
							<li id="liCCDesc4">해외 발행 신용카드 : 해외발행 신용카드는 온라인 인증 서비스를 받은 Visa, Master, JCB 카드에 한해 구매 가능합니다.</li>
						</ul>
						<!-- 카드결제 (국내) (E) -->
						<!--  카드결제 (국제) (S) -->
						<ul class="uList01 js-borderpayment hide">
							<li id="liCIDesc1">브라우저의 팝업 차단이 설정되어 있는 경우 결제 진행이 불가할 수 있습니다. 사용하시는 브라우저의 설정 메뉴를 확인하시어 '팝업 차단 해제' 후 결제를 진행하여 주시기 바랍니다.</li>
							<li id="liCIDesc2">무기명 법인카드는 사용이 불가합니다.</li>
							<li id="liCIDesc3">한국 외 국가 발행 신용카드 이용 시 할부 결제가 불가합니다.</li>
							<li id="liCIDesc4">심화인증 프로그램(Verified by Visa, Master, JCB Card SecureCode) 이용 시 개인 비밀번호를 등록하여야 하며, 신용카드 발급사에 따라서는 심화인증 서비스를 제공하지 않을 수 있습니다.</li>
							<li id="liCIDesc5">카드 발행국 이외 통화로 결제되는 경우, 해외 사용 수수료가 적용되어 청구됩니다.</li>
						</ul>
						<!-- 카드결제 (국제) (E) -->						
						<!-- 계좌이체 (S) -->
						<ul class="uList01 js-banktransfer hide">
							<li id="liCADesc1">홈페이지를 통해 계좌 이체를 하신 경우, BankPay 인터넷 결제 서비스 이용 중 현금영수증 발급을 신청하실 수 있습니다.</li>
							<li id="liCADesc2">실시간 계좌 이체로 구매하신 항공권은 홈페이지(모바일)에서 여정 변경, 일부 인원의 예약 취소/환불이 불가합니다.</li>
							<li id="liCADesc3">계좌이체로 구매하신 항공권은 여정 변경 및 일부 인원의 환불이 불가능합니다. 예약 변경이 필요한 경우 환불 후 새로운 여정을 다시 구매하셔야 합니다.(운임 규정에 따라 환불 수수료 발생)</li>
						</ul>
						<!-- 계좌이체 (E) -->
						<!-- 카카오페이 (S) -->
						<ul class="uList01 js-cacao hide">
							<li id="liKPDesc1">카카오페이는 카카오톡에 카드 정보를 등록하여 간편하게 결제하는 기능입니다.</li>
							<li id="liKPDesc2">국내 발행카드만 해당하며, 할부 무이자 및 제휴카드는 “카카오페이” 규정에 따릅니다.</li>
							<li id="liKPDesc4">카카오페이로 구매하신 항공권은 여정 변경, 일부 인원의 예약 취소/환불이 불가합니다. 예약 변경이 필요한 경우 환불 후 새로운 여정을 다시 구매하셔야 합니다. (운임 규정에 따라 환불 수수료 발생)</li>
							<li id="liKPDesc5">카카오페이 결제 중 문의사항은 카카오페이 고객센터(1661-5702)으로 문의하여 주시기 바랍니다.</li>
						</ul>
						<!-- 카카오페이 (E) -->
						<!-- 엔화결제 E-Context (카드, 편의점) (S) -->
						<ul class="uList01 js-econtextcash hide">
							<li style="color:#EA0F5A" id="liEADesc1">※ 편의점 결제 후 환불하실 경우, 운임규정 환불수수료 외에 입금수수료 및 서비스수수료(500엔)을 별도로 부담하셔야 합니다.</li>
						</ul>

						<ul class="uList01 js-econtextcard js-econtextcash hide">
							<li id="liECDesc1">결제방법은 신용카드 결제(VISA, Master Card, JCB, AMEX) 혹은 편의점 결제를 이용하실 수 있습니다.</li>
							<!-- <li id="liECDesc2"></li>  -->
							<li id="liECDesc3">Safari, Firefox, Internet Explorer, Chrome, Opera 이외 브러우저를 사용하신 경우, 발권을 못 하실 수 있습니다.</li>
							<li id="liECDesc4">결제정보(카드 소유자 성명 등)는 반드시 영문으로 입력하여 주시기 바랍니다.</li>
							<li id="liECDesc5">탑승하는 본인 명의의 카드만 사용할 수 있으며, 원칙적으로 타인의 카드는 사용할 수 없습니다.<br></li>
							<li id="liECDesc6">단, 에어서울 회원은 아래 신용카드 보안인증(Optional)을 이용하시는 경우 예외적으로 타인의 카드 사용이 가능합니다. (Verified by VISA, MasterCard SecureCode, JCB J-Secure)</li>
							<li id="liECDesc7">공항 탑승 수속 시 탑승자 성명과 카드 명의가 상이할 경우 카드 소지 여부를 확인할 수 있습니다.</li>
							<li id="liECDesc8">카드 확인이 불가할 경우 당사 신용거래조건 및 국제운송약관 제3조에 의거 탑승을 거부할 수 있으므로 각별히 주의해 주시기 바랍니다.</li>
							<li id="liECDesc9">당사는 상기 사유로 인하여 탑승이 거부되는 경우 그로 인한 책임을 부담하지 않습니다.</li>
							<li id="liECDesc10">안전한 결제를 위하여 VISA사의 “Verified by VISA”, MasterCard 사의 “MasterCard SecureCode” 인증 등록을 사전 실시해 주시기 바랍니다. 국가에 따라 사전 인증 등록 방법이 각각 다르오니 해당 카드사에 인증 등록을 문의하시기 바랍니다.</li>
							<li id="liECDesc11">브라우저의 팝업 차단이 설정되어 있는 경우 결제 진행이 불가할 수 있습니다. 사용하시는 브라우저의 설정 메뉴를 확인하시어 ‘팝업 차단 해제’ 후 결제를 진행하여 주시기 바랍니다.</li>
							<li id="liECDesc12">무기명 법인카드는 사용이 불가합니다.</li>
							<li id="liECDesc13">한국 외 국가 발행 신용카드 이용 시 할부 결제가 불가합니다.</li>
							<li id="liECDesc14">카드 발행국 이외 통화로 결제되는 경우, 해외 사용 수수료가 적용되어 청구됩니다.</li>
							<li id="liECDesc15">예약센터 연락처 바로가기</li>
						</ul>
						<!-- 엔화결제 E-Context (카드, 편의점) (E) -->
						<!-- 위안화 결제 (알리페이, 유니온페이) (S) -->
						<ul class="uList01 js-alipay js-unionpay hide">
							<li id="liAPDesc1">당일 구매 후 당일 환불 요청 시 즉시 입금 및 취소처리가 불가할 수 있습니다.</li>
							<li id="liAPDesc2">Alipay,Unionpay로 구매한 항공권은 홈페이지에서 예매 변경이 불가능하오니 환불 후 재구매 하시기 바랍니다.</li>
							<li id="liAPDesc3">온라인 환불가능 기간</li>
							<li id="liAPDesc4">- Alipay : 90일 이내  - UnionPay : 180일 이내</li>
							<li id="liAPDesc5">10분 이내에 결제가 완료되지 않을 경우 발권 오류가 발생할 수 있으니 특별히 유의하시기 바랍니다.</li>
							<li id="liAPDesc6">결제 진행 중에 웹브라우저를 닫으면 오류가 발생할 수 있습니다. 발권 완료될 때까지 웹브라우저를 열어 놓으시기 바랍니다.</li>
							<li id="liAPDesc7">온라인 지불 완료 후 정상적으로 자동 발권되지 않을 경우 먼저 은행과 연락해서 지불 되었는지 확인하시기 바랍니다. 지불이 완료된 경우 즉시 에어서울 예약센터로 문의 해주시기 바랍니다. (중국 內: *-650-8000 / 중국 外: +86-10-8451-0101, 업무시간: 오전 7시 ~ 오후 9시)</li>
							<li id="liAPDesc8">관련 세무 정책에 의거 에어서울 웹사이트에서 항공권 구매 영수증(发票)을 제공할 수 없습니다. 양해해 주시기 바랍니다.</li>
							<li id="liAPDesc9">온라인 결제는 선택된 지불 플랫폼이나 은행 웹사이트에서 포괄적인 지원과 보안을 보장할 것입니다. 지불 관련 문의사항은 해당 결제대행사 또는 은행에 해주시기 바랍니다.</li>
							<li id="liAPDesc10">만약 결제 중 오류가 발생한다면 여정의 출발지 영업지점으로 바로 연락 주시기 바랍니다. 예약하신 손님의 영문성함,여정 등으로 현재의 예약기록(PNR)을 검색하여 결제 및 발권을 도와드리겠습니다.</li>
							<li id="liAPDesc11">※ 단, 카드 결제 시 탑승객 본인 명의의 카드를 사용하셔야 하며, 공항 체크인 시 꼭 지참하시기 바랍니다.</li>
							<li id="liAPDesc12">환불 신청 안내</li>
							<li id="liAPDesc13">홈페이지에서 항공권 구매 후 온라인 방식으로 환불 불가입니다. 환불 원하시면 출발지 지점으로 연락하시기 바랍니다.</li>
							<li id="liAPDesc14">항공권 유효기간내에만 환불 신청 가능하며 환불 가능 기간은 다음과 같습니다. (Alipay  90일 이내  - UnionPay : 180일 이내)</li>
							<li id="liAPDesc15">본인 신청시 필수 증빙 : 탑승자 본인 여권, 항공권 여정안내서, 환불 신청서</li>
							<li id="liAPDesc16">타인 신청시 필수 증빙 : 탑승자 본인 여권 사본, 항공권 여정안내서, 환불 신청서, 본인 위임장, 위탁인 여권</li>
						</ul>
						<!-- 위안화 결제 (알리페이, 유니온페이) (E) -->

						<p id="pCIDesc" class="impact-txt js-borderpayment hide">구매일 및 환율에 따라 차이가 있을 수 있으며, 일부 해외카드 결제수수료로 인해 실제 청구금액은 최종 결제금액과 다를 수 있습니다. 자세한 사항은 해당 카드사를 통해 확인 바랍니다.</p>

						<div class="total-box01 js-creditcard js-cacao js-banktransfer hide" style="display: block;">
							<h3 id="h3SubTitleTotalAmount" class="title">총액</h3>
							<div class="price-area">
								<span class="unit">KRW</span>
								<em class="price">378,000</em>
							</div>
						</div>
						<!-- 신용카드 결제 시 (E) -->

						<!-- 20160722 결제프로그램 수동설치 안내  -->
						<div id="divPayProgramInfo" class="info-box01">
							<div class="inner">
								<strong class="tit" id="payinstall">결제프로그램 수동설치 안내</strong>
								<ul class="uList01">
									<li id="payinstall1">신용/체크카드 결제 시, ActiveX 설치 없이 모든 브라우저에서 결제할 수 있습니다.</li>
									<li><span id="payinstall2">각 카드사 별 결제 프로그램이 설치가 되지 않는 경우, 해당 카드사 고객센터에 문의 바랍니다.</span> <button href="I/KO/telShow" class="btn-type04-col01 jsOpenLayer"><span id="popupTelView" title="연락처 보기 레이어 팝업">연락처 보기</span></button></li>
									<li><span id="payinstall3">안전결제(ISP)는 VP 홈페이지를 통해 수동 설치파일을 다운로드 할 수 있습니다.</span> <a href="http://service.vp.co.kr/sub03_0301.vp" target="_blank" title="새 창 열기" class="btn-type04-col01" id="popupVPHomepage">VP 홈페이지</a></li> 
									<li><span id="payinstall4">계좌이체 사용 시 자동 설치가 원활하지 않으면 수동으로 설치하여 주시기 바랍니다.</span> <a href="http://www.bankpay.or.kr/bankpay_new/custom/InstallGuideAll.htm" target="_blank" title="계좌이체 수동 설치 파일 다운로드 새 창" class="btn-type04-col01" id="popupManualSetup">수동 설치하기</a></li> 
								</ul>
							</div>
						</div>
						<!-- //20160722 결제프로그램 수동설치 안내  -->

						<!-- 2016-02-04 (S) 클래스부분 추가 -->
						<div class="info-box01">
							<div class="contents-area">
								<div class="btn-area">
									<button href="I/KO/viewFareRule" class="btn-type02-col01 mgr05 jsOpenLayer"><span id="spanTicketFareRule" title="항공권 운임규정 레이어 팝업 열기">항공권 운임규정</span></button>
									<button onclick="javascript:fn_ClickConditionsOfCarriageBtn()" class="btn-type02-col01" id="OpenNewWindow" title="새 창 열기"><span id="spanTransitAgreement">여객운송약관</span></button>
								</div>
								<p id="pAgreementDesc" class="txt">항공권 발급 후에는 항공권 운임 규정과 여객 운송약관에 따라 요청사항이 처리됩니다. 규정 및 약관 버튼을 클릭하여 세부내용 확인 후 아래 사항에 동의하셔야 결제할 수 있습니다.</p>
							</div>
							<div class="check-area">
								<ul class="col-checkbox-list01">
									<li>
										<span class="checkbox01 js-checkbox01">
										    <label for="chkAgreeTicketFareRule">
											    <span id="spanAgreeTicketFareRule">항공권 운임규정과 여객운송약관을 확인하였으며, 이에 동의합니다.</span>
										    </label>
										    <input type="checkbox" id="chkAgreeTicketFareRule">
										</span>
									</li>
									<li>
										<span class="checkbox01 js-checkbox01">
										    <label for="chkAgreeTransitAgreement">
											    <span id="spanAgreeTransitAgreement">동행하는 탑승객에게 항공권 구매조건 및 여객운송약관,티켓 확인증의 주요 내용을 전달/안내하는 것에 동의합니다.</span>
										    </label>
										    <input type="checkbox" id="chkAgreeTransitAgreement">
										</span>
									</li>
								</ul>
							</div>
						</div>
						<!-- 2016-02-04 (E) 클래스부분 추가 -->

						<div class="mgt30 tc">
							<button id="btnPayment" class="btn-type01-col01" title=""><span id="spanPayment">결제</span></button>
						</div>

						<!-- 우측 간편 안내(S) -->
						<div class="booking-airlineticket-finalInfo">
						
							<!-- 일반 예약의 경우 -->
							<div class="booking-airlineticket-finalInfo-title">
								<h2 id="h2SummaryTitleRouteAndFare">구간 및 운임</h2>
							</div>
							<div class="booking-airlineticket-finalInfo-head">
									<!-- 왕복 -->
									
										
											<div class="booking-airlineticket-finalInfo-head-from">
												<div class="booking-airlineticket-finalInfo-head-kinds"><span class="icon_airlineticket_from02" name="lblDepartureItinerary"></span>RS704</div>
												<div class="booking-airlineticket-finalInfo-head-fly">서울/인천(ICN) <span class="diretory icon_airlineticket_oneway02" name="lblFrom"></span></div>
												<div class="booking-airlineticket-finalInfo-head-fly">다카마쓰(TAK)</div>
												<div class="booking-airlineticket-finalInfo-head-date" id="Summary_1"><div class="booking-airlineticket-finalInfo-head-date">2017.07.11 (화) 13:50 ~ 15:25</div></div>													
											</div>
										
										
									
										
										
											<div class="booking-airlineticket-finalInfo-head-to">
												<div class="booking-airlineticket-finalInfo-head-kinds"><span class="icon_airlineticket_to02" name="lblArrivalItinerary"></span>RS701</div>
												<div class="booking-airlineticket-finalInfo-head-fly">다카마쓰(TAK) <span class="diretory icon_airlineticket_oneway02" name="lblFrom"></span></div>
												<div class="booking-airlineticket-finalInfo-head-fly">서울/인천(ICN)</div>
												<div class="booking-airlineticket-finalInfo-head-date" id="Summary_2"><div class="booking-airlineticket-finalInfo-head-date">2017.07.12 (수) 10:35 ~ 12:10</div></div>														
											</div>
										
									
								

								

								
							</div>

							<div class="booking-airlineticket-finalInfo-body">
								<div class="booking-airlineticket-finalInfo-tblRow01">
									<table>
										<colgroup>
											<col style="width:33.3%">
											<col style="width:33.3%">
											<col style="width:33.3%">
										</colgroup>
										<tbody><tr>
											<td class="tc tbl-adult"><span id="spanAdt">성인</span> 1<span name="lblPassengerCnt">명</span></td>
											<td class="tc tbl-child"><span id="spanChd">소아</span> 0<span name="lblPassengerCnt">명</span></td>
											<td class="tc tbl-lapinfant"><span id="spanInf">유아</span> 0<span name="lblPassengerCnt">명</span></td>
										</tr>
									</tbody></table>
								</div>
								<div class="booking-airlineticket-finalInfo-tblRow02">
									<table>
										<caption>여정 및 운임 표 | 항공운임, 유류할증료, 세금/제반요금 쿠폰할인으로 구성되어있습니다.</caption>
										<colgroup>
											<col style="width:50%">
											<col style="width:50%">
										</colgroup>
										<tbody>
										<tr>
											<th id="thFare" scope="row">항공운임</th>
											<td class="tr tbl-price">
												<span>350,000</span>
											</td>
										</tr>
										<tr>
											<th id="thFuelCharge" scope="row">유류할증료</th>
											<td class="tr tbl-price">
												<span>0</span>
											</td>
										</tr>
										<tr>
											<th id="thTax" scope="row">세금/제반요금</th>
											<td class="tr tbl-price">
												<span>28,000</span>
											</td>
										</tr>
										
										<tr>
											<th id="thCoupon" scope="row">쿠폰할인</th>
											<td class="tr tbl-price">
												<span>0</span>
											</td>
										</tr>
										
										</tbody>
									</table>
								</div>

								<div class="head">
									<h3 id="h3SummaryTitleAncillary">부가서비스</h3>
								</div>
								<div class="booking-airlineticket-finalInfo-tblRow02">
									<table>
										<caption>여정 및 운임 표 | 좌석, 기내식, 수화물으로 구성되어있습니다.</caption>
										<colgroup>
											<col style="width:50%">
											<col style="width:50%">
										</colgroup>
										<tbody>
										<tr>
											<th id="thSeat" scope="row">좌석</th>
											<td class="tr tbl-price">
												<span>0</span>
											</td>
										</tr>
										<tr>
											<th id="thMeal" scope="row">기내식</th>
											<td class="tr tbl-price">
												<span>0</span>
											</td>
										</tr>
										<tr>
											<th id="thBaggage" scope="row">수하물</th>
											<td class="tr tbl-price">
												<span>0</span>
											</td>
										</tr>
										</tbody>
									</table>
								</div>
								<div class="total-price">
									<h3 id="h3SummaryTitleTotalAmount">총액</h3>
									<div class="price-area">
										<em class="unit">KRW</em>
										<em class="price">378,000</em>
									</div>
								</div>
							
							
							</div>
							<p id="pSummaryDesc" class="info-exmark01">유류할증료 및 세금/제반요금을 포함한 총액으로 구매시점과 환율에 따라 변동 될 수 있습니다.</p>
							<p id="pSummaryDescTax" class="info-exmark01">한국 출발 세금(BP)에는 국제여객공항이용료(인천/김포 17,000원), 출국납부금(10,000원), 국제빈곤퇴치기여금(1,000원)이 포함되어 있습니다.</p>
						</div>
						<!-- 우측 간편 안내(E) -->
					</div>
				</div>
				<!-- 결제 WRAP (E) -->
				

				
					

<script type="text/javascript" src="https://pg.easypay.co.kr/webpay/EasypayCard_Web.js"></script>
<script type="text/javascript">
	function fn_start_cc(cardClass, installmentType, payAmount) {
		fn_getCCOrderNo(cardClass, installmentType, payAmount);
	}

	// 주문번호 생성
	function fn_getCCOrderNo(cardClass, installmentType, payAmount) {
		$.ajax({
			url: "/I/" + jsLangCode + "/getCCOrderNo.do",
			type: "post",
			dataType: "json",
			success: function(data) {
//				console.log(JSON.stringify(data));
				if (data.orderNo) {
					var jsOrderNo = $.cfn_makeFPading(data.orderNo, 12, "0");	// 12자리로 자릿수를 맞춘다.
					document.frm_creditcard.EP_order_no.value = jsOrderNo;
					fn_start_cc_auth(cardClass, installmentType, payAmount);
					//fn_start_cc_authTest(cardClass, installmentType, payAmount);
				} else {
					alert($.cfn_setText(jsScreenText, "msgOrderNoFail"));
					jsProcessPayment = false;
					cfn_closeLoading();
		        	return false;
				}
			}
		});
	}

	function fn_start_cc_auth(cardClass, installmentType, payAmount) {
		document.frm_creditcard.EP_mall_id.value = '05530421';
		document.frm_creditcard.EP_card_cd.value = cardClass;
		document.frm_creditcard.EP_install_period.value = installmentType;
		document.frm_creditcard.EP_product_amt.value = payAmount;
		cfn_closeLoading();
//		console.log($('#frm_creditcard').serialize());
		easypay_card_webpay(frm_creditcard, "/I/KO/performCreditCardAuthReq.do", "PERFORM_CC_FRAME", "0", "0", "iframe", 30);
	}

	function kicc_cust_popup_close() {
		jsProcessPayment = false;
	}

	function fn_start_cc_pay() {
		$('#paymentMode').val(paymentMode);
		$('#sessionUniqueKeyCC').val(sessionUniqueKey);
		var jsCreditCardData = {};
		$("#frm_creditcard_res").serializeArray().map(function(x) {
			jsCreditCardData[x.name] = x.value;
		});

		if ($('#EP_ret_save_kind').val() == 'null') $('#EP_ret_save_kind').val('00');
		cfn_openLoading();
		$.ajax({
			url: "/I/" + jsLangCode + "/performCreditCardPayment.do",
			type: "post",
			dataType: "json",
			data: {
				cardRequestData : JSON.stringify(jsCreditCardData),
				'sessionUniqueKey' : sessionUniqueKey,
				'paymentMode' : paymentMode
			},
			success: function(data) {
//				log(JSON.stringify(data.cardPaymentResult));

//				if (data.cardPaymentResult.ERROR_CODE == "0000") {
//					cfn_closeLoading();
//					$('#completehidPNRData').val(JSON.stringify(data.cardPaymentResult.pnrData));
//					$('#frm_goPurchase').attr("action", "/I/" + _langCode + "/viewPurchaseComplete.do").submit();
				if (data.code == "0000") {
					$('#completehidPNRData').val(JSON.stringify(data.cardPaymentResult.pnrData));
					switch (paymentMode) {
						case 'normal':
							$('#frm_goPurchase').attr("action", "/I/" + _langCode + "/viewPurchaseComplete.do").submit();
							break;
						case 'exchange':
							$('#frm_goPurchase').attr("action", "/I/" + _langCode + "/viewExchangeComplete.do").submit();
							break;
						case 'ancillary':
							$('#frm_goPurchase').attr("action", "/I/" + _langCode + "/viewAncillaryPurchaseComplete.do").submit();
							break;
					}
				} else {
					if (data.code == "E001") { //승인은 되었고 발권오류시
						alert($.cfn_setText(jsScreenText, "msgChSegFail"));
					}else{
						if (data.cardPaymentResult.ERROR_MESSAGE != '') {
							alert(data.cardPaymentResult.ERROR_MESSAGE);
						} else if (data.cardPaymentResult.ERROR_CODE == 'SCDP') {
							alert($.cfn_setText(jsScreenText, "msgDuplPayment"));
						} else {
							alert($.cfn_setText(jsScreenText, 'msgPayFail'));
						}
					}
					if (paymentMode == 'exchange') {
						location.href = '/I/' + _langCode + '/viewReservationList.do';
					} else {
						jsProcessPayment = false;
						cfn_closeLoading();
			        	return false;
					}
				}
			},
			error : function(xhr, option, error) {
				if (paymentMode == 'exchange') {
					alert($.cfn_setText(jsScreenText, "msgChSegFail"));
					location.href = '/I/' + _langCode + '/viewReservationList.do';
				} else {
					jsProcessPayment = false;
					cfn_closeLoading();
		        	return false;
				}
			}
		});
	}
</script>

<form id="frm_creditcard" name="frm_creditcard" method="post">
	<input type="hidden" name="EP_mall_id" value="">			<!-- (필수) 가맹점ID -->
	<input type="hidden" name="EP_order_no" value="">			<!-- 가맹점 주문번호 -->
	<input type="hidden" name="EP_product_amt" value="">			<!-- 상품금액 -->
	<input type="hidden" name="EP_card_cd" value="">			<!-- 카드코드 -->
	<input type="hidden" name="EP_install_period" value="">			<!-- 할부개월 -->
	<input type="hidden" name="EP_kmotion_useyn" value="">			<!-- 국민 앱카드 결제사용 유무 -->
	<input type="hidden" name="EP_save_useyn" value="">			<!-- 세이브 여부 (Y/N) -->
	<input type="hidden" name="EP_point_useyn" value="">			<!-- 카드사 포인트 사용여부 (Y/N) -->
	<input type="hidden" name="EP_noint_yn" value="">			<!-- 무이자 여부 (Y/N) -->
</form>

<form id="frm_creditcard_res" name="frm_creditcard_res" method="post">
	<input type="hidden" id="EP_res_cd" name="EP_res_cd" value="">	<!-- (필수) 응답코드 -->
	<input type="hidden" id="EP_res_msg" name="EP_res_msg" value="">	<!-- (필수) 응답 메세지 -->
	<input type="hidden" id="EP_tr_cd" name="EP_tr_cd" value="">	<!-- (필수) 처리구분 -->
	<input type="hidden" id="EP_cno" name="EP_cno" value="">	<!-- (필수) PG거래번호 -->
	<input type="hidden" id="EP_client_version" name="EP_client_version" value="">	<!-- (필수) EasyPay 모듈 버전 -->
	<input type="hidden" id="EP_req_type" name="EP_req_type" value="">	<!-- (필수) 인증구분(0:일반 1:ISP 2:MPI 3:UPOP) -->
	<input type="hidden" id="EP_card_amt" name="EP_card_amt" value="">	<!-- (필수) 카드결제금액 -->
	<input type="hidden" id="EP_card_cd" name="EP_card_cd" value="">	<!-- (필수) 카드코드 -->
	<input type="hidden" id="EP_noint" name="EP_noint" value="">	<!-- 무이자여부 -->
	<input type="hidden" id="EP_card_no" name="EP_card_no" value="">	<!-- (필수-MPI) 안심클릭 카드번호 -->
	<input type="hidden" id="EP_cavv" name="EP_cavv" value="">	<!-- (필수-MPI) 안심클릭 CAVV -->
	<input type="hidden" id="EP_xid" name="EP_xid" value="">	<!-- (필수-MPI) 안심클릭 XID -->
	<input type="hidden" id="EP_eci" name="EP_eci" value="">	<!-- (필수-MPI) 안심클릭 ECI -->
	<input type="hidden" id="EP_ret_save_used" name="EP_ret_save_used" value="">	<!-- (필수-MPI) 안심클릭 세이브 여부 -->
	<input type="hidden" id="EP_ret_save_kind" name="EP_ret_save_kind" value="">	<!-- (필수-MPI) 안심클릭 세이브 종류 -->
	<input type="hidden" id="EP_install_period" name="EP_install_period" value="">	<!-- (필수) 할부개월 -->
	<input type="hidden" id="EP_expire_date" name="EP_expire_date" value="">	<!-- (필수-MPI) 유효기간 -->
	<input type="hidden" id="EP_point_useyn" name="EP_point_useyn" value="">	<!-- 포인트 사용유무 -->
	<input type="hidden" id="EP_kmotion_useyn" name="EP_kmotion_useyn" value="">	<!-- KMOTION 사용유무 -->
	<input type="hidden" id="EP_kvp_cardcode" name="EP_kvp_cardcode" value="">	<!-- (필수-ISP) KVP 카드코드 -->
	<input type="hidden" id="EP_kvp_sessionkey" name="EP_kvp_sessionkey" value="">	<!-- (필수-ISP) KVP 세션 키 -->
	<input type="hidden" id="EP_kvp_encdata" name="EP_kvp_encdata" value="">	<!-- (필수-ISP) KVP 암호화 전문 -->
	<input type="hidden" id="EP_kvp_payset_flag" name="EP_kvp_payset_flag" value="">	<!-- KVP 복합결제 사용여부 -->
	<input type="hidden" id="EP_kvp_using_point" name="EP_kvp_using_point" value="">	<!-- KVP 복합결제 사용포인트 -->
	<input type="hidden" id="EP_vp_ret_save_point" name="EP_vp_ret_save_point" value="">	<!-- KVP 세이브 결제 유무 -->
	<input type="hidden" id="EP_kvp_quota" name="EP_kvp_quota" value="">	<!-- (필수-ISP) KVP 할부개월 -->
	<input type="hidden" id="EP_kvp_noint" name="EP_kvp_noint" value="">	<!-- (필수-ISP) KVP 무이자여부 -->
	<input type="hidden" id="EP_kvp_card_prefix" name="EP_kvp_card_prefix" value="">	<!-- KVP 카드prefix -->
	<input type="hidden" id="EP_kvp_pgid" name="EP_kvp_pgid" value="">	<!-- KVP 가맹점ID -->
	<input type="hidden" id="EP_order_no" name="EP_order_no" value="">	<!-- (필수) 가맹점 주문번호 : 인증요청 값 -->
	<input type="hidden" id="paymentMode" name="paymentMode" value="">
	<input type="hidden" id="sessionUniqueKeyCC" name="sessionUniqueKey" value="">
</form>
				
				
					
<script type="text/javascript" src="//pg.easypay.co.kr/webpay/EasypayCard_Web.js"></script>
<script type="text/javascript">
	var creditCode;		// 카드코드
	var creditNo;		// 카드번호
	var expireMonth;	// 유효기간 - 월
	var expireYear;		// 유효기간 - 년
	
	function fn_start_ci(payAmount) {
		creditCode = "" + $("#selCardClassCI").val();	// 카드코드
		creditNo = "" + $("#txtCardNumberCI1").val() + $("#txtCardNumberCI2").val() + $("#txtCardNumberCI3").val() + $("#txtCardNumberCI4").val();	// 카드번호
		expireMonth = $("#expireMonth_IV").val();																									// 유효기간 - 월
		expireYear = $("#expireYear_IV").val();																										// 유효기간 - 년

		if($("#txtCardNumberCI1").val() == "") {
			alert($.cfn_setText(jsScreenText, "spanInf7_1"));
			$("#txtCardNumberCI1").focus();
			cfn_closeLoading();
			jsProcessPayment = false;
			return false;
		}
		if($("#txtCardNumberCI2").val() == "") {
			alert($.cfn_setText(jsScreenText, "spanInf7_2"));
			$("#txtCardNumberCI2").focus();
			cfn_closeLoading();
			jsProcessPayment = false;
			return false;
		}
		if($("#txtCardNumberCI3").val() == "") {
			alert($.cfn_setText(jsScreenText, "spanInf7_3"));
			$("#txtCardNumberCI3").focus();
			cfn_closeLoading();
			jsProcessPayment = false;
			return false;
		}
		if($("#txtCardNumberCI4").val() == "") {
			alert($.cfn_setText(jsScreenText, "spanInf7_4"));
			$("#txtCardNumberCI4").focus();
			cfn_closeLoading();
			jsProcessPayment = false;
			return false;
		}
		
		if (creditNo.length < 13) {
			alert($.cfn_setText(jsScreenText, "spanInf7"));
			$("#txtCardNumberCI1").focus();
			cfn_closeLoading();
			jsProcessPayment = false;
			return false;
		}
		if(expireMonth == "") {
			alert($.cfn_setText(jsScreenText, "spanInf3"));
			$("#expireMonth_IV").focus();
			cfn_closeLoading();
			jsProcessPayment = false;
			return false;
		}
		if(expireYear == "") {
			alert($.cfn_setText(jsScreenText, "spanInf4"));
			$("#expireYear_IV").focus();
			cfn_closeLoading();
			jsProcessPayment = false;
			return false;
		}
		fn_getCIOrderNo(payAmount);
	}

	function fn_getCIOrderNo(payAmount) {
		// 주문번호 생성
		$.ajax({
			url: "/I/" + jsLangCode + "/getCCOrderNo.do",
			type: "post",
			dataType: "json",
			success: function(data) {
				if (data.orderNo != undefined) {
					var jsOrderNo = $.cfn_makeFPading(data.orderNo, 12, "0");	// 12자리로 자릿수를 맞춘다.
					document.frm_intercard.EP_order_no.value = jsOrderNo;

					fn_start_ci_auth(payAmount);
				} else {
					alert($.cfn_setText(jsScreenText, "msgOrderNoFail"));
					jsProcessPayment = false;
					cfn_closeLoading();
					jsProcessPayment = false;
		        	return false;
				}
			}
		});
	}

	function fn_start_ci_auth(payAmount) {
		document.frm_intercard.EP_mall_id.value = '05530422';
		document.frm_intercard.EP_install_period.value = '00';
		document.frm_intercard.EP_product_amt.value = payAmount;
		document.frm_intercard.EP_card_cd.value = creditCode;
		document.frm_intercard.EP_card_no.value = creditNo;
		document.frm_intercard.EP_expire_date.value = '' + expireYear + expireMonth;

		cfn_closeLoading();
		easypay_card_webpay(frm_intercard, "/I/KO/performInterCardAuthReq.do", "PERFORM_CC_FRAME", "0", "0", "iframe", 30);
	}

	function kicc_cust_popup_close() {
		jsProcessPayment = false;
	}

	function fn_start_ci_pay() {
		$('#paymentMode').val(paymentMode);
		$('#sessionUniqueKeyCI').val(sessionUniqueKey);
		var jsInterCardData = {};
		$("#frm_intercard_res").serializeArray().map(function(x) {
			jsInterCardData[x.name] = x.value;
		});

		if ($('#EP_ret_save_kind').val() == 'null') $('#EP_ret_save_kind').val('00');
		cfn_openLoading();
		$.ajax({
			url: "/I/" + jsLangCode + "/performInterCardPayment.do",
			type: "post",
			dataType: "json",
			data: {
				cardRequestData : JSON.stringify(jsInterCardData),
				'sessionUniqueKey' : sessionUniqueKey,
				'paymentMode' : paymentMode
			},
			success: function(data) {
				if (data.code == "0000") {
					$('#completehidPNRData').val(JSON.stringify(data.cardPaymentResult.pnrData));
					switch (paymentMode) {
						case 'normal':
							$('#frm_goPurchase').attr("action", "/I/" + _langCode + "/viewPurchaseComplete.do").submit();
							break;
						case 'exchange':
							$('#frm_goPurchase').attr("action", "/I/" + _langCode + "/viewExchangeComplete.do").submit();
							break;
						case 'ancillary':
							$('#frm_goPurchase').attr("action", "/I/" + _langCode + "/viewAncillaryPurchaseComplete.do").submit();
							break;
					}
				} else {
					if (data.code == "E001") { //승인은 되었고 발권오류시
						alert($.cfn_setText(jsScreenText, "msgChSegFail"));
					}else{
						if (data.cardPaymentResult.ERROR_MESSAGE != '') {
							alert(data.cardPaymentResult.ERROR_MESSAGE);
						} else if (data.cardPaymentResult.ERROR_CODE == 'SCDP') {
							alert($.cfn_setText(jsScreenText, "msgDuplPayment"));
						} else {
							alert($.cfn_setText(jsScreenText, 'msgPayFail'));
						}
					}
					if (paymentMode == 'exchange') {
						location.href = '/I/' + _langCode + '/viewReservationList.do';
					} else {
						jsProcessPayment = false;
						cfn_closeLoading();
			        	return false;
					}
				}
			},
			error : function(xhr, option, error) {
				if (paymentMode == 'exchange') {
					alert($.cfn_setText(jsScreenText, "msgChSegFail"));
					location.href = '/I/' + _langCode + '/viewReservationList.do';
				} else {
					jsProcessPayment = false;
					cfn_closeLoading();
		        	return false;
				}
			}
		});
	}
</script>

<form id="frm_intercard" name="frm_intercard" method="post">
	<input type="hidden" name="EP_mall_id" value="">			<!-- (필수) 가맹점ID -->
	<input type="hidden" name="EP_order_no" value="">			<!-- 가맹점 주문번호 -->
	<input type="hidden" name="EP_product_amt" value="">			<!-- 상품금액 -->
	<input type="hidden" name="EP_card_cd" value="">			<!-- 카드코드 -->
	<input type="hidden" name="EP_card_no" value="">			<!-- 카드번호 -->
	<input type="hidden" name="EP_expire_date" value="">			<!-- 카드 유효기간(YYMM) -->
	<input type="hidden" name="EP_install_period" value="">			<!-- 할부개월 -->
	<input type="hidden" name="EP_kmotion_useyn" value="">			<!-- 국민 앱카드 결제사용 유무 -->
	<input type="hidden" name="EP_save_useyn" value="">			<!-- 세이브 여부 (Y/N) -->
	<input type="hidden" name="EP_point_useyn" value="">			<!-- 카드사 포인트 사용여부 (Y/N) -->
	<input type="hidden" name="EP_noint_yn" value="">			<!-- 무이자 여부 (Y/N) -->
</form>

<form id="frm_intercard_res" name="frm_intercard_res" method="post">
	<input type="hidden" id="EP_res_cd" name="EP_res_cd" value="">	<!-- (필수) 응답코드 -->
	<input type="hidden" id="EP_res_msg" name="EP_res_msg" value="">	<!-- (필수) 응답 메세지 -->
	<input type="hidden" id="EP_tr_cd" name="EP_tr_cd" value="">	<!-- (필수) 처리구분 -->
	<input type="hidden" id="EP_cno" name="EP_cno" value="">	<!-- (필수) PG거래번호 -->
	<input type="hidden" id="EP_client_version" name="EP_client_version" value="">	<!-- (필수) EasyPay 모듈 버전 -->
	<input type="hidden" id="EP_req_type" name="EP_req_type" value="">	<!-- (필수) 인증구분(0:일반 1:ISP 2:MPI 3:UPOP) -->
	<input type="hidden" id="EP_card_amt" name="EP_card_amt" value="">	<!-- (필수) 카드결제금액 -->
	<input type="hidden" id="EP_card_cd" name="EP_card_cd" value="">	<!-- (필수) 카드코드 -->
	<input type="hidden" id="EP_noint" name="EP_noint" value="">	<!-- 무이자여부 -->
	<input type="hidden" id="EP_card_no" name="EP_card_no" value="">	<!-- 카드번호 -->
	<input type="hidden" id="EP_cavv" name="EP_cavv" value="">	<!-- (필수-MPI) 안심클릭 CAVV -->
	<input type="hidden" id="EP_xid" name="EP_xid" value="">	<!-- (필수-MPI) 안심클릭 XID -->
	<input type="hidden" id="EP_eci" name="EP_eci" value="">	<!-- (필수-MPI) 안심클릭 ECI -->
	<input type="hidden" id="EP_ret_save_used" name="EP_ret_save_used" value="">	<!-- (필수-MPI) 안심클릭 세이브 여부 -->
	<input type="hidden" id="EP_ret_save_kind" name="EP_ret_save_kind" value="">	<!-- (필수-MPI) 안심클릭 세이브 종류 -->
	<input type="hidden" id="EP_install_period" name="EP_install_period" value="">	<!-- (필수) 할부개월 -->
	<input type="hidden" id="EP_expire_date" name="EP_expire_date" value="">	<!-- (필수-MPI) 유효기간 -->
	<input type="hidden" id="EP_point_useyn" name="EP_point_useyn" value="">	<!-- 포인트 사용유무 -->
	<input type="hidden" id="EP_kmotion_useyn" name="EP_kmotion_useyn" value="">	<!-- KMOTION 사용유무 -->
	<input type="hidden" id="EP_kvp_cardcode" name="EP_kvp_cardcode" value="">	<!-- (필수-ISP) KVP 카드코드 -->
	<input type="hidden" id="EP_kvp_sessionkey" name="EP_kvp_sessionkey" value="">	<!-- (필수-ISP) KVP 세션 키 -->
	<input type="hidden" id="EP_kvp_encdata" name="EP_kvp_encdata" value="">	<!-- (필수-ISP) KVP 암호화 전문 -->
	<input type="hidden" id="EP_kvp_payset_flag" name="EP_kvp_payset_flag" value="">	<!-- KVP 복합결제 사용여부 -->
	<input type="hidden" id="EP_kvp_using_point" name="EP_kvp_using_point" value="">	<!-- KVP 복합결제 사용포인트 -->
	<input type="hidden" id="EP_vp_ret_save_point" name="EP_vp_ret_save_point" value="">	<!-- KVP 세이브 결제 유무 -->
	<input type="hidden" id="EP_kvp_quota" name="EP_kvp_quota" value="">	<!-- (필수-ISP) KVP 할부개월 -->
	<input type="hidden" id="EP_kvp_noint" name="EP_kvp_noint" value="">	<!-- (필수-ISP) KVP 무이자여부 -->
	<input type="hidden" id="EP_kvp_card_prefix" name="EP_kvp_card_prefix" value="">	<!-- KVP 카드prefix -->
	<input type="hidden" id="EP_kvp_pgid" name="EP_kvp_pgid" value="">	<!-- KVP 가맹점ID -->
	<input type="hidden" id="EP_order_no" name="EP_order_no" value="">	<!-- (필수) 가맹점 주문번호 : 인증요청 값 -->
	<input type="hidden" id="paymentMode" name="paymentMode" value="">
	<input type="hidden" id="sessionUniqueKeyCI" name="sessionUniqueKey" value="">
</form>
				
				
				
					

<!-- 인증 화면 호출 시 필요한 CSS 설정 -->
<link href="https://pg.cnspay.co.kr:443/dlp/css/kakaopayDlp.css" rel="stylesheet" type="text/css">
<!-- 인증서버 호출 관련 Library -->
<script src="https://pg.cnspay.co.kr:443/dlp/scripts/lib/easyXDM.min.js" type="text/javascript"></script>
<script src="https://pg.cnspay.co.kr:443/dlp/scripts/lib/json3.min.js" type="text/javascript"></script>

<!-- DLP창에 대한 KaKaoPay Library -->
<script src="https://kmpay.lgcns.com:8443/js/dlp/client/kakaopayDlpConf.js" charset="utf-8"></script>
<script src="https://kmpay.lgcns.com:8443/js/dlp/client/kakaopayDlp.min.js" charset="utf-8"></script>

<script type="text/javascript">
	var mobileType = false;

	function fn_start_kp() {
		cfn_openLoading();
		$('#BuyerEmail').val(_userEmail);
		$('#BuyerName').val(_userName);
		$.ajax({
			url: "/I/" + jsLangCode + "/getKakaoPayTxnId.do",
			type: "post",
			dataType: "json",
			data: $('#frm_kakaopay').serialize(),
			success: function(data) {
				if (data.code == "0000" || data.code == "E999") {
					var kakaoTxnIDRequestData = data.kakaoTxnIDRequestData;
					if (kakaoTxnIDRequestData.ERROR_CODE == '00') {
						$('#txnId').val(kakaoTxnIDRequestData.txnId);
						$('#merchantTxnNum').val(kakaoTxnIDRequestData.merchantTxnNum);
						$('#sessionUniqueKeyKP').val(sessionUniqueKey);
						kakaopayDlp.setTxnId(kakaoTxnIDRequestData.txnId);
						kakaopayDlp.setChannelType('WPM', 'TMS');
		                kakaopayDlp.callDlp('kakaopay_layer', document.frm_kakaopay, submitFunc);
					} else {
						alert(kakaoTxnIDRequestData.ERROR_MESSAGE);
						cfn_closeLoading();
					}
				} else {
					alert($.cfn_setText(jsScreenText, "msgOrderNoFail"));
					jsProcessPayment = false;
					cfn_closeLoading();
		        	return false;
				}
			}
		});
	}
	
    var submitFunc = function(data) {
   		if(data.RESULT_CODE === '00') {
			$('#paymentModeKP').val(paymentMode);
   			$.ajax({
   				url: "/I/" + jsLangCode + "/performKakaoPayment.do",
   				type: "post",
   				dataType: "json",
   				data: $('#frm_kakaopay').serialize(),
   				success: function(data) { 				
   					if (data.code == "0000" || data.code == "E999") {
   						var result = data.kakaoPaymentData;
   						if (result.ERROR_CODE == '') {
							parent.$('#completehidPNRData').val(JSON.stringify(result.pnrData));
							switch (paymentMode) {
								case 'normal':
									$('#frm_goPurchase').attr("action", "/I/" + _langCode + "/viewPurchaseComplete.do").submit();
									break;
								case 'exchange':
									$('#frm_goPurchase').attr("action", "/I/" + _langCode + "/viewExchangeComplete.do").submit();
									break;
								case 'ancillary':
									$('#frm_goPurchase').attr("action", "/I/" + _langCode + "/viewAncillaryPurchaseComplete.do").submit();
									break;
							}
   						} else {
   							if (result.ERROR_MESSAGE) {
   								alert(result.ERROR_MESSAGE);
   							} else if (result.ERROR_CODE == 'SCDP') {
   								alert($.cfn_setText(jsScreenText, "msgDuplPayment"));
   							}
   	   						jsProcessPayment = false;
   							cfn_closeLoading();
   						}
   					} else {
   						alert($.cfn_setText(jsScreenText, "msgPayFail"));
   						jsProcessPayment = false;
   						cfn_closeLoading();
   			        	return false;
   					}
   				}
   			});
        } else if(data.RESULT_CODE === 'KKP_SER_002') {
            // X버튼 눌렀을때의 이벤트 처리 코드 등록
            alert('[RESULT_CODE] : ' + data.RESULT_CODE + '\n[RESULT_MSG] : ' + data.RESULT_MSG);
			jsProcessPayment = false;
			cfn_closeLoading();
        } else {
            alert('[RESULT_CODE] : ' + data.RESULT_CODE + '\n[RESULT_MSG] : ' + data.RESULT_MSG);
			jsProcessPayment = false;
			cfn_closeLoading();
        }
    };
</script>
<form id="frm_kakaopay" name="frm_kakaopay" action="/I/KO/performKakaoPayment.do" method="post">
	<!-- 결제 파라미터 목록 -->
	<input type="hidden" name="PayMethod" value="KAKAOPAY"> <!-- (*)결제수단 : KAKAOPAY 고정 -->
	<input type="hidden" name="GoodsName" value="AirSeoul Ticket(75507910)"> <!-- (*)상품명 : -->
	<input type="hidden" name="Amt" value="378000"> <!-- (*)상품가격 : -->
	<input type="hidden" name="SupplyAmt" value="0"> <!--공급가액 : -->
	<input type="hidden" name="GoodsVat" value="0"> <!-- 부가세 :  -->
	<input type="hidden" name="ServiceAmt" value="0"> <!-- 봉사료 :  -->
	<input type="hidden" name="GoodsCnt" value="1"> <!-- (*)상품갯수 : 고정 -->
	<input type="hidden" name="MID" value="KCASC0001m"> <!-- (*)가맹점ID :  -->
	<input type="hidden" name="AuthFlg" value="10"> <!-- (*)인증플래그 :  고정 -->
	<input type="hidden" name="EdiDate" value="20170710170323"> <!-- (*)EdiDate :  -->
	<input type="hidden" name="EncryptData" value="MjIzMjI1YmVlODNlY2YwNGVkMmVkNThkZjY0MWNlMDA5MTMzODlmMWZlZmUyMTk4OGI3ZjZlMzkxM2UwZjlkMA=="><!-- (*)EncryptData :  -->
	<input type="hidden" name="BuyerEmail" id="BuyerEmail"> <!-- 구매자 이메일 :  -->
	<input type="hidden" name="BuyerName" id="BuyerName"> <!-- (*)구매자명 :  -->
	<input type="hidden" name="merchantTxnNum" id="merchantTxnNum"> <!-- (*)거래번호 :  -->
	
	<!-- 인증 파라미터 목록 -->
	<input type="hidden" name="offerPeriodFlag" value="N"> <!-- 상품제공기간 플래그 :  -->
	<input type="hidden" name="offerPeriod" value=""> <!-- 상품제공기간 :  -->
	<input type="hidden" name="certifiedFlag" value="CN"> <!-- (*)인증구분 :  고정 -->
	<input type="hidden" name="currency" value="KRW"> <!-- (*)거래통화 :  고정 -->
	<input type="hidden" name="prType" value="WPM"> <!-- (*)결제요청타입 : MPM : 모바일결제, WPM : PC결제  -->
	<input type="hidden" name="channelType" value="4"> <!-- (*)채널타입 : 2: 모바일결제, 4: PC결제 -->
	
	<!-- getTxnId 응답 -->
	<input type="hidden" id="resultCode" value="">
	<input type="hidden" id="resultMsg" value="">
	<input type="hidden" id="txnId" value="">
	<input type="hidden" id="prDt" value="">
	
	<!-- DLP호출에 대한 응답 -->
	<input type="hidden" name="SPU" value="">
	<input type="hidden" name="SPU_SIGN_TOKEN" value="">
	<input type="hidden" name="MPAY_PUB" value="">
	<input type="hidden" name="NON_REP_TOKEN" value="">

	<input type="hidden" name="pnrAlphaNo" value="HF0NV">
	<input type="hidden" name="paymentMode" id="paymentModeKP">
	<input type="hidden" name="sessionUniqueKey" id="sessionUniqueKeyKP">
</form>
<!-- 결제 처리 관련 iframe -->
	<div id="kakaopay_layer"></div>
<!--KWCAG_추가적용-->

				
				
				
				
				

				<form id="frm_goPurchase" name="frm_goPurchase" method="post">
					<input type="hidden" id="completehidPNRData" name="hidPNRData">
				</form>
			</div>
		</div>
	</div>
<input type="hidden" id="viewLayerPreAPISNotice" class="jsOpenLayer" href="I/KO/viewLayerPreAPISNotice">
<iframe id="PERFORM_PAYMENT_FRAME" name="PERFORM_PAYMENT_FRAME" title="결제처리 새창 열림" width="100%" height="0" style="display:none;"></iframe>
<!-- 결제 처리 관련 iframe -->

 
    
	<div id="footer">
		<div class="footer_inner">
			<div class="footer-top-list">
                <ul>
                    
                    <li><a href="/CW/ko/terms01.do"><!-- 국제운송약관 -->국제운송약관</a></li>
                    
                    
                    <li><a href="/CW/ko/terms02.do"><!-- 홈페이지 이용약관 -->홈페이지 이용약관</a></li>
                    <li><a href="/CW/ko/terms03.do"><strong><!-- 개인정보취급방침 -->개인정보 처리방침</strong></a></li>
                    
                    <li><a href="/CW/ko/terms04.do"><!-- 이메일무단수집거부 -->이메일무단수집거부</a></li>
                    
                    <li><a href="/CW/ko/terms05.do"><!-- 항공 교통 이용자 서비스 계획 -->항공교통이용자 서비스 계획</a></li>
                    <li><a href="/CW/ko/safe_infor.do"><!-- 소비자 안전 관련 정보 공개 -->소비자 안전 관련 정보 공개</a></li>
                    <li><a href="/CW/ko/terms06.do"><!-- 운임 및 요금 안내 -->운임 및 요금 안내</a></li>
                </ul>
            </div>
			
			<div class="footer_content">
                <div class="foonter_wd100">
	                
	                <div class="footer-family-site">
                        <div class="footer-family-site_inner clear_fix">
		                    <span class="select js-selectbox01">
		                        <!-- 2016-08-04 변경(S) -->
		                        <div class="group-link-list">
		                            <button type="button" title="그룹사 바로가기 열기" class="group-btn"><span><!-- 그룹사 바로가기 -->그룹사 바로가기</span></button>
		                            <div class="group-link">
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
                            </div>
                        </div>
	                 </div>
	                 
	                
	                
	                
	                
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
                    </div>
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
	                </div>
				</div>
			</div>
			
			
		    
		    
		    
		    
			<!-- 20160706 수정 -->
		    <div class="footer_sublogo">
		        <ul>
		            <li><a href="http://www.i-award.or.kr/Web/" target="_blank" title="WEB AWARD 13th WINNER 홈페이지 바로가기[새창열림]"><img src="images/common/img_web_award.jpg" alt="WEB AWARD 13th WINNER"></a></li>
		            <li><a href="http://www.i-award.or.kr/Smart/" target="_blank" title="APP AWARD 16 WINNER 홈페이지 바로가기[새창열림]"><img src="images/common/img_app_award.jpg" alt="APP AWARD 16 WINNER"></a></li>
		            <li><a href="http://gd.kidp.or.kr/" target="_blank" title="우수디자인 산업통상자원부선정 홈페이지 바로가기[새창열림]"><img src="images/common/img_goodDesign.jpg" alt="우수디자인 산업통상자원부선정"></a></li>
		            <li><a href="http://www.vkc.or.kr/" target="_blank" title="2016-2018 한국방문의해 홈페이지 바로가기 [새창열림]"><img src="images/common/img_visit.jpg" alt="2016-2018 한국방문의해"></a></li>
		            <li><a href="http://www.kumhoasiana.com/main/main.asp" target="_blank" title="금호아시아나 홈페이지 바로가기[새창열림]"><img src="images/common/img_flyasiana.jpg" alt="금호아시아나"></a></li>
                    
		        </ul>
		    </div>
		    <!--// 20160706 수정 -->
		</div>
		<div class="scroll-top-btn" style="position: fixed; bottom: 10px; display: block;">
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
	
<!-- 0526 header div 부분 닫음처리  -->
</div>
<!-- wrap -->

<script>
//출도착 조회 alert
function temp(){
    alert("2016년10월7일부터 서비스 이용이 가능합니다.");
}
//온라인 체크인 alert
function temp1(){
    alert("2016년10월5일부터 서비스 이용이 가능합니다.");
}
//부가 서비스 > 사전 기내식 주문, Cafe Mint, 기내면세품 alert
function temp2(){
    alert("2016년9월20일부터 서비스 이용이 가능합니다.");
}
function site(){
	var site = document.getElementById("site").value;
	if(site==null || site==""){
	}else if( site=="http://www.kumhoasiana.com/"){
		window.open(site, "금호아시아나그룹");	
	}else if( site=="http://www.kumhobuslines.co.kr/"){
        window.open(site, "금호고속");    
    }else if( site =="http://www.usquare.co.kr/"){
        window.open(site, "금호터미널");	
    }else if( site=="http://www.kumhotire.co.kr/"){
        window.open(site, "금호타이어");    
    }else if( site=="http://www.kumhoenc.com/"){
        window.open(site, "금호건설");    
    }else if( site=="http://flyasiana.com/"){
        window.open(site, "아시아나항공");    
    }else if( site=="http://www.asianaidt.com/"){
        window.open(site, "아시아나");    
    }else if( site=="http://www.kumhoresort.co.kr/"){
        window.open(site, "금호리조트");    
    }else if( site=="http://www.airbusan.com/"){
        window.open(site, "에어부산");    
    }else if( site=="http://www.asianaairport.com/"){
        window.open(site, "아시아나에어포트");    
    }else if( site=="http://www.asianasabre.co.kr/"){
        window.open(site, "아시아나세이버");    
    }else if( site=="http://www.kacf.net/"){
        window.open(site, "금호아시아나문화재");    
    }else if( site=="http://www.kumhoedunet.co.kr/"){
        window.open(site, "금호아시아나인재개발");    
    }else if( site=="http://recruit.flyairseoul.com/"){
        window.open(site, "에어서울 인재 채용");    
    }
}
function hotel(){
	window.open("https://www.expedia.co.kr/g/mb/airseoulmemberkr?langid=1042&mdpcid=kr.direct.airseoulkr.main.hotel", "호텔");
}
function rentcar(){
	var lang = 'ko';
	if( lang =='ko'){
		window.open("http://www.rentalcars.com/?affiliateCode=airseoul&preflang=ko", "렌트카");	
	}else if( lang =='en'){
		window.open("http://www.rentalcars.com/?affiliateCode=airseoul&preflang=en", "렌트카");
	}else if( lang =='ja'){
        window.open("http://www.rentalcars.com/?affiliateCode=airseoul&preflang=ja", "렌트카");
    }else if( lang =='ch'){
        window.open("http://www.rentalcars.com/?affiliateCode=airseoul&preflang=zs", "렌트카");
    }else if( lang =='zh'){
        window.open("http://www.rentalcars.com/?affiliateCode=airseoul&preflang=zh", "렌트카");
    }
		
}

function booking(){
	document.booking.submit();
}
function spprice(){
	alert('서비스 준비 중입니다.');
}

function moveBoard(fIdx, sVal, sPage){
    
    if(sVal == "1" ){
        $("#boardForm").attr("action", "noticeContent.do");      
    }else if(sVal == "2"){
    	$("#boardForm").attr("action", "newsDetail.do");               
    }else if(sVal == "3"){
        $("#boardForm").attr("action", "reportDetail.do");               
    }else if(sVal == "4"){
        $("#boardForm").attr("action", "noticeList.do");               
    }else if(sVal == "5"){
        $("#boardForm").attr("action", "newsList.do");               
    }else if(sVal == "6"){
        $("#boardForm").attr("action", "reportList.do");               
    }
    
    $("#seq").val(fIdx);
    $("#pageNo").val(sPage);
    $("#boardForm").submit();
    
}

function moveQna(fIdx, sVal, sPage, sterm){
    
    if(sVal == "1" ){
        $("#qnaForm").attr("action", "/CW/ko/qna_list.do");      
    }else if(sVal == "2"){
        $("#qnaForm").attr("action", "/CW/ko/qna_regiForm.do");               
    }else if(sVal == "3"){
        $("#qnaForm").attr("action", "/CW/ko/qna_view.do");               
    }
    
    $("#qSeq").val(fIdx);
    $("#term_sub").val(sterm);
    $("#qnaMId").val(_userId);
    $("#pageNo").val(sPage);
    $("#qnaForm").submit();
    
}

function moveQnaTop(sUser){  
   $("#qnaFormTop").attr("action", "/CW/ko/qna_list.do");   
   $("#qnaId").val(sUser);
   $("#qnaFormTop").submit();
    
}

function moveReserVation(rsvCode){  
	   $("#rsvForm").attr("action", "/I/ko/viewBooking.do#"+rsvCode);	   
	   $("#rsvForm").submit();	    
}

function detailView(Seq, sVal) {
	
	if(sVal == "1" ){
		$("#type").val("I");      
    }else if(sVal == "2"){
    	$("#type").val("E");               
    }    
    $("#eventForm").attr("action", "eventView.do");
    $("#eSeq").val(Seq);    
    $("#eventForm").submit();       
}

</script>


<!-- This script is for AceCounter START -->
<script language="javascript">
var _ag   = 0 ;         // 로그인사용자 나이
var _id   = _userId;         // 로그인사용자 아이디
var _mr   = '';         // 로그인사용자 결혼여부 ('single' , 'married' )
var _gd   = '';         // 로그인사용자 성별 ('man' , 'woman')
var _skey = '' ;        // 내부검색어

var _jn = '' ;          //  가입탈퇴 ( 'join','withdraw' ) 
var _jid = '' ;         // 가입시입력한 ID

var _ud1 = '' ;         // 사용자 정의변수 1 ( 1 ~ 10 정수값)
var _ud2 = '' ;         // 사용자 정의변수 2 ( 1 ~ 10 정수값)
var _ud3 = '' ;         // 사용자 정의변수 3 ( 1 ~ 10 정수값)
</script>
<!-- AceCounter END -->
<!-- AceCounter Log Gathering Script V.7.5.2013010701 -->
<script language="javascript">
    var _AceGID=(function(){var Inf=['gtp13.acecounter.com','8080','AH3A40721367092','AW','0','NaPm,Ncisy','ALL','0']; var _CI=(!_AceGID)?[]:_AceGID.val;var _N=0;var _T=new Image(0,0);if(_CI.join('.').indexOf(Inf[3])<0){ _T.src =( location.protocol=="https:"?"https://"+Inf[0]:"http://"+Inf[0]+":"+Inf[1]) +'/?cookie'; _CI.push(Inf);  _N=_CI.length; } return {o: _N,val:_CI}; })();
    var _AceCounter=(function(){var G=_AceGID;if(G.o!=0){var _A=G.val[G.o-1];var _G=( _A[0]).substr(0,_A[0].indexOf('.'));var _C=(_A[7]!='0')?(_A[2]):_A[3];    var _U=( _A[5]).replace(/\,/g,'_');var _S=((['<scr','ipt','type="text/javascr','ipt"></scr','ipt>']).join('')).replace('tt','t src="'+location.protocol+ '//cr.acecounter.com/Web/AceCounter_'+_C+'.js?gc='+_A[2]+'&py='+_A[4]+'&gd='+_G+'&gp='+_A[1]+'&up='+_U+'&rd='+(new Date().getTime())+'" t');document.writeln(_S); return _S;} })();
</script><script src="https://cr.acecounter.com/Web/AceCounter_AW.js?gc=AH3A40721367092&amp;py=0&amp;gd=gtp13&amp;gp=8080&amp;up=NaPm_Ncisy&amp;rd=1499673825660" type="text/javascript"></script>

<noscript>&lt;img src='http://gtp13.acecounter.com:8080/?uid=AH3A40721367092&amp;je=n&amp;' border='0' width='0' height='0' alt=''&gt;</noscript> 
<!-- AceCounter Log Gathering Script End -->


<link rel="stylesheet" type="text/css" href="stylesheets/sub/booking.css">


<style type="text/css">
	.booking-step ul li.success.booking-step-journey:hover .booking-step-content *, .booking-step ul li.success.booking-step-date:hover .booking-step-content *, .booking-step ul li.success.booking-step-passenger:hover .booking-step-content * {
		color: #111 !important;
	}
	.booking-step ul li.success.booking-step-extraservice:hover .booking-step-title, .booking-step ul li.success.booking-step-airlineticket:hover .booking-step-title, .booking-step ul li.success.booking-step-passengerinformation:hover .booking-step-title {
		color: #666 !important;
	}
</style>


<link rel="stylesheet" type="text/css" href="/css/sub/airs_booking.css">
<script type="text/javascript" src="/js/jquery/jquery-ui-1.11.4-custom.js" integrity="sha256-pSvgu2Sa7p+rRCgBgb/POfgj2H75UHLVO2Tb2m5KHGo=" crossorigin="anonymous"></script>
<script type="text/javascript" src="/js/airs_booking.js" integrity="sha256-M5IJBakU77xhGOxuxgXr2Gcq1HDtFwi6dXCqY3Jt8hQ=" crossorigin="anonymous"></script>

<script type="text/javascript" src="/js/jquery/jquery.timers.min.js"></script>
<script type="text/javascript" src="/js/jquery/jquery.ba-dotimeout.js"></script>
<script type="text/javascript">
	var sessionUniqueKey = '16a566ef-0afb-4142-f388-7e749488295b';

	var jsPNRDataStr = '{"DISPLAY_CURRENCY":"","EMDTicketed":false,"ERROR_CODE":"","ERROR_MESSAGE":"","KEY_REQ_LOGPRIMARY":"","LANGUAGE_CODE":"KO","PNRALPHANO":"HF0NV","PNRNUMERICNO":"75507910","ROUTETYPE":"I","SYSTEM_TYPE":"H","TRIPTYPE":"RT","UNTK":false,"USE_CURRENCY":"KRW","ancillaryDatas":[],"canCheckin":false,"canExchange":true,"canPnrCancel":true,"cancelDate":"","canceled":false,"checkIn":false,"createDateTime":"20170710170047","exchangeCount":"0","flownSeg":false,"hasOfflinePNR":false,"issueDate":"","noShow":false,"officeId":"WWW001","officeName":"","originPnrNo":"","originPnrSeqNo":"","passengerDatas":[{"apisData":{"GUMFlag":false,"dateOfBirth":"","destinationAddress":"","destinationCity":"","destinationCountry":"","destinationState":"","destinationZipCode":"","doDOCAUpdated":true,"doUpdated":true,"documentNumber":"","expiryDate":"","gender":"","issueingCountry":"","nationality":"","passengerName":"","passengerNo":"","paxType":"","text":"","textDoca":""},"baseCurrency":"KRW","baseFare":"350000","birthDay":"","couponDatas":[],"endorsment":"NON-ENDS/REBKG CHRGS EXIST","equivCurrency":"","equivFare":"","fareBasis":"TOW/BOW","fareCal":"SEL RS TAK89.12TOW RS SEL222.80BOW NUC311.92END ROE1122.082000","feeAmount":"0","fuelCharge":"0","gender":"M","increaseFare":"","increaseTax":"","issueAirline":"","issueCity":"","issueDate":"","issueIATA":"","parentPassengerNo":"","passengerNo":"1","paxName":"JUNG/HEAWON","paxTitle":"MR","paxType":"ADT","paymentDatas":[],"promotionCouponAmount":"","promotionCouponNo":"","rate":"","refundFare":"","refundTax":"","taxBreakDownDatas":[],"taxDatas":[{"currency":"KRW","rate":"","selExchange":false,"taxAmount":"28000","taxBreakdownsDatas":[],"taxCategory":"","taxCode":"BP","taxName":"","taxStatus":"","type":""}],"taxTotalAmount":"28000.0","ticketNo":"","ticketNumber":""}],"paymentDatas":[{"RFFee":"","approvalDate":"","approvalNo":"","approvalNo6":"","cardNo":"","currency":"","expireDate":"","extendedPayment":"","netAmount":"","payAmount":"378000.0","payCurrency":"","payType":"","payTypeName":"","refNo":"","refunded":false,"ticketNo":""}],"pnrSeqNo":"202110","rebookedPNR":false,"reservationEngFirstName":"HEAWON","reservationEngLastName":"JUNG","reservationHP":"","reservationMail":"dok2andtablo@naver.com","reservationName":"정해원","reservationPhone":"82-010-7550-7914","reservationUserId":"z7913546","reservationUserNo":"000826516","segmentDatas":[{"aircraftType":"321","arrivalAirport":"TAK","arrivalAirportName":"다카마쓰(TAK)","arrivalDateTime":"20170711152500","bookingClass":"T","carrierCode":"RS","carrierCodeName":"RS","departureAirport":"ICN","departureAirportName":"서울/인천(ICN)","departureDateTime":"20170711135000","direct":"","exhcnageAvailClass":"","fareBasis":"TOW","flightInfoDatas":[],"flightNo":"704","flownSeg":false,"flyingTime":"0135","layover":false,"noShow":false,"operationCarrierCode":"","operationCarrierName":"RS","pnrAlphaNo":"","rphNo":"1","seatCount":"1","segmentNo":"1","segmentStatus":"","selExchange":false},{"aircraftType":"321","arrivalAirport":"ICN","arrivalAirportName":"서울/인천(ICN)","arrivalDateTime":"20170712121000","bookingClass":"B","carrierCode":"RS","carrierCodeName":"RS","departureAirport":"TAK","departureAirportName":"다카마쓰(TAK)","departureDateTime":"20170712103500","direct":"","exhcnageAvailClass":"","fareBasis":"BOW","flightInfoDatas":[],"flightNo":"701","flownSeg":false,"flyingTime":"0135","layover":false,"noShow":false,"operationCarrierCode":"","operationCarrierName":"RS","pnrAlphaNo":"","rphNo":"2","seatCount":"1","segmentNo":"2","segmentStatus":"","selExchange":false}],"split":false,"status":"","ticketed":false,"timeLimit":"20170710173000"}';
	var jsPNRDataObj = null;
	var jsBookConditionDataObj = null;

	var jsScreenText;
	var jsLangCode = _langCode;
	var jsJsonUrl = '/lang/homepage/booking/Payment.json';

	var jsProcessPayment = false;
	var paymentMode = 'normal';

	var GUMFlag = false;
	
	if (jsPNRDataStr != "") {
		jsPNRDataObj = JSON.parse(jsPNRDataStr);
	}

 	setTimeout(function() {overTenMinute(); }, 600000); // 10분 후 결제페이지 빠져나옴
	if (paymentMode == 'normal') {
		setTimeout(function() {overTenMinute(); }, moment(jsPNRDataObj.timeLimit, 'YYYYMMDDHHmmss').add(-5, 'm').diff(moment())); // PNR의 timeLimit 값에서 5분을 뺀 시간이 되면 결제페이지 빠져나옴
	}

	$(document).ready(function() {
		jsScreenText = $.cfn_getProgramScreenText(jsLangCode, jsJsonUrl);
		$.cfn_setProgramScreenText(jsScreenText); // 가져온 텍스트 화면에 설정
		jsSelectbox();	// Select Box의 최초 선택된 내용에 대한 언어 처리 관련

		
			document.title = $.cfn_setText(jsScreenText, "titlePayment") + ' | ' + $.cfn_setText(jsScreenText, "titleTicketResv") + ' | AIR SEOUL'; // 타이틀 설정
			// BookingStep.jsp 처리 시작
			
				fn_setBookingStepLanguageInfo(jsLangCode);
				cfn_changeBookingStep("7", jsPNRDataObj);
			
			
			// BookingStep.jsp 처리 종료
		
		
		
		// 한국어 페이지가 아닐 경우 결제 프로그램 수동 설치 안내 숨김
		if(jsLangCode != "KO") {
			$("#divPayProgramInfo").addClass("hide");
		}
		
		// 미주 노선일 경우 사전정보 입력안내 출력
		for (var i=0; i < jsPNRDataObj.segmentDatas.length; i++) {
			if(jsPNRDataObj.segmentDatas[i].departureAirport == "GUM" || jsPNRDataObj.segmentDatas[i].arrivalAirport == "GUM"){
				$(".apisInfo").show();
				GUMFlag = true;
			} else {
				$(".apisInfo").hide();
				GUMFlag = false;
			}
		}
		
		fn_PrintSummarySegmentInfo(jsPNRDataObj.segmentDatas);	// 우측 비행기 출발/도착시간 셋팅
		
		var jsPaymentType = "";
		var $payment = null;

		$payButton = $("#btnPayment");
		$payTbInfo = $("#payTbInfo");

		// 계좌이체 결제는 IE인 경우에만 수행
		$payment = $(".creditcard, .cacao, .banktransfer, .borderpayment, .econtextcard, .econtextcash, .alipay, .unionpay");

		$payment.on("click", function(){
			
			$(".hide").removeAttr("style");

			if ($(this).hasClass("creditcard")) {
				$(".js-creditcard").show();
				jsPaymentType = "CC";
				$payTbInfo.append("결제 수단, 카드종류, 할부선택으로 구성된 한국발행 신용카드 결제 정보입니다.");
				$payButton.attr("title", $.cfn_setText(jsScreenText, "cardCpTxt"));
				$payButton.attr("title", $.cfn_setText(jsScreenText, "cardTxt"));
			} else if ($(this).hasClass("cacao")) {
				$(".js-cacao").show();
				jsPaymentType = "KP";
				$payTbInfo.append("결제 정보 입력 표 | 결제 수단으로 구성되어있습니다.");
				$payButton.attr("title", $.cfn_setText(jsScreenText, "kakaPayCpTxt"));
				$payButton.attr("title", $.cfn_setText(jsScreenText, "kakaPayTxt"));
			} else if ($(this).hasClass("banktransfer")) {
				$(".js-banktransfer").show();
				jsPaymentType = "CA";
				$payButton.attr("title", $.cfn_setText(jsScreenText, "caCpTxt"));
				$payButton.attr("title", $.cfn_setText(jsScreenText, "caTxt"));
			} else if ($(this).hasClass("borderpayment")) {
				$(".js-borderpayment").show();
				jsPaymentType = "CI";
				$payTbInfo.append("결제 수단, 카드종류, 카드번호, 유효기간으로 구성된 해외발행 신용카드 결제 정보입니다.");
				$payButton.attr("title", $.cfn_setText(jsScreenText, "ciCpTxt"));
				$payButton.attr("title", $.cfn_setText(jsScreenText, "ciTxt"));
			} else if ($(this).hasClass("econtextcard")) {
				$(".js-econtextcard").show();
				jsPaymentType = "EC";
				$payButton.attr("title", $.cfn_setText(jsScreenText, "ecCpTxt"));
				$payButton.attr("title", $.cfn_setText(jsScreenText, "ecTxt"));
			} else if ($(this).hasClass("econtextcash")) {
				$(".js-econtextcash").show();
				jsPaymentType = "EA";
				$payButton.attr("title", $.cfn_setText(jsScreenText, "eaCpTxt"));
				$payButton.attr("title", $.cfn_setText(jsScreenText, "eaTxt"));
			} else if ($(this).hasClass("alipay")) {
				$(".js-alipay").show();
				jsPaymentType = "AP";
				$payButton.attr("title", $.cfn_setText(jsScreenText, "aliCpTxt"));
				$payButton.attr("title", $.cfn_setText(jsScreenText, "aliTxt"));
			} else if ($(this).hasClass("unionpay")) {
				$(".js-unionpay").show();
				jsPaymentType = "UP";
				$payButton.attr("title", $.cfn_setText(jsScreenText, "unionCpTxt"));
				$payButton.attr("title", $.cfn_setText(jsScreenText, "unionTxt"));
			}
		});

		$payment.eq(0).trigger('click');

		setTimeout(function() { alert($.cfn_setText(jsScreenText, "msgSessionTime")); }, 1000);
		
		$("#btnPayment").click(function() {

			var thisHour = moment().hour();
			var thisMinute = moment().minute();
			if ((thisHour == 23 && thisMinute >= 50) || (thisHour == 0 && thisMinute <= 5)) {
				alert($.cfn_setText(jsScreenText, "paymentNoApplyTimeAlert"));
				return;
			}
			
			// 출발편 선택여부 확인
			if(!$('#chkAgreeTicketFareRule').is(':checked')) {
				alert($.cfn_setText(jsScreenText, "msgFareChecked"));
				$("#chkAgreeTicketFareRule").focus();
				return;
			}			

			if(!$('#chkAgreeTransitAgreement').is(':checked')) {
				alert($.cfn_setText(jsScreenText, "msgAgreeChecked"));
				$("#chkAgreeTransitAgreement").focus();
				return;
			}

			// 괌 노선 DOCS 미입력시 레이어팝업 띄우기
			if(GUMFlag){
				for (var i=0; i < jsPNRDataObj.passengerDatas.length; i++) {
					if(jsPNRDataObj.passengerDatas[i].apisData.documentNumber == ""){
						$('#viewLayerPreAPISNotice').trigger("click");
						return;
						break;
					}
		   		}
			}
			
			if (!jsProcessPayment) {
				jsProcessPayment = true;
				
				if (jsPaymentType == "CC") {
					var cardClass		= $("#selCardClassCC").val();			// 카드종류
					var installmentType	= $("#selInstallmentTypeCC").val();		// 할부선택
					
					if (cardClass == "") {
						alert($.cfn_setText(jsScreenText, "msgSelectCard"));
						$("#selCardClassCC").focus();
						jsProcessPayment = false;
						return false;
					}
					cfn_openLoading();
					fn_start_cc(cardClass, installmentType, parseInt("378000.0"));
				} else if (jsPaymentType == "KP") {
					fn_start_kp(parseInt("378000.0"));
				} else if (jsPaymentType == "CA") {
					fn_start_ca(parseInt("378000.0"));
				} else if (jsPaymentType == "CI") {
					var cardClass_CI = $("#selCardClassCI").val();			// 카드종류
					if (cardClass_CI == "") {
						alert($.cfn_setText(jsScreenText, "msgSelectCard"));
						$("#selCardClassCI").focus();
						jsProcessPayment = false;
						return false;
					}
					
					fn_start_ci(parseInt("378000.0"));
				} else if (jsPaymentType == "EC") {
					fn_start_ec(parseInt("378000.0"));
				} else if (jsPaymentType == "EA") {
					fn_start_ea(parseInt("378000.0"));
				} else if (jsPaymentType == "AP") {
					fn_start_ap(parseInt("378000.0"));
				} else if (jsPaymentType == "UP") {
					fn_start_up(parseInt("378000.0"));
				}
				
			} else {
				alert($.cfn_setText(jsScreenText, "msgPayLoading"));
			}
		});
	});

	var overTenMinute = function() {
		alert($.cfn_setText(jsScreenText, "msgTimeoutAlert"));
		location.href = '/CW/' + _langCode + '/main.do';
	};
	
	//변경취소 버튼
	function backToReservationDetail() {
		if (confirm($.cfn_setText(jsScreenText, "popConfirmAlert01"))) {
			var dataObj = new Object();
			dataObj.pnrAlpha = 'HF0NV';
			dataObj.pnrNumeric = '75507910';
			dataObj.ticketNo = '';

			var form = document.createElement("form");
			form.setAttribute("method", "post");
			form.setAttribute("action", "./viewReservationDetail.do");
			for (data in dataObj) {
				var hiddenField = document.createElement("input");
				hiddenField.setAttribute("type", "hidden");
				hiddenField.setAttribute("name", data);
				hiddenField.setAttribute("value", dataObj[data]);
				form.appendChild(hiddenField);
			}
			document.body.appendChild(form);
			form.submit();
			cfn_openLoading();
		}
	}

	//입력값이 빈 값이인지 체크하는 함수
	var checkEmpty = function(id, msgId) {
		var trimVal = $.trim($('#' + id).val());
		$('#' + id).val(trimVal);
		if (trimVal === '') {
			alert($.cfn_setText(jsonLoginData, msgId));
			$('#' + id).focus();
			return true;
		}
		return false;
	};
	
	// 운송약관 버튼 클릭시
	function fn_ClickConditionsOfCarriageBtn() {
		window.open('/lang/agreementPDF/Passenger_Transport_Agreements_KO.pdf', 'TransitAgreement', 'width=1000,height=1000');
	}
	
	// Summary 여정 정보 출력
   	function fn_PrintSummarySegmentInfo(SegmentDatas) {
   		$.each($(SegmentDatas), function(idx){ // 해당 노드의 개수 만큼 반복
   			jsSummarySeg = '<div class="booking-airlineticket-finalInfo-head-date">' + moment(SegmentDatas[idx].departureDateTime, "YYYYMMDD").locale(jsLangCode).format("YYYY.MM.DD [(]dd[)]")
   				+ ' ' + SegmentDatas[idx].departureDateTime.substr(8,2) + ':' + SegmentDatas[idx].departureDateTime.substr(10,2)
   				+ ' ~ ' + SegmentDatas[idx].arrivalDateTime.substr(8,2) + ':' + SegmentDatas[idx].arrivalDateTime.substr(10,2) + '</div>';
   			$('#Summary_' + SegmentDatas[idx].segmentNo).html(jsSummarySeg); // Summary 여정
   		});
   	}
</script>
<!-- wrap -->
</body></html>