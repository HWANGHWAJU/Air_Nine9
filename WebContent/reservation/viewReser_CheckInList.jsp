<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="dto.*"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%

HttpSession sess = request.getSession();
LoginUser user = (LoginUser)sess.getAttribute("User");

String memId = "";

if(user != null) memId = user.getMember_id();

%>

<input type="hidden" id="memID" name="memID" value="<%=memId %>">


<!-- wrap -->

	<div id="container">
		<div id="content">
			<!-- location -->
			<div id="location"  class="" style="top: 0px;">
				<ol class="location_area">
					<li><a href="/mainIndex.bo" id="Home">홈</a></li>
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
			</div>
			<!-- content_inner -->
			<div class="content_inner">
				<h1 class="pagetitle" name="lblOnlineCheckIn">온라인 체크인</h1>

				<div class="tab_section02 tab_2w first">
					<ul class="js-tab-section">
						<li class="NoneMemberCheckIn on">
							<div class="tab_area">
								<h2 class="tab_title"><a href="#none" id="NoneMemberCheckIn">비회원 체크인</a></h2>
								<div class="tab_content country">
									<!-- 예약번호 (S) -->
									<div class="checkin-box01">
										<ul class="uList01 mgt00">
											<li id="NonmemberNoti1">예약센터나 여행사에서 항공권을 구매하신 경우 로그인 없이 온라인 체크인이 가능합니다.</li>
											<li name="lblMemberNoti1">출발 48시간에서 1시간 전까지 이용하실 수 있으며 탑승권 출력은 인천공항 출발만 가능합니다.</li>
											<li name="lblMemberNoti2">사전 좌석을 구매하신 경우 탑승 수속 후 탑승권 발급이 가능합니다.</li>
											<li name="lblMemberNoti3">이미 온라인 체크인을 마친 경우 좌석 확인, 변경 및 온라인 탑승권 재출력이 가능합니다.<br>단, 항공기 출발이 1시간 미만으로 남은 (또는 항공기 출발 1시간 이내인) 경우 온라인 탑승권 재출력만 가능합니다.</li>
										</ul>
									</div>

									<div class="tbl-input-row01 mgt20">
										<table>
											<caption id="NonmemberTableCaption">구분, 예약번호/항공권번호, 영문 성명, 탑승일로 구성된 비회원 체크인 조회표입니다.</caption>
											<colgroup>
												<col style="width:18.2%">
												<col>
												<col style="width:18.2%">
												<col>
											</colgroup>
											<tbody>
											<tr>
												<th scope="row" id="NonmemberTableTH1">구분</th>
												<td colspan="3">
													<div>
														<ul class="radio_list">
															<li><span class="radiobox01 js-radiobox01 reservation-number"><label for="searchType01" class="active"><input type="radio" id="searchType01" name="searchType" value="R" checked="checked"> <span name="lblReservationNo">예약번호</span> </label></span></li>
														
														</ul>
													</div>
												</td>
											</tr>
											
											<tr class="js-reservation-number js-number-ckeck" style="display: table-row;">
												<th scope="row"><label for="txtReservationNumber" name="lblReservationNo">예약번호</label></th>
												<td colspan="3">
													<div>
														<span class="inp-txt"><input type="text" name="" style="width: 226px;" id="txtReservationNumber" title="예약번호 입력란" maxlength="8"></span>
													</div>
												</td>
											</tr>
											
											<!-- 삭제해도 되는 부분 / 항공권 번호 생성 하지 않음 -->
											<tr class="js-electronic-tickets js-number-ckeck" style="display: none;">
												<th scope="row"><label for="txtTicketNumber" name="lblFlightTicketNo">항공권번호</label></th>
												<td colspan="3">
													<div>
														<span class="inp-txt"><input type="text" name="" style="width: 226px;" id="txtTicketNumber" title="전자항공권 입력란" maxlength="13"></span>
														<span class="pdl10 Ce21b72" id="TicketNoInputNotice">예) 8202400012345 (항공권 번호가 2-, 1- 로 시작하는 경우, 820을 맨 앞에 추가하여 입력 바랍니다.)</span>
													</div>
												</td>
											</tr>
											<!--  -->
											
											<tr>
												<th><label id="EnglishName">탑승자 영문 성명</label></th>
												<td colspan="3">
													<div>
														<span class="inp-txt mgr03"><input type="text" name="" style="width:226px;text-transform: uppercase;;ime-mode:disabled" title="Last Name(성) 입력란" id="txtLastName" placeholder="Last Name(성)"></span>
														<span class="inp-txt"><input type="text" name="" style="width:226px;text-transform: uppercase;;ime-mode:disabled" title="First Name(이름) 입력란" id="txtFirstName" placeholder="First Name(이름)"></span>
													</div>
												</td>
											</tr>
											<tr>
												<th scope="row"><label for="txtBoardingday" id="BoardingDay">탑승일</label></th>
												<td colspan="3">
													<div class="booking-journey js-radioLayer01-wrap">
														<div class="bookgin_input">
															<div class="booking_date js-radioLayer01">
																<input type="text" name="" id="txtBoardingday" placeholder="날짜선택" title="탑승일 선택" readonly="">
																<button type="button" class="btn_booking js-radioLayer01-btn" data-target="#bookingDateLayer01"><span id="BoardingDayLayerOpen">탑승일 선택 달력 레이어 열기</span></button>
															</div>
														</div>
														<div id="bookingDateLayer01" class="booking-date-layer">
															<div class="booking-date-layer-btnarea">
																<button type="button" class="booking-date-layer-btntoday"><span class="btn-type06-col01" id="spanDateLayerTodayButton">오늘</span></button>
																<button type="button" class="booking-date-layer-btnleft"><span id="spanDateLayerPrevMonthButton">이전달</span></button>
																<button type="button" class="booking-date-layer-btnright"><span id="spanDateLayerNextMonthButton">다음달</span></button>
															</div>
															<div id="onlineDatePicker"  >
					
														</div>
															<div class="layer-close-area">
																<!-- 2016-02-26 접근성 추가 (S) -->
																<div class="date-layer-info">
																	<span class="today" id="spanDateLayerInfoToday">오늘날짜</span>
																	<span class="start" id="spanDateLayerInfoStart">출발일</span>
																	<span class="end" id="spanDateLayerInfoEnd">도착일</span>
																	<span class="between" id="spanDateLayerInfoBetween">체류</span>
																</div>
																<button type="button" class="layer-close"><span class="hidden-title" id="BoadingDayLayerClose">예약번호 탑승일 선택 레이어</span><span name="lblClose">닫기</span></button>
																<!-- 2016-02-26 접근성 추가 (E) -->
															</div>
														</div>
													</div>
												</td>
											</tr>
											</tbody>
										</table>
									</div>
									<div class="btn_article">
										<ul>
											<li><button type="button" class="btn-type01-col01" id="btnNonMemeber" name="lblConfirm" onclick="sub();">확인</button></li>
										</ul>
									</div>

									<h2 class="table-title-big mgt60" name="lblOnlineCheckInItinerary">온라인 체크인 가능 여정</h2>
									<div class="tbl-data-col02 mgt20">
										<table>
											<caption name="lblOnlineCheckInItineraryCaption">온라인 체크인 가능 여정 데이터 표 | 선택, 편명, 여정, 출발, 도착, 예약자, 체크인 상태로 구성되어있습니다.</caption>
											<colgroup>
												<col style="width:50px">
												<col style="width:80px">
												<col>
												<col style="width:170px">
												<col style="width:170px">
												<col style="width:80px">
												<col style="width:120px">
											</colgroup>
											<thead>
											<tr>
												<th scope="col" name="lblOnlineCheckInItineraryTH1">선택</th>
												<th scope="col" name="lblOnlineCheckInItineraryTH2">편명</th>
												<th scope="col" name="lblOnlineCheckInItineraryTH3">여정</th>
												<th scope="col" name="lblOnlineCheckInItineraryTH4">출발</th>
												<th scope="col" name="lblOnlineCheckInItineraryTH5">도착</th>
												<th scope="col" name="lblOnlineCheckInItineraryTH6">탑승자</th>
												<th scope="col" name="lblOnlineCheckInItineraryTH7">체크인 상태</th>
											</tr>
											</thead>
											
											<tbody>
											
											</tbody>
														
											 <c:choose>
									             <c:when test="${requestScope.vsize != 0 }">
												  <c:forEach var="v" items="${requestScope.v}">
													  <tbody>
													    <tr>
													      <td class="tc">${v.booking_number}</td>
													      <td class="tc">${v.booking_flight_name}</td>
													      <td class="tc">${v.booking_start} -> ${v.booking_arr}</td>
													      <td class="tc">${v.booking_start_date}</td>
													      <td class="tc">${v.booking_arr_date}</td>
													      <td class="tc">${v.booking_eng_firstname}</td>
													      <td class="tc">${v.booking_check}</td>
													      </tr>
													  </tbody>
												</c:forEach>
											</c:when>
								     	     <c:otherwise>
								     	     
											<tbody id="tblNonMemberSeg0">
											<!-- 데이터가 없는경우 (S) -->
											<tr>
												<td colspan="7" class="tbl-null" name="lblDontHaveAnyReservations">예약하신 내역이 없습니다.</td>
											</tr>
											<!-- 데이터가 없는경우 (E) -->
											</tbody>
											 </c:otherwise>
										</c:choose>
											
										</table>
										
									</div>

									<div class="mgt30 tr" id="btnBox0" style="display:none;">
										<!-- 활성화 (S) -->
										<a href="javascript:void(0);" onclick="fn_GoToCheckInProcess('DCS');return false;" class="btn-type02-col01 mgr05" id="" name="lblBtnCheckIn" style="display:none;">체크인 하기</a>
										<a href="javascript:void(0);" onclick="fn_GoToSeatChange();return false;" class="btn-type02-col01 mgr05" id="" name="lblBtnSeatChange" style="display:none;">좌석변경</a>
										<a href="javascript:void(0);" onclick="fn_GoToCheckInProcess('CANCEL');return false;" class="btn-type02-col01 mgr05" id="" name="lblBtnCancelCheckIn" style="display:none;">체크인 취소</a>
										<a href="javascript:void(0);" onclick="fn_ReissueingTicket();return false;" class="btn-type02-col01 mgr05" id="" name="lblBtnReissueBoardingTicket" style="display:none;">탑승권 재발급</a>
										<!-- 활성화 (E) -->
										<!-- 비활성화 (S) -->
