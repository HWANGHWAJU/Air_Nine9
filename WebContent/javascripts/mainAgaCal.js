/*		나이 계산과 출도착 달력		*/

	var jspageIndex = '';
	var jsBookConditionDataObj = new BookConditionDataObject();
	var selectTripType = "";
	var routeAirportJSON = {};
	
	var jsScreenText;
	var jsLangCode = _langCode;
	var jsJsonUrl = '/lang/homepage/booking/Booking.json';
	
	var jsSearchAvailableDayFlag= false;
	var jsSearchHolidayFlag		= false;
	var jsAvailableDayDataJSON	= null;
	var jsHolidayDataJSON		= null;
	var jsNonFlightDataJSON		= null;

	var idx						= 0;						// 0 여정, 1 일정, 2 탑승인원
	var storeIdx				= null;						// booking list 에서
	var aniSpd					= 500;						// 애니메이션 속도
	var aniMotion1				= "easeOutExpo";			// 애니메이션 easing
	var aniMotion2				= "easeInOutExpo";			// 애니메이션 easing
	var H						= null;
	var extraservice			= 5;						// 부가서비스는 step에서 - 일정, 탑승인원, 운임선택, 탑승객정보 선택할수없음
	var payment					= 6;						// 결제 step에서 - 일정, 탑승인원, 운임선택, 탑승객정보, 부가서비스 선택할수없음
	var bookingSideH			= null;
	var scrollTop				= null;
	var minH					= 600 - 80;
	var flag					= true;

	// 나이 계산기 관련
	var currentDateObj			= new Date();
	var ageCalCurrentYear		= Number(currentDateObj.getFullYear());
	var ageCalCurrentMonth		= Number(currentDateObj.getMonth());
	var ageCalCurrentDate		= Number(currentDateObj.getDate());
	
	// Open 날짜 지정
	var Specified_OpenDate = 20161007;
	
	$(document).ready(function(){
		$("#txtDepAirport").attr("readonly", true);
		$("#txtArrAirport").attr("readonly", true);
		jsScreenText = $.cfn_getProgramScreenText(_langCode, jsJsonUrl); // 화면 텍스트 가져오기
		$.cfn_setProgramScreenText(jsScreenText); // 가져온 텍스트 화면에 설정
		
		// 페이지 첫 진입 시 왕복 버튼 클릭
		$("#radRoundTripType").trigger("click");
		$("#ulOneWayDesc").css("display", "none");
		
		// default 날짜 셋팅 출발 날짜는 이틀 뒤, 출발지 도착 날자는 삼일 뒤 
		$("#txtDepBookingDate").val(moment().add('2','days').format('YYYY.MM.DD'));
		$("#txtArrBookingDate").val(moment().add('3','days').format('YYYY.MM.DD'));
		
		// default 인원 셋팅
		$("#txtSelAdtPaxCnt").val($.cfn_setText(jsScreenText, "titleAdt") + " 1").data("value", "1");
		$("#txtSelChdPaxCnt").val($.cfn_setText(jsScreenText, "titleChd") + " 0").data("value", "0");
		$("#txtSelInfPaxCnt").val($.cfn_setText(jsScreenText, "titleInf") + " 0").data("value", "0");
		
		selectTripType = $("input:radio[name=radTripType]:checked").val();
		
		if(selectTripType == 'RT') {
			$("#btnDirectory").html('<span>' + $.cfn_setText(jsScreenText, "FromToRoundTrip") + '</span>');
		} else {
			$("#btnDirectory").html('<span>' + $.cfn_setText(jsScreenText, "FromToOneWay") + '</span>');
		}
		
		// 여정 정보 선택을 위한 지역/공항 정보를 조회한다.
		$.ajax({
			type :"POST",
			url: "/I/" + _langCode + "/searchRoute.do",
			dataType: "json",
			data: {
				tripType : $("[name=radTripType]:checked").val(),
				language : _langCode
			},
			success: function(data) {
				if (data.routeAirport.routeDepAirports) {
					routeAirportJSON = data.routeAirport.routeDepAirports
					
					var depAirportDataObj = {
						txtAirportId : "txtDepAirport",
						divAirportACId : "divDepAirportAC",
						divJourneyLayerId : "divBookingJourneyLayer",
						hidAirport : "hidDepAirport",
						hidCity : "hidDepCity",
						hidArea : "hidDepArea",
						hidValue : "hidDepValue"
					};
					
					$.bookingAirportAutoComplete(depAirportDataObj, routeAirportJSON);
					$.bookingAirportLayer(depAirportDataObj, routeAirportJSON);
				}
			}
		});
		
		// 달력에 구성될 공휴일 정보를 조회한다.
		$.ajax({
			type: "POST",
			url: "/I/" + jsLangCode + "/searchHolidayDateInfo.do",
			dataType: "json",
			data: {
				language : jsLangCode
			},
			success: function(data) {
				if (data.code == "0000" && data.holiday) {
					jsHolidayDataJSON = data.holiday;
					jsSearchHolidayFlag = true;
					
					fn_initCalendar();
				}
			}
		});
		
		// 왕복/편도 라디오 버튼 클릭 시 동작 수행
		$("input:radio[name=radTripType]").on("click", function() {
			selectTripType = this.value;
			var $ulOneWayDesc_id = $("#ulOneWayDesc");
			var $btnDirectory_id = $("#btnDirectory");
			
			if (selectTripType == "RT") {
				$ulOneWayDesc_id.css("display", "none");
				$btnDirectory_id.removeClass("booking-journey-items-diretory-oneway").addClass("booking-journey-items-diretory-roundtrip")
								.html('<span>' + $.cfn_setText(jsScreenText, "FromToRoundTrip") + '</span>');
				$(".booking-date-items-enddate").css("display", "");
			} else if (selectTripType == "OW") {
				$ulOneWayDesc_id.css("display", "");
				$btnDirectory_id.removeClass("booking-journey-items-diretory-roundtrip").addClass("booking-journey-items-diretory-oneway")
								.html('<span>' + $.cfn_setText(jsScreenText, "FromToOneWay") + '</span>');
				$(".booking-date-items-enddate").css("display", "none");
			} else {
				document.certify.action = "/I/" + jsLangCode + "/viewBookingMulti.do";			
				document.certify.submit();
			}
		});
		
		$("#txtDepAirport").on("focus", function() {
			$(".booking-journey-items-button").eq(0).trigger("focus");
		});
		$("#txtDepAirport").on("click", function() {
			$(".booking-journey-items-button").eq(0).trigger("click");
		});
		
		$("#txtArrAirport").on("focus", function() {
			$(".booking-journey-items-button").eq(1).trigger("focus");
		});
		$("#txtArrAirport").on("click", function() {
			$(".booking-journey-items-button").eq(1).trigger("click");
		});
		
		
		
		// 출/도착지 레이어 구성 시 화면 구성
		$(".booking-journey-items-button").on("focus", function() {
			var $this = $(this);
			if (!$this.hasClass("active")) {	// 현재 레이어가 활성화된 상태에서는 수행하지 않는다.
				var $divBookingJourneyLayer_id = $("#divBookingJourneyLayer");
				if ($this.index(".booking-journey-items-button") == 0) {
					$divBookingJourneyLayer_id.find(".hidden-title").text($.cfn_setText(jsScreenText, "msgHiddenTitleRouteLayerDep"));	// 출발지 레이어팝업
					$divBookingJourneyLayer_id.find("div.booking-journey-layer-section-arr").css("display", "none");
					$divBookingJourneyLayer_id.find("div.booking-journey-layer-section-dep").css("display", "");
				} else {
					$divBookingJourneyLayer_id.find(".hidden-title").text($.cfn_setText(jsScreenText, "msgHiddenTitleRouteLayerArr"));	// 도착지 레이어팝업
					$divBookingJourneyLayer_id.find("div.booking-journey-layer-section-dep").css("display", "none");
					$divBookingJourneyLayer_id.find("div.booking-journey-layer-section-arr").css("display", "");
				}
			}
		});
		
		
		
		// 출/도착지 목록 레이어 열기/닫기 시
		$(".booking-journey-items-button").on("click", function() {
			var $spanBookingRouteLayerOpenDep_id	= $('#spanBookingRouteLayerOpenDep');
			var $spanBookingRouteLayerOpenArr_id	= $('#spanBookingRouteLayerOpenArr');
			var $layerCloseBtnName_id				= $('#spanBookingRouteLayerClose');
			
			// 출발지 레이어 활성화/비활성화 시
			if($spanBookingRouteLayerOpenDep_id.parents('.booking-journey-items-select').hasClass('active')) {
				$spanBookingRouteLayerOpenDep_id.text($.cfn_setText(jsScreenText, "spanBookingRouteLayerCloseDep"));
				$layerCloseBtnName_id.text($.cfn_setText(jsScreenText, "spanBookingRouteLayerCloseDep"));
			} else {
				$spanBookingRouteLayerOpenDep_id.text($.cfn_setText(jsScreenText, "spanBookingRouteLayerOpenDep"));
			}
			
			// 도착지 레이어 활성화/비활성화 시
			if($spanBookingRouteLayerOpenArr_id.parents('.booking-journey-items-select').hasClass('active')) {
				$spanBookingRouteLayerOpenArr_id.text($.cfn_setText(jsScreenText, "spanBookingRouteLayerCloseArr"));
				$layerCloseBtnName_id.text($.cfn_setText(jsScreenText, "spanBookingRouteLayerCloseArr"));
			} else {
				$spanBookingRouteLayerOpenArr_id.text($.cfn_setText(jsScreenText, "spanBookingRouteLayerOpenArr"));
			}
		});
		
		
		// 출/도착일 선택 레이어 열기/닫기 시
		$(".booking-date-items-button").on("click", function() {
			var $this								= $(this);
			var $this_children						= $this.children();
			var $dateLayerCloseBtn_id				= $("#spanDateLayerCloseButton");
			var $dateLayerTodayBtn_id				= $("#spanDateLayerTodayButton");
			var $dateLayerTodayBtn_id_parentButton	= $dateLayerTodayBtn_id.parent("button");
			
			// 출도착지가 입력되어있을 경우 처리
			if(document.getElementById("hidDepAirport").value != null 
					&& document.getElementById("hidArrAirport").value != null
					&& document.getElementById("hidDepValue").value != null
					&& document.getElementById("hidArrValue").value) 
			{
				jsBookConditionDataObj.TRIPTYPE = selectTripType;
				jsBookConditionDataObj.segmentDatas = [];
				
				var jsSegmentDataObj = new SegmentDataObject();
				jsSegmentDataObj.departureAirport			= document.getElementById("hidDepAirport").value;
				jsSegmentDataObj.arrivalAirport				= document.getElementById("hidArrAirport").value;
				jsSegmentDataObj.departureAirportName		= document.getElementById("hidDepValue").value;
				jsSegmentDataObj.arrivalAirportName			= document.getElementById("hidArrValue").value;
				jsBookConditionDataObj.segmentDatas.push(jsSegmentDataObj);
				
				if (selectTripType == "RT") {
					var jsSegmentDataObj = new SegmentDataObject();
					jsSegmentDataObj.departureAirport		= document.getElementById("hidArrAirport").value;
					jsSegmentDataObj.arrivalAirport			= document.getElementById("hidDepAirport").value;
					jsSegmentDataObj.departureAirportName	= document.getElementById("hidArrValue").value;
					jsSegmentDataObj.arrivalAirportName		= document.getElementById("hidDepValue").value;
					jsBookConditionDataObj.segmentDatas.push(jsSegmentDataObj);
				}
				
				fn_searchAvailableDayDateInfo(); // 달력에 구성될 출도착 공항에 따른 가능 요일 정보를 조회
				
			} else {
				jsAvailableDayDataJSON				= {};
				jsAvailableDayDataJSON.fromDate		= "20160101";
				jsAvailableDayDataJSON.toDate 		= "20301231";
				jsAvailableDayDataJSON.scheduleDay	= "1111111";
				jsSearchAvailableDayFlag			= true;
				
				fn_initCalendar();
			}
			
			// 출발일 레이어 활성화 시
			if($this.hasClass('active')) {
				$this_children.text($.cfn_setText(jsScreenText, "spanBookingDateLayerCloseDep"));
				if($this.siblings("input").attr("id") == "txtDepBookingDate") {
					$dateLayerCloseBtn_id.text($.cfn_setText(jsScreenText, "spanBookingDateLayerCloseDep"));
					$dateLayerTodayBtn_id_parentButton.attr("title", $.cfn_setText(jsScreenText, "btnDateLayerToday_title") + "\n(" + $.cfn_setText(jsScreenText, "spanDateLayerInfoStart") + ")");
				} else {
					$dateLayerCloseBtn_id.text($.cfn_setText(jsScreenText, "spanBookingDateLayerCloseArr"));
					$dateLayerTodayBtn_id_parentButton.attr("title", $.cfn_setText(jsScreenText, "btnDateLayerToday_title") + "\n(" + $.cfn_setText(jsScreenText, "spanDateLayerInfoEnd") + ")");
				}
			} else {		// 출발일 레이어 비활성화 시
				$this_children.text($.cfn_setText(jsScreenText, "spanBookingDateLayerOpenDep"));
			}
		});

		// 탑승인원 - 성인 레이어 열기/닫기 시
		$("#btnSelAdtPaxCnt").on("click", function() {
			var $this					= $(this);
			var $spanPaxCntLayerAdt_id	= $("#spanPaxCntLayerOpenAdt");
			if($this.hasClass("active")) {
				$spanPaxCntLayerAdt_id.text($.cfn_setText(jsScreenText, "spanPaxCntLayerCloseAdt"));
			} else {
				$spanPaxCntLayerAdt_id.text($.cfn_setText(jsScreenText, "spanPaxCntLayerOpenAdt"));
			}
		});

		// 탑승인원 - 소아 레이어 열기/닫기 시
		$("#btnSelChdPaxCnt").on("click", function() {
			var $this					= $(this);
			var $spanPaxCntLayerChd_id	= $("#spanPaxCntLayerOpenChd");
			if($this.hasClass("active")) {
				$spanPaxCntLayerChd_id.text($.cfn_setText(jsScreenText, "spanPaxCntLayerCloseChd"));
			} else {
				$spanPaxCntLayerChd_id.text($.cfn_setText(jsScreenText, "spanPaxCntLayerOpenChd"));
			}
		});

		// 탑승인원 - 유아 레이어 열기/닫기 시
		$("#btnSelInfPaxCnt").on("click", function() {
			var $this					= $(this);
			var $spanPaxCntLayerInf_id	= $("#spanPaxCntLayerOpenInf");
			if($this.hasClass("active")) {
				$spanPaxCntLayerInf_id.text($.cfn_setText(jsScreenText, "spanPaxCntLayerCloseInf"));
			} else {
				$spanPaxCntLayerInf_id.text($.cfn_setText(jsScreenText, "spanPaxCntLayerOpenInf"));
			}
		});
		
		// 나이 계산기 레이어 열기/닫기 시
		$("#btnAgeCalculator").on("click", function() {
			var $this = $(this);
			
			if($this.hasClass("active")) {
				$this.attr("title", $.cfn_setText(jsScreenText, "btnAgeCalculatorClose"));
			} else {
				$this.attr("title", $.cfn_setText(jsScreenText, "btnAgeCalculatorOpen"));
			}
			
			// 연도 기본 구성
			$("#selAgeCalYear").val("")
			.change()
			.html('<option value="" selected="selected" class="ex">' + $.cfn_setText(jsScreenText, "optAgeCalYearDefault") + '</option>');

			// 연도 최초 구성
			for (var i = ageCalCurrentYear, j = 0; j < 13; i--, j++) {
				$("#selAgeCalYear option:last").after('<option value="' + i + '">' + i + '</option>');
			}
		});
				

		
		// "계산" 버튼 클릭 시
		$("#btnAgeCal").on("click", function() {
			var $pAgeCalMsg_id		= $("#pAgeCalMsg");			// 계산 결과 Msg
			var $selAgeCalYear_id	= $("#selAgeCalYear");		// SelectBox(년)
			var $selAgeCalMonth_id	= $("#selAgeCalMonth");		// SelectBox(월)
			var $selAgeCalDate_id	= $("#selAgeCalDate");		// SelectBox(일)
			// 초기화
			$pAgeCalMsg_id.html("").removeClass("pointColor01");
			
			if ($selAgeCalYear_id.val() == "" || $selAgeCalMonth_id.val() == "" || $selAgeCalDate_id.val() == "") {
				$pAgeCalMsg_id.html($.cfn_setText(jsScreenText, "msgAgeCalInputDate")).addClass("pointColor01");
				return false;
			}
			
			var departureDateTime = moment($("#txtDepBookingDate").val(),"YYYYMMDDHHmmss");
			var momentDepDate = moment(departureDateTime, "YYYYMMDDHHmmss");
			var momentBirthDate = moment($selAgeCalYear_id.val() + $.cfn_makeFPading($selAgeCalMonth_id.val(), 2, "0")
									+ $.cfn_makeFPading($selAgeCalDate_id.val(), 2, "0"), "YYYYMMDD");
			var age = momentDepDate.diff(momentBirthDate, 'years');
			
			if (age < 2) {
				// 유아인 경우 - 가는날 YYYY.MM.DD 기준으로 유아 입니다.
				$pAgeCalMsg_id.html($.cfn_getMessageByScreenWithParam(jsScreenText, "msgAgeCalInf", [momentDepDate.format("YYYY[" + $.cfn_setText(jsScreenText, "optAgeCalYearDefault") + "] MM[" + $.cfn_setText(jsScreenText, "optAgeCalMonthDefault") + "] DD[" + $.cfn_setText(jsScreenText, "optAgeCalDateDefault") + "]")]));	// 다국어 처리에 따른 날짜 포맷 확인 필요!
			} else if (age >= 2 && age < 12) {
				// 소아인 경우 - 가는날 YYYY.MM.DD 기준으로 소아 입니다.
				$pAgeCalMsg_id.html($.cfn_getMessageByScreenWithParam(jsScreenText, "msgAgeCalChd", [momentDepDate.format("YYYY[" + $.cfn_setText(jsScreenText, "optAgeCalYearDefault") + "] MM[" + $.cfn_setText(jsScreenText, "optAgeCalMonthDefault") + "] DD[" + $.cfn_setText(jsScreenText, "optAgeCalDateDefault") + "]")]));	// 다국어 처리에 따른 날짜 포맷 확인 필요!
			} else {
				// 성인인 경우 - 가는날 YYYY.MM.DD 기준으로 성인 입니다.
				$pAgeCalMsg_id.html($.cfn_getMessageByScreenWithParam(jsScreenText, "msgAgeCalAdt", [momentDepDate.format("YYYY[" + $.cfn_setText(jsScreenText, "optAgeCalYearDefault") + "] MM[" + $.cfn_setText(jsScreenText, "optAgeCalMonthDefault") + "] DD[" + $.cfn_setText(jsScreenText, "optAgeCalDateDefault") + "]")]));	// 다국어 처리에 따른 날짜 포맷 확인 필요!
			}
		});
		
		// 인원 화면 셋팅
		for(var i=0; i<3; i++){
			var passengerHTML = '<ul>';
			for(var j=0; j<=9; j++){
				// adult는 무조건 1명 이상
				if(i == 0 && j < 1) {
					continue;
				}
				// infant는 7명까지
				if(i == 2 && j > 7) {
					break;
				}
				
				if(i == 0){
					passengerHTML += '<li name="Pax_' + j + '"><button type="button" value="'+ j +'"><span>'+ $.cfn_setText(jsScreenText, "titleAdt") + ' ' + j + '</span></button></li>';
				} else if(i == 1){
					passengerHTML += '<li name="Pax_' + j + '"><button type="button" value="'+ j +'"><span>'+ $.cfn_setText(jsScreenText, "titleChd") + ' ' + j + '</span></button></li>';
				} else if(i == 2){
					passengerHTML += '<li name="Pax_' + j + '"><button type="button" value="'+ j +'"><span>'+ $.cfn_setText(jsScreenText, "titleInf") + ' ' + j + '</span></button></li>';
				}
			}
			passengerHTML += '</ul>';
			
			if(i == 0){
				$("#bookingPassengerLayerAdult").html(passengerHTML);
			} else if(i == 1){
				$("#bookingPassengerLayerChild").html(passengerHTML);
			} else if(i == 2){
				$("#bookingPassengerLayerLapinfant").html(passengerHTML);
			}
		}
		
		// 달력에 구성될 출도착 공항에 따른 가능 요일 정보를 조회
		function fn_searchAvailableDayDateInfo() {
			$.ajax({
				type: "POST",
				url: "/I/" + jsLangCode + "/searchAvailableDayDateInfo.do",
				dataType: "json",
				data: {
					depAirport : jsBookConditionDataObj.segmentDatas[0].departureAirport,
					arrAirport : jsBookConditionDataObj.segmentDatas[0].arrivalAirport
				},
				success: function(data) {
					if (data.code == "0000" && data.availableDay) {
						jsAvailableDayDataJSON		= data.availableDay;
						jsSearchAvailableDayFlag	= true;
						
						fn_initCalendar();
					}
				}
			});
		}
		
		// 달력 초기화
		function fn_initCalendar() {
			if (jsSearchAvailableDayFlag && jsSearchHolidayFlag) {
				$.bookingDateCal({
					dateLayer	: "#bookingDatePicker",
					avDay		: jsAvailableDayDataJSON,
					holiday		: jsHolidayDataJSON
				});
				
				// Open 날짜 지정
				if(Specified_OpenDate != null && Number(moment().format("YYYYMMDD")) < Specified_OpenDate) {
					$("#bookingDatePicker").datepicker('option', 'minDate', moment(String(Specified_OpenDate), "YYYYMMDD").toDate());
				}
				
				if (selectTripType == "OW") {
					$(".booking-date-items-enddate").css("display", "none");
					//$(".booking-date").css("width", "490px");
					
					setTimeout(function() {
						var $txtDepBookingDate_id = $("#txtDepBookingDate");
						if ($txtDepBookingDate_id.val() == "") {
							if(Specified_OpenDate != null && Number(moment().format("YYYYMMDD")) < Specified_OpenDate) {
								$txtDepBookingDate_id.val(moment($("#bookingDateLayer td").not(".ui-state-disabled").eq(0).attr("data-date"), "YYYY.MM.DD").format('YYYY.MM.DD'));
							} else {
								$txtDepBookingDate_id.val(moment($("#bookingDateLayer td").not(".ui-state-disabled").eq(1).attr("data-date"), "YYYY.MM.DD").format('YYYY.MM.DD'));
							}
						}
					}, 100);
					
					setTimeout(function() {
						$.bookingDateCal({
							dateLayer		: "#bookingDatePicker",
							dateLayerTitle	: $.cfn_setText(jsScreenText, "subTitleDateLayer"),
							range			: ["#txtDepBookingDate"],
							avDay			: jsAvailableDayDataJSON,
							holiday			: jsHolidayDataJSON
						});
					}, 150);
				} else if (selectTripType == "RT") {
					$(".booking-date-items-enddate").css("display", "");
					setTimeout(function() {
						var $txtDepBookingDate_id = $("#txtDepBookingDate");
						var $txtArrBookingDate_id = $("#txtArrBookingDate");
						if ($txtDepBookingDate_id.val() == "" && $txtArrBookingDate_id.val() == "") {
							if(Specified_OpenDate != null && Number(moment().format("YYYYMMDD")) < Specified_OpenDate) {
								$txtDepBookingDate_id.val(moment($("#bookingDateLayer td").not(".ui-state-disabled").eq(0).attr("data-date"), "YYYY.MM.DD").format('YYYY.MM.DD'));
								$txtArrBookingDate_id.val(moment($("#bookingDateLayer td").not(".ui-state-disabled").eq(1).attr("data-date"), "YYYY.MM.DD").format('YYYY.MM.DD'));
							} else {
								$txtDepBookingDate_id.val(moment($("#bookingDateLayer td").not(".ui-state-disabled").eq(1).attr("data-date"), "YYYY.MM.DD").format('YYYY.MM.DD'));
								$txtArrBookingDate_id.val(moment($("#bookingDateLayer td").not(".ui-state-disabled").eq(2).attr("data-date"), "YYYY.MM.DD").format('YYYY.MM.DD'));
							}
						}
					}, 100);
					
					setTimeout(function() {
						$.bookingDateCal({
							dateLayer		: "#bookingDatePicker",
							dateLayerTitle	: $.cfn_setText(jsScreenText, "subTitleDateLayer"),
							range			: ["#txtDepBookingDate", "#txtArrBookingDate"],
							avDay			: jsAvailableDayDataJSON,
							holiday			: jsHolidayDataJSON
						});
					}, 150);
				}
				
				// 출발일 캘린더 버튼 클릭 시
				$("#spanBookingDateLayerOpenDep").parent().click(function() {
					var $bookingDatePicker_id = $("#bookingDatePicker");

					// Open 날짜 지정
					if(Specified_OpenDate != null && Number(moment().format("YYYYMMDD")) < Specified_OpenDate) {
						$bookingDatePicker_id.datepicker('option', 'minDate', moment(String(Specified_OpenDate), "YYYYMMDD").toDate());
					} else {
						$bookingDatePicker_id.datepicker('option', 'minDate', moment().toDate());			// 출발일 선택 시 minDate 설정
					}

					// 도착일 캘린더 버튼 클릭 시(출발일 캘린더 활성화 상태)
					if($("#spanBookingDateLayerOpenArr").parent().hasClass("active")) {
						setTimeout(function() {
							$("span.active button span").trigger("click");		// 캘린더 레이어 닫기
						}, 50);
					} else {
						if(selectTripType == "RT") {
							if(!($("#spanBookingDateLayerOpenDep").parent().hasClass("active") || $("#spanBookingDateLayerOpenArr").parent().hasClass("active"))) {
								if(Number(document.getElementById("txtDepBookingDate").value.replace(".", "")) > Number(document.getElementById("txtArrBookingDate").value.replace(".", ""))) {					// 출발일보다 도착일이 앞서 있는 경우
									// 도착일을 출발일과 동일한 날짜로 자동 세팅
									document.getElementById("txtArrBookingDate").value = document.getElementById("txtDepBookingDate").value;
								}
							} else {
								if($("[data-range]").length != 0) {
									if(Number(document.getElementById("txtDepBookingDate").value.replace(".", "")) > Number(document.getElementById("txtArrBookingDate").value.replace(".", ""))) {				// 출발일보다 도착일이 앞서 있는 경우
										$(".layer-close").trigger("click");
									} else {
										$('[data-date="' + moment(document.getElementById("txtArrBookingDate").value, "YYYY.MM.DD").format("YYYY.MM.DD") + '"]').trigger("click");
										
										if($('[data-date="' + moment(document.getElementById("txtArrBookingDate").value, "YYYY.MM.DD").format("YYYY.MM.DD") + '"]').hasClass("ui-state-disabled")) {
											// 출발일 선택 시 도착일 Focus
									        var $booking_items_select_start	= $('.booking-date-items-startdate > span.booking-items-select');
									        var $booking_items_select_end	= $('.booking-date-items-enddate > span.booking-items-select');
									        $booking_items_select_start.addClass('off').removeClass('active')
									        		.children("button").addClass('off').removeClass('active');
									        $booking_items_select_end.addClass('active').removeClass('off')
									        	  .children("button").addClass('active').removeClass('off');
										}
									}
								}
							}
						}
					}
				});

				// 도착일 캘린더 버튼 클릭 시
				$("#spanBookingDateLayerOpenArr").parent().click(function() {
					var $bookingDatePicker_id				= $("#bookingDatePicker");
					var $spanBookingDateLayerOpenDep_parent	= $("#spanBookingDateLayerOpenDep").parent();
					var $spanBookingDateLayerOpenArr_parent	= $("#spanBookingDateLayerOpenArr").parent();
					
					// 출발일 캘린더 버튼 클릭 시(도착일 캘린더 활성화 상태)
					if(!$spanBookingDateLayerOpenDep_parent.hasClass("active")) {
						if(selectTripType == "RT") {
							if(!($spanBookingDateLayerOpenDep_parent.hasClass("active") || $spanBookingDateLayerOpenArr_parent.hasClass("active"))) {
								if(Number(document.getElementById("txtDepBookingDate").value.replace(".", "")) > Number(document.getElementById("txtArrBookingDate").value.replace(".", ""))) {				// 출발일보다 도착일이 앞서 있는 경우
									$(".layer-close").trigger("click");
								}
								$('[data-date="' + moment(document.getElementById("txtArrBookingDate").value, "YYYY.MM.DD").format("YYYY.MM.DD") + '"]').trigger("click");
								
							} else {
								if($("[data-range]").length == 0) {
									$bookingDatePicker_id.datepicker('option', 'minDate', $("#txtDepBookingDate").val());			// 출발일 선택 시 minDate 설정
									$bookingDatePicker_id.attr("data-range", 1);
								}
							}
						}
					}
				});

				// 달력 레이어 닫기버튼 클릭 시
				$(".layer-close").click(function() {
					if(selectTripType == "RT") {
						if($("[data-range]").length != 0) {
							if(Number(document.getElementById("txtDepBookingDate").value.replace(".", "")) > Number(document.getElementById("txtArrBookingDate").value.replace(".", ""))) {				// 출발일보다 도착일이 앞서 있는 경우
								// 도착일을 출발일과 동일한 날짜로 자동 세팅
								document.getElementById("txtArrBookingDate").value = document.getElementById("txtDepBookingDate").value;
							}
							$('[data-date="' + moment(document.getElementById("txtArrBookingDate").value, "YYYY.MM.DD").format("YYYY.MM.DD") + '"]').trigger("click");
						}
					}
				});
			}
		}
		
		// 연도 변경 시 월 입력 재구성
		//function fn_ChangeAgeCalYear() {
		$("#selAgeCalYear").on("change",function(){
			var $selAgeCalYear_id	= $("#selAgeCalYear");
			
			$("#selAgeCalMonth").val("")
								.change()
								.html('<option value="" selected="selected" class="ex">' + $.cfn_setText(jsScreenText, "optAgeCalMonthDefault") + '</option>');
			
			if ($selAgeCalYear_id.val() != "") {
				var consistMonth;
				if ($selAgeCalYear_id.val() == ageCalCurrentYear) {
					consistMonth = ageCalCurrentMonth;
				} else {
					consistMonth = 11;
				}
				for (var i = 0; i <= consistMonth; i++) {
					$("#selAgeCalMonth option:last").after('<option value="' + (i+1) + '">' + (i+1) + '</option>');
				}
			}
		});
		
		// 월 변경 시 일자 입력 재구성
		//function fn_ChangeAgeCalMonth() {
		$("#selAgeCalMonth").on("change",function(){
			var $selAgeCalYear_id	= $("#selAgeCalYear");
			var $selAgeCalMonth_id	= $("#selAgeCalMonth");
			
			$("#selAgeCalDate").val("")
							   .change()
							   .html('<option value="" selected="selected" class="ex">' + $.cfn_setText(jsScreenText, "optAgeCalDateDefault") + '</option>');
			
			if ($selAgeCalMonth_id.val() != "") {
				var consistDate;
				if ($selAgeCalYear_id.val() == ageCalCurrentYear && $selAgeCalMonth_id.val() == (ageCalCurrentMonth+1)) {
					consistDate = ageCalCurrentDate;
				} else {
					consistDate = moment($selAgeCalYear_id.val() + $.cfn_makeFPading($selAgeCalMonth_id.val(), 2, "0"), "YYYYMM").endOf('month').format('DD');
				}
				for (var i = 0; i < consistDate; i++) {
					$("#selAgeCalDate option:last").after('<option value="' + (i+1) + '">' + (i+1) + '</option>');
				}
			}
		});
		
		// 예매하기 버튼 눌렀을 때 Action
		$("#goItinerary").on("click", function(){
			
			// 출도착지 입력 체크
			if($("#hidDepAirport").val() == '') {
				alert($.cfn_setText(jsScreenText, "msgDepAirportNotSelected"));
				$("#txtDepAirport").focus();
				
				return;
			}
			
			if($("#hidArrAirport").val() == '') {
				alert($.cfn_setText(jsScreenText, "msgArrAirportNotSelected"));
				$("#txtArrAirport").focus();
				
				return;
			}
			
			// 출도착지 정보 입력
			jsBookConditionDataObj.TRIPTYPE = selectTripType;
			jsBookConditionDataObj.segmentDatas = [];
			
			var jsSegmentDataObj = new SegmentDataObject();
			jsSegmentDataObj.departureAirport			= document.getElementById("hidDepAirport").value;
			jsSegmentDataObj.arrivalAirport				= document.getElementById("hidArrAirport").value;
			jsSegmentDataObj.departureAirportName		= document.getElementById("hidDepValue").value;
			jsSegmentDataObj.arrivalAirportName			= document.getElementById("hidArrValue").value;
			jsBookConditionDataObj.segmentDatas.push(jsSegmentDataObj);
			
			if (selectTripType == "RT") {
				var jsSegmentDataObj = new SegmentDataObject();
				jsSegmentDataObj.departureAirport		= document.getElementById("hidArrAirport").value;
				jsSegmentDataObj.arrivalAirport			= document.getElementById("hidDepAirport").value;
				jsSegmentDataObj.departureAirportName	= document.getElementById("hidArrValue").value;
				jsSegmentDataObj.arrivalAirportName		= document.getElementById("hidDepValue").value;
				jsBookConditionDataObj.segmentDatas.push(jsSegmentDataObj);
			}
			
			// 출도착일 체크
			var serverDateTime		= 20170707171210;	// 현재 서버 시간
			
			if($("#bookingDateLayer:visible").length > 0) {
				if(selectTripType == "RT" && (Number(document.getElementById("txtDepBookingDate").value.replace(".", "")) > Number(document.getElementById("txtArrBookingDate").value.replace(".", "")))) {			// 출발일보다 도착일이 앞서 있는 경우
					// 도착일을 출발일과 동일한 날짜로 자동 세팅
					setTimeout(function() {
						$('[data-date="' + moment(document.getElementById("txtDepBookingDate").value, "YYYY.MM.DD").format("YYYY.MM.DD") + '"]').trigger("click");
					}, 100);
				}
			}
			
			setTimeout(function() {
				jsBookConditionDataObj.segmentDatas[0].departureDateTime = document.getElementById("txtDepBookingDate").value.replace(/[.]/g, "") + "000000";
				if (selectTripType == "RT") {
					jsBookConditionDataObj.segmentDatas[1].departureDateTime = document.getElementById("txtArrBookingDate").value.replace(/[.]/g, "") + "000000";
				}
				
				// 비운항 노선 검색하여 예약 진행 불가 처리 - 20170117 JS
				var depDate = document.getElementById("txtDepBookingDate").value.replace(/[.]/g, "");
				var arrDate = "";
				var depAirport = $("#hidDepAirport").val();
				var arrAirport = $("#hidArrAirport").val();
				var depCity = $("#hidDepValue").val();
					depCity = depCity.substring(0, depCity.length-5);
				var arrCity = $("#hidArrValue").val();
					arrCity = arrCity.substring(0, arrCity.length-5);
				
				if (selectTripType == "RT") {
					arrDate = document.getElementById("txtArrBookingDate").value.replace(/[.]/g, "");
					
				}
				
				$.ajax({
					type: "POST",
					url: "/I/" + jsLangCode + "/searchNonFlightInfo.do",
					dataType: "json",
					data: {
						depDate 	: depDate,
						arrDate		: arrDate,
						depAirport	: depAirport,
						arrAirport	: arrAirport
					},
					success: function(data) {
						
						jsNonFlightDataJSON = data.nonFlight;
						
						// 비운항 노선에 해당하는 경우 예약 진행 불가
						if (jsNonFlightDataJSON.length > 0) {
							nonFlightFlag = true;
							
							$.each(jsNonFlightDataJSON, function(index, val) {
								var fromDate = moment(val.FROM_DATE, "YYYYMMDD").format("YYYY.MM.DD");  // 출발시각
								var toDate = moment(val.TO_DATE, "YYYYMMDD").format("YYYY.MM.DD");;
								var dueDate = moment(val.DUE_DATE, "YYYYMMDD").format("YYYY.MM.DD");;
								var airport = val.AIRPORT;
								
								if(airport == depAirport) {
									airport = depCity;
								} else if (airport == arrAirport){
									airport = arrCity;
								}
								
								//%1 노선은 %2일부터 재운항 예정입니다.\n※ 인천-%1 노선 비운항 기간: %3~%4
								alert($.cfn_getMessageByScreenWithParam(jsScreenText, "msgNoneOperationTOY", [airport, dueDate, fromDate, toDate])); 
								
								return false;
							});
						}
					}
				});
			}, 105);
			
			// 탑승인원 정보 입력 처리
			jsBookConditionDataObj.segmentDatas[0].departureDateTime = $("#txtDepBookingDate").val().replace(/[.]/g, "") + "000000";
			jsBookConditionDataObj.segmentDatas[0].segmentNo = 1;
			
			if (selectTripType == "RT") {
				jsBookConditionDataObj.segmentDatas[1].departureDateTime = $("#txtArrBookingDate").val().replace(/[.]/g, "") + "000000";
				jsBookConditionDataObj.segmentDatas[1].segmentNo = 2;
			}
			
			var adtPaxCnt = Number($("#txtSelAdtPaxCnt").data("value"));
			var chdPaxCnt = Number($("#txtSelChdPaxCnt").data("value"));
			var infPaxCnt = Number($("#txtSelInfPaxCnt").data("value"));
			
			if (adtPaxCnt < infPaxCnt) {
				alert($.cfn_setText(jsScreenText, "msgInfMoreThanAdt"));	// 유아가 동반 성인보다 많을 수 없습니다.
				$("#txtSelInfPaxCnt").focus();
				
				return false;
			}
			
			if ((adtPaxCnt + chdPaxCnt) > 9) {
				alert($.cfn_setText(jsScreenText, "msgPaxCntLimit"));	// 예약인원은 성인, 소아를 포함하여 9명을 초과할 수 없습니다.
				$("#txtSelAdtPaxCnt").focus();
				
				return false;
			}
			
			// 조회 조건 객체에 탑승인원 정보를 추가한다.
			var setPaxNo = 1;
			
			jsBookConditionDataObj.passengerDatas = [];
			
			for (var i = 0; i < adtPaxCnt; i++, setPaxNo++) {
				var jsAdtPassengerData = new PassengerDataObject();
				jsAdtPassengerData.passengerNo = setPaxNo;
				jsAdtPassengerData.paxType = "ADT";
				jsBookConditionDataObj.passengerDatas.push(jsAdtPassengerData);
			}
			
			// 소아 탑승객의 수가 1명 이상인 경우 소아 탑승객 정보를 설정한다.
			if (Number($("#txtSelChdPaxCnt").data("value")) > 0) {
				for (var i = 0; i < chdPaxCnt; i++, setPaxNo++) {
					var jsChdPassengerData = new PassengerDataObject();
					jsChdPassengerData.passengerNo = setPaxNo;
					jsChdPassengerData.paxType = "CHD";
					jsBookConditionDataObj.passengerDatas.push(jsChdPassengerData);
				}
			}
			
			// 유아 탑승객의 수가 1명 이상인 경우 유아 탑승객 정보를 설정한다.
			if (Number($("#txtSelInfPaxCnt").data("value")) > 0) {
				for (var i = 0; i < infPaxCnt; i++, setPaxNo++) {
					var jsInfPassengerData = new PassengerDataObject();
					jsInfPassengerData.passengerNo = setPaxNo;
					jsInfPassengerData.paxType = "INF";
					jsBookConditionDataObj.passengerDatas.push(jsInfPassengerData);
				}
			}
			
			jsBookConditionDataObj.segmentDatas[0].seatCount = adtPaxCnt+chdPaxCnt;
			jsBookConditionDataObj.segmentDatas[0].segmentNo = 1;
			if (jsBookConditionDataObj.TRIPTYPE == "RT") {					
				jsBookConditionDataObj.segmentDatas[1].seatCount = adtPaxCnt+chdPaxCnt;
				jsBookConditionDataObj.segmentDatas[1].segmentNo = 2;
			}
			
			// 첫번째 여정 출발지의 대구간을 기준으로 USE_CURRENCY 세팅
			if($('#hidDepArea').val() == 'Korea') {						// 한국발
				jsBookConditionDataObj.USE_CURRENCY = 'KRW';
			} else if($('#hidDepArea').val() == 'Japan') {				// 일본발
				jsBookConditionDataObj.USE_CURRENCY = 'JPY';
			} else if($('#hidDepArea').val() == 'Southeast Asia') {		// 동남아시아발
				jsBookConditionDataObj.USE_CURRENCY = 'KRW';
			} else if($('#hidDepArea').val() == 'China') {				// 중국발
				jsBookConditionDataObj.USE_CURRENCY = 'CNY';
			}
			
			jsBookConditionDataObj.LANGUAGE_CODE = jsLangCode;
			
			//cfn_changeBookingStep('4', jsBookConditionDataObj);			// Booking Step 세팅
			document.availInfoForm.hidBookConditionData.value = JSON.stringify(jsBookConditionDataObj);
			document.availInfoForm.action = '/I/' + jsLangCode + '/viewAvail.do';
			document.availInfoForm.submit();
		});
		
	});
