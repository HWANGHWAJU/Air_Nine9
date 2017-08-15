

function generateUUID() {
	var d = new Date().getTime();
	var uuid = 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function(c) {
		var r = (d + Math.random()*16)%16 | 0;
		d = Math.floor(d/16);
		return (c=='x' ? r : (r&0x7|0x8)).toString(16);
	});
	return uuid;
}


(function($) {
	// Custom autocomplete instance.
    $.widget( "hl.autocomplete", $.ui.autocomplete, {
        // Which class get's applied to matched text in the menu items.
        options: {
            highlightClass: "pointColor01"
        },
        _renderItem: function( ul, item ) {
            // Replace the matched text with a custom span. This
            // span uses the class found in the "highlightClass" option.
            var re = new RegExp( "(" + this.term + ")", "gi" ),
                cls = this.options.highlightClass,
                template = "<em class='" + cls + "'>$1</em>",
                label = item.label.replace( re, template ),
                $li = $( "<li/>" ).appendTo( ul );
            
            // Create and return the custom menu item content.
            $( "<a/>" ).attr( "href", "#" )
                       .html( label )
                       .appendTo( $li );
            
            return $li;
        }
    });

	/*
	 * 달력 구성 JS
	 */
    /*$.datepicker.setDefaults({
        dateFormat         : dateFormat2,
        isRTL              : false,
        minDate            : 0,
        maxDate            : 330, // 현재 날짜로 부터 예약 가능일자 [ 현재 날짜 ~ 330일 ]
        inline             : true
    });*/
	
	$.datepicker.setDefaults({
		monthNames : ['01', '02', '03', '04', '05', '06', '07', '08', '09', '10', '11', '12'],
		dateFormat : 'yy.mm.dd',
		numberOfMonths: 2,
		showMonthAfterYear : true
	});

    /* 가는편/오는편의 취항요일 Default - 모든요일  */
    var enableWeeks  = "[0,1,2,3,4,5,6]";   //가는편
    var enableWeeks2 = "[0,1,2,3,4,5,6]";   // 오는편
    var tempWeek = "";
    var tempWeek2 = "";

    var fromFltDate = "";
    var toFltDate = "";
    var blockWeek = "";
    var fromFltDate2 = "";
    var toFltDate2 = "";
    var blockWeek2 = "";

    var itinObj1;
    var itinObj2;

	$.fn.extend(jQuery, {
		bookingAirportAutoComplete : function(airportDataObj, sourceData) {
			// 이전에 생성된 autocomplete destroy
			if ($("#" + airportDataObj.txtAirportId).autocomplete("instance") != undefined && !$("#" + airportDataObj.divAirportACId).is(":empty")) {
				$("#" + airportDataObj.txtAirportId).autocomplete("destroy");
			}
			
			$("#" + airportDataObj.txtAirportId).autocomplete({
				appendTo : "#" + airportDataObj.divAirportACId,
				autoFocus : true,
				minLength : 1,
				position : {
					at : 'left-2 bottom'
				},
				source : sourceData,
				close : function() {
					$(this).removeClass("ui-corner-top").addClass("ui-corner-all");
				},
				open : function() {
					$(this).removeClass("ui-corner-all").addClass("ui-corner-top");
				},
				select : function(e, ui) {
					if (ui.item) {
						$("#" + airportDataObj.hidAirport).val(ui.item.airportCode);
						$("#" + airportDataObj.hidCity).val(ui.item.cityCode);
						$("#" + airportDataObj.hidArea).val(ui.item.area);
						$("#" + airportDataObj.hidValue).val(ui.item.value);
						
						if (airportDataObj.txtAirportId.indexOf("Dep") != -1) {
							// 출발 공항 라벨에 선택된 출발 공항 정보 구성
							$("div.booking-journey-layer-section-dep li.from").removeClass("from").children("button").removeAttr("title");
							$("div.booking-journey-layer-section-dep button").each(function() {
								if (ui.item.airportCode == $(this).attr("airport")) {
									$(this).parent().addClass("from");
									$(this).attr("title", $.cfn_setText($.cfn_getProgramScreenText(jsLangCode, '/lang/mobile/layer/AirportSelect.json'), "msgDepartureSelected"));
								}
							});
							
							var routeArrAirportDatasJSON = ui.item.routeArrAirportDatas;
							
							var arrAirportDataObj = {
								txtAirportId : "txtArrAirport",
								divAirportACId : "divArrAirportAC",
								divJourneyLayerId : "divBookingJourneyLayer",
								hidAirport : "hidArrAirport",
								hidCity : "hidArrCity",
								hidArea : "hidArrArea",
								hidValue : "hidArrValue"
							};
							
							// 도착공항 정보 초기화
							$("#" + arrAirportDataObj.txtAirportId).val("");
							$("#" + arrAirportDataObj.hidAirport).val("");
							$("#" + arrAirportDataObj.hidCity).val("");
							$("#" + arrAirportDataObj.hidArea).val("");
							$("#" + arrAirportDataObj.hidValue).val("");
							
							$.bookingAirportAutoComplete(arrAirportDataObj, routeArrAirportDatasJSON);
							$.bookingAirportLayer(arrAirportDataObj, routeArrAirportDatasJSON);
						} else {
							// 도착 공항 라벨에 선택된 출발 공항 정보 구성
							$("div.booking-journey-layer-section-arr li.to").removeClass("to").children("button").removeAttr("title");
							$("div.booking-journey-layer-section-arr button").each(function() {
								if (ui.item.airportCode == $(this).attr("airport")) {
									$(this).parent().addClass("to");
									$(this).attr("title", $.cfn_setText($.cfn_getProgramScreenText(jsLangCode, '/lang/mobile/layer/AirportSelect.json'), "msgArrivalSelected"));
								}
							});
						}
						
						$(this).blur();
						$("#" + airportDataObj.txtAirportId).focus();
					}
				}
			}).focus(function(e) {
//				if (!$(this).prop("readonly")) {
//					$(this).val("");
//				}
//				$("div.js-radioLayer01-wrap button.active").trigger("click");
			}).keyup(function(e) {
				e.preventDefault();
				if (e.which ==  27) { // ESC Key
					$(this).val("");
				} else if (e.which == 13) {	// Enter Key
					//$(this).autocomplete("search");
				}
			});
			
			// 출발공항의 focus가 변경되는 경우 : 올바른 공항명을 입력하지 않은 경우 초기화한다.
			$('#txtDepAirport').on('blur', function(evt) {
				$('#txtDepAirport').val( $("#hidDepValue").val() );
			});
			
			// 도착공항의 focus가 변경되는 경우 : 올바른 공항명을 입력하지 않은 경우 초기화한다.
			$('#txtArrAirport').on('blur', function(evt) {
				$('#txtArrAirport').val( $("#hidArrValue").val() );
			});
		},
		
		bookingAirportLayer : function(airportDataObj, sourceData) {
			var addClass = "";
			if ( airportDataObj.txtAirportId.indexOf("Dep") != -1 ) {
				addClass = "booking-journey-layer-section-dep";
			} else {
				addClass = "booking-journey-layer-section-arr";
			}
			
			// 기존에 구성된 지역/공항 정보 제거
			$("#" + airportDataObj.divJourneyLayerId + " div." + addClass).off("click").remove();
			
			var areaArray = [];
			for (var i=0; i < sourceData.length; i++) {
				if ( $.ArrayUtil.indexOf(areaArray, sourceData[i].area, function (a, b) { return a.area == b; }) != -1 ) {
					for (var j=0; j < areaArray.length; j++) {
						if (areaArray[j].area == sourceData[i].area) {
							var airportObj = {
								airport : sourceData[i].airportCode,
								airportName : sourceData[i].airportName,
								city : sourceData[i].cityCode,
								cityName : sourceData[i].cityName,
								value : sourceData[i].value
							};
							
							areaArray[j].airportList.push(airportObj);
							break;
						}
					}
					
				} else {
					var areaAirportObj = {
						area : sourceData[i].area,
						areaName : sourceData[i].areaName,
						airportList : [{
							airport : sourceData[i].airportCode,
							airportName : sourceData[i].airportName,
							city : sourceData[i].cityCode,
							cityName : sourceData[i].cityName,
							value : sourceData[i].value
						}]
					};
					
					areaArray.push(areaAirportObj);
				}
			}
			
			var html = "";
			for (var i=0; i < areaArray.length; i++) {
				html +=	'<div class="booking-journey-layer-section ' + addClass + '">' + "\n" +
							'<h3 class="booking-journey-layer-title" area="' + areaArray[i].area + '">' + areaArray[i].areaName + '</h3>' + "\n" +
							'<ul class="booking-journey-layer-lists">' + "\n";
				for (var j=0; j < areaArray[i].airportList.length; j++) {
					html +=		'<li><button type="button" city="' + areaArray[i].airportList[j].city + '" airport="' + areaArray[i].airportList[j].airport + '">' + "\n" +
									'<span>' + areaArray[i].airportList[j].value + '</span></button></li>' + "\n";
				}
				html +=		'</ul>' + "\n" +
						'</div>';
			}
			
			$("#" + airportDataObj.divJourneyLayerId + " .hidden-title").after(html);
			
			// 레이어에 구성된 출/도착 공항 정보 선택 시 동작 설정
			$("#divBookingJourneyLayer div." + addClass + " button").on("click", function() {
				if ($(this).parents(".booking-journey-layer-section").hasClass("booking-journey-layer-section-dep")) {
					// 출발 공항 선택 시
					$("#" + airportDataObj.txtAirportId).val($(this).children("span").text());
					$("#" + airportDataObj.hidAirport).val($(this).attr("airport"));
					$("#" + airportDataObj.hidCity).val($(this).attr("city"));
					$("#" + airportDataObj.hidArea).val($(this).parents('ul').siblings("h3").attr("area"));
					$("#" + airportDataObj.hidValue).val($(this).children("span").text());
					
					$("div.booking-journey-layer-section-dep li.from").removeClass("from").children("button").removeAttr("title");
					$(this).parent().addClass("from");
					$(this).attr("title", $.cfn_setText($.cfn_getProgramScreenText(jsLangCode, '/lang/mobile/layer/AirportSelect.json'), "msgDepartureSelected"));
					
					// routeAirportJSON 에서 도착 공항 정보를 가져온다.
					var routeArrAirportDatasJSON = [];
					for (var i=0; i < routeAirportJSON.length; i++) {
						if (routeAirportJSON[i].airportCode == $(this).attr("airport")) {
							routeArrAirportDatasJSON = routeAirportJSON[i].routeArrAirportDatas;
							break;
						}
					}
					
					var arrAirportDataObj = {
						txtAirportId : "txtArrAirport",
						divAirportACId : "divArrAirportAC",
						divJourneyLayerId : "divBookingJourneyLayer",
						hidAirport : "hidArrAirport",
						hidCity : "hidArrCity",
						hidArea : "hidArrArea",
						hidValue : "hidArrValue"
					};
					
					// 도착공항 정보 초기화
					$("#" + arrAirportDataObj.txtAirportId).val("");
					$("#" + arrAirportDataObj.hidAirport).val("");
					$("#" + arrAirportDataObj.hidCity).val("");
					$("#" + arrAirportDataObj.hidArea).val("");
					$("#" + arrAirportDataObj.hidValue).val("");
					
					// 이전에 생성된 autocomplete destroy
					if (!$("#divArrAirportAC").is(":empty")) {
						$("#" + arrAirportDataObj.txtAirportId).autocomplete("destroy");
					}
					
					$.bookingAirportAutoComplete(arrAirportDataObj, routeArrAirportDatasJSON);
					$.bookingAirportLayer(arrAirportDataObj, routeArrAirportDatasJSON);
					
				} else {
					// 도착 공항 선택 시
					$("#" + airportDataObj.txtAirportId).val($(this).children("span").text());
					$("#" + airportDataObj.hidAirport).val($(this).attr("airport"));
					$("#" + airportDataObj.hidCity).val($(this).attr("city"));
					$("#" + airportDataObj.hidArea).val($(this).parents('ul').siblings("h3").attr("area"));
					$("#" + airportDataObj.hidValue).val($(this).children("span").text());
					
					$("div.booking-journey-layer-section-arr li.to").removeClass("to").children("button").removeAttr("title");
					$(this).parent().addClass("to");
					$(this).attr("title", $.cfn_setText($.cfn_getProgramScreenText(jsLangCode, '/lang/mobile/layer/AirportSelect.json'), "msgArrivalSelected"));
					
					// 괌 노선 선택시 괌 Information Layer 오픈 - 20170524 JS
					if($("#" + airportDataObj.hidAirport).val() == "GUM") {
						$('#viewLayerGUMInformation').trigger("click");
					}
				}
				
				$(".layer-close-area .layer-close").trigger("click");
			});
			
			if (typeof jsBookConditionDataObj != 'undefined' && jsBookConditionDataObj.segmentDatas.length > 0) {
				if (addClass.indexOf("dep") != -1) {
					$("#divBookingJourneyLayer div.booking-journey-layer-section button").each(function() {
						if ($(this).parents("div.booking-journey-layer-section").hasClass(addClass)
								&& $(this).attr("airport") == jsBookConditionDataObj.segmentDatas[0].departureAirport) {
							$(this).trigger("click");
						}
					});
				} else {
					$("#divBookingJourneyLayer div.booking-journey-layer-section button").each(function() {
						if ($(this).parents("div.booking-journey-layer-section").hasClass(addClass)
								&& $(this).attr("airport") == jsBookConditionDataObj.segmentDatas[0].arrivalAirport) {
							$(this).trigger("click");
						}
					});
				}
			}
		},
		
		bookingDateCal : function(datepickerObj) {
			// 이전에 생성된 datepicker destroy
			if (!$(datepickerObj.dateLayer).is(":empty")) {
				$(datepickerObj.dateLayer).datepicker("destroy");
			}
			
			/*
			 * avDay : 선택한 여정에 대한 운항요일 조회 결과 설정
			 * holiday : 선택한 언어에 대한 공휴일 정보 조회 결과 설정
			 * minDate : 선택 가능 최소 일자 (당일 일자로 설정)
			 * maxDate : 선택 가능 마지막 일자 (당일 일자로부터 323일 이후가 포함된 달 까지 선택 가능)
			 */
			$(datepickerObj.dateLayer).datepicker({
				avDay: datepickerObj.avDay,
				holiday: datepickerObj.holiday,
				minDate: moment().toDate(),
				maxDate: moment().add(323, 'days').endOf('month').toDate(),
				range: datepickerObj.range,
				tableCapTxt: $.cfn_setText(jsScreenText, 'CaptionTxt'),
				todayCapTxt: $.cfn_setText(jsScreenText, 'TodayTitleTxt'),
				rangeSCapTxt: $.cfn_setText(jsScreenText, 'DepDateTitleTxt'),
				rangeECapTxt: $.cfn_setText(jsScreenText, 'ArrDateTitleTxt'),
				dayNames : [$.cfn_setText(jsScreenText, 'calSun'),$.cfn_setText(jsScreenText, 'calMon'),$.cfn_setText(jsScreenText, 'calTue'),$.cfn_setText(jsScreenText, 'calWed'),$.cfn_setText(jsScreenText, 'calThu'),$.cfn_setText(jsScreenText, 'calFri'),$.cfn_setText(jsScreenText, 'calSat')],
		        dayNamesShort : [$.cfn_setText(jsScreenText, 'calSun'),$.cfn_setText(jsScreenText, 'calMon'),$.cfn_setText(jsScreenText, 'calTue'),$.cfn_setText(jsScreenText, 'calWed'),$.cfn_setText(jsScreenText, 'calThu'),$.cfn_setText(jsScreenText, 'calFri'),$.cfn_setText(jsScreenText, 'calSat')],
				dayNamesMin : [$.cfn_setText(jsScreenText, 'calSun'),$.cfn_setText(jsScreenText, 'calMon'),$.cfn_setText(jsScreenText, 'calTue'),$.cfn_setText(jsScreenText, 'calWed'),$.cfn_setText(jsScreenText, 'calThu'),$.cfn_setText(jsScreenText, 'calFri'),$.cfn_setText(jsScreenText, 'calSat')],
				onSelect: function (selected, e) {
					// 출발일 선택 시 도착일 Focus
			        var $booking_items_select_start	= $('.booking-date-items-startdate > span.booking-items-select');
			        var $booking_items_select_end	= $('.booking-date-items-enddate > span.booking-items-select');
			        $booking_items_select_start.addClass('off').removeClass('active')
			        		.children("button").addClass('off').removeClass('active');
			        $booking_items_select_end.addClass('active').removeClass('off')
			        	  .children("button").addClass('active').removeClass('off');
			    }
			});
			
			$(datepickerObj.dateLayer).prepend("<h2 class=\"hidden-title\">" + datepickerObj.dateLayerTitle + "</h2>");
			
			// '오늘' 버튼 선택 시
			$(".booking-date-layer-btntoday").click(function() {
				// 오늘 날짜가 포함된 월로 이동
				$(datepickerObj.dateLayer).datepicker('setDate', new Date());
				
				// 오늘 날짜 클릭
				if ($(".ui-datepicker-today").length > 0) {
					$(".ui-datepicker-today a").trigger("click");
				} else {
					$(".ui-datepicker-start a").trigger("click");
				}
			});
			
			// '이전월(<)' 버튼 선택 시
			$(".booking-date-layer-btnleft").off().on('click' , function(){
				$(".ui-datepicker-prev").trigger("click");
			});
			
			// '다음월(>)' 버튼 선택 시
			$(".booking-date-layer-btnright").off().on('click' , function(){
				$(".ui-datepicker-next").trigger("click");
			});
		}
	});
})(jQuery);