<!-- 										<span class="btn-type02-col04" id="" name="lblBtnReissueBoardingTicket" style="display:none;"></span> -->
										<!-- 비활성화 (E) -->
									</div>
									<!-- 예약번호 (E) -->
									<ul class="uList01 mgt40">
										<li name="lblOnlineCheckInNoti1">10명 이상의 단체 고객 혹은 직원 확인이 필요한 서비스(혼자 여행하는 어린이, 애완동물 동반, 임산부, 휠체어 신청, 비상구 좌석 사전 구매 등)를 신청하신 고객은 온라인 체크인 이용이 불가하며 출발 당일 공항 카운터에서 직원의 안내를 받으시기 바랍니다.</li>
										<li name="lblOnlineCheckInNoti2">제휴 항공사가 운항하는 공동 운항편은 서비스 이용이 불가합니다.</li>
										<!-- 조원영 과장 요청으로 문구 삭제 - 170303 JS
										<li name="lblOnlineCheckInNoti3"></li>
										 -->
									</ul>
								</div>

							</div>
						</li>
						<li id="trueonline" class="MemberCheckIn">
							<div class="tab_area">
								<h2 class="tab_title" confirmfunc="fn_isLogin"><a href="#none" id="MemberCheckIn">회원 체크인</a></h2>
								<div class="tab_content country" id="tabMemberCheckIn">
									<!-- 회원 체크인 (S) -->
									<div class="checkin-box01">
										<strong class="title" id="MemberCheckInTitle">온라인 체크인 및 탑승권 발급이 가능합니다.</strong>
										<ul class="uList01">
											<li name="lblMemberNoti1">출발 48시간에서 1시간 전까지 이용하실 수 있으며 탑승권 출력은 인천공항 출발만 가능합니다.</li>
											<li name="lblMemberNoti2">사전 좌석을 구매하신 경우 탑승 수속 후 탑승권 발급이 가능합니다.</li>
											<li name="lblMemberNoti3">이미 온라인 체크인을 마친 경우 좌석 확인, 변경 및 온라인 탑승권 재출력이 가능합니다.<br>단, 항공기 출발이 1시간 미만으로 남은 (또는 항공기 출발 1시간 이내인) 경우 온라인 탑승권 재출력만 가능합니다.</li>
										</ul>
									</div>
									<h2 class="table-title-big mgt60" name="lblOnlineCheckInItinerary">온라인 체크인 가능 여정</h2>
									<div class="tbl-data-col02 mgt20">
										<table id="OnlineCheckList">
											<caption name="lblOnlineCheckInItineraryCaption">온라인 체크인 가능 여정 데이터 표 | 선택, 편명, 여정, 출발, 도착, 예약자, 체크인 상태로 구성되어있습니다.</caption>
											<colgroup>
												<col style="width:50px">
												<col style="width:80px">
												<col>
												<col style="width:170px">
												<col style="width:170px">
												<col style="width:80px">
												<col style="width:120px">
											</colgroup>
											<thead class="">
											<tr>
												<th scope="col" name="lblOnlineCheckInItineraryTH1">선택</th>
												<th scope="col" name="lblOnlineCheckInItineraryTH2">편명</th>
												<th scope="col" name="lblOnlineCheckInItineraryTH3">여정</th>
												<th scope="col" name="lblOnlineCheckInItineraryTH4">출발</th>
												<th scope="col" name="lblOnlineCheckInItineraryTH5">도착</th>
												<th scope="col" name="lblOnlineCheckInItineraryTH6">예약자</th>
												<th scope="col" name="lblOnlineCheckInItineraryTH7">체크인 상태</th>
											</tr>
											</thead>
											
											<tbody>
											
											</tbody>
											
										<!-- 	<tbody id="tblMemberSeg_0">
											<tr>
												<td colspan="7" class="tbl-null" name="lblDontHaveAnyReservations">예약하신 내역이 없습니다.</td>
											</tr>
											</tbody> -->
										</table>
									</div>

									<div class="mgt30 tr" id="btnBox1" style="display:none;">
										<a href="javascript:void(0);" onclick="fn_GoToCheckInProcess('DCS');return false;" class="btn-type02-col01 mgr05" id="" name="lblBtnCheckIn" style="display:none;">체크인 하기</a>
										<a href="javascript:void(0);" onclick="fn_GoToSeatChange();return false;" class="btn-type02-col01 mgr05" id="" name="lblBtnSeatChange" style="display:none;">좌석변경</a>
										<a href="javascript:void(0);" onclick="fn_GoToCheckInProcess('CANCEL');return false;" class="btn-type02-col01 mgr05" id="" name="lblBtnCancelCheckIn" style="display:none;">체크인 취소</a>
										<a href="javascript:void(0);" onclick="fn_ReissueingTicket();return false;" class="btn-type02-col01 mgr05" id="" name="lblBtnReissueBoardingTicket" style="display:none;">탑승권 재발급</a>
									</div>
									<!-- 회원 체크인 (E) -->
									<ul class="uList01 mgt40">
										<li name="lblOnlineCheckInNoti1">10명 이상의 단체 고객 혹은 직원 확인이 필요한 서비스(혼자 여행하는 어린이, 애완동물 동반, 임산부, 휠체어 신청, 비상구 좌석 사전 구매 등)를 신청하신 고객은 온라인 체크인 이용이 불가하며 출발 당일 공항 카운터에서 직원의 안내를 받으시기 바랍니다.</li>
										<li name="lblOnlineCheckInNoti2">제휴 항공사가 운항하는 공동 운항편은 서비스 이용이 불가합니다.</li>
										<!-- 조원영 과장 요청으로 문구 삭제 - 170303 JS
										<li name="lblOnlineCheckInNoti3"></li>
										 -->
									</ul>
								</div>

							</div>
						</li>
					</ul>
				</div>

			</div>
		</div>
	</div>
	
	
	<p name="viewLayerLogin" href="I/KO/viewOneLogin" class="jsOpenLayer" style="display:none;"></p>
    <div id="ui-datepicker-div" class="ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all"></div>

    <form action="bookingCheckController.cK" method="post"  name="h"  id="h">
			
	</form>
	<form action="bookingCheckController2.cK" method="post"  name="i"  id="i">
			
	</form>
  <link rel="stylesheet" type="text/css" href="stylesheets/sub/myreservation.css">
