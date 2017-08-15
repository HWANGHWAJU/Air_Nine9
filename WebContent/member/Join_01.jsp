<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>

<style type="text/css">


div.clear {
	clear: both;
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
	height: 1420px;
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

/*이용약관란 css*/
.agree_all {
	margin: 40px 0 0;
}

.agree_list {
	padding: 40px 30px;
	border: 1px solid #d9d9d9;
	height: 920px;
}

.agree_check, .allagree {
	position: relative;
}

.terms_area {
	overflow-y: scroll;
	height: 120px;
	padding: 20px;
	margin: 18px 0 0;
	border-top: 1px solid #d9d9d9;
	border-bottom: 1px solid #a9a9a9;
	line-height: 22px;
	word-spacing: 3px;
	font-size: 14px;
}

.terms_area p {
	margin: 15px auto;
	font-size: 20px;
}

.terms_area h3 {
	font-size: 25px;
}

.limagin {
	margin-top: 40px;
}

.allagree {
	padding: 20px 30px;
	background: #e3f1e4;
}

label, input {
	cursor: pointer;
}

.btn_article {
	margin: 30px 0 0;
	text-align: center;
	border:
}

.btn-type01-col01 {
	border: 0.5px solid white; box-sizing : border-box;
	display: inline-block;
	min-width: 200px;
	padding: 0 10px;
	height: 40px;
	font-size: 16px;
	line-height: 40px;
	color: #000;
	background-color: #23c6a9;
	text-align: center;
	vertical-align: middle;
	cursor: pointer;
	transition: all 0.5s;
	box-sizing: border-box;
}

.btn_article ul:after {
	display: block;
	clear: both;
	content: "";
}

.btn-type01-col01:hover {
	background-color: #008a7c;
	color: #ffffff;
}

p.check, p.allagree_check {
	width: 999px;
	height: 30px;
	margin-left: 20px;
}


.important{
color: red;
font-style: normal;
}
</style>

<div id="wrap">


<div id="container" style="padding-top: 110px;">
  
		<div class="top_lo">
					<ol class="location_area">
						<li><a href="#" id="Home">홈</a></li>
						<li class="p"><a href="#" name="lblJoin">회원가입</a></li>
						<li class="current p"><span name="lblAgree">약관동의</span></li>
					</ol>
				</div>
		<div class="clear"></div>
		<div class="center">
			<h1 class="pagetitle" name="lblJoin">회원가입</h1>

			<div class="process_type">
				<ol class="length4">
					<li class="on">01 <span id="Step1">약관동의</span></li>
					<li>02 <span name="lblAgree">정보입력</span></li>
					<li>03 <span id="Step3">가입완료</span></li>

				</ol>
			</div>
         <form action="JoinView.me" method="post" name="form">
			<div class="agree_all">
				<div class="agree_list">
					<ul>
						<li>
							<div class="agree_check">
								<p class="warning-message" id="WarningMessage1"
									style="display: none;">홈페이지 이용약관 동의에 체크해 주시기 바랍니다.</p>
								<p class="check">
									<span class="checkbox01 js-checkbox01"> <label
										for="agree1" class="active"><span id="AgreeTitle1">홈페이지
												이용약관 동의 <em class="important" onclick="chk()">(필수)</em>
										</span> <input type="checkbox" name="agree1" id="agree1"
											class="checkbox active"></label>
									</span>
								</p>
							</div>
							<div class="terms_area">

								<h3>제1장 총칙</h3>
								<p>제1조 [목적]</p>
								본 약관은 '에어서울 주식회사 (이하 "에어서울"라고 합니다.)' 에서 운영하는 에어서울 유무선 웹사이트
								(flyairseoul.com 및 모바일 APP 등)가 제공하는 인터넷 관련 서비스를 이용함에 있어 에어서울과
								이용자간 권리ㆍ의무 및 기타 책임사항 등에 대하여 규정함을 목적으로 합니다.
								<p>제2조 [용어의 정의]</p>
								① "에어서울 웹사이트"란 에어서울이 상품 또는 서비스를 이용자에게 제공하기 위하여 컴퓨터 등 정보통신설비를
								이용하여 상품 등을 거래할 수 있도록 설정한 가상의 영업장을 말합니다.<br> ② "이용자" 란 에어서울
								웹사이트에 접속하여 본 약관에 따라 에어서울이 제공하는 서비스를 받는 회원 또는 비회원을 말합니다.<br>
								③ "회원"이라 함은 에어서울 웹사이트에 개인정보를 제공하고 아이디 및 비밀번호를 등록한 자로서, 에어서울의
								웹사이트가 지속적으로 제공하는 정보 및 서비스를 계속적으로 이용할 수 있는 자를 말합니다.<br> ④
								"비회원"이라 함은 회원으로 가입하지 않고 에어서울이 제공하는 정보 및 서비스를 이용하는 자를 말합니다.
								<p>제3조 [약관의 게시 및 개정]</p>
								① 에어서울은 본 약관의 내용과 상호,연락처(전자우편주소, 전화번호, 팩스번호 등), 통신판매업신고번호 등을
								에어서울 웹사이트 초기 화면(전면)에 게시합니다. 다만, 약관의 내용은 이용자가 연결화면을 통하여 볼 수 있도록 할
								수 있습니다.<br> ② 에어서울은 '전자상거래등에서의 소비자보호에 관한 법률', '약관의 규제에 관한
								법률', '전자문서 및 전자거래기본법', '전자서명법', '정보통신망이용촉진 및 정보보호 등에 관한 법률',
								'소비자기본법' 등 관련 법령을 위반하지 않는 범위 내에서 본 약관을 개정할 수 있습니다.<br> ③
								약관을 개정할 경우에는 개정사유 및 적용일자 등을 명시하여 현행 약관과 함께 초기 화면에 공지하며, 공지기간은
								적용일자 7일 이전부터 적용일자 전일까지로 합니다.<br> ④ 개정된 약관은 대한민국내 관련 법령에
								위반하지 않는 한, 개정 이전에 가입한 회원에 대하여도 전항과 같이 공지 후 적용합니다. 단, 회원이 개정된 약관의
								적용에 대하여 개정약관 적용일 이전까지 에어서울에 명시적으로 거부의 의사를 표시하는 경우, 해당 회원에 한하여 개정
								전의 약관 조항이 적용됩니다.<br> ⑤ 본 약관에서 정하지 아니한 사항과 본 약관의 해석에 관해서는
								'약관의 규제에 관한 법률', '전자상거래등에서의 소비자보호에 관한 법률', '소비자기본법' 등 관련 법령과
								대한민국의 일반적인 상관례에 따릅니다.
								<h3>제2장 서비스 이용</h3>
								<p>제4조 [서비스의 제공]</p>
								① 에어서울은 웹사이트를 통하여 제공하는 서비스는 아래와 같습니다. 1. 항공권 예매 및 관련 정보, 서비스 제공
								2. 에어텔, 호텔,렌터카 등 여행 상품 관련 정보, 서비스 제공 3. 기타 에어서울이 정하는 업무<br>
								② 에어서울은 필요한 경우 전항의 서비스의 내용을 임의로 추가, 조정 등변경하여 적용할 수 있습니다.
								<p>제5조 [서비스의 이용 및 제한]</p>
								① 에어서울은 컴퓨터 등 정보통신설비의 보수점검, 교체 및 고장, 시스템의 고장, 통신두절 등의 사유가 발생한 경우
								서비스의 제공을 일시적으로 중단할 수 있습니다.<br> ② 제1항에 의한 서비스 제공의 경우 에어서울은
								제10조에 정한 방법으로 이용자에게 통지하며, 이용자 또는 제3자가 입은 손해에 대하여는 배상하지 아니합니다. 단,
								에어서울에 고의 또는 중과실이 있는 경우에는 그러하지 아니합니다.<br> ④ 에어서울이 제공하는 인터넷
								서비스의 일부는 flyairseoul.com에 회원으로 가입한 경우에 한하여 이용될 수 있습니다.<br>
								⑤ 에어서울은 이용자가 다음 각 호의 1에 해당하는 행위를 한 경우 사전통지 없이 서비스이용을 차단하거나 중지할 수
								있습니다.<br>&nbsp;&nbsp;&nbsp; 1.공공질서 또는 미풍양속에 반하는 행위 <br>&nbsp;&nbsp;&nbsp;&nbsp;2.범죄와
								관련되었다고 추정되는 일체의 행위 <br>&nbsp;&nbsp;&nbsp;&nbsp;3.공공의 이익을
								저해할 목적으로 서비스 이용을 계획 또는 실행하는 행위<br>&nbsp;&nbsp;&nbsp; 4.타인의
								아이디 및 비밀번호를 도용한 행위<br>&nbsp;&nbsp;&nbsp; 5.타인의 명예를 훼손하거나
								모욕을 준 경우 기타 타인을 해할 목적의 행위<br>&nbsp;&nbsp;&nbsp; 6. 서비스의 제공을
								방해하는 등 서비스의 건전한 이용을 저해하는 행위<br>&nbsp;&nbsp;&nbsp; 7. 기타 관련
								법령이나 에어서울이 약관에서 정한 이용규칙을 위배하는 행위<br> ⑥ 전 제5항에 의한 서비스 이용이
								중지된 경우, 에어서울은 이용자 또는 제 3자가 입은 손해를 배상하지 아니합니다.
								<p>제6조 [회원의 가입]</p>
								① 이용자는 반드시 실명으로 회원 가입을 하여야 하며, 정해진 가입양식에 따라 회원정보를 기입한 후 약관에
								동의한다는 의사표시를 하는 방법으로 회원 가입을 신청합니다.<br> ② 이용자가 화면의 "동의" 버튼을
								누르는 것은 본 약관의 내용에 합법적으로 동의하는 것으로 간주됩니다. 단, 만 14세 미만의 미성년자의 경우에는
								법정 대리인의 동의를 받아 본 약관에 동의하고 가입신청을 할 수 있습니다.<br> ③ 다음 각 호의 1에
								해당하는 자는 회원으로 등록할 수 없습니다.<br>&nbsp;&nbsp;&nbsp; 1. 등록 내용에
								허위, 기재 누락, 오기가 있는 경우<br>&nbsp;&nbsp;&nbsp; 2. 신청자가 본 약관 제8조
								제2항에 의하여 회원자격을 상실한 날로부터 3년이 경과되지 아니한 경우 <br>&nbsp;&nbsp;&nbsp;
								3. 기타 회원으로 등록하는 것이 기술적으로 현저히 지장이 있다고 판단되는 경우<br> ④ 회원가입 계약의
								성립 시기는 에어서울의 승낙이 회원에게 도달한 시점으로 합니다.<br> ⑤ 회원은 제 14조 제 1항에
								열거된 등록 사항에 변경이 있는 경우, 웹사이트의 &lt;회원정보변경&gt; 항목을 통해 직접 변경사항을 수정,
								등록함으로써 최신의 정보가 유지되도록 하여야 합니다. 실제 정보를 입력하지 않거나 수정하지 않음으로 인해 발생하는
								불이익은 회원이 부담하게 됩니다.
								<p>제7조 [회원 ID 및 Password]</p>
								① 에어서울 웹사이트 서비스를 이용하고자 하는 회원은 에어서울이 정하는 바에 따라 회원ID 및 Password를
								등록하여야 합니다.<br> ② 회원 ID와 Password에 관한 관리책임은 회원 본인에게 있으므로 회원은
								자신의 ID 및 Password를 제3자에게 알려주거나 이용하게 해서는 안됩니다.<br> ③ 회원이 자신의
								ID 또는 Password를 도난 당하거나 제3자가 사용하고 있음을 인지한 경우에는 즉시 에어서울에 통보하고
								에어서울의 안내가 있는 경우에는 그에 따라야 합니다.
								<p>제 8조 [회원탈퇴와 자격의 상실]</p>
								① 회원은 언제든지 탈퇴신청을 할 수 있으며, 이 경우 에어서울은 즉시 회원탈퇴를 처리합니다.<br> ②
								회원이 다음 각 호에 해당하는 경우에는 에어서울은 서비스이용을 제한 또는 자격을 상실시킬 수 있습니다. <br>&nbsp;&nbsp;&nbsp;
								1. 회원 사망 시 <br>&nbsp;&nbsp;&nbsp; 2. 가입 신청 시 허위의 내용을 기재하거나
								2개 이상의 ID로 이중 등록한 경우 <br>&nbsp;&nbsp;&nbsp; 3. 타인의 서비스 이용을
								방해하거나 타인의 개인정보를 도용하는 등 전자거래질서를 침해·위협하는 경우 <br>&nbsp;&nbsp;&nbsp;
								4. 에어서울 웹사이트에서 구매한 항공권 등의 대금 지급 채무 및 기타 에어서울 웹사이트에서 제공한 서비스를
								이용하고 이에 대응한 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 채무를 불이행한 경우 <br>&nbsp;&nbsp;&nbsp;
								5. 에어서울 웹사이트를 통해 본 약관이 금지하는 행위를 하거나 법령, 기타 공서양속에 반하는 행위를 하는 경우 <br>&nbsp;&nbsp;&nbsp;
								6. 회원 가입 후 1년 동안 에어서울 웹사이트에 로그인 한 기록이 없는 경우<br> ③ 에어서울이 서비스
								이용을 제한·정지하고자 할 때에는 미리 그 사유, 일시, 기간을 전자우편, 전화, 서면 등으로 이용자에게
								통지합니다. 다만 긴급을 요할 경우에는 조치 후에 통지할 수 있습니다. <br>④ 에어서울이 서비스이용을
								제한·정지시킨 후 그 제재사유가 된 행위가 반복되거나 30일 이내에 그 사유가 시정되지 아니하는 경우 에어서울은
								회원자격을 상실시킬 수 있습니다. <br>⑤ 에어서울은 전항의 사유로 인하여 회원이 자격을 상실하여
								회원등록을 말소하여야 할 경우, 회원에게 사전에 그 사실을 통지합니다.단, 상기 2조 6항에 의하여 이용자의
								회원자격을 상실시킬 경우에는 상실 전에 1개월의 기간 동안 1차례에 걸쳐 회원자격 상실에 대한 경고문을 제 10조에
								의거 통지합니다. <br>⑥ 서비스이용의 제한, 정지, 회원자격의 상실로 인한 손해에 대해서 에어서울은
								책임을 지지 않습니다.
								<p>제 9조 [회원에 대한 통지]</p>
								① 에어서울이 회원에 대한 통지를 하는 경우 회원이 제출한 전자우편주소, 무선 단문 메시지 (알림톡 또는 SMS)
								등을 이용할 수 있습니다. <br>② 에어서울은 불특정 다수의 회원에게 통지하는 경우에는 에어서울
								웹사이트에7일 이상 공시함으로써 개별 통지를 갈음할 수 있습니다. <br>③ 제 2항의 사유로 통지하는
								경우, 부득이한 사정에 의해 사전 공시 기간이 감축되거나 생략될 수 있습니다.
								<p>제 10조 [정보의 제공]</p>
								에어서울은 회원에게 서비스 이용 및 각종행사(상업성 광고), 여행정보 등 다양한 서비스를 전자우편이나, 서신,
								무선단문 메시지(알림톡 혹은 SMS)발송 등의 방법으로 제공할 수 있습니다. 단, 제공을 원치 않는 회원은
								에어서울이 제공하는 정보에 대하여 수신 거부할 수 있습니다
								<p>제 11조 [항공권 등에 대한 구매 신청]</p>
								① 이용자는 에어서울이 정한 방식에 따라 항공권 등의 구매 신청을 할 수 있습니다. <br>&nbsp;&nbsp;&nbsp;
								1. 성명,성별,연락처 등 입력입력 <br>&nbsp;&nbsp;&nbsp; 2. 개인정보 수집 및
								규정,법적고지문,약관 등에 동의한다는 표시 (예,마우스클릭) <br>&nbsp;&nbsp;&nbsp; 3.
								결제수단 선택
								<p>제 12조 [구매 계약의 성립]</p>
								② 에어서울은 제 11조에서 정한 방법의 구매 신청에 대하여 다음 각호에 해당할 경우 승낙하지 않을 수 있습니다.
								<br>&nbsp;&nbsp;&nbsp; 1.신청 내용에 허위, 기재누락, 오기가 있는 경우 <br>&nbsp;&nbsp;&nbsp;
								2.구매신청에 대한 승낙이 영업상 또는 기술상 현저히 지장이 있다고 판단되는 경우 <br>③ 에어서울의
								승낙이 수신확인통지형태로 이용자에게 도달한 때에 계약이 성립한 것으로 봅니다. <br>④ 전항의
								수신확인통지를 받은 이용자는 신청한 내용에 대하여 구매신청을 취소하거나 변경을 요청할 수 있으며, 에어서울은 이에
								따라 처리합니다.
								<p>제 13조 [결제방법]</p>
								에어서울 웹사이트에서 구매한 재화.용역에 대한 대금지급방법은 다음 각 호의 하나로 할 수 있습니다. <br>&nbsp;&nbsp;&nbsp;
								1.신용카드결제 <br>&nbsp;&nbsp;&nbsp; 2.실시간 계좌이체 <br>&nbsp;&nbsp;&nbsp;
								3.간편 결제 <br>&nbsp;&nbsp;&nbsp; 4.기타 에어서울이 정한 결제방식
								<h3>제3장 정보의 보호</h3>
								<p>제 14조 [개인정보 보호]</p>
								① 에어서울은 이용자로부터 정보를 수집할 경우 서비스의 제공 및 계약이행에 필요한 최소한의 정보만을 수집합니다. <br>②
								개인정보보호에 관한 상세한 내용은 에어서울 웹사이트상의 개인정보취급방침에서 규정한 바에 따릅니다.
								<h3>제 4장 책임과 의무</h3>
								<p>제 15조 [에어서울의 의무]</p>
								① 에어서울은 법령과 이 약관이 금지하거나 공서양속에 반하는 행위를 하지 않으며 이 약관이 정하는 바에 따라
								지속적이고 안정적인 서비스 제공 및 재화·용역의 공급에 노력합니다. <br>② 에어서울은 이용자가 안전하게
								서비스를 이용할 수 있도록 개인정보(신용정보 포함)에 관한 보안을 철저히 하며, 이를 위한 기술적 안전조치를
								강구하고, 관리에 만전을 기하겠습니다. <br>③ 에어서울은 에어서울 웹사이트에 대한 공정하고 건전한
								운영을 통하여 전자상거래질서를 유지하고, 지속적인 연구•개발을 통하여 양질의 서비스가 제공되도록 노력하겠습니다. <br>④
								에어서울은 웹사이트를 통해 제공되는 상품이나 서비스에 대하여 [표시광고의 공정화에 관한 법률] 제 3조 소정의
								부당한 표시·광고행위를 함으로써 이용자가 손해를 입은 때에는 이를 배상할 책임을 집니다. <br>⑤
								에어서울 웹사이트에 입점한 제휴사의 상품 또는 서비스의 판매는 해당 제휴사의 책임하에 직접 이루어지며 에어서울은 동
								사이트를 통한 중개 역할만을 수행합니다.
								<p>제 16조 [이용자의 의무]</p>
								① 이용자는 이 약관 및 관계법령을 준수하여야 하며, 다음의 행위를 해서는 안됩니다. <br>&nbsp;&nbsp;&nbsp;
								1. 신청 또는 변경 시 허위내용의 기재 <br>&nbsp;&nbsp;&nbsp; 2. 에어서울 웹사이트에
								게시된 정보의 임의변경 <br>&nbsp;&nbsp;&nbsp; 3. 에어서울이 허용하고 있지 않은 정보나
								컴퓨터 프로그램 등을 무단으로 송신 또는 게시하는 행위 <br>&nbsp;&nbsp;&nbsp; 4.
								에어서울 기타 제3자의 저작권 등 지적재산권 침해 <br>&nbsp;&nbsp;&nbsp; 5. 에어서울
								기타 제3자의 명예, 프라이버시를 침해하거나 업무를 방해하는 행위 <br>&nbsp;&nbsp;&nbsp;
								6. 외설적 또는 폭력적 메시지·화상·음성 기타 공서양속에 반하는 정보를 송신, 공개 또는 게시하는 행위<br>
								② 전항 각호의 정보 기타 운영상 부적절하다고 판단한 정보가 에어서울 웹사이트에 게시되거나 링크된 경우 에어서울은
								이용자 기타 정보게시자의 동의 없이 당해 정보를 삭제하거나 링크를 차단할 수 있습니다.
								<p>제 17조[에어서울 웹사이트와 타 웹사이트간의 관계 등]</p>
								① 에어서울 웹사이트와 연결 사이트가 하이퍼링크 (예: 하이퍼링크의 대상에는 문자, 그림 및 동화상 등이
								해당)방식으로 연결된 경우, 에어서울은 피연결 웹사이트가 독자적으로 제공하는 재화나 용역 등에 대하여는 보증책임을
								부담하지 아니합니다. <br>② 에어서울은 이용자가 에어서울 웹사이트의 게시판 등에 게재한 정보나 자료
								등에 관하여 신뢰성을 담보하지 아니하며, 그로 인하여 손해가 발생하더라도 책임을 지지 아니합니다.
								<h3>제5장 기타</h3>
								<p>제 18조[저작권의 귀속]</p>
								① 에어서울이 작성한 저작물에 대한 저작권 기타 지적재산권은 에어서울에 귀속합니다.<br> ② 이용자는
								에어서울 웹사이트를 통해 얻은 정보 중 에어서울에 지적재산권이 귀속된 정보에 대하여는 에어서울의 사전 동의 없이
								복제,송신,출판,배포,방송 기타 방법으로 영리목적에 이용하거나 제3자의 이용에 제공할 수 없습니다. 제
								<p>19조[분쟁의 해결]</p>
								① 에어서울은 이용자가 제기하는 정당한 의견이나 불만을 반영하고 피해에 대한 보상처리를 위하여 피해보상처리기구를
								설치.운영합니다.<br> ② 에어서울은 이용자가 제기하는 불만사항 및 의견을 신속·적정하게 처리합니다.
								다만 신속한 처리가 곤란한 경우에는 이용자에게 그 사유와 처리일정을 지체 없이 통보해 드립니다.<br> ③
								에어서울과 이용자간에 전자거래에 관한 분쟁 발생시 전자거래기본법 및 동법 시행령에 근거 하여 설치된
								전자거래분쟁조정위원회의 조정에 따를 수 있습니다.
								<p>제 20조[관할법원 및 준거법]</p>
								① 에어서울과 이용자는 서비스이용과 관련하여 발생한 분쟁에 대하여 상호 원만하게 처리될 수 있도록 필요한 모든
								노력을 하여야 합니다.<br> ② 전항의 노력에도 불구하고, 소송 등이 제기된 경우 대한민국 법원을
								전속관할법원으로 하고, 동 소송에는 대한민국법을 적용하도록 합니다.
								<h3>부칙</h3>
								제1조 [약관의 효력] 본 약관은 2016년 8월 8일부터 시행합니다.

							</div>
						</li>


						<li class="limagin">
							<div class="agree_check">
								<p class="warning-message" id="WarningMessage1"
									style="display: none;">홈페이지 이용약관 동의에 체크해 주시기 바랍니다.</p>
								<p class="check">
									<span class="checkbox01 js-checkbox01"> <label
										for="agree2" class="active"><span id="AgreeTitle1">홈페이지
												이용약관 동의 <em class="important">(필수)</em>
										</span> <input type="checkbox" name="agree2" id="agree2"
											class="checkbox"></label>
									</span>
								</p>
							</div>
							<div class="terms_area">

								본 개인정보취급방침은 에어서울㈜ (이하 ‘에어서울’이라 한다)의 인터넷 홈페이지 flyairseoul.com 을
								이용하는 회원 혹은 비회원(이하 통칭하여 “이용자”라 한다)의 개인정보에 대한 관리 및 운영에 관한 내용입니다.
								에어서울은 정보통신망 이용촉진 및 정보보호 등에 관한 법률 등 정보통신서비스 제공자가 준수하여야 할 관련 법령상의
								개인정보보호 규정을 준수하며, 관련 법령에 의거한 개인정보취급방침을 정하여 이용자 권익 보호에 최선을 다하고
								있습니다. 에어서울의 홈페이지 개인정보취급방침은 다음과 같습니다. <br>
								<br>
								<br>
								<br>
								<br>
								<br>
								<h3>1. 수집하는 개인정보의 항목 및 수집 방법</h3>
								<p>1) 수집하는 개인정보 항목</p>
								에어서울은 이용자에게 회원가입, 원활한 고객상담, 각종 서비스의 제공을 위하여 아래와 같은 개인정보를 수집하고
								있습니다. (1) 에어서울 홈페이지 회원 가입 시 ① 필수항목 : 한글 및 영문 성명, 성별, 전화번호, 이메일,
								국적, 거주국가, 본인 인증번호, 아이디,비밀번호 ② 만 14세 미만 회원 가입 시 추가 수집 항목 : 보호자의
								성명,생년월일 (2) 항공권 예매 시 ① 탑승자 성명, 회원번호(회원인 경우) , 생년월일, 전화번호, 이메일 ②
								신용카드 결제(카드번호, 거래 인증번호), 계좌이체(거래은행명, 계좌번호) ③ 여권정보 (여권번호, 만료일,
								발급처, 국적) (3) 고객센터 이용 시 ① 성명, 연락처, 이메일 주소(선택적), 생년월일(선택적),
								탑승정보(선택적) (4) 이벤트 응모 시 ① 이벤트 응모 과정에서 회원 가입 시 수집하지 않았던 개인정보를 추가로
								수집할 때에는 이용자들에게 고지하고 동의를 받습니다. (5) 자동으로 생성되는 개인정보 ① 서비스 이용기록, 접속
								로그, 쿠키, 접속 IP 정보, 결제기록
								<p>2) 개인정보 수집 방법</p>
								에어서울은 홈페이지의 회원가입, 고객센터, 게시판, 이벤트 참여를 통해 개인정보를 수집합니다. 이용자는 에어서울이
								마련한 개인정보취급방침 또는 이용약관의 내용에 대해 「동의」버튼을 클릭함으로써 개인정보 수집에 대하여 동의여부를
								표시할 수 있으며, 「동의」버튼을 클릭할 경우에는 개인정보 수집에 동의한 것으로 봅니다.
								<h3>2. 개인정보의 수집 및 이용목적</h3>
								<p>1) 서비스 제공을 위한 계약의 이행</p>
								항공권 예약발권, 콘텐츠 제공, 금융거래 본인인증 및 금융서비스 등
								<p>2) 회원 관리</p>
								회원제 서비스 이용, 개인식별, 가입의사 확인, 민원처리 등
								<p>3) 마케팅 및 광고 활용</p>
								기타 새로운 서비스, 신상품이나 이벤트 정보 안내, 서비스 이용 통계 등
								<h3>3. 개인정보 제 3자 제공</h3>
								1) 에어서울은 법령에 근거가 있거나 정부의 관련 방침, 지시 등 예외적인 경우를 제외하고는 이용자의 사전 동의없이
								이용자의 개인정보를 본 지침상의 정보이용 목적의 범위를 넘어 사용하거나 제3자에게 제공하지 않습니다.<br>
								2) 다만, 회원께서 제휴사 등의 서비스를 이용시 원활한 서비스 제공을 위하여 최소한의 개인정보가 제공될 수
								있으며, 그러한 경우 에어서울은 제공할 정보의 내용 및 목적, 제공받는 자, 보유기간을 사전에 전자우편이나 서면으로
								개별 통지하거나, 홈페이지상 해당 내용을 명시하여 회원 동의를 받고 있습니다.
								<h3>4. 개인정보의 취급 위탁</h3>
								에어서울은 원활한 서비스 제공을 위하여 아래와 같이 개인정보를 위탁하여 운영하고 있으며, 관계 법령에 따라 위탁계약
								시 개인정보가 안전하게 관리될 수 있도록 필요한 사항을 규정하고 있습니다. 개인정보 위탁처리 기관 및 위탁업무
								내용은 아래와 같습니다.<br> <img src="img/info.png">
								<h3>5. 개인정보의 보유 및 이용기간</h3>
								1) 이용자가 제공한 개인정보는 에어서울이 제공하는 서비스를 받는 동안 에어서울이 보유ㆍ이용하게 됩니다.<Br>
								2) 에어서울은 회원이 탈퇴하거나 자격을 상실하는 경우 또는 수집 목적을 달성하거나 사업을 폐업하는 경우에는 회원
								DB 삭제, 문서 파기 등의 방법으로 해당 개인 정보를 1일내 파기하고 있습니다. 다만, 전자상거래등에서의
								소비자보호에 관한 법률 등 관련 법령의 규정에 의하여 보존하여야 하는 기록은 일정 기간 보관 후 파기합니다.<br>
								&nbsp;&nbsp;&nbsp;(1) 계약 또는 청약철회 등에 관한 기록 (보존기간 : 5년) : 전자상거래
								등에서의 소비자 보호에 관한 법률 <br>&nbsp;&nbsp;&nbsp;(2) 대금결제 및 재화 등의
								공급에 관한 기록 (보존기간 : 5년) : 전자상거래 등에서의 소비자 보호에 관한 법률 <br>&nbsp;&nbsp;&nbsp;(3)
								소비자의 불만 또는 분쟁처리에 관한 기록 (보존기간 : 3년) : 전자상거래 등에서의 소비자 보호에 관한 법률 <br>&nbsp;&nbsp;&nbsp;(4)
								홈페이지 방문에 관한 기록 (보존 기간: 3개월) : 통신비밀보호법 <br>&nbsp;&nbsp;&nbsp;(5)
								이벤트 참여 기록 (보존 기간 : 1년) : 당사에서 정한 기준 <br>&nbsp;&nbsp;&nbsp;(6)
								기타 보유 정보: 정보의 수집 및 이용 목적이 달성된 때<br> 3) 에어서울은 1년간 홈페이지 로그인
								기록이 없는 회원은 탈퇴 처리하며, 탈퇴 회원의 정보는 DB삭제의 방법으로 파기 처리 하고 있습니다.<Br>
								4) 전항의 규정에도 불구하고, 상법, 전자상거래 등에서의 소비자 보호에 관한 법률 등 관계법령의 규정에 따라
								보존의 필요성이 있는 경우 혹은 요금의 정산, 소송 등 법적 분쟁에 대비하기 위하여 개인정보에 대한 계속적인 보유의
								필요성이 있어 보유목적, 기간, 보유하는 개인정보 항목을 명시하여 고지한 경우 등은 이용자의 개인정보를 보관할 수
								있습니다.<br>
								<h3>6. 개인정보 파기방법</h3>
								이용자의 개인정보가 수집 및 이용목적이 달성되면 지체 없이 파기합니다. <br> 전자적 파일 형태로 저장된
								개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다.<br> 1) 파기절차 <br>&nbsp;&nbsp;&nbsp;(1)
								이용자가 회원가입 등을 위해 입력한 정보는 목적이 달성된 후 내부 방침 및 기타 관련 법령에 의한 정보보호 사유에
								따라 파기됩니다. <br>&nbsp;&nbsp;&nbsp;(2) 동 개인정보는 법률에 의한 경우가
								아니고서는 보유되는 이외의 다른 목적으로 이용되지 않습니다.<br> 2) 파기방법 <br>&nbsp;&nbsp;&nbsp;(1)
								종이에 출력된 개인정보는 분쇄기로 분쇄하거나 소각을 통하여 파기합니다. <br>&nbsp;&nbsp;&nbsp;(2)
								전자적 파일 형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다.
								<h3>7. 아동의 개인정보 및 법정대리인의 권리와 그 행사방법</h3>
								1) 에어서울은 만14세 미만 아동으로부터 개인정보를 수집하거나, 이미 수집된 정보를 제3자에게 제공하거나 동의
								받은 범위를 초과하여 사용할 경우에는 법정대리인의 동의를 얻도록 하고 있습니다. 따라서, 만14세 미만의 아동은
								본인의 정보를 법정대리인의 동의를 득한 경우에만 등록할 수 있습니다. <br>2) 만14세 미만 아동의
								법정대리인은 아동의 개인정보에 대하여 열람, 정정, 탈퇴, 동의철회를 요청할 수 있으며, 이러한 요청이 있을 경우
								에어서울은 법정대리인 등 동일인 여부를 확인 후 지체없이 필요한 조치를 취하겠습니다. <br>3) 이용자
								및 법정 대리인은 언제든지 등록되어 있는 자신 혹은 당해 만 14세 미만 아동의 개인정보를 조회하거나 수정할 수
								있으며 가입 해지를 요청할 수도 있습니다. <br>4) 이용자 혹은 만 14세 미만 아동의 개인정보 조회,
								수정을 위해서는 홈페이지에서 변경/탈퇴가 가능하며, 에어서울 서비스센터 1800-8100를 통해서도 요청할 수
								있습니다. <br>5) 이용자가 개인정보의 오류에 대한 정정을 요청하신 경우에는 정정을 완료하기 전까지
								당해 개인정보를 이용 또는 제공하지 않습니다
								<h3>8. 개인정보보호를 위한 기술적 대책</h3>
								에어서울은 이용자의 개인정보를 취급함에 있어 정보의 분실, 도난, 누출, 외부로부터의 공격, 해킹 등을 방지하고
								최상의 안전성을 확보하기 위하여 다음과 같은 기술적 대책을 강구하고 있습니다.<br> <br>1)
								이용자의 개인정보는 비밀번호에 의해 보호되며, 파일 및 전송 데이터를 암호화하여 중요한 데이터는 별도의 보안기능을
								통해 보호되고 있습니다. <br>2) 에어서울은 컴퓨터 바이러스에 의한 피해가 발생하지 않도록
								백신프로그램을 이용하고 있으며, 백신프로그램에 대한 주기적인 업데이트와 최신화를 기하고 있습니다. <br>3)
								에어서울은 암호 알고리즘을 이용하여 네트워크 상의 개인정보를 안전하게 전송할 수 있는 보안장치를 채택하고 있습니다.
								<br>4) 해킹 등에 의해 이용자의 개인정보가 유출되는 것을 방지하기 위해, 외부침입을 차단하는
								보안장치를 이용하고 있으며, 침입탐지시스템을 설치하여 24시간 침입을 감시하고 있습니다. <br>5)
								이용자의 개인정보를 처리하는 담당인원을 최소한으로 제한하며, 관련 직원에 대해서는 지속적인 보안교육의 실시와 함께
								본 정책의 준수여부를 수시로 점검하고 있습니다.
								<h3>9. 개인정보 자동 수집 장치의 설치/운영 및 거부에 관한 사항</h3>
								에어서울은 이용자의 정보를 자동으로 저장하고 찾아내는 ‘쿠키(cookie)’ 등을 운용합니다. 쿠키란 웹사이트를
								운영하는데 이용되는 서버가 귀하의 브라우저에 보내는 아주 작은 텍스트 파일로서 귀하의 컴퓨터 하드디스크에
								저장됩니다. <br>1) 쿠키 등 사용 목적 <br>&nbsp;&nbsp;&nbsp;로그인
								식별/고객님의 사용 언어/기존 홈페이지 방문 회수 파악 등을 통한 개인 맞춤 서비스 제공 등을 위해 쿠키를
								운용합니다. 이용자는 쿠키 설치에 대한 선택권을 가지고 있습니다. <br>2) 쿠키 설정 거부 방법 <br>&nbsp;&nbsp;&nbsp;쿠키
								설정을 거부하는 방법으로는 회원이 사용하는 웹 브라우저의 옵션을 선택함으로써 모든 쿠키를 허용하거나 쿠키를 저장할
								때마다 확인을 거치거나, 모든 쿠키의 저장을 거부할 수 있습니다. <br>※설정방법 예(인터넷 익스플로러의
								경우) <br>웹 브라우저 상단의 도구 > 인터넷 옵션 > 개인정보취급 수준을 설정하시면 됩니다. 단,
								이용자가 쿠키 설치를 거부하였을 경우 서비스 제공에 어려움이 있을 수 있습니다.
								<h3>10. 의견 및 불만처리</h3>
								<br>에어서울은 개인정보보호와 관련하여 이용자에게 자유롭게 의견을 개진하고 불만을 토로할 수 있는 창구를
								개설하여 운영하고 있습니다. 아래 연락처로 의견이나 불만을 제기하시면 접수 즉시 조치하고, 그 처리결과를 통보하여
								드리겠습니다. <br>▷ 홈페이지 : 고객센터를 통하여 접수 바로가기 <br>▷ 에어서울 서비스
								센터 : 국번없이 1800-8100
								<h3>11. 홈페이지 개인정보 관리책임자</h3>
								<br>에어서울은 이용자의 개인정보에 대한 개인정보관리책임자를 지정하여 개인정보보호를 위해 최선을
								다하겠습니다. 현재 에어서울의 홈페이지 개인정보 관리책임자는 아래와 같습니다. <br>에어서울의 개인정보
								관리 책임은 에어서울 개인정보처리방침에 따릅니다. <img alt="" src="img/info2.png"><br>
								개인정보침해에 대한 신고나 상담이 필요하신 경우에는 아래 기관에 문의하시기 바랍니다.<br> <br>&nbsp;&nbsp;&nbsp;-
								개인정보침해신고센터 (www.118.or.kr / 118) <br>&nbsp;&nbsp;&nbsp;-
								정보보호마크인증위원회 (www.eprivacy.or.kr / 02-580-0533~4) <br>&nbsp;&nbsp;&nbsp;-
								대검찰청 첨단범죄수사과 (www.spo.go.kr / 02-3480-2000) <br>&nbsp;&nbsp;&nbsp;-
								경찰청 사이버테러대응센터 (www.ctrc.go.kr / 02-392-0330)
								<h3>12. 개인정보취급방침의 적용 제외</h3>
								<br>에어서울은 이용자에게 홈페이지를 통하여 다른 회사의 웹사이트 또는 자료에 대한 링크를 제공할 수
								있습니다. <br>이 경우 에어서울은 외부사이트 및 자료에 대하여 통제권이 없을 뿐만 아니라 이들이
								개인정보를 수집하는 행위에 대하여 에어서울의 '개인정보취급방침'이 적용되지 않습니다. <br>따라서,
								에어서울이 포함하고 있는 링크를 클릭하여 타 사이트의 페이지로 이동할 경우에는 새로 방문한 사이트의
								개인정보취급방침을 반드시 확인하시기 바랍니다.
								<h3>13. 개인정보취급방침의 변경</h3>
								<br>본 개인정보취급방침의 변경이 있는 경우 변경 7일전까지 홈페이지 공지를 통해 고지하겠습니다.
								<h3>14. [기타]</h3>
								<br>본 개인정보취급방침은 2016년 8월 8일부터 시행 <br>공고일자 2016년 8월 8일

							</div>

						</li>


						<li class="limagin">
							<div class="agree_check">
								<p class="warning-message" id="WarningMessage1"
									style="display: none;">홈페이지 이용약관 동의에 체크해 주시기 바랍니다.</p>
								<p class="check">
									<span class="checkbox01 js-checkbox01"> <label
										for="agree3" class="active"><span id="AgreeTitle1">홈페이지
												이용약관 동의 <em class="important">(필수)</em>
										</span> <input type="checkbox" name="agree3" id="agree3"
											class="checkbox" ></label>
									</span>
								</p>
							</div>
							<div class="terms_area">
								에어서울에서는 항공여행정보시스템 제공 업체인 SITA사에 당사의 예약 및 운송 시스템 운영을 위탁하고 있으며,
								예약에 필요한 개인정보 국외 이전 사항은 다음과 같습니다.<br>
								<p>가. 개인정보를 이전받는 자</p>
								&nbsp;&nbsp;&nbsp;- SITA Information Networking Computing USA
								Inc.
								<p>나. 이전하는 개인정보 항목</p>
								&nbsp;&nbsp;&nbsp;- 탑승자 성명, 생년월일, 성별, 연락처, 이메일 <br>&nbsp;&nbsp;&nbsp;-
								신용카드 결제시 (카드번호, 유효기간, 거래 인증번호), 계좌이체 결제시(거래번호) <br>&nbsp;&nbsp;&nbsp;-
								여권정보 (여권번호, 만료일, 발급처, 국적)
								<p>다. 이전되는 국가, 이전 일시, 이전 방법</p>
								&nbsp;&nbsp;&nbsp;- 미국, 예약완료 시, 공용 네트워크 이용 전송(보안 프로토콜 처리)
								<p>라. 이전받는 자의 개인정보 이용 목적 및 보유, 이용기간</p>
								&nbsp;&nbsp;&nbsp;- 당사 예약시스템 운영 및 예약기록 유지, 개인정보 이전 후 5년 간

							</div>
						</li>


						<li class="limagin">
							<div class="agree_check">
								<p class="warning-message" id="WarningMessage1"
									style="display: none;">홈페이지 이용약관 동의에 체크해 주시기 바랍니다.</p>
								<p class="check">
									<span class="checkbox01 js-checkbox01"> <label
										for="agree4" class="active"><span id="AgreeTitle1">홈페이지
												이용약관 동의 <em class="important">(필수)</em>
										</span> <input type="checkbox" name="agree4" id="agree4"
											class="checkbox"></label>
									</span>
								</p>
							</div>
							<div class="terms_area">

								<small>가. 에어서울은 법령에 근거가 있거나 정부의 관련 방침, 지시 등 예외적인 경우를
									제외하고는 이용자의 사전 동의없이 이용자의 개인정보를 본 지침상의 정보이용 목적의 범위를 넘어 사용하거나
									제3자에게 제공하지 않습니다. <br>
								<br>나. 다만, 회원께서 제휴사 등의 서비스를 이용시 원할한 서비스 제공을 위하여 최소한의 개인정보가
									제공될 수 있으며, 그러한 경우 에어서울은 제공할 정보의 내용 및 목적, 제공받는 자, 보유기간을 사전에
									전자우편이나 서면으로 개별 통지하거나, 홈페이지상 해당 내용을 명시하여 회원 동의를 받고 있습니다.
								</small>


							</div>
						</li>
					</ul>
				</div>
				<div class="allagree">
					<p class="allagree_check">
						<span class="checkbox01 js-checkbox01"> <label
							for="allagree"><span id="AgreeAll">약관에 모두 동의합니다.</span></label>
						<input
							type="checkbox" name="Allagree" id="Allagree" class="checkbox"
							style="position: absolute; ">
						</span>
					</p>
				</div>
			</div>
			
			</form>

			<div class="btn_article">
				<ul>
				<li><button type="submit" id="btnSubmit"
							class="btn-type01-col01" onclick="chk()">확인</button></li>

