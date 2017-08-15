

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false"
	import="dto.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%

HttpSession sess = request.getSession();

LoginUser user = (LoginUser)sess.getAttribute("User");
String id = user.getMember_id();
%>
<style>
div.clear1 {
	clear: both;
}

.stam1 {
	margin: 8px 8px 0 8px;
	box-sizing: border-box;
	border: 1px solid #D5D5D5;
	position: absolute;
	width: 544px;
	height: 70px;
	background-color: white;
	z-index: 2;
}

.stam1 span {
	vertical-align: middle;
}
.stampListBox{
	margin: 8px 8px 0 8px;
	box-sizing: border-box;
	border: 1px solid #D5D5D5;
	position:relative; 
	height: 380px;
	background-color: white;
	z-index: 2;
}
.stampListBox ul{
margin-left: 10px;

}
.stampListBox li{
float: left; 
width: 57px;
height: 55px;
margin: 25px 20px 10px 25px;
position: relative;
}


.stampListBox li span{
vertical-align: middle;
text-align: center;
position: relative;
top: 20px;
left: 22px;
}

em.irT{
position: relative;
padding-top:50px;
padding-left:8px;
color:gray;
font-style:italic;
top: 20px;
font-size: 10px;

}
</style>

<html lang="ko">


<!-- wrap -->
<div id="container">
	<div id="content">
		<!-- location -->
		<div id="location">
			<ol class="location_area">
				<li><a href="mainIndex.bo">
						<!-- 홈 -->홈
				</a></li>
				<li><a href="Company.bo">
						<!-- 마이 페이지 -->마이 페이지
				</a></li>
				<li class="current"><span>
						<!-- 나의 스탬프 -->나의 스탬프
				</span>
					<div class="btn_lnb">
						<a href="#none">
							<!-- 회사소개 하위메뉴 -->회사소개 하위메뉴
						</a><span class="hidden-title">열기</span>
					</div>
					<div class="lnb_area">
						<ul class="location_lnb">
							<li><a href="Company.bo">
									<!-- 나의 스탬프 -->나의 스탬프
							</a></li>
							<li class="on"><a href="Company_ceo.bo">
									<!-- 회원 정보수정 -->회원 정보수정
							</a></li>
							<li><a href="Company_philo.bo">
									<!-- 회원탈퇴 -->회원탈퇴
							</a></li>
						</ul>
					</div></li>
			</ol>
		</div>
		<!-- content_inner -->
		<div class="content_inner">
			<h1 class="pagetitle">나의 스탬프</h1>

			<div
				style="position: relative; margin: 0 auto; height: 700px; padding-top: 50px;">
				<div
					style="background: rgb(85, 149, 255); color: white; font-weight: bold; position: relative; line-height: 80px; font-size: 35px; width: 600px; height: 80px; margin: 0 auto; text-align: center; border-radius: 50px 50px 0 0; font-style: HYPMokGak;">
					Air N9NE STAMP</div>
				<div class="clear1"></div>
				<div
					style="width: 600px; height: 500px; margin: 0 auto; box-sizing: border-box; position: relative; border-bottom: 20px solid rgb(85, 149, 255); border-left: 20px solid rgb(85, 149, 255); border-right: 20px solid rgb(85, 149, 255); background-color: #F6F6FF;">
					<div class="clear1"></div>
					<div class="stam1" style="font-size: 17px;">
						<span
							style="height: 67px; float: right; line-height: 67px; font-weight: bold; padding-right: 15px;">
							<span
							style="font-size: 23px; letter-spacing: 2px; color: red; font-weight: bold; position: relative; bottom: 5px;"><%=id %></span>
							님의 현재보유 STAMP는 <span
							style="font-size: 23px; letter-spacing: 2px; color: red; font-weight: bold; position: relative; bottom: 5px;">${requestScope.stampCount }</span>개
							입니다.
						</span>
					</div>
					<img src="images/stamp/stamp1.png"
						style="z-index: 10; width: 90px; position: relative; top: 8px;">
					<div class="clear1"></div>

					<div class="stampListBox">
						<ul class="stampList" data-stampcategory="STAMP"
							data-page="0" data-maxpage="0">
														
								<!-- 스탬프가 찍힌 부분 -->
								<c:forEach begin="1" end="${requestScope.stampCount }" varStatus="status">
									<li class="nativeStamp" style="background-image:url('images/stamp/stampcom.png');"><span
									class="num" title=""></span></li>
								</c:forEach>
								
								<!-- 스탬프가 찍히지 않은 부분 -->
								<c:forEach begin="1" end="${20-requestScope.stampCount }" varStatus="status">
									<li class="nativeStamp" style="background-image:url('images/stamp/stampnone.png');"><em class="irT">Air N9NE</em></span></li>
								</c:forEach>

						</ul>
					</div>



				</div>



			</div>


		</div>
		<!-- content inner -->

	</div>
	<!-- content -->
</div>
<!-- container -->