<script type="text/javascript">

var memid = $("#memID").val(); //id 값 가져와서 저장

if(memid != ""){
	//로그인 되어진 상태이면, 
	  alert(memid);
	fn_CheckInAjax(memid);
		
	$(".MemberCheckIn").addClass("on");
	$(".NoneMemberCheckIn").removeClass("on");
	
	
}else{
	$(".MemberCheckIn").removeClass("on");
	$(".NoneMemberCheckIn").addClass("on");
}



$("#MemberCheckIn").click(function(){
	if(memid =="")	alert("로그인한 회원만 사용 할 수 있습니다.");
});

function fn_CheckInAjax(memid){
	
	
	$.ajax({
	      type:"POST",
	      url:"./bookingCheckController2.cK",
	      dataType : "JSON",
	      data : {"Userld" : memid},
	      contextType : "application/x-www-form-urlencoded; charset=UTF-8",
	      success : function(data){
	    	  console.log(data);
//	    	  alert("아이고");
	    	  if (data.length == 0) {
					alert("해당하는 정보가 없습니다.");

				} else {
					var CheckStr = "";
					
					for(var i=0; i< data.length; i++){
						
						var btnId = "check_"+i;
//						alert(btnId);
						CheckStr += "<tr>"
							+ "<td class='tc'>"
							+ data[i].number
							+ "</td>"
							+ "<td class='tc'>"
							+ data[i].name
							+ "</td>"
							+ "<td class='tc'>"
							+ data[i].bst + '->'
							+ data[i].barr
							+ "</td>"
							+ "<td class='tc'>"
							+ data[i].sday
							+ "</td>"
							+ "<td class='tc'>"
							+ data[i].aday
							+ "</td>" 
							+ "<td class='tc'>"
							+ data[i].efname
							+ "</td>" 
							+ "<td class='tc'><button type='button' class='checkbtn' data='"+data[i].number+"'dep='"+data[i].bst+"' arr='"+data[i].barr+"' id='"+btnId+"'>"
							+ data[i].check
							+ "</a></td>" +

							"</tr>";

						
						
					}
					var $table = $("#OnlineCheckList").find('tbody');

		    		$table.html(CheckStr);
		    		
		    			$("#trueonline").addClass("on");
		    			$("#falseonline").removeClass('on');
					
		    			
		    			
		    			$(".checkbtn").on("click", function(){
		    				
		    				var btnId = $(this).attr("id");
		    				console.log(btnId);
		    				
		    				var btnData = $(this).attr("data");
		    				var dep = $(this).attr("dep");
		    				var arr = $(this).attr("arr");
		    				console.log(btnData);
		    				if(confirm("체크인 하시겠습니까?")){
		    					fn_checkin(btnData, memid, dep, arr);
		    				}	
		    				
		    			});
		    			
	           }
	
	    		
	      }
	
});
	
}

