<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script type="text/javascript" src="_nineJs/nineJoin.js"></script>
	<div id="container" >
	  	<div id="content" style="">
				<!-- location -->
				<div id="location">
					<ol class="location_area">
						<li><a href="#" id="Home">홈</a></li>
						<li class="p"><a href="#" name="lblJoin">회원가입</a></li>
						<li class="current p"><span name="lblAgree">정보입력</span></li>
					</ol>
				</div>
				<div class="clear""></div>
				<!-- content_inner -->
				<div class="content_inner"  style="">
					<h1 class="pagetitle" name="lblJoin">회원가입</h1>
					<div class="process_type">
						<ol class="length4">
							<li>01 <span id="Step1"></span>약관 동의</li>
							<li class="on">02 <span name="lblInput">정보입력</span></li>
							<li>03 <span id="Step3"></span> 가입완료</li>
						</ol>
					</div>

		<!-- 회원 정보 입력 -->
		
		
		<form action="./MemberJoin.me"  id="memberInfo" name="memberInfo" method="post" style="margin:40px 0 0;">
			<div class="content_box input_type">
				<div class="input_section">
					<div class="title_section">
						<h2 class="title_type2" id="InputH2">회원정보 입력</h2>
						<p class="beside_txt">
							<span class="important">* </span><span id="InputNoti1">표시 항목은 필수 입력사항 입니다.</span>
						</p>
					</div>
