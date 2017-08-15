<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style type="text/css">
/* 
html,body,div,span,applet,object,iframe,h1,h2,h3,h4,h5,h6,p,blockquote,pre,a,abbr,acronym,address,big,cite,code,del,dfn,em,img,ins,kbd,q,s,samp,small,strike,strong,sub,sup,tt,var,b,u,i,center,dl,dt,dd,ol,ul,li,fieldset,form,label,legend,table,caption,tbody,tfoot,thead,tr,th,td,article,aside,canvas,details,embed,figure,figcaption,footer,header,hgroup,menu,nav,output,ruby,section,summary,input,textarea,time,mark,audio,video{margin:0;padding:0;border:0;}
article,aside,details,figcaption,figure,footer,header,hgroup,menu,nav,section{display:block;} */

table{width:100%;min-width:100%;border-collapse:collapse;border-spacing:0;}
input{padding:0; margin:0; background:none;border:none;}
input[type="submit"],input[type="button"],label{cursor:pointer;}
caption,legend{width:1px;height:1px;line-height:0;font-size:0;overflow:hidden;position:absolute;left:-9999px;top:-9999px;}

.btn{display:inline-block;background-image:url("//story.airbusan.com/content/assets/images/common/btn_total.png");}
.btn *{display:inline-block;background-image:url("//story.airbusan.com/content/assets/images/common/btn_total.png");}