/*	체크인 	*/	
function fn_checkin(btndata, memid, dep, arr){
	alert(btndata+"  id :"+memid);
	
	$.ajax({
		type : "POST",
		url : "./OnlineCheckIn.cK",
		dataType :"TEXT",
		data : {bookingNum : btndata, 
				userId : memid,
				dep : dep,
				arr : arr },
		contextType : "application/x-www-form-urlencoded; charset=UTF-8",
		success : function(data){
			alert("체크인 처리가 완료 되었습니다.");
			alert(data);
			fn_CheckInAjax(memid);
		}
	});
	
}





  function sub(){
	  
	  var radioEx = $("[name$='searchType']:checked").val();

	  
	  if(radioEx == "R"){
	        var radio = document.getElementById("searchType01").value;
	     }else if(radioEx == "T"){
	        var radio = document.getElementById("searchType02").value;
	     }
	  var number = document.getElementById("txtReservationNumber").value;
	  var lname = document.getElementById("txtLastName").value;
	  var fname = document.getElementById("txtFirstName").value;
	  var sday = document.getElementById("txtBoardingday").value;
	  var iv = document.getElementById("h");
	  
	  iv.innerHTML = "<input type='hidden' name='number' value="+number+">";
	  iv.innerHTML += "<input type='hidden' name='radio' value="+radio+">";
	  iv.innerHTML += "<input type='hidden' name='lname' value="+lname+">";
	  iv.innerHTML += "<input type='hidden' name='fname' value="+fname+">";
	  iv.innerHTML += "<input type='hidden' name='sday' value="+sday+">";
	  iv.submit();
  };
  