<!-- 				  	<li><button type="submit" id="btnSubmit" -->
<!-- 							class="btn-type01-col01" onclick="location.href='Join_02.jsp'">확인</button></li> -->
				</ul>
			</div>

		</div>
		
   </div>

	</div>

	
<script type="text/javascript">
        $(document).ready(function(){
		 //전체선택 체크박스 클릭 
		$("#Allagree").on("click",function(){
			 //만약 전체 선택 체크박스가 체크된상태일경우 
			 
			if($("#Allagree").prop("checked")) {
			 //해당화면에 전체 checkbox들을 체크해준다 
//			 alert("전체 선택 클릭");
			$("input[type=checkbox]").prop("checked",true); 
			// 전체선택 체크박스가 해제된 경우 
			} else { 
			//해당화면에 모든 checkbox들의 체크를해제시킨다. 
//			alert("전체 선택 해제");
			$("input[type=checkbox]").prop("checked",false); }
			 	 
 		 });
       });
		 
		function chk(){

			 var agree1 = document.form.agree1.checked;
			 var agree2 = document.form.agree2.checked;
			 var agree3 = document.form.agree3.checked;
			 var agree4 = document.form.agree4.checked;
			 var Allagree = document.form.Allagree.checked;

			 var num = 0;

			 if(agree1 && agree2 && agree3 && agree4 && Allagree == true){
			    num = 1;
			 }
			 
			 if(agree1 && agree2 && agree3 && agree4== 1){
				 document.form.submit();			 
			 }else{
				 alert("약관에 동의하셔야합니다.");
				 return false;	 
			} 
	
        }			 


	</script>
	
