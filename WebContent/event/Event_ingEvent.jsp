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
                        <div class="lnb_area" style="display: none;">
                            <ul class="location_lnb">
                                <li class="on"><a href="Event_ing.bo"><!-- 이벤트 -->이벤트</a></li>
                                <li><a href="Event_specialprice.bo"><!-- 특가존 -->특가존</a></li>
                                <li><a href="Notice.bo"><!-- 공지사항 -->공지사항</a></li>      
	                             <li><a href="After.bo"><!-- 보도자료 -->미디어 룸</a></li>
	                            
                            </ul>
                        </div>
                    </li>
                    <li class="current"><span><!-- 진행중인 이벤트 -->진행중인 이벤트</span>
                        <div class="btn_lnb"><a href="#none"><!-- 이벤트 하위메뉴 -->이벤트 하위메뉴</a><span class="hidden-title">열기</span></div>
                        <div class="lnb_area" style="display: none;">
                            <ul class="location_lnb">
                                <li class="on"><a href="Event_ing.bo"><!-- 진행중인 이벤트 -->진행중인 이벤트</a></li>
                                <li><a href="Event_end.bo"><!-- 지난 이벤트 -->지난 이벤트</a></li>
                            </ul>
                        </div>
                    </li>
                </ol>
            </div>
			<!-- content_inner -->
			<div class="content_inner">
				<h1 class="pagetitle">이벤트</h1>

				<!-- 이벤트 -->
				<div class="tab_section tab_2w first">
					<ul>
						<li class="on">
							<div class="tab_area">
								<h2 class="tab_title"><a href="Event_ing.bo">진행중인 이벤트</a><span class="hidden-title">현재 페이지</span></h2>
							</div>
						</li>
						<li>
							<div class="tab_area">
								<h2 class="tab_title"><a href="Event_end.bo">지난 이벤트</a></h2>
							</div>
						</li>
					</ul>

					<div class="tab_content">
						<ul class="event_list">
						<!-- 메인배너가 1개 이상일 때만 출력 -->
						
						
							<!-- 진행중 이벤트 LIST -->
							
								<li>
									<a href="javascript:detailView(240, '1');">
										<p class="event_img"><img src="images/event/ing/event_20170627_02_ko.jpg" alt="AIR SEOUL X 금호리조트, 보딩패스 제휴 프로모션"></p>
										<div class="event_content">
											<p class="noti">보딩패스 제휴 프로모션</p>
											<p class="txt">에어서울 보딩패스로 금호리조트 혜택받자!</p>
											<p class="date">이벤트 기간  2017.06.27 ~  2017.12.31</p>
										</div>
									</a>
								</li>
							
								<li>
									<a href="javascript:detailView(238, '1');">
										<p class="event_img"><img src="images/event/ing/event_20170627_01_ko.jpg" alt="AIR SEOUL [홍콩, 괌] 극적인하룻밤"></p>
										<div class="event_content">
											<p class="noti">AIR SEOUL ♡ 극적인하룻밤</p>
											<p class="txt">에어서울과 함께하는 거침없이 화끈한 문화 힐링 이벤트</p>
											<p class="date">이벤트 기간  2017.06.27 ~  2017.12.31</p>
										</div>
									</a>
								</li>
							
								<li>
									<a href="javascript:detailView(214, '1');">
										<p class="event_img"><img src="images/event/ing/event_20170405_ko.jpg" alt="2차 프로모션 노선, 금나라와라 일본가자 뚝딱!, 에어서울 타고 일본가면 혜택이 팡팡~!"></p>
										<div class="event_content">
											<p class="noti">금나와라 뚝딱, 일본가자 뚝딱! 2차 프로모션</p>
											<p class="txt">2차 프로모션 노선 (나가사키, 시즈오카, 요나고)</p>
											<p class="date">이벤트 기간  2017.04.06 ~  2017.12.31</p>
										</div>
									</a>
								</li>
							
								<li>
									<a href="javascript:detailView(198, '1');">
										<p class="event_img"><img src="images/event/ing/event_20170310_ko.jpg" alt=""></p>
										<div class="event_content">
											<p class="noti">금나와라 뚝딱, 일본가자 뚝딱!</p>
											<p class="txt">1차 프로모션 노선 (히로시마, 다카마쓰, 나가사키)</p>
											<p class="date">이벤트 기간  2017.03.10 ~  2017.12.31</p>
										</div>
									</a>
								</li>
							
						
						
						
						</ul>
						
						<div class="paging" id="pageNation"><div class="paginate first"><div class="paginate_inner"> <p class="direction first">맨 처음 페이지로 이동</p><p class="direction prev">이전 페이지로 이동</p><ul class="page_navi"><li class="selected"><a class="num on" href="#" onclick="goPage('frm',1)">1</a></li><li><a class="num" href="#" onclick="goPage('frm',2)">2</a></li></ul><p class="direction next"><a class="next" href="#" onclick="goPage('frm',2)">다음 페이지로 이동</a></p><p class="direction last"><a class="last" href="#" onclick="goPage('frm',2)">맨 마지막 페이지로 이동</a></p></div></div></div>
					</div>
				</div>
			</div>
		</div>
	</div>
<form id="frm" name="frm" action="ingEvent.do" method="POST">
	<input type="hidden" name="pageNo" id="pageNo" value="1">
	<input type="hidden" name="pageCnt" id="pageCnt" value="4">
	<input type="hidden" name="pageSize" id="pageSize" value="10">
</form>
<script>document.title="진행중인 이벤트(목록) < 이벤트 < 이벤트/새소식 < AIR SEOUL";</script>
<script>
	$(document).ready(function(){
		;;
		var pageNo = $("#pageNo").val();
		var pageCnt = $("#pageCnt").val();
		var pageSize = $("#pageSize").val();		
		var totalCount = "6";

		if ( pageNo == undefined || pageNo == "" ) pageNo = 1;
		if ( pageCnt == undefined || pageCnt == "" ) pageCnt = 4;
		if ( pageSize == undefined || pageSize == "" ) pageSize = 10;
		
		if(totalCount > 0) {
			pagination1('pageNation', 'frm', totalCount, pageNo, pageCnt, pageSize);
		}
	});	
	
</script>
 
  
<!-- 0526 header div 부분 닫음처리  -->

<!-- wrap -->

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

