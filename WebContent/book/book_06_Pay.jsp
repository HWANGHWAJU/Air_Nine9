<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

				<h1 id="h1HiddenTitlePayment" class="hidden-title">결제</h1>
				<!-- 결제 WRAP (S) -->
				<div class="booking-payment" style="block;">
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
											    <span class="txt ex"></span>
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
											    <span class="txt"></span>
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
								</tr> <!-- 한국발행 신용카드  -->
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
								</tr><!-- 해외 발행 신용카드  -->
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
								<em class="price"></em>
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
							<button id="btnBlock" class="btn-type01-col01"><span>취소</span></button>
						</div>


					<!-- 우측 간편 안내(S) -->
					<div class="booking-airlineticket-finalInfo">
						<div class="booking-airlineticket-finalInfo-title">
							<h2 id="ItineraryFare">여정 및 운임</h2>
						</div>
						<div class="booking-airlineticket-finalInfo-head">
								<!-- 왕복 -->
								
									
										<div class="booking-airlineticket-finalInfo-head-from">
											<div class="booking-airlineticket-finalInfo-head-kinds"><span class="icon_airlineticket_from02" name="lblDepartureItinerary">가는여정</span></div>
											<div class="booking-airlineticket-finalInfo-head-fly"><span class="diretory icon_airlineticket_oneway02" name="lblFrom">에서</span></div>
											<div class="booking-airlineticket-finalInfo-head-fly"></div>
											<div class="booking-airlineticket-finalInfo-head-date" id="Summary_1"><div class="booking-airlineticket-finalInfo-head-date"></div></div>
										</div> 
									
									
										<div class="booking-airlineticket-finalInfo-head-to">
											<div class="booking-airlineticket-finalInfo-head-kinds"><span class="icon_airlineticket_to02" name="lblArrivalItinerary">오는여정</span></div>
											<div class="booking-airlineticket-finalInfo-head-fly"><span class="diretory icon_airlineticket_oneway02" name="lblFrom">에서</span></div>
											<div class="booking-airlineticket-finalInfo-head-fly"></div>
											<div class="booking-airlineticket-finalInfo-head-date" id="Summary_2"><div class="booking-airlineticket-finalInfo-head-date"></div></div>
										</div>
						
						</div>
						
								<!-- 성인건수 -->
								<!-- 소아건수 -->
							<!-- 유아건수 -->
							<!-- 쿠폰할인금액 -->
			
						<div class="booking-airlineticket-finalInfo-body">
							<div class="booking-airlineticket-finalInfo-tblRow01">
								<table>
									<colgroup>
										<col style="width:33.3%">
										<col style="width:33.3%">
										<col style="width:33.3%">
									</colgroup>
									<tbody>
										<tr>
											<td class="tc tbl-adult"><span id="Adult">성인 </span><span id="Summary_ADT"></span><span name="lblPersonUnit">명</span></td>
											<td class="tc tbl-child"><span id="Child">소아 </span><span id="Summary_CHD"></span><span name="lblPersonUnit">명</span></td>
											<td class="tc tbl-lapinfant"><span id="Infant">유아 </span><span id="Summary_INF"></span><span name="lblPersonUnit">명</span></td>
										</tr>
									</tbody>
								</table>
							</div>
								
									<!-- 예상총액 -->
									<!-- 판매운임총액 -->
									<!-- 유류할증료총액 -->
								<!-- 세금제반요금총액 -->
										<!-- 지불금액 -->

							
									<!-- 예약단계 -->
									<div class="booking-airlineticket-finalInfo-tblRow02">
										<table>
											<caption id="SummaryNotice2">여정 및 운임 표 | 항공운임, 유류할증료, 세금/제반요금 쿠폰할인으로 구성되어있습니다.</caption>
											<colgroup>
												<col style="width:50%">
												<col style="width:50%">
											</colgroup>
											<tbody>
														<tr>
											<th scope="row" name="lblAirfare">항공운임</th>
											<td class="tr tbl-price">
												<span id="EquivFare"></span>
											</td>
										</tr>
										<tr>
											<th scope="row" name="lblFuelSurcharge">유류할증료</th>
											<td class="tr tbl-price">
												<span  id="FuelCharge"></span>
											</td>
										</tr>
										<tr>
											<th scope="row" name="lblTaxrate">세금/제반요금</th>
											<td class="tr tbl-price">
												<span  id="Tax"></span>
											</td>
										</tr>
										
											<tr>
												<th scope="row" name="lblCouponTitle">쿠폰할인</th>
												<td class="tr tbl-price" id="couponPrice">
													<span></span>
												</td>
											</tr>
											</tbody>
										</table>
									</div>
								
								
								
							
							<div class="head">
								<h3 name="lblAncillary">부가서비스</h3>
							</div>
							
							<div class="booking-airlineticket-finalInfo-tblRow02">
								<table>
									<caption id="SummaryNotice3">여정 및 운임 표 | 좌석, 기내식, 수화물으로 구성되어있습니다.</caption>
									<colgroup>
										<col style="width:50%">
										<col style="width:50%">
									</colgroup>
									<tbody>
									<tr>
										<th scope="row" class="" name="lblSeat">좌석</th>
										<td class="tr tbl-price" id="seatPrice">
											<span id="seatPrice"></span>
										</td>
									</tr>
									<tr>
										<th scope="row" class="" name="lblMeal">기내식</th>
										<td class="tr tbl-price" id="mealPrice">
											<span id="mealPrice"></span>
										</td>
									</tr>
									<tr>
										<th scope="row" class="" name="lblBaggage">수하물</th>
										<td class="tr tbl-price" id="baggagePrice">
											<span id="bagPrice"></span>
										</td>
									</tr>
									</tbody>
								</table>
							</div>
							<div class="total-price">
								<h3 name="lblPredictionTotal">총액</h3>
								<div class="price-area">
									
											<!-- 예약단계 -->
											<em class="unit">KRW</em>
											<em class="price"></em>		
										
										
									
								</div>
							</div>
							
						</div>
						<!-- 우측 간편 안내(E) -->
						<p class="info-exmark01" id="SummaryNotice4">유류할증료 및 세금/제반요금을 포함한 총액으로 구매 시점과 환율에 따라 변동될 수 있습니다.</p>
						<p class="info-exmark01" id="SummaryNotice5">한국 출발 세금(BP)에는 국제여객공항이용료(인천/김포 17,000원), 출국납부금(10,000원), 국제빈곤퇴치기여금(1,000원)이 포함되어 있습니다.</p>

					</div>
				</div>
				<!-- 결제 WRAP (E) -->
				


