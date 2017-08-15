<%@page import="dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<style type="text/css">


div.clear {
	clear: both;
}

#wrap {
	width: 100%;
	position: relative;
	padding-bottom: 278px;
	box-sizing: border-box;
	min-height: 100%;
	background: #f8f9fb;
	min-height: 768px;
}

.top_lo {
	width: 1100px;
	height: 52px;
	margin: 0 auto;
	padding: 19px 0 19px;
	box-sizing: border-box;
}

.center {
	width: 1100px;
	margin: 0 auto;
	padding-left: 48px;
	padding-right: 48px;
	border: 1px solid #ededed;
	background: #fff;
	box-sizing: border-box;
	height: 603px;
}

.location_area li a, .location_area li span {
	float: left;
}

a {
	text-decoration: none;
	color: #000;
}

li {
	list-style: none;
	line-height: 13px;
}

.current {
	font-weight: 600;
}

.p:BEFORE {
	display: block;
	content: "";
	float: left;
	width: 1px;
	height: 12px;
	margin: 2px 20px 0;
	background: #d9d9d9;
}

.location_area:after {
	display: block;
	clear: both;
	content: "";
}

.pagetitle {
	margin-top: 50px;
	font-size: 36px;
	font-weight: normal;
	text-align: center;
}
/*회원가입 밑에 상태진행 바 css*/
.process_type {
	margin: 50px 0 0;
	border: 1px solid #d9d9d9;
	background: #fff;
}

.process_type ol {
	display: table;
	width: 100%;
}

.length4 li {
	width: 33.3%;
	display: table-cell;
	position: relative;
	vertical-align: middle;
	height: 47px;
	line-height: 20px;
	color: #000;
}

.process_type li:first-child {
	margin-left: -1px;
	padding-left: 22px;
}

.process_type li {
	margin-left: -1px;
	padding-left: 40px;
}

.process_type li:first-child:before {
	width: 0;
}

.process_type li.on:before {
	height: 47px;
	background-position: 0 -96px;
}

.process_type li.on+li:before {
	height: 47px;
	background-position: 0 -48px;
}

.process_type li:before {
	position: absolute;
	top: 0;
	left: 0;
	display: block;
	float: left;
	width: 25px;
	height: 47px;
	margin-right: 22px;
	background: url("images/mainIcon/bg_arrow.png") no-repeat 0 0;
	content: "";
}

.process_type li.on {
	margin: -1px 0;
	height: 47px;
	line-height: 20px;
	color: #000;
	font-weight: bold;
	background: #24c6a9;
}

/*회원가입완료란 확인창란*/
.content_box{
    background: url("img/bg_complete01.png") no-repeat 24px 100%,url("images/mainIcon/bg_complete02.png") no-repeat 803px 0;
}
.content_box {
    padding: 40px 89px;
    margin: 40px 0 0;
    border: 1px solid #d9d9d9;
}
.introduce_box{
    margin: -12px 0 15px;
    color: #000;
    
    text-align: center;
    font-size: 30px;
    line-height: 45px; 
}
#noti2{
    line-height: 24px;
    margin: 8px 0 0;
    font-size: 13px;
}
.tbl-input-row01 {
    border-top: 1px solid #a9a9a9;
    border-bottom: 1px solid #a9a9a9;
}
tbody {
    display: table-row-group;}
.td1{
    padding: 8px 10px 8px;
    color: #000;
    font-weight: normal;
    text-align: left;
    vertical-align: middle;
    width: 182px;
    background-color: #e3f1e4; 
    font-size: 13px;
    height: 100%
}


.td2 {
    padding: 8px 10px 8px;
    color: #000;
    font-weight: normal;
    text-align: left;
    vertical-align: middle;
    font-size: 15px;
    height: 100%
}


/*로그인 메인으로가기 버튼*/
.btn_article {
    margin: 30px 0 0;
    text-align: center;
}
.btn-type01-col01,.btn-type01-col02 {
    border: 0.5px solid white;
    box-sizing: border-box;
    display: inline-block;
    min-width: 200px;
    padding: 0 10px;
    height: 40px;
    font-size: 16px;
    line-height: 40px;
    color: #000;
    background-color: #23c6a9;
    vertical-align: middle;
    cursor: pointer;
    transition: all 0.5s;
}
.btn-type01-col01:hover,.btn-type01-col02:hover {
	background-color: #008a7c;
	color: #ffffff;
}
</style>


	<div id="container" style="padding-top:110px;">
		<div class="top_lo">
			<ol class="location_area">
				<li><a href="#" id="Home">홈</a></li>
				<li class="p"><a href="#" name="lblJoin">회원가입</a></li>
				<li class="current p"><span name="lblAgree">가입완료</span></li>
			</ol>
		</div>
		<div class="clear"></div>
		<div class="center">
			<h1 class="pagetitle" name="lblJoin">회원가입</h1>
			<!-- 상태진행 바 시작 -->
			<div class="process_type">
				<ol class="length4">
					<li>01 <span id="Step1">약관동의</span></li>
					<li>02 <span name="lblAgree">정보입력</span></li>
					<li class="on">03 <span id="Step3">가입완료</span></li>
				</ol>
			</div>
			<!-- 상태진행 바 끝~!-->
			<!-- 회원가입 완료창 시작 -->
			<div class="content_box complete_type">
				<div class="introduce_box complete">
					<p class="noti" id="noti1">AIR N9NE 회원가입을 축하합니다 : )</p>
					<p id="noti2">항공권 특가 정보와 이벤트 소식을 이메일로 받아보실 수 있습니다.</p>
				</div>
				<div class="tbl-input-row01">
					<table style="width: 100%">
					  <c:set var="c" value="${requestScope.mdto }"/>
<%-- 					  <c:forEach var="mdto" items="${requestScope.mdto }"> --%>
					
						<tr>
						<td class="td1">성명</td>
						<td id="userName" class="td2">${c.member_kor }</td>
						</tr>
						<tr>
						<td class="td1" style="border-top: 1px solid #d9d9d9;">아이디</td>
						<td id="userId" class="td2">${c.member_id }</td>
						</tr>
						
<%-- 					  </c:forEach> --%>
					</table>
				</div>
				<div class="btn_article">
					
						<a href="./LoginJoin.bo"
							class="btn-type01-col01" id="LogIn"
							title="로그인 레이어 팝업">로그인</a>
						<a href="./mainIndex.bo"
							class="btn-type01-col02" id="btnMain">메인으로 가기</a>
					
				</div>
				
				<!-- 회원가입 완료창 끝-->
			</div>
		</div>

	</div>

</body>
</html>