<!-- 	아래 디브와 떨어지도록 클리어		 --><div style="clear: both;"></div>
					<div class="tbl-input-row01">
						<table>
							<caption id="InputNoti2">회원정보 입력 | 아이디, 비밀번호 비밀번호 확인으로 구성되어있습니다.</caption>
								<colgroup>
									<col style="width: 18.2%">
								<col>
								</colgroup>
							<tbody>
								<tr>
									<th scope="row"><label for="txtUserId" id="TBID" style="font-weight: bold;">아이디</label><span class="important">*</span></th>
									<td>
										<div>
											<span class="inp-txt"><input type="text" name="member_id" style=" width: 226px;" id="txtUserId" autocomplete="off"></span>
											<p class="tbl-info2" id="TBIDNoti">6~15자의 영문 소문자, 숫자만 사용 가능</p>
										</div>
									</td>
								</tr>
								<tr>
									<th scope="row"><label for="txtUserPw1" id="TBPW1" style="font-weight: bold;">비밀번호</label><span class="important">*</span></th>
									<td>
										<div>
											<span class="inp-txt">
												<input type="password" name="member_pw" style=" width: 226px;" id="txtUserPw1" class="mustBeFilled" autocomplete="off">
											</span>
											<p class="tbl-info2" id="TBPWNoti" style="letter-spacing: 1px;">
												8~15자의 영문, 숫자, 특수문자 필수 조합으로 가능<br>사용가능한 특수문자 : ` ~ ! @ # $ % ^ * ( ) \ - _ = + | [ ] { } ; : ' , . / ?<br>(단 한글, 공백, 생년월일, 동일숫자, 연속숫자 입력 불가)
											</p>
										</div>
									</td>
								</tr>
								<tr>
									<th scope="row"><label for="txtUserPw2" id="TBPW2" style="font-weight: bold;">비밀번호 	확인</label><span class="important">*</span></th>
									<td>
										<div>
											<span class="inp-txt"><input type="password" name="txtUserPw2" style=" width: 226px;" id="txtUserPw2" class="mustBeFilled"></span>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
			
					<div class="tbl-input-row01" style="margin:20px 0 0 ;">						
						<table>							
							<colgroup>
								<col style="width: 18.1%">
								<col style="width: 31.9%">
								<col style="width: 18.2%">
								<col style="width: 31.8%">
							</colgroup>
							<tbody>
								<tr>
									<th scope="row" id="KorNameTH"><label for="txtUserKoname" style="font-weight: bold;">한글 성명</label><span class="important">*</span></th>
									<td headers="KorNameTH"><span class="inp-txt" id="korName"><input type="text" name="member_kor" style=" width: 226px;  ime-mode: inactive; ime-mode: disabled" id="korName"   title="한글성명 입력란" placeholder="성명(한글)"></span></td>
									<th scope="row" id="GenderTH"><label style="font-weight: bold;">성별</label><span class="important">*</span></th>
									<td headers="GenderTH">
											<select name="member_gender" id="GenderTH" title="성별 선택" style="width: 120px; padding: 10px; font-size: 15px;">
													<option value="" selected="selected" class="ex">성별 선택</option>
													<option value="F">여자</option>
													<option value="M">남자</option>
													<option value="AN">그 외</option>
											</select>
									</td>		
								</tr>
								<tr>
									<th scope="row" id="EngNameTH">
										<label for="txtLastName" style="font-weight: bold;">영문 성명</label><span class="important">*</span>
									</th>
									<td colspan="3" headers="EngNameTH">
										<div>
											<span class="inp-txt mgr03">
												<input type="text" name="member_eng_lastname" style=" width: 226px; text-transform: uppercase; ime-mode: inactive; ime-mode: disabled" id="txtLastName" class="mustBeFilled" title="성 (Last Name) 입력란" placeholder="성 (Last Name)">
											</span>
											<span class="inp-txt">
												<input type="text" name="member_eng_firstname" style=" width: 226px; text-transform: uppercase; ime-mode: inactive; ime-mode: disabled" id="txtFirstName" class="mustBeFilled" title="이름 (First Name) 입력란" placeholder="이름 (First Name)">
											</span>
										</div>
										<p class="tbl-info">여권상의 영문 이름과 동일하게 기재해 주시기 바랍니다.</p>
									</td>
								</tr>
								<tr>
									<th scope="row" id="BirthdayTH"><label for="member_birthdate" style="font-weight: bold;">생년월일</label><span class="important">*</span></th>
									<td colspan="3" headers="BirthdayTH">
										<span class="inp-txt"><input type="text" name="member_birthdate" style=" width: 226px; text-transform: uppercase; ime-mode: inactive; ime-mode: disabled" id="dateOfBirth" class="normal_txt" title="생년월일" placeholder=""></span>
										<p class="tbl-info">주민등록증상의 생년월일 8자리를 입력해 주세요. 예) 940402-1865430 -> 19940402 </p>										
									</td>
								</tr>
								<tr>
									<th scope="row" id="NationalityTH"><label for="member_nationality" style="font-weight: bold;">국적</label><span class="important">*</span></th>
									<td colspan="3" headers="NationalityTH">
										<div>
											<span class="inp-txt mgr03">
												<input type="text" name="member_nationality" style=" width: 226px;" id="txtParentCountry" class="txtParentCountry" value="" >
											</span>
											<button style="height: 35px;" type="button" id="I/KO/CountrySearch" data-opener="code2" onclick="viewLayerCountrySearch();" class="btn-type02-col02 jsOpenLayer">검색</button>
										</div>
									</td>
								</tr>
								<tr>
									<th scope="row" id="ResidenceCountryTH"><label for="member_livenationality" style="font-weight: bold;">거주국가</label><span class="important">*</span></th>
									<td colspan="3" headers="ResidenceCountryTH">
										<div>
											<span class="inp-txt mgr03">
												<input type="text" name="member_livenationality" style=" width: 226px;" id="txtResidenceCountry" class="txtResidenceCountry" value="" >
											</span>
											<button style="height: 35px;" type="button" id="I/KO/liveCountrySearch" data-opener="code2" onclick="viewLayerliveCountrySearch()" class="btn-type02-col02 jsOpenLayer">검색</button>
										</div>
									</td>
								</tr>
								<tr>
									<th scope="row" id="PhoneNoTH"><label for="" style="font-weight: bold;">전화번호</label><span class="important">*</span></th>
									
									<td colspan="3" headers="PhoneNoTH">
										<div class="call_number" style="padding-bottom:10px;">
											<span class="middle_txt">휴대폰 번호</span> <span class="inp-txt mgr03">
											<input type="text" id="txtMobileNO0" name="txtMobileNO0" style=" width: 74px;" title="휴대폰번호 국가번호 입력" value="" ></span> 
											   <button type="button"  style="margin-top:2px; height: 35px;" onclick="viewLayerCountryNumSearch()" class="btn-type02-col02 mgr03 jsOpenLayer">국가번호 검색</button> 
											<span class="inp-txt mgr03"> 
											<select name="txtMobileNO1" id="txtMobileNO1" title="휴대폰번호 처음자리" style=" width: 80px; padding: 7px; font-size: 15px; ">
													<option value="010" selected="selected">010</option>
													<option value="011">011</option>
													<option value="016">016</option>
													<option value="017">017</option>
													<option value="018">018</option>
													<option value="019">019</option>
											</select>
											</span> <span class="inp-txt mgr03">
												<input type="text" name="txtMobileNO2" id="txtMobileNO2" style=" width: 78px;; ime-mode: disabled" maxlength="4" title="휴대폰번호 중간자리" value="" ></span> 
											<span class="inp-txt">
												<input type="text" name="txtMobileNO3" id="txtMobileNO3" style=" width: 78px;; ime-mode: disabled" maxlength="4" title="휴대폰번호 마지막자리" value="" >
											</span>
										</div>
										 <div class="clear"></div>
										<div class="call_number">
											<span class="middle_txt">기타 번호</span> 
											<span class="inp-txt mgr03"><input type="text" id="txtEtcNo0" name="txtEtcNo0" style=" width: 74px;" title="기타번호 국가번호 입력" value="" ></span> 
											<button type="button" style="height: 35px; margin-top:2px;" class="btn-type02-col02 mgr03 jsOpenLayer">국가번호 검색</button> 
											<span class="inp-txt"><input type="text" name="txtEtcNo1" id="txtEtcNo1" style=" width: 252px;" maxlength="20" title="기타번호 입력"></span>
										</div>
										<p class="tbl-info">휴대폰 번호, 기타 번호 중 한 가지는 필수 입력해 주시기 바랍니다.</p>
									</td>
								</tr>
								<tr>
									<th scope="row" id="EmailTH"><label for="Useremail" style="font-weight: bold;">이메일</label><span class="important">*</span></th>
									<td colspan="3" headers="EmailTH">
										<div>
											<span class="inp-txt">
												<input type="text" name="Useremail" style=" width: 168px;; ime-mode: disabled" id="txtEmail" class="mustBeFilled" title="이메일 입력란">
											</span> 
											<span class="middle_txt">@</span> 
											<span class="inp-txt mgr03">
												<input type="text" name="txtEmailDomain"  style=" width: 168px;; ime-mode: disabled" id="txtEmailDomain" class="mustBeFilled" title="도메인 입력">
											</span>
											<span class="selectbox01 js-selectbox01"> 
											<span class="txt ex"></span> 
												<select name="selEmailDomain" id="selEmailDomain" title="도메인 선택란" style="width: 80px; padding: 7px; font-size: 15px; width: 178px;" >
														<option value="" selected="selected" class="ex">직접입력</option>
														<option value="naver.com">naver.com</option>
														<option value="hanmail.net">hanmail.net</option>
														<option value="daum.net">daum.net</option>
														<option value="nate.com">nate.com</option>
														<option value="gmail.com">gmail.com</option>
														<option value="hotmail.com">hotmail.com</option>
														<option value="yahoo.com">yahoo.com</option>
												</select>
											</span>
										</div>
									</td>
								</tr>

								<tr>
									<th scope="row" id="AgreementTH">정보 수신동의</th>
									<td colspan="3" headers="AgreementTH">
									
										<div>
											<ul class="agree_list">
												<li>
													<span class="middle_txt">이메일 수신</span>
													<ul class="radio_list">
														<li >
															<span class="radiobox01 js-radiobox01"> 
																<label for="agree01_01" class="">
																	<input type="radio" id="agree01_01" name="agree01"> <span>동의</span>
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
																<label for="agree02_01" class=""> <input type="radio" id="agree02_01" name="agree02"> 
																	<span>동의</span>
																</label>
															</span>
														</li>
														<li>
															<span class="radiobox01 js-radiobox01">
																<label for="agree02_02"> <input type="radio" id="agree02_02" name="agree02"> <span>동의하지 않음</span>
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
																	<input type="radio" id="agree03_01" name="agree03"> <span>동의</span>
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
											 <div class="clear"></div>
											<div class="tbl-info">
												<strong id="receiveEmailSMS" class="tbl-info-tit mgt10">&nbsp;&nbsp;&nbsp;이메일&nbsp;및&nbsp;SMS&nbsp;수신</strong>
												<ul class="uList01">
													<li id="receiveEmailSMSInfo1" style="margin: 20px 0;">수신에&nbsp;동의하시면&nbsp;항공권 특가 정보 및 프로모션 정보 등의&nbsp;안내를 받아 보실&nbsp;수&nbsp;있습니다.</li>
													<li id="receiveEmailSMSInfo2">예약&nbsp;및&nbsp;항공기&nbsp;운항정보,&nbsp;서비스&nbsp;주요정책,회원정보&nbsp;관련내용은&nbsp;수신동의&nbsp;여부와&nbsp;관계&nbsp;없이&nbsp;발송됩니다</li>
												</ul>
											</div>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>

				 <div class="clear"></div>	
				</div>
				<div class="btn_article">
					<ul>
					<li><button style="height: 35px;" type="button" id="btnJoin" class="btn-type01-col01"  onclick="submit();">가입하기</button></li>
						<!-- 가입하기 버튼 클릭 후 작성된 데이터 제이쿼리를 활용하여 팝업창으로 출력 -->
					</ul>
				</div>
				<div style="height: 30px;"></div>
			</div>
		</form>
		
		<div id="divLayerPopup0" class="layer Search open" style="display:none;">
			<div class="layer_center_type midium_type">
				<div class="layer_area">
					<div class="layer_inner">
						<div class="layer_title">
							<h2 class="title" id="CountrySearch">국가 검색</h2>
						</div>
						<div class="layer_content" style="height:464px; overflow-y:hidden;">
						<p class="list_type1 mgt25" id="msgCountrySearchInfo">찾으시려는 국가명을 입력해 주시기 바랍니다.</p>
						<div class="search_area">
							<span class="inp-txt mgr03">
								<input type="text" id="txtCountrySearch" name="txtCountrySearch" style="width:338px;" title="국가명 입력" id="txtCountrySearch"> 
							</span>
							<button type="submit" id="btnSearch" class="btn-type02-col01">검색</button>
						</div>
						<div class="result_area">
							<div class="title_group">
								<p class="country" id="NameOfCountry">국가명</p>
								<p class="en_country" id="enNameOfCountry">영어 국가명</p>
							</div>
							<div class="result_box">
								<div id="result_list" class="result_list" style="display:none;">
								
								</div>
								<div id="none_data" class="none_data" style="margin:0; padding:90px;">
								<p id="msgNoData">검색 결과가 없습니다.</p>
								</div>
							</div>

						</div>
							<div class="btn_article">
								<ul>
									<li>
										<button type="button" id="btnConfirm" class="btn-type02-col03">확인</button>
									</li>
								</ul>
							</div>
						</div>
						<p class="btn_close">
							<a href="javascript:void(0);" onclick="closeCountryLayer(); return false;" class="jsCloseBtn" id="jsCloseBtn"></a>
						</p>
					</div>
				</div>
			</div>
		</div>
		
		<!-- 거주국가 검색창 -->
		
		<div id="divLayerPopup1" class="layer countrySearch open" style="display:none;">
			<div class="layer_center_type midium_type">
				<div class="layer_area">
					<div class="layer_inner">
						<div class="layer_title">
							<h2 class="title" id="CountrySearch">거주국가 검색</h2>
						</div>
						<div class="layer_content" style="height:464px; overflow-y:hidden;">
						<p class="list_type1 mgt25" id="msgCountrySearchInfo">찾으시려는  거주국가명을 입력해 주시기 바랍니다.</p>
						<div class="search_area">
							<span class="inp-txt mgr03">
								<input type="text" id="txtliveCountrySearch" name="txtliveCountrySearch" style="width:338px;" title="거주국가명 입력" id="txtliveCountrySearch"> 
							</span>
							<button type="submit" id="btnSearch1" class="btn-type02-col01">검색</button>
						</div>
						<div class="result_area">
							<div class="title_group">
								<p class="country" id="NameOfCountry">거주국가명</p>
								<p class="en_country" id="enNameOfCountry">영어 국가명</p>
							</div>
							<div class="result_box">
								<div id="result_list" class="result_list" style="display:none;">
								
								</div>
								<div id="none_data" class="none_data" style="margin:0; padding:90px;">
								<p id="msgNoData">검색 결과가 없습니다.</p>
								</div>
							</div>

						</div>
							<div class="btn_article">
								<ul>
									<li>
										<button type="button" id="btnConfirm" class="btn-type02-col03">확인</button>
									</li>
								</ul>
							</div>
						</div>
						<p class="btn_close">
							<a href="javascript:void(0);" onclick="closeliveCountryLayer(); return false;" class="jsCloseBtn" id="jsCloseBtn"></a>
						</p>
					</div>
				</div>
			</div>
		</div>	
		
		<!-- 국가번호 검색 -->
		
		<div id="divLayerPopup2" class="layer countrySearch open" style="display:none;">
			<div class="layer_center_type midium_type">
				<div class="layer_area">
					<div class="layer_inner">
						<div class="layer_title">
							<h2 class="title" id="CountrySearch">국가번호 검색</h2>
						</div>
						<div class="layer_content" style="height:464px; overflow-y:hidden;">
						<p class="list_type1 mgt25" id="msgCountrySearchInfo">찾으시려는 국가를 입력해 주시기 바랍니다.</p>
						<div class="search_area">
							<span class="inp-txt mgr03">
								<input type="text" id="txtCountryNumSearch" name="txtCountryNumSearch" style="width:338px;" title="거주국가명 입력" id="txtliveCountrySearch"> 
							</span>
							<button type="submit" id="btnSearch2" class="btn-type02-col01">검색</button>
						</div>
						<div class="result_area">
							<div class="title_group">
								<p class="country" id="NameOfCountry">국가명</p>
								<p class="en_country" id="CountryNum">국가 번호</p>
							</div>
							<div class="result_box">
								<div id="result_list" class="result_list NumofCountry" style="display:none;">
								
								</div>
								<div id="none_data" class="none_data" style="margin:0; padding:90px; display:block;">
									<p id="msgNoData">검색 결과가 없습니다.</p>
								</div>
							</div>

						</div>
							<div class="btn_article">
								<ul>
									<li>
										<button type="button" id="btnConfirm" class="btn-type02-col03">확인</button>
									</li>
								</ul>
							</div>
						</div>
						<p class="btn_close">
							<a href="javascript:void(0);" onclick="closeCountryNumLayer(); return false;" class="jsCloseBtn" id="jsCloseBtn"></a>
						</p>
					</div>
				</div>
			</div>
		</div>
		
	</div>
	</div><!-- container -->
</div>

<link rel="stylesheet" type="text/css" href="stylesheets/sub/member.css">
<script type="text/javascript">
/* alert("d"); */
  function submit(){
		alert("dddd");
		document.getElementById('memberInfo').submit();
	}

</script>
</body>
</html>