<form name="GoBook07" method="post">
<input type="hidden" name ="jsBookingCondition" id="jsBookingCondition" 	value='${requestScope.jsBC }'>
<input type="hidden" name="jsFlightInfo"					 id="jsFlightInfo"					value='${requestScope.jsF }'>
<input type="hidden" name="jsReservationPerson" id="jsReservationPerson" value='${requestScope.jsR }'>
<input type="hidden" name="jsPassengerDetail" 		 id="jsPassengerDetail" 		value='${requestScope.jsP}'>
<input type="hidden" name="jsOption" 						id="jsOption" 							value='${requestScope.jsO }'>
<input type="hidden" name="jsOptionPrice" 				id="jsOptionPrice" 				value='${requestScope.jsOp }'>
<input type="hidden" name="jsScheduleNum" 			id="jsScheduleNum" 			value='${requestScope.jsSC }'>
<input type="hidden" name="jsPay" 								id="jsPay"									value="">
</form>				
					

					

<script type="text/javascript">
$(document).ready(function(){
	var jsBookingCondition = $("#jsBookingCondition").val();
	var jsFlightInfo = $("#jsFlightInfo").val();
	var jsReservationPerson = $("#jsReservatonPerson").val();
	var jsPassengerDetail = $("#jsPassengerDetail").val();
	var jsOption = $("#jsOption").val();
	var strOptionPrice = $("#jsOptionPrice").val();
	
	jsRadiobox01();
	
	GoBook_07(jsBookingCondition);
	SettingDataBook05(jsFlightInfo,jsBookingCondition);

	var JSbookingCondition = new BookingConditionDataObject();
	var jsPassengerDataOject = new PassengerDataObject();

	
	JSbookingCondition = jQuery.parseJSON(jsBookingCondition);
	jsPassengerDataObject =[];

	jsPassengerDataObject = JSbookingCondition.passengerDatas; //이미 Json으로 변형되었음
	SettingFinalPrice(jsFlightInfo,jsPassengerDataObject);
	Set_OptionTotalPrice(strOptionPrice);
});



function jsRadiobox01(){
    $(".js-radiobox01").find("input").each(function(i, radio){
        var $radio = $(this);

        $radio.off("focus blur change");

        /* checked가 되어있는경우 */
        if($radio.is(":checked")==true){
            if($radio.is(":disabled")==true){
                $radio.parent('label').addClass('disabled');
            } else{
                $radio.parent('label').addClass('active');
            }
        }
        /* disable이 되어있는경우 */
        else if($radio.is(":disabled")==true){
            $radio.parent('label').addClass('disabled');
        }

        $radio.focus(function(){
            $radio.closest(".radiobox01").addClass("focus");
        })
        $radio.blur(function(){
            $radio.closest(".radiobox01").removeClass("focus");
        })

        $radio.on("change", function(){
            $("input[name='" + $(this).attr("name") +"']").parent("label").removeClass("active");
            $(this).prop("checked", true).parent('label').addClass('active');
        });
    });
}


</script>	
				
				
				
				

				<form id="frm_goPurchase" name="frm_goPurchase" method="post">
					<input type="hidden" id="completehidPNRData" name="hidPNRData">
				</form>
			</div>

<input type="hidden" id="viewLayerPreAPISNotice" class="jsOpenLayer" href="I/KO/viewLayerPreAPISNotice">
<iframe id="PERFORM_PAYMENT_FRAME" name="PERFORM_PAYMENT_FRAME" title="결제처리 새창 열림" width="100%" height="0" style="display:none;"></iframe>
<!-- 결제 처리 관련 iframe -->