.bBtn *{display:inline-block;min-width:128px;height:50px;padding:0 30px 0 25px;color:#FFF;font-size:18px;font-weight:bold;text-align:center;background-position:100% -200px;line-height:50px;}
.sBtn{padding-left:3px;background-position:0 -501px;}
.sBtn *{display:inline-block;min-width:114px;height:30px;padding:0 20px 1px 17px;color:#666;font-size:13px;text-align:center;background-position:100% -470px;line-height:30px;}

.loginLayout{position:relative;overflow:hidden;margin-top:30px;}
.loginLayout h4{margin-bottom:10px;color:#333;font-size:16px;line-height:20px;}
.logLeft{float:left;}

.loginWrap{display:block;border:1px solid #c2cad0;width:388px;height:344px;padding:25px 50px;}
.loginWrap .scroll{font-size:12px;}
.loginWrap .mgt145{margin-top:145px;}
.loginWrap.type02{width:auto;height:230px;margin:0 auto;}
.loginWrap.type02 fieldset{width:430px;margin:0 auto;}

.logForm{position:relative;}
.logForm .btnLog{display:inline-block;position:absolute;top:0;left:275px;width:120px;height:69px;color:#FFF;font-size:18px;font-weight:bold;text-align:center;background-image:url("//story.airbusan.com/content/assets/images/common/btn_total.png");background-position:0 -636px;line-height:69px;}


.loginUtill{margin-top:10px;}
.loginUtill a:first-child{margin-right:3px;padding-right:10px;background-image:url("//story.airbusan.com/content/assets/images/common/blt_bar04.gif");background-repeat:no-repeat;background-position:100% 2px;}

.logFooter{margin-top:-5px;padding-top:30px;}
.logFooter .sFix a{width:180px;}
.logFooter .sBtn{margin-top:5px;margin-left:0 !important;}
.logFooter .scrollArea{padding:0;}
.logFooter .scrollArea >.scroll{height:58px;padding:5px;}



/* .inputVal{display:inline-block;margin:0 5px;}
 */
.newLayout170303 .logLeft{float:inherit;}
.newLayout170303 .logLeft_01 .rightBox{width:337px;}
.newLayout170303 .logLeft_02 .loginWrap{height:282px;}
.newLayout170303 .logLeft_02 p{margin-top:28px;}
.newLayout170303 .loginWrap{position:relative;width:100%;height:235px;box-sizing:border-box;}
.newLayout170303 .rightBox{position:absolute;right:70px;top:73px;}
.newLayout170303 .rightBox_02{right:30px;top:24px;width:462px; font-size:0; position: absolute;}
.newLayout170303 .rightBox_02 div{padding:0; margin:0; font-size:12px;}
.newLayout170303 .logFooter{padding-top:10px;}
.newLayout170303 .tabBtn a{display:inline-block;width:227px;height:30px;line-height:30px;border:0.5px solid #c2cad0;background-color:#fff;text-align:center;font-size:13px;font-weight:600;letter-spacing:-1px;}
.newLayout170303 .tabBtn a .point_01{color:#005fa7;}
.newLayout170303 .tabBtn a+a{border-left:0px;}
.newLayout170303 .tabBtn a.on{border-bottom:0px;background-color:#f6fafb;}
.newLayout170303 .tabCont{margin-top:-1px;width:459px;height:130px;font-size:12px;overflow-y:scroll;background-color:#fff;border:0.5px solid #c2cad0;border-top:0px;}
.newLayout170303 .tabCont>div{padding:10px;font-size:12px;background-color:#f6fafb;}
.newLayout170303 .tabCont_02{display:none;}
.newLayout170303 .checkLeft label{letter-spacing:-1px;}
.newLayout170303 .checkLeft label+label{margin-left:48px;}
.newLayout170303 .bgColor{padding:5px 0 2px;background-color:#f0f0f0;}
.newLayout170303 .bgColor label{margin-left:270px;}

.loginInp{position:relative;vertical-align:top;}
.loginInp:first-child{margin-top:7px;margin-bottom:10px;}
.loginInp label{position:absolute;top:5px;left:10px;}
span.loginInp{display:inline-block;}
.inpTxt{border:1px solid #cbd3d9; vertical-align: middle; height: 30px; width: 250px;}
</style>

</head>

<div class="board">

	
	<div id="container">
		<div id="content">
			<div id="location">
				<ol class="location_area">
                	<li><a href="mainIndex.bo"><!-- 홈 -->홈</a></li>
                    <li class="current"><span><!-- 개요 -->로그인</span></li>
                </ol>
			</div> <!-- location -->
			
			<div class="content_inner">
				<h1 class="pagetitle">로그인</h1>
					<div style="height: 30px;"></div>
					<center><span>로그인을 위한 회원 정보를 입력 해주세요.</span>
					</center>
					
			<div class="loginLayout newLayout170303">	
				<div class="logLeft logLeft_01">
                	<h4 style="font-weight: bold;">회원 로그인</h4>
                		<div class="loginWrap">
                    	
                    	<fieldset>
                        <legend>로그인</legend>
                       
                        <form id="login" action="MemberLoginAction.me" method="post" novalidate="novalidate" data-progressclass="">
                         <div class="mgt12 mgb15">
                         <label class="radioBox on"><input type="radio" id="" name="loginType" value="1" checked="checked"> 아이디 로그인</label>
                         </div>
                            <div class="logForm">
                                <div class="loginInp">
                                
                                   <input type="text" id="idInput" name="userId" class="inpTxt" title="아이디 입력" maxlength="13" placeholder="&nbsp;아이디"></div>
                                <div class="loginInp ">
                  
                                   <input type="password" id="pwInput" name="password" class="inpTxt" title="비밀번호 입력" maxlength="20" placeholder="&nbsp;비밀번호" autocomplete="off"></div>
                                <div class="checkLeft mgt05">
                                    <label class="checkBox" for="idCheck"><input type="checkbox" id="idCheck" name="idCheck"> ID 저장</label>
                                </div>
                                <input type="submit" class="btnLog" value="로그인">
                            </div>
                        </form>


                        <ul class="ulist01">
                            <li>아이디 / 비밀번호는 영문 대소문자를 구분합니다.</li>
                        </ul>
                        <br>
                        
                        <div class="rightBox">
                            <div class="loginUtill">
                                <a href="#" onclick="findId(); return false;">아이디 찾기</a>
                                <a href="#" onclick="findPassword(); return false;">비밀번호 찾기</a>
                            </div>
                            <div class="logFooter" style="padding-top: 30px;">
                                <span class="btn sBtn" style="float :left;"><a href="JoinView.me">신규회원가입</a></span>

                            </div>
                        </div>
                        
                    </fieldset>
                </div><!-- loginWrap -->
            </div><!-- loginLeft -->
            
            <div style="height: 20px;"></div>
			 <div class="logLeft mgt20 logLeft_02">
		              
			    <h4 style="font-weight: bold;">비회원 로그인</h4>
			    <div class="loginWrap">    		
		            <fieldset>
			               <legend>로그인</legend>
		                    <div class="rightBox rightBox_02">
		                        <div class="tabBtn">
		                            <a href="#" class="on tabBtn_01"><span class="point_01">1.</span>개인정보보호를 위한 이용자 동의 (필수)</a>
		                            <a href="#tabCont_02" class="tabBtn_02"><span class="point_01">2.</span>마케팅 및 광고활용 동의 (선택)</a>
		                        </div>
		                        <div class="tabCont">
		                            <div class="tabCont_01" tabindex="0">
		                                상기 개인정보의 수집, 이용 사항에 동의합니다. 비회원으로 예매하실 경우 요금 할인과 각종 이벤트 혜택의 기회가 상실 됩니다. 항공권 예매정보는 마이 페이지에서 비회원 예매정보 보기에서 보실 수 있습니다.<br>
		                                1. 수집하는 개인정보 항목 및 수집방법<br>
		                                1) 수집항목<br>
		                                가. 부가 서비스 및 맞춤식 서비스 이용 과정에서 해당 서비스의 이용자에 한해서만 아래와 같은 정보들이 수집될 수 있습니다.<br>
		                                &lt;비회원 항공권 예약발권&gt;<br>
		                                - 필수항목 : 성명, 전화번호(휴대폰 번호), 이메일주소<br>
		                                &lt;비회원 항공권 예약발권(미주 노선)&gt;<br>
		                                - 필수 항목 : 탑승고객정보(여권유무, 성별, 생년월일, 여권번호, 여권만료일, 발급처, 국적), 미국 내 체류지 정보(탑승고객, 국가(COUNTRY), 주(STATE), 도시(CITY), 주소(ADDRESS), 우편번호(ZIP CODE))<br>
		                                &lt;홈페이지, Q&amp;A 이용 및 이벤트 참여&gt;<br>
		                                - 필수항목 : 성명, 전화번호(휴대폰 번호), 이메일주소<br>
		                                &lt;비회원으로 예약센터 등을 통한 질의 및 이벤트 참여&gt;<br>
		                                - 필수항목 : 성명, 전화번호(휴대폰 번호, 자택번호, 이메일주소 중 택일)<br><br>
		                                
		                                나. 유료 서비스 이용 과정에서 아래와 같은 결제 정보들이 수집될 수 있습니다.<br>
		                                &lt;대금 결제&gt;<br>
		                                - 신용카드 결제시 : 카드번호 및 카드 인증정보 등<br>
		                                - 실시간 계좌이체 결제시 : 계좌번호 및 결제은행 코드 등<br><br>
		                                
		                                2) 수집 방법 및 동의<br>
		                                ㆍ개인정보 수집방법 : 홈페이지(모바일포함), 이벤트 참여, 제휴사로부터의 제공<br>
		                                ㆍ개인정보 수집 동의 방법<br>
		                                - 온라인 : 회사는 고객이 개인정보 처리방침 또는 이용약관의 내용에 대해 '동의함’ 버튼을 클릭할 수 있는 절차를 마련하고 있으며, '동의함' 버튼을 클릭하면 개인정보 수집에 대해 동의한 것으로 봅니다.<br><br>
		                                
		                                2. 개인정보의 수집 및 이용목적<br>
		                                1) 서비스 제공에 관한 계약 이행 및 서비스 제공에 따른 요금정산 : 콘텐츠 제공, 항공권 예약ㆍ발권, 항공권 등 각종 물품배송 또는 청구서 발송, 구매 및 요금결재, 요금추심 <br>
		                                2) 회원관리 : 회원제 서비스 이용에 따른 본인확인, 개인식별, 불량회원의 부정 이용 방지와 비인가 사용 방지, 가입 의사 확인, 가입 및 가입횟수 제한, 만 14세 미만 아동 개인 정보 수집 시 법정 대리인 동의여부 확인, 분쟁 조정을 위한 기록보존, 불만처리 등 민원처리, 고지사항 전달 <br>
		                                3) 신규서비스 개발 : 신규 서비스 개발, 이용자의 서비스 이용에 대한 통계<br><br>
		                                
		                                3. 개인정보의 보유 및 이용기간<br>
		                                이용자의 동의 하에 수집된 개인정보는 이용자가 에어부산 인터넷 웹사이트상의 서비스를 이용하는 동안 보유/이용됩니다. 당사는 아래와 같이 개인정보의 수집 및 이용 목적이 달성된 때 수집된 개인정보를 지체 없이 파기하겠습니다. <br>
		                                - 회원 가입 정보의 경우: 회원 탈퇴 요청이 있거나 회원 자격을 상실한 때 <br>
		                                - 설문조사, 이벤트 등 일시적 목적을 위하여 수집한 경우: 당해 설문조사, 이벤트 등 종료한 때 <br>
		                                - 사업을 폐지하는 경우 <br>
		                                다만, 개인정보의 수집 및 이용 목적이 달성된 경우에도 상법, 전자상거래 등에서의 소비자 보호에 관한 법률 등 관계법령의 규정에 의하여 보존할 필요성이 있는 경우 및 사전에 보유기간을 이용자에게 고지하거나 명시한 경우 등은 그에 따라 개인정보를 보관할 수 있습니다. <br>
		                                1) 계약 또는 청약철회 등에 관한 기록, 대금 결제 및 재화 등의 공급에 관한 기록 <br>
		                                보존 사유: 전자상거래 등에서의 소비자 보호에 관한 법률 <br>
		                                보존 기간: 5년 <br>
		                                2) 소비자의 불만 또는 분쟁 처리 기록 <br>
		                                보존 사유: 전자상거래 등에서의 소비자 보호에 관한 법률 <br>
		                                보존 기간: 3년 <br>
		                                3) 전자금융 거래에 관한 기록 <br>
		                                보존 사유: 전자금융거래법 <br>
		                                보존 기간: 3년 <br>
		                                4) 홈페이지 방문에 관한 기록 <br>
		                                보존 사유: 통신비밀보호법 <br>
		                                보존 기간: 3개월<br><br>
		                                
		                                4. 개인정보의 수집 및 이용에 대한 동의 거부 관련<br>
		                                당사는 서비스 제공에 필요한 최소한의 정보만을 수집합니다. 이용자는 개인정보의 수집 및 이용 동의에 거부하실 수 있으며, 다만 이 경우 서비스의 일부 또는 전부 이용이 어려울 수 있습니다.<br>
		                            </div>
		                            <div class="tabCont_02" tabindex="0">
		                                에어부산에서 제공하는 이벤트 및 서비스(제휴서비스 포함) 안내 등 광고성 정보를 받으시려면 마케팅 목적 이용에 동의하여 주시기 바랍니다. 이용 범위: 당사 및 제휴사 상품 안내, 이벤트 등 광고성 정보 전달 및 참여기회 제공, 회원 대상 각종 마케팅 활동 <br>
		                                    1.&nbsp;수집항목<br>
		                                 가. 부가 서비스 및 맞춤식 서비스 이용 과정에서 해당 서비스의 이용자에 한해서만 아래와 같은 정보들이 수집될 수 있습니다.  &lt; 비회원 항공권 예약발권&gt; 
		                                 <br>- 필수항목 : 성명, 전화번호(휴대폰 번호, 자택 번호 중 택일), 이메일주소 &lt;홈페이지, Q&amp;A 이용 및 이벤트 참여&gt; 
		                                 <br>- 필수항목 : 성명, 전화번호(휴대폰 번호, 자택 번호 중 택일), 이메일주소 &lt;비회원으로 예약센터 등을 통한 질의 및 이벤트 참여&gt; 
		                                 <br>- 필수항목 : 성명, 전화번호(휴대폰 번호, 자택번호, 이메일주소 중 택일)  회원과 비회원의 접속 빈도나 방문 시간 등을 분석, 이용자의 취향과 관심분야를 파악 및 자취 추적, 각종 이벤트 참여 정도 및 방문 회수 파악 등을 통한 타겟 마케팅 및 개인 맞춤 서비스 제공을 위해 ㈜이엠넷에 쿠키정보 일부가 제공될 수 있습니다.<br><br>
		                                &nbsp;
		                                2. 수집 방법 및 동의<br>
		                                 ㆍ개인정보 수집방법 : 홈페이지(모바일포함), 이벤트 참여, 제휴사로부터의 제공 ㆍ개인정보 수집 동의 방법 - 온라인 : 회사는 고객이 개인정보 처리방침 또는 이용약관의 내용에 대해 '동의함’ 버튼을 클릭할 수 있는 절차를 마련하고 있으며, '동의함' 버튼을 클릭하면 개인정보 수집에 대해 동의한 것으로 봅니다.
		                                제휴사 정보 제공 동의를 하지 않으시면 일부 서비스가 제한됩니다.
		                            </div>
		                        </div>
			                  <div class="checkLeft mgt10">
		                          <label class="checkBox acbnoMemberAgreement1" for="noMemberAgreement1"><input type="checkbox" class="noMemberAgreement" id="noMemberAgreement1" name="idCheck" title="개인정보보호를 위한 이용자 동의 (필수)"> 개인정보보호를 위한 이용자 동의 (필수)</label>
		                          <label class="checkBox acbnoMemberAgreement2" for="noMemberAgreement2"><input type="checkbox" class="noMemberAgreement" id="noMemberAgreement2" name="idCheck" title="마케팅 및 광고활용 동의 (선택)"> 마케팅 및 광고활용 동의 (선택)</label>
		                       </div>
		                       <div class="checkLeft mgt10 bgColor">
		                          <label class="checkBox acbnoMemberAgreementAll" for="noMemberAgreementAll"><input type="checkbox" id="noMemberAgreementAll" name="idCheck" title="전체 이용동의"> 전체 이용동의</label>
		                        </div>
		                    </div>
			               <form id="formNoMemberLogin" action="/web/common/loginApi/noMemberLoginProc" method="post" data-progressclass="">
					        <input type="hidden" name="loginType" value="3">
					        <input type="hidden" name="hash" value="BSQEBZnyKOoEV5fP66izW5Uw8EJ6GAV5dC3zTaQcMvc=">
			                   <p>비밀번호는 예매 및 조회 시 필요한 임시비밀번호 입니다.<br>비회원은 이벤트에 참여 및 스탬프 적립 안됩니다.</p>
			                   <div class="logForm">
			                       <div class="loginInp inputVal"><input type="text" placeholder="&nbsp;이메일 주소" id="emilInput" name="email" class="inpTxt" style="width:242px; ime-mode:disabled;" title="이메일 주소 입력" maxlength="50"></div>
			                       <div class="loginInp inputVal"><input type="password" placeholder="&nbsp;비밀번호" id="emailPwInput" name="password" class="inpTxt" style="width:242px;" title="비밀번호 입력" maxlength="50" autocomplete="off"></div>
			                       <input type="submit" class="btnLog" value="로그인">
			                   </div> 
			               </form> 
		                    <ul class="ulist01 mgt20">
		                        <li>예약내역 조회 시 필요하므로 반드시 기억해 두시기 바랍니다.</li>
		                    </ul>
		                    <br>
		
			        </fieldset> 
		       </div>
		            </div>
           		</div> <!-- login layer -->
			</div><!-- content_inner -->		
			
			
		</div><!-- content -->
	</div><!-- container -->

</div>