$("#onlineDatePicker").datepicker({
		minDate : moment().toDate(),
		maxDate : moment().add(323,'days').endOf('month').toDate(),
		numberOfMonths : 2,
		onSelect : function(valueDate,key){
	/* 			alert("key :"+$(this).attr("class") +" valueDate: "+valueDate); */
			var d = moment(valueDate).format("YYYY.MM.DD");
	//		alert(d);
			$("#txtBoardingday").val(d);
			$("#bookingDateLayer01").slideUp(1); 
		}
	});
	
$(".btn_booking").on("click", function(){
	var $this = $(this);
	var $target = $($(this).attr("data-target"));

/*  	$("#onlineDatePicker").find("div").css("width","inherit");  */
		$(".ui-datepicker-inline").css("width","700px");

	if($this.hasClass("active")){
		$this.removeClass("active");
		$target.slideUp(200);
	}else{
/* 		$("#onlineDatePicker").find("div").css("width","inherit");  */
		$this.addClass("active");
		$target.slideDown(200);
	}

	$(".layer-close").on("click", function(){
		$this.removeClass("active");
		$target.slideUp(200);
	});

});




$("#NonmemberCheckIn").click(function(){
	$("#falseonline").addClass("on");
	$("#trueonline").removeClass('on');	
	
});

</script>
