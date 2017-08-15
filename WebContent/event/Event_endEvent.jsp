<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
	<div id="container">
		<div id="content">
			<!-- location -->
			<div id="location">
				<ol class="location_area">
					<li><a href="mainIndex.bo"><!-- 홈 -->홈</a></li>
                    <li><a href="Event_Main.bo"><!-- 이벤트/새소식 -->이벤트/새소식</a></li>
                    <li><span><!-- 이벤트 -->이벤트</span>
                        <div class="btn_lnb"><a href="#none"><!-- 이벤트/새소식 하위 메뉴 -->이벤트/새소식 하위 메뉴</a><span class="hidden-title">열기</span></div>
                        <div class="lnb_area">
                            <ul class="location_lnb">
                                <li class="on"><a href="Event_Main.bo"><!-- 이벤트 -->이벤트</a></li>
                                <li><a href="Event_specialprice.bo"><!-- 특가존 -->특가존</a></li>
                                <li><a href="NoticeList.bo"><!-- 공지사항 -->공지사항</a></li>
                              <li><a href="After.bo"><!-- 보도자료 -->미디어 룸</a></li>
                                
                            </ul>
                        </div>
                    </li>
					<li class="current"><span><!-- 지난 이벤트 -->지난 이벤트</span>
                        <div class="btn_lnb"><a href="#none"><!-- 이벤트 하위메뉴 -->이벤트 하위메뉴</a><span class="hidden-title">열기</span></div>
                        <div class="lnb_area">
                            <ul class="location_lnb">
                                <li><a href="Event_ing.bo"><!-- 진행중인 이벤트 -->진행중인 이벤트</a></li>
                                <li class="on"><a href="Event_end.bo"><!-- 지난 이벤트 -->지난 이벤트</a></li>
                            </ul>
                        </div>
                    </li>
				</ol>
			</div> <!-- location -->
			<!-- content_inner -->
			<div class="content_inner">
				<h1 class="pagetitle">이벤트</h1>

				<!-- 이벤트 -->
				<div class="tab_section tab_2w first">
					<ul>
						<li>
							<div class="tab_area">
								<h2 class="tab_title"><a href="Event_ing.bo">진행중인 이벤트</a></h2>
							</div>
						</li>
						<li class="on">
							<div class="tab_area">
								<h2 class="tab_title"><a href="Event_end.bo">지난 이벤트</a><span class="hidden-title">현재 페이지</span></h2>
							</div>
						</li>
					</ul>
					<div class="tab_content">
						<ul class="event_list">
						<!-- 메인배너가 1개 이상일 때만 출력 -->
						
						
							<!-- 진행중 이벤트 LIST -->
							
								<li>
									<a href="javascript:detailView(236, '2');">
										<p class="event_img"><img src="images/event/end/event_20170622_ko.jpg" alt="도쿄/오사카/홍콩/괌 신규취항 특가, 오사카/괌 9월12일, 도쿄/홍콩 10월31일"></p>
										<div class="event_content">
											<p class="noti">신규 취항 특가</p>
											<p class="txt">도쿄/오사카/홍콩/괌 신규 취항 기념 특가</p>
											<p class="date">이벤트 기간  2017.06.23 ~  2017.06.29</p>
										</div>
									</a>
									
								</li>
							
								<li>
									<a href="javascript:detailView(234, '2');">
										<p class="event_img"><img src="images/event/end/event_20170614_ko.jpg" alt="완벽한 하루 in macau 에어서울 x 갤럭시 마카오"></p>
										<div class="event_content">
											<p class="noti">완벽한 하루 in MACAU</p>
											<p class="txt">에어서울 X 갤럭시 마카오</p>
											<p class="date">이벤트 기간  2017.06.15 ~  2017.06.26</p>
										</div>
									</a>
									
								</li>
							
								<li>
									<a href="javascript:detailView(218, '2');">
										<p class="event_img"><img src="images/event/end/event_20170501_ko.jpg" alt="5월 신규회원 가입이벤트"></p>
										<div class="event_content">
											<p class="noti">5월 신규회원 가입이벤트</p>
											<p class="txt">5월 신규 회원으로 가입하시면 추첨을 통해 20명에게 아이스크림을 드립니다.</p>
											<p class="date">이벤트 기간  2017.05.01 ~  2017.05.31</p>
										</div>
									</a>
									
									<div class="winner_btn">
										<ul>
											<li><a href="javascript:winnercheck(218);" class="btn-type02-col03" id="winner">나의 당첨 확인</a></li> 
										</ul>
										<div class="hidebutton" style="display: none;">
										    <a href="CW/ko/event_winner.do?seq=218" class="btn-type02-col03 jsOpenLayer" id="hiddenbutton_218">당첨</a>
										    <a href="CW/ko/event_winner01.do?seq=218" class="btn-type02-col03 jsOpenLayer" id="hiddenbutton1_218">당첨x</a>
										    <a href="CW/ko/event_winner02.do?seq=218" class="btn-type02-col03 jsOpenLayer" id="hiddenbutton2_218">당첨2</a>
										</div>
										
									</div>
									
								</li>
							
								<li>
									<a href="javascript:detailView(228, '2');">
										<p class="event_img"><img src="images/event/end/event_20170518_ko.jpg" alt="produce 459 시코쿠"></p>
										<div class="event_content">
											<p class="noti">PRODUCE 시코쿠</p>
											<p class="txt">추첨을 통해 40명에게 지역특산물을 드립니다.</p>
											<p class="date">이벤트 기간  2017.05.19 ~  2017.05.30</p>
										</div>
									</a>
									
								</li>
							
						
						
						
						</ul>
						<div class="paging" id="pageNation"><div class="paginate first"><div class="paginate_inner"> <p class="direction first">맨 처음 페이지로 이동</p><p class="direction prev">이전 페이지로 이동</p><ul class="page_navi"><li class="selected"><a class="num on" href="#" onclick="goPage('frm',1)">1</a></li><li><a class="num" href="#" onclick="goPage('frm',2)">2</a></li><li><a class="num" href="#" onclick="goPage('frm',3)">3</a></li><li><a class="num" href="#" onclick="goPage('frm',4)">4</a></li><li><a class="num" href="#" onclick="goPage('frm',5)">5</a></li><li><a class="num" href="#" onclick="goPage('frm',6)">6</a></li><li><a class="num" href="#" onclick="goPage('frm',7)">7</a></li><li><a class="num" href="#" onclick="goPage('frm',8)">8</a></li><li><a class="num" href="#" onclick="goPage('frm',9)">9</a></li></ul><p class="direction next"><a class="next" href="#" onclick="goPage('frm',2)">다음 페이지로 이동</a></p><p class="direction last"><a class="last" href="#" onclick="goPage('frm',9)">맨 마지막 페이지로 이동</a></p></div></div></div>
					</div>

			</div>
		</div><!-- content-inner -->
	</div> <!-- content -->
<form id="frm" name="frm" action="endEvent.do" method="POST">
	<input type="hidden" name="pageNo" id="pageNo" value="1">
	<input type="hidden" name="pageCnt" id="pageCnt" value="4">
	<input type="hidden" name="pageSize" id="pageSize" value="10">
</form>
<script>
$(".hidebutton").hide();
</script>
<script>
	$(document).ready(function(){
		;;

		var pageNo = $("#pageNo").val();
		var pageCnt = $("#pageCnt").val();
		var pageSize = $("#pageSize").val();		
		var totalCount = "33";

		if ( pageNo == undefined || pageNo == "" ) pageNo = 1;
		if ( pageCnt == undefined || pageCnt == "" ) pageCnt = 4;
		if ( pageSize == undefined || pageSize == "" ) pageSize = 10;
		
		if(totalCount > 0) {
			pagination1('pageNation', 'frm', totalCount, pageNo, pageCnt, pageSize);
		}
	});	
	

</script>

          
	</div> <!-- container -->
	
<!-- 0526 header div 부분 닫음처리  -->

<script>


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

