// browser console에 로그를 찍는다.
function log() {
	try{
		if (typeof window.console != 'undefined' && typeof window.console.log != 'undefined') {
			window.console.log(Array.prototype.join.call(arguments,' '));
		}
	} catch(err){
	}
}

// 로딩 화면 오픈
function cfn_openLoading() {
	var jsLoading = '<div id="divLoading" class="loding"><div class="loding_inner"><div><img src="/CW/public/images/common/img_loding02.gif" alt="LOADING"/><strong class="hidden-txt">LOADING</strong></div></div></div>';
	
	$(jsLoading).appendTo(document.body);
}

// 로딩 화면 닫기
function cfn_closeLoading() {
	$('#divLoading').remove();
}

(function($) {
	$.ArrayUtil = {
        filter: function(array, predicate) {
            var result = [];
            for(var i = 0; i < array.length; i++) {
                if(!predicate(i, array[i]))
                    continue;

                result.push(array[i]);
            }
            return result;
        },

        transform: function(array, transformer) {
            var result = [];
            for(var i = 0; i < array.length; i++) {
                result.push(transformer(i, array[i]));
            }
            return result;
        },

        indexOf: function(array, value, predicate) {
            for (var i = 0; i < array.length; i++) {
                if(predicate(array[i], value))
                    return i;
            }
            return -1;
        }
    };

    $.extend(moment, {
        isBetween : function (target, moment1, moment2) {
            var from = moment.min(moment1, moment2);
            var to = moment.max(moment1, moment2);
            return (target.isAfter(from) && target.isBefore(to));
        },

        equalsDatePart: function (moment1, moment2) {
            return moment1.format("YYYY.MM.DD") == moment2.format("YYYY.MM.DD");
        },

        comparer: function (moment1, moment2) {
            if (moment1.isBefore(moment2)) return -1;
            if (moment1.isAfter(moment2)) return 1;
            return 0;
        }
    });

    $.fn.extend({
		/************************************************************
    	 * 영어만 입력 가능
    	 * $(jQ).cfn_keypressOnlyEng();
    	 ************************************************************/
    	cfn_keypressOnlyEng: function() {
    		this.attr('style', this.attr('style') + ';ime-mode:disabled');
    		this.bind('keydown', function(pressKey) {
    			var currKey = pressKey.keyCode;
    			if ((currKey > 47 && currKey < 58) || (currKey > 95 && currKey < 106) || (currKey > 105 && currKey < 112) || (currKey > 185 && currKey < 223) || (currKey == 59) || (currKey == 229)) {
    				return false;
    			} else {
    				return true;
    			}
    		});
    		this.bind('keyup', function(pressKey) {
    			var currKey = pressKey.keyCode;
    			var currKeyVal = pressKey.target.value;
    			if ((currKey > 105 && currKey < 112) || (currKey > 57 && currKey < 65) || (currKey > 185 && currKey < 223) || (currKey == 59)) {
    				pressKey.preventDefault();
    			}
    			if (/[^A-Za-z]/.test(currKeyVal)) {
    				pressKey.target.value = currKeyVal.replace(/[^A-Za-z]/gi, "");
    			}
    		});
    	},
    	
		/************************************************************
    	 * 숫자만 입력 가능
    	 * $(jQ).cfn_keypressOnlyNum();
    	 ************************************************************/
    	cfn_keypressOnlyNum: function() {
    		this.attr('style', this.attr('style') + ';ime-mode:disabled');
    		this.bind('keydown', function(pressKey) {
    			var currKey = pressKey.keyCode;
    			if ((currKey > 64 && currKey < 91) || (currKey > 105 && currKey < 112) || (currKey > 185 && currKey < 223) || (currKey == 59) || (currKey == 229)) {
    				return false;
    			} else {
    				return true;
    			}
    		});
    		this.bind('keyup', function(pressKey) {
    			var currKey = pressKey.keyCode;
    			var currKeyVal = pressKey.target.value;
    			if ((currKey > 105 && currKey < 112) || (currKey > 57 && currKey < 65) || (currKey > 185 && currKey < 223) || (currKey == 59)) {
    				pressKey.preventDefault();
    			}
    			if (/[^0-9]/.test(currKeyVal)) {
    				pressKey.target.value = currKeyVal.replace(/[^0-9]/gi, "");
    			}
    		});
    	},
		
		/************************************************************
    	 * 영어만 입력 가능
    	 * $(jQ).cfn_keyupOnlyEng();
    	 ************************************************************/
		cfn_keyupOnlyEng: function() {
			$(this).keyup(function(event) {
				var inputVal = $(this).val();
				$(this).val(inputVal.replace(/[^A-Za-z]/gi, ''));
			});
		},
		
		/************************************************************
    	 * 숫자만 입력 가능
    	 * $(jQ).cfn_keyupOnlyNum();
    	 ************************************************************/
		cfn_keyupOnlyNum: function() {
			$(this).keyup(function(event) {
				if (!(event.keyCode >= 37 && event.keyCode <= 40)) {
					var inputVal = $(this).val();
					$(this).val(inputVal.replace(/[^0-9]/gi, ''));
				}
			});
		},
		
		/************************************************************
		 * 영어&숫자만 입력 가능
		 * $(jQ).cfn_keyupOnlyEngNum();
		 ************************************************************/
		cfn_keyupOnlyEngNum: function() {
			$(this).keyup(function(event) {
				var inputVal = $(this).val();
				$(this).val(inputVal.replace(/[^A-Za-z0-9]/gi, ''));
			});
		},
		
		/************************************************************
		 * 영어&숫자&공백만 입력 가능
		 * $(jQ).cfn_keyupOnlyEngNumSpace();
		 ************************************************************/
		cfn_keyupOnlyEngNumSpace: function() {
			$(this).keyup(function(event) {
				var inputVal = $(this).val();
				$(this).val(inputVal.replace(/[^A-Za-z0-9\s]/gi, ''));
			});
		},
		
    	/************************************************************
    	 * E-mail 입력 시 사용
    	 * $(jQ).cfn_keyupOnlyEmail(type);
    	 * - type
    	 * "email" : E-mail 폼 전체 입력 시
    	 * "emailAddr" : E-mail 주소 부분 입력 시 (ex. gmail.com)
    	 * "emailHead" : E-mail 계정 부분 입력 시 (@ 앞부분 입력 시)
    	 ************************************************************/
		cfn_keyupOnlyEmail: function(type) {
			this.attr('style', this.attr('style') + ';ime-mode:disabled');
			this.bind('keyup', function(pressKey) {
				var currKey = pressKey.keyCode;
				var currKeyVal = pressKey.target.value;
				if ((currKey > 105 && currKey < 112) || (currKey > 57 && currKey < 65) || (currKey > 185 && currKey < 223) || (currKey == 59)) {
					pressKey.preventDefault();
				}
				if (type == "email") {
					if (/[^a-zA-Z0-9@._-]/.test(currKeyVal)) {
						pressKey.target.value = currKeyVal.replace(/[^a-zA-Z0-9@._-]/gi, "");
					}
				} else if (type == "emailAddr") {
					if (/[^a-zA-Z0-9._-]/.test(currKeyVal)) {
						pressKey.target.value = currKeyVal.replace(/[^a-zA-Z0-9._-]/gi, "");
					}
				} else {
					// 이메일 아이디에서도 .이 포함될 수 있어서 수정함 (강현석)
					if (/[^a-zA-Z0-9._-]/.test(currKeyVal)) {
						pressKey.target.value = currKeyVal.replace(/[^a-zA-Z0-9._-]/gi, "");
					}
				}
			});
		},
		
		/************************************************************
    	 * 숫자, '-' 만 입력 가능
    	 * $(jQ).cfn_keypressOnlyPhone();
    	 ************************************************************/
		cfn_keypressOnlyPhone: function() {
			$(this).keyup(function(event) {
				var currKey = event.keyCode;
				var inputVal = $(this).val();
				$(this).val(inputVal.replace(/[^0-9|\-|\+]/gi, ""));
			});
		},

		/************************************************************
    	 * Keyup 이벤트 시 공백 제거
    	 * $(jQ).cfn_keyupRemoveBlank();
    	 ************************************************************/
		cfn_keyupRemoveBlank: function() {
    		$(this).keyup(function(event) {
				var inputVal = $(this).val();
				$(this).val(inputVal.replace(/\s/gi, ''));
			});
    	},

		/************************************************************
    	 * 패스워드 양식(영문, 숫자, 특수문자, 공백불가)만 입력 가능
    	 * $(jQ).cfn_keyupOnlyPW();
    	 ************************************************************/
    	cfn_keyupOnlyPW: function() {
    		$(this).keyup(function(event) {
				var inputVal = $(this).val();
				$(this).val(inputVal.replace(/^(?=.*[a-zA-Z])(?=.*[!@#$%^&*()\-_=+\\\|\[\]{};:\'",.<>\/?])/gi, ''));
			});
    	},
    	
    });

    $.fn.extend(jQuery, {
    	/************************************************************
    	 * PJAX 화면 호출
    	 * $.cfn_callNextPjax(url, title, jsonData);
    	 * - container : 호출된 화면을 구성할 container (String)
    	 * - url : 호출 URL String
    	 * - jsonData : POST 방식으로 전송할 JSON 형식의 데이터
    	 ************************************************************/
    	cfn_callNextPjax: function(container, url, jsonData) {
    		$.pjax({
    			type : "POST",
    			url : url,
    			data : jsonData,
    			container : "#" + container
    		});
    	},
    	
    	/************************************************************
    	 * 언어에 따른 프로그램별 문구 정보 가져오기
    	 * $.cfn_getProgramScreenText(lang, url);
    	 * - lang : 언어 정보
    	 * - url : JSON URL String
    	 ************************************************************/
		cfn_getProgramScreenText: function(lang, url) {
			var jsScreenTexts = "";
			$.ajax({
				async: false,
				type: "get",
				dataType: "json",
				url: url,
				success: function(data) {
					if (lang == "KO") {
						jsScreenTexts = data.KO;
					} else if (lang == "EN") {
						jsScreenTexts = data.EN;
					} else if (lang == "JA") {
						jsScreenTexts = data.JA;
					} else if (lang == "ZH") {
						jsScreenTexts = data.ZH;
					} else if (lang == "CH") {
						jsScreenTexts = data.CH;
					}
				}
			});
			return jsScreenTexts;
		},
		
    	/************************************************************
    	 * 문구 정보 설정
    	 * $.cfn_setProgramScreenText(data);
    	 * - data : 프로그램별 언어 정보 설정을 위한 JSON Data Object
    	 ************************************************************/
		cfn_setProgramScreenText: function(data) {
			for (var key in data) {
				if (data.hasOwnProperty(key)) {	// 전체 key 값 불러옴
					if (key.indexOf("img") == 0) {	// "img" 로 시작하는 key의 경우 alt 속성에 내용 추가
						$("#" + key).attr("alt", data[key]);
					} else if (key.indexOf("lbl") == 0) {
						$("[name='"+key+"']").html(data[key]);
					} else if (key.indexOf(".") > -1) {	// id.title
						var jsArrKey = key.split(".");
						$("#" + jsArrKey[0]).attr(jsArrKey[1], data[key]);
					} else {
						$("#" + key).html(data[key]);
					}
				}
			}
		},
		
    	/************************************************************
    	 * 특정 key에 대한 문구 정보 설정
    	 * $.cfn_setText(data, key);
    	 * - data : 프로그램별 언어 정보 설정을 위한 JSON Data Object
    	 * - key : 문구 설정을 위한 key String
    	 ************************************************************/
		cfn_setText: function(data, key){
			return $.cfn_getNullToDefault(data[key], "");
		},
		
		/************************************************************
		 * Null, NaN, "", undefined 값에 default 값 설정
		 * $.cfn_getNullToDefault(data, key);
		 * - val : 설정을 원하는 값
		 * - defaultVal : default 값
		 ************************************************************/
		cfn_getNullToDefault: function(val, defaultVal) {
			if (typeof val == 'undefined') {
				val = defaultVal;
			} else {
				if (val == null || val == "NaN" || val == "") {
					val = defaultVal;
				}
			}
			return val;
		},
		
    	/************************************************************
    	 * 특정 key에 대한 문구 정보 설정 (특정 값 삽입 시 사용)
    	 * $.cfn_getMessageByScreenWithParam(data, key, param);
    	 * - data : 프로그램별 언어 정보 설정을 위한 JSON Data Object
    	 * - key : 문구 설정을 위한 key String
    	 * - param : 문구 내 특정 값 삽입을 위한 배열 ["value1", "value2", ...]
    	 ************************************************************/
		cfn_getMessageByScreenWithParam: function(data, key, param) {
			var msg = "";
			msg = data[key];
			for (var i = 0; i < param.length; i++) {
				var regEx = "%" + String(i + 1);
				msg = msg.replace(new RegExp(regEx, 'gi'), String(param[i]));
			}
			msg = msg.replace(/&#10;/g, '\n');	// 띄어쓰기 처리
			return msg;
		},
		
		/************************************************************
    	 * Currency 별 금액 표현 반환
    	 * $.cfn_currencyExp(amt, cur, comma, char, negative);
    	 * - amt : 금액 정보
    	 * - cur : currency (KRW, USD, JPY, CNY, HKD, THB)
    	 * - comma : 금액 정보 comma 추가 여부 (default : true)
    	 * - char : 금액 currency 표기 여부 (default : true)
    	 * - negative : 음수 표현 여부 (default : true)
    	 ************************************************************/
		cfn_currencyExp: function(amt, cur, comma, char, negative) {
			if (typeof amt == "undefined" || amt.toString().replace(/[^\d]*/g, '') == "") {
				return amt;
			}
			var changeAmt = amt.toString();
			var option = {};
			if (cur == "KRW") {
				option.removeP = true;
				option.curChar = "￦";	// \u20A9 / &#8361;
			} else if (cur == "USD") {
				option.removeP = false;
				option.curChar = "＄";	// \u0024 / &#36;
			} else if (cur == "JPY") {
				option.removeP = true;
				option.curChar = "￥";	// \u00A5 / &#165;
			} else if (cur == "CNY") {
				option.removeP = true;
				option.curChar = "元";	// \u5143 / &#20803;
			} else if (cur == "HKD") {
				option.removeP = true;
				option.curChar = "＄";	// \u0024 / &#36;
			} else if (cur == "THB") {
				option.removeP = true;
				option.curChar = "?";	// \u0E3F / &#3647;
			}
			if (comma != undefined && (comma == true || comma == false)) {
				option.comma = comma;
			} else {
				option.comma = true;
			}
			if (char != undefined && (char == true || char == false)) {
				option.char = char;
			} else {
				option.char = true;
			}
			if (negative != undefined && (negative == true || negative == false)) {
				option.negative = negative;
			} else {
				option.negative = true;
			}
			// 음수를 표현하지 않는 경우
			if (!option.negative) {
				if (changeAmt.indexOf("-") == 0) {
					changeAmt = changeAmt.replace("-", "");
				}
			}
			// 소수점 제거
			if (option.removeP) {
				if (changeAmt.indexOf(".") != -1) {
					changeAmt = changeAmt.substr(0, changeAmt.indexOf("."));
				}
			}
			// 금액에 comma 표현 추가
			if (option.comma) {
				changeAmt = $.cfn_setComma(changeAmt);
			}
			// currency char 표현
			if (option.char) {
				//changeAmt += " " + option.curChar;
				changeAmt += " " + cur.toUpperCase();
			}
			return changeAmt;
		},
    	
    	/************************************************************
    	 * 숫자에 콤마 추가하기
    	 * $.cfn_setComma(n);
    	 * - n : String
    	 ************************************************************/
		cfn_setComma : function(n) {
			var reg = /(^[+-]?\d+)(\d{3})/;
			n += '';
			while (reg.test(n))
				n = n.replace(reg, '$1' + ',' + '$2');
			return n;
		},
		
		/************************************************************
    	 * 설정된 길이만큼 문자열의 왼쪽을 token으로 채운다.
    	 * $.cfn_makeFPading(ts, tl, tk);
    	 * - ts : 기준 문자열
    	 * - tl : 전체 문자열의 길이
    	 * - tk : token
    	 ************************************************************/
		cfn_makeFPading : function(ts, tl, tk) {
			ts = ts + "";
			var l = ts.length;
			var rs = ts;
			if (l < tl ) {
				for (var i=l; i < tl; i++) {
					rs = tk + rs;
				}
			}
			return rs;
		},

		/************************************************************
    	 * 설정된 길이만큼 문자열의 오른쪽을 token으로 채운다.
    	 * $.cfn_makeEPading(ts, tl, tk);
    	 * - ts : 기준 문자열
    	 * - tl : 전체 문자열의 길이
    	 * - tk : token
    	 ************************************************************/
		cfn_makeEPading : function(ts, tl, tk) {
			ts = ts + "";
			var l = ts.length;
			var rs = ts + "";
			if (l < tl) {
				for (var i=l; i < tl; i++) {
					rs = rs + tk;
				}
			}
			return rs;
		},
		
		/************************************************************
    	 * 소수점 자리수를 원하는 자리수만큼 제한하여 표현한다.
    	 * $.cfn_cutFloat(s, i);
    	 * - s : 기준 문자열 (숫자 형태)
    	 * - i : 소수점 자리 표현을 원하는 자리수 (optional / default:2)
    	 ************************************************************/
		cfn_cutFloat : function(s, i) {
			if (isNaN(s)) return 0;
			if (i === undefined) i = 2;
			return Number(Number(s).toFixed(i));
		},
		
		/************************************************************
    	 * 연산을 원하는 집합에 대해 덧셈/뺄셈 연산 후
    	 * 원하는 자리수만큼 제한하여 표현한다.
    	 * $.cfn_cutFloatCal(sa, ma, i);
    	 * - sa : 덧셈 연산을 할 배열 집합 (숫자 형태)
    	 * - ma : 뺄셈 연산을 할 배열 집합 (숫자 형태)
    	 * - i : 소수점 자리 표현을 원하는 자리수 (optional / default:2)
    	 ************************************************************/
		cfn_cutFloatCal : function(sa, ma, i) {
			var t = 0.0;
			if (i === undefined) i = 2;
			if ($.isArray(sa)) {
				$(sa).each(function(x) {
					t += Number(Number(sa[x]).toFixed(i));
				});
			}
			if ($.isArray(ma)) {
				$(ma).each(function(x) {
					t -= Number(Number(ma[x]).toFixed(i));
				});
			}
			return t;
		},
		
		/************************************************************
    	 * 팝업 화면 구성
    	 * $.cfn_openPopup(url, name, width, height, scroll, xpos, ypos);
    	 * - url : 호출 URL (String)
		 * - name : Popup Window Name (String)
		 * - width : Popup Window Width (Number)
		 * - height : Popup Window Height (Number)
		 * - scroll : Popup Window Scrollbar 생성 여부 (true/false)
		 * - xpos : Popup Window Screen Position X (Number)
		 * - ypos : Popup Window Screen Position Y (Number)
    	 ************************************************************/
		cfn_openPopup: function(url, name, width, height, scroll, xpos, ypos) {
			if (scroll == null) scroll = true;
			if (xpos == null) xpos = (screen.width - width) / 2;
			if (ypos == null) ypos = (screen.height - height) / 2;
			var opt = "toolbar=no,alwaysRaised=no,location=no,status=no,menubar=no,scrollbars="+(scroll?"yes":"no")+",width="+width+",height="+height+",resizable=yes,hotkey=no,dependent=no,screenX=0,screenY=0,top="+ypos+",left="+xpos;
			var obj = window.open(url, name, opt);
			return obj;
    	},

    	/************************************************************
    	 * 공백 포함 체크
    	 * $.cfn_isBlank(val);
    	 * - val : 확인하기 위한 값 (String)
    	 ************************************************************/
    	cfn_isBlank : function(val) {
    		if(/\s/.test(val) == true) {
    			return false;
    		}
    		return true;
    	},

    	/************************************************************
    	 * 입력 값이 숫자인지 체크
    	 * $.cfn_isNumber(a);
    	 * - a : 확인하기 위한 값 (String)
    	 ************************************************************/
		cfn_isNumber : function(a) {
    	    for (var i = 0; i < a.length; i++) {
    	    	if (a.substring(i,i+1) < '0' || a.substring(i,i+1) > '9') {
    	    		return false;
    	    	}
    	    }
    	    return true;
    	},
    	
    	/************************************************************
    	 * 생년월일 포함 체크
    	 * $.cfn_isCheckBirthNum(val, birthValue);
    	 * - val		: 확인하기 위한 값 (String)
		 * - birthValue : 생년월일 (String)
    	 ************************************************************/
		cfn_isCheckBirthNum : function(val, birthValue) {
			var birthDate = birthValue;
			if((/[0-9]/g).test(val) == true) {
				var newVal = val.match(/\d{1,16}/g);
				var val = newVal.toString();

				if ($.cfn_isNumber(val)) {
					val = val.toUpperCase();			// 대소문자 구분이 없을 경우 필요

					// 생일 구성여부
					if (val.length == 4 || val.length == 6 || val.length == 8) {
						if ((val.length == 4 && val == birthDate.substring(4))
							|| (val.length == 6 && val == birthDate.substring(2))
								|| (val.length == 8 && val == birthDate)) {
							return false;
						}
					}
				}
				return true;
			}
			return true;
		},
    	
    	/************************************************************
    	 * 연속된 문자 체크
    	 * $.cfn_isContinueNum(val, limit);
    	 * - val	: 확인하기 위한 값 (String)
		 * - limit	: 제한 수 (Number)  >  미 입력 시 기본값 : 3
    	 ************************************************************/
		cfn_isContinueNum : function(val, limit) {
			var o, d, p, n = 0, l = limit==null ? 3 : limit;
			for(var i=0; i<val.length; i++) {
				var c = val.charCodeAt(i);
				if(i > 0 && (p = o - c) >-2 && p < 2 && (n = p == d ? n+1 : 0) > l-3) {
					return false;
				}
				d = p, o = c;
			}
			return true;
		},
    	
    	/************************************************************
    	 * 패스워드 체크 (8 ~ 15자의 영문, 숫자, 특수문자 필수 조합)
    	 * $.cfn_isCheckPasswordRules(val);
    	 * - val	: 확인하기 위한 값 (String)
    	 ************************************************************/
		cfn_isCheckPasswordRules : function(val) {
			var passwordRules	= /^(?=.*[a-zA-Z])(?=.*[`~!@#$%^&*()\-_=+\\\|\[\]{};:\'",.<>\/?])(?=.*[0-9]).{8,15}$/;
			if(!passwordRules.test(val)) {
				return false;
			}
			return true;
		},

    	/************************************************************
    	 * 모바일 운영체제 검사
    	 * $.cfn_getMobileOS();
    	 * - 반환값 : iOS, Android, unknown(기타)
    	 ************************************************************/
		cfn_getMobileOS : function() {
			var userAgent = navigator.userAgent || navigator.vendor || window.opera;

			if (userAgent.match(/iPad/i) || userAgent.match(/iPhone/i) || userAgent.match(/iPod/i)) {
				return 'iOS';
			} else if (userAgent.match(/Android/i)) {
				return 'Android';
			} else {
				return 'unknown';
			}
		}
    });
})(jQuery);