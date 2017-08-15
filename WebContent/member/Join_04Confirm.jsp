<%@page import="dto.memberDTO"%>
<%@page import="dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<div id="container">
		  	<div id="content" style="">
				<!-- location -->
				<div id="location">
					<ol class="location_area">
						<li><a href="#" id="Home">홈</a></li>
						<li class="current p"><span name="lblAgree">회원 정보 수정</span></li>
					</ol>
				</div>
				<div class="clear""></div>
				<!-- content_inner -->
				<div class="content_inner"  style="">
					<h1 class="pagetitle" name="lblJoin">회원 정보 수정</h1>
				
	
		<div class="layer_center_type large_type">
			<div class="layer_area">
				<div class="layer_inner">

					<div class="layer_content confirm">
						<!--  s:내용 -->
						<form action="memberConfirmUpdateController.me?member_id=${id}" id="joinInfo" method="post">
						
						  <div class="input_section first">
							<div class="tbl-input-row01">
							  
								<table>				
									<caption id="MemeberConfrim_Caption1">아이디로 구성된 회원정보 입력내역 확인표입니다.</caption>
									<colgroup>
										<col style="width:23.2%">
										<col>
									</colgroup>
									<tbody>
									<c:set var="c" value="${requestScope.v }"/>
								   <c:forEach var="v" items="${requestScope.v }"> 
										<tr>
											<th scope="row" id="txtLayerID">아이디</th>
											<td>
												<span class="normal_txt" id="chkID">${v.member_id }</span>
											</td>
										</tr>
										</c:forEach>				
									</tbody>
								</table>
							</div>
							<div class="tbl-input-row01">
							  
								<table>
									<caption id="MemeberConfrim_Caption2">한글 성명, 영문 성명, 생년월일, 국적, 거주국가, 전화번호, 이메일, 정보 수신동의로 구성된 회원정보 입력내역 확인표입니다.</caption>
									<colgroup>
										<col style="width:23.2%">
										
										<col style="width:26.8%">
										<col style="width:23.2%">
										
										<col>
									</colgroup>
									<tbody>
								  	<c:set var="c" value="${requestScope.v }"/>
								     <c:forEach var="v" items="${requestScope.v }"> 
							<%-- 			<c:set var="v" value="${requestScope.v }"/> --%>
										<tr><th scope="row" id="txtLayerKorName">한글 성명</th>
											<td><span class="normal_txt" id="chkKorName"><input type="text" id="" value="${v.member_kor }"></span> </td>
										<th scope="row" id="txtLayerGender">성별</th><td> 
										<span class="normal_txt" id="chkGender">
											${v.member_gender }
										</span> </td></tr><tr id="engNameTR">
											<th scope="row" id="txtLayerEngName">영문 성명</th>
											<td colspan="3"><span class="normal_txt" id="chkEngName"> ${v.member_eng_lastname }&nbsp;/</span>
											 <span class="normal_txt" id="chkEngName">${v.member_eng_firstname}</span>
											 </td>
										</tr>	
		
										<tr>
											<th scope="row" id="txtLayerBrithday">생년월일</th>
											<td colspan="3"><span class="normal_txt" id="chkBirthDay">${v.member_birthdate }
														</span> </td>
										</tr>
										<tr>
											<th scope="row" id="txtLayerNationality">국적</th>
											<td colspan="3"><span class="normal_txt" id="chkNationality">${v.member_nationality }</span> </td>
										</tr>
										<tr>
											<th scope="row" id="txtLayerResidence">거주국가</th>
											<td colspan="3"><input type="text" name="member_livenationality" value="${v.member_livenationality }">
											<span class="normal_txt" id="chkResidence"></span> </td>
										</tr>
										<tr>
											<th scope="row" id="txtLayerPhoneNo">전화번호</th>
											<td colspan="3">
												<ul class="normal_txt">
													<li><strong id="txtLayerMobileNo">휴대폰 번호</strong><input type="text" name="member_phone" value="${v.member_phone }">
													<span id="chkMobileNO">&nbsp;&nbsp;</span></li>
													<li><strong id="txtLayerEtcNo">기타 번호</strong><input type="text" name="member_email" value="${v.member_addinfo }">
													<span id="chkEtcNO">&nbsp;&nbsp;</span></li>
												</ul> 
											</td>
										</tr>
										<tr>
											<th scope="row" id="txtLayerEmail">이메일</th>
											<td colspan="3"><input type="text" name="member_email" value="${v.member_email }">
		<%-- 									<input type="text" name="member_email2" value="${v.member_email2 }"> --%>
											<span class="normal_txt" id="chkEmail"></span> </td>
										</tr>
					
										<tr>
											<th scope="row" id="txtLayerAgreement">정보 수신동의</th>
											<td colspan="3">
											<ul class="agree_list">
														<li>
															<span class="middle_txt">이메일 수신</span>
															<ul class="radio_list">
																<li >
																	<span class="radiobox01 js-radiobox01"> 
																		<label for="agree01_01" class="">
																			<input type="radio" id="agree01_01" name="" checked="checked"> <span>동의</span>
																		</label>
																	</span>
																</li>
																<li>
																	<span class="radiobox01 js-radiobox01">
																		<label for="agree01_02"> 
																			<input type="radio" id="agree01_02" name="agree01"> <span>동의하지  않음</span>
																		</label>
																	</span>
																</li>
															</ul>
														</li>
														 <div class="clear"></div>
														<li><span class="middle_txt">SMS 수신</span>
															<ul class="radio_list">
																<li>
																	<span class="radiobox01 js-radiobox01"> 
																		<label for="agree02_01" class=""> <input type="radio" id="agree02_01" name="" checked="checked"> 
																			<span>동의</span>
																		</label>
																	</span>
																</li>
																<li>
																	<span class="radiobox01 js-radiobox01">
																		<label for="agree02_02"> <input type="radio" id="agree02_02" name=""> <span>동의하지 않음</span>
																	</label>
																</span></li>
															</ul>
														</li>
														 <div class="clear"></div>
														<li><span class="middle_txt">제휴사 마케팅 정보 수신</span>
															<ul class="radio_list">
																<li>
																	<span class="radiobox01 js-radiobox01">
																		<label for="agree03_01" class="">
																			<input type="radio" id="agree03_01" name="member_addinfo" checked="checked"> <span>동의</span>
																		</label>
																	</span>
																</li>
																<li>
																	<span class="radiobox01 js-radiobox01">
																		<label for="agree03_02">
																			<input type="radio" id="agree03_02" name="agree03"> <span>동의하지 않음</span>
																		</label>
																	</span>
																</li>
															</ul>
													</li>
													</ul>
		<!-- 										<ul class="normal_txt"> -->
		<!-- 											<li><strong id="txtLayerAgreement01">이메일 수신</strong><spasn id="chkAgree01">&nbsp;&nbsp;동의하지 않음</spasn></li> -->
		<!-- 											<li><strong id="txtLayerAgreement02">SMS 수신</strong><spasn id="chkAgree02">&nbsp;&nbsp;동의하지 않음</spasn></li> -->
		<!-- 											<li><strong id="txtLayerAgreement03">제휴사 마케팅 정보</strong><spasn id="chkAgree03">&nbsp;&nbsp;동의하지 않음</spasn></li> -->
		<!-- 										</ul>  -->
											</td>
										  </tr>
										 <input type="hidden" name="member_kor" value="${v.member_kor }">
										 <input type="hidden" name="member_eng_firstname" value="${v.member_eng_firstname }">
										 <input type="hidden" name="member_eng_lastname" value="${v.member_eng_lastname }">
										 <input type="hidden" name="member_gender" value="${v.member_gender }">
										 <input type="hidden" name="member_birthdate" value="${v.member_birthdate }">
										 <input type="hidden" name="member_nationality" value="${v.member_nationality }">
										 <input type="hidden" name="member_phone" value="${v.member_phone }">
										 <input type="hidden" name="member_email" value="${v.member_email }">
										 <c:set var="id" value="${v.member_id }"/>
										</c:forEach> 							
									</tbody>						
								</table>
							 						
							</div>
						  </div>
						
						
						
						<div class="btn_article" >
		  				        <button type="submit" id="btnSubmit" class="btn-type01-col01" onclick="submit()">확인</button> 
		 						<button type="reset" id="btnReset" class="btn-type01-col01">다시 작성</button> 
						</div><!-- btn-article -->
						</form>
						<!--  s:내용 -->
					</div>
				</div>
			</div>
			</div>
		</div>
	</div> <!-- container -->
	</div>
<link rel="stylesheet" type="text/css" href="stylesheets/sub/member.css">
<script>

 function submit() {
	alert("수정완료");
	document.getElementById("joinInfo").submit();
	 
}

</script>

