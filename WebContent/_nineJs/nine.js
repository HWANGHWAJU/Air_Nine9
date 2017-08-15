/*	예약하는 것에 있어 필요한 데이터 객체, Booking에서 넘어가며 값 저장	*/

/*	최종 예약 전 넘어오는 예약 정보를 담을 객체 	*/
var BookingConditionDataObject = function(){
	this.TRIPTYPE="";				//왕복, 편도 
	this.segmentDatas = [];			// 출도착지 정보
	this.passengerDatas = [];		// 승객에 대한 정보 
};

var BookingInfo = function(){
	this.tripType = "";
	this.departureAirport="";
	this.departureDateTime="";
	this.arrivalDateTime = "";
	this.arrivalAirport="";
	this.adtPaxCnt="";
	this.chdPaxCnt="";
	this.infPaxCnt="";
}

/*	출도착 정보 저장 객체	*/
var SegmentDataObject = function(){
	this.arrivalAirport = "";	// 도착지 공항
	this.departureAirport="";	// 출발지 공항
	this.departureDateTime=""; 	// 출발 날짜 
};	

/*	승객에 대한 정보 저장 객체	*/
var PassengerDataObject = function(){
	this.passengerNo = ""; 	//승객 수 
	this.paxType = ""; //승객 탑승 종류 (성인, 소아, 유아)
}

/*예약자 정보*/
var ReservationPersonInfo = function(){
	this.phoneType="";
	this.phoneNumber = "";
	this.email = "";
}

/* 탑승객 정보 (배열) */
var PassengerDetailDatas = function(){
	this.passengerDetailInfo = [];
}
/*각 탑승객 정보*/
var PassengerDetailInfo = function(){
	this.paxType = "";
	this.lastName = "";
	this.firstName = "";
	this.passportNumber = "";
	this.gender = "";
	this.price = "";
}

/*	선택 옵션 (배열)	*/
var OptionService = function(){
	this.seatDatas="";
	this.bagDatas="";
	this.mealDats="";
}
/* 좌석 */
var OptionSeatTotal = function(){
	this.optionSeats = [];
}
var OptionSeat = function(){
    this.SeattripType = "";
    this.SeatArray = [];
}

var OptionSeatObj = function(){
	this.seatNum = "";
	this.price = "";
}



/* 수화물 */
var OptionBag = function(){
	this.BagtripType = "";
	this.BagCount = "";
	this.Bagprice = "";
}

/* 기내식 */
var OptionMeal = function(){
	this.MealtripType = "";
	this.MealName = "";
	this.Mealprice = "";
}

var FlightInfo = function(){
	this.triptype = "";
	this.flightDetailInfo = [];
}

var FlightDetailInfo = function(){
	this.depflight = "";
	this.dep="";
	this.arr="";
	this.depDate = "";
	this.depTime = "";
	this.arrTime = "";
	this.baseprice = "";
	this.saleprice = "";
}
 
function fn_ShowDatas(){
	var strReservation = $("#jsReservation").val();
	var ReservationCode = $("#ReservationCode").val();
	
	console.log(ReservationCode);
	console.log(strReservation);
	
	var jsReservation = function(){
		this.flight = [];
		this.person = [];
		this.pay = "";
	}
	
	jsReservation = jQuery.parseJSON(strReservation);
	var FlightData = function(){
		this.tripType = "";
		this.Dep = "";
		this.Arr = "";
		this.Dep_date = "";
		this.Dep_time = "";
		this.Arr_date = "";
		this.Arr_time = "";
		this.Booking_date = "";
	};
	
	var jsFlight = new FlightData();
	jsFlight = [];
	jsFlight = jsReservation.FlightData;
	
	console.log(jsFlight);
	var tripType = "";
	if(jsFlight.length == 2) {tripType="RT";}
	else {tripType = "OW";}
	
	console.log(tripType);
	var Person = function(){
		this.paxType = "";
		this.EngName = "";
		this.passport = "";
	}
	
	var jsPerson = new Person();
	jsPerson = [];
	jsPerson = jsReservation.BoardP;
		
	var Pay = function(){
		this.payKind = "";
		this.payTotal = "";
	}
	
	var jsPay = new Pay();
	jsPay = jsReservation.PayData;
	jsPay.payTotal = jsReservation.PayData.paytotal;
	
	console.log(jsFlight);
	console.log(jsPerson);
	console.log(jsPay);
	
	$("#ReservationNumber").val(ReservationCode);
	$("#ReservationDate").val(jsReservation.FlightData[0].Booking_Date);
	$("#FlightName").val(jsReservation.FlightData[0].FlightName);
	$("#DepName").val(jsReservation.FlightData[0].Dep);
	$("#DepDate").val(jsReservation.FlightData[0].Dep_Date);
	$("#DepTime").val(jsReservation.FlightData[0].Dep_Time);
	$("#ArrName").val(jsReservation.FlightData[0].Arr);
	$("#ArrDate").val(jsReservation.FlightData[0].Arr_Date);
	$("#ArrTime").val(jsReservation.FlightData[0].Arr_Time);
	
	if(tripType=="RT"){
		$("#RTReservationNumber").val(ReservationCode);
		$("#RTReservationDate").val(jsReservation.FlightData[1].Booking_Date);
		$("#RTFlightName").val(jsReservation.FlightData[1].FlightName);
		$("#RTDepName").val(jsReservation.FlightData[1].Dep);
		$("#RTDepDate").val(jsReservation.FlightData[1].Dep_Date);
		$("#RTDepTime").val(jsReservation.FlightData[1].Dep_Time);
		$("#RTArrName").val(jsReservation.FlightData[1].Arr);
		$("#RTArrDate").val(jsReservation.FlightData[1].Arr_Date);
		$("#RTArrTime").val(jsReservation.FlightData[1].Arr_Time);
	}
	
	var pSTR = "";
	var type="";
	for(var i=0; i<jsPerson.length; i++){
		if(jsPerson[i].tripType=='RT') {type ="RT";}
		else{type='OW';}
		pSTR += "<tr><th scope='row'>성명</th>"+
				"<td><span>"+jsPerson[i].EngName+"("+type+")</span></td>"+
				"<th scope='row'>성별</th><td><span>"+jsPerson[i].gender+"</span></td>"+
				"<th scope='row'>여권 번호</th>"+
				"<td><span>"+jsPerson[i].passPort+"</span></td></tr>";
	}
	console.log(pSTR);
	$("#Reservation_PersonData>tbody").html(pSTR);
	$(".price").text(jsPay.payTotal);
	
}

$(function(){
    jsGnb();
    jsHrgroup();
    Cal_fu();
});

/*	오른쪽 상단 메뉴 있는 거 가져왔어여ㅎㅅㅎ...._이현주*/
function jsHrgroup(){
    var $sotreSelf = null;
    $(".jsHrgroup").each(function(){
        var $self = $(this);

        $(this).children("a").on("mouseenter focus", function(){
            if ($sotreSelf !== null) {
                $sotreSelf.removeClass("on");
                $sotreSelf.find(".hrgroup-list").hide();
            }
            //$self.css("height", "auto");
            $self.addClass("on");
            $self.find(".hrgroup-list").show();
            $sotreSelf = $self;
        });
        $(".hgroup").find("a").eq(-1).on("keydown", function(e) {
            Tab(function () {
                setTimeout(function () {
                    $self.trigger("mouseleave");
                }, 1);
            }, e);
            //if (tab) return false;
        });
        $self.on("mouseleave", function() {
            $self.removeClass("on");
            $self.find(".hrgroup-list").hide();
        });
        /* 20160714 추가 */
        $self.prev("span").find("a").focus("keydown", function() {
            $self.removeClass("on");
            $self.find(".hrgroup-list").hide();
        })
        /* //20160714 추가 */
    })
}


 /* 메뉴 드롭 다운 물론 이것도 제가 한 것은 아닙니다 ㅇㅅㅇ_이현주*/
function jsGnb(){
    var $gnb = $("#gnb");
    var $header = $("#header");
    var $depth01Lists = $(".depth01Lists");
    var $bookingWrap = $(".booking-wrap");
    var $smallheaderBtn01 = $(".smallheader-btn01");
    var $smallheaderBtn02 = $(".smallheader-btn02");
    var $hgroup = $(".hgroup");
    var $smallHeader = $("#smallHeader");
    var $bookingStep = $(".booking-step");
    var aniSpd = 100;
    $gnb.on("mouseleave", function(){
        $header.removeClass("on");
        $(this).removeClass("on");
        $(".depth01Lists").removeClass("on");
        $(".depth02").hide();
        $("#headerContent").removeAttr("style");
        return false;
    });
    $(".depth02Lists > a").on("mouseenter focus", function() {
    	$depth01Lists.removeClass("on");
        var idx = $(this).closest(".depth01Lists").addClass("on").index();
        $header.addClass("on");
        return false;
    });
    $(".depth01Lists > a").on("mouseenter focus", function() {
        var idx = $(".depth01Lists > a").index(this);
        $depth01Lists.removeClass("on").eq(idx).addClass("on");
        $(".depth02").show();
        //$("#headerContent").css("height", 342);
        $header.addClass("on");
        return false;
    });
    $(".depth02Lists a").eq(-1).on("keydown", function(e){
        Tab(function(){
            setTimeout(function(){
                $gnb.trigger("mouseleave");
            }, 1);
        }, e);
    });
    /* 20160714 추가 */
    $("#header a").focus(function(){
        if($(this).parents("#gnb").hasClass("js-gnb")==false){
            $("#gnb .depth01Lists").removeClass("on").find(".depth02").hide();
            $("#header").removeClass("on");
        }
    })
    /* //20160714 추가 */

    if ($(".booking-step-on").length){
        $.data(window, "scrollFlag", false);  // true : 실행 가능 , false : 실행 불가능
        $.data(window, "scrollTop");



        $("#skipNavigation a").eq(1).on("click", function(){
            $("#headerOpen").trigger("click");
        });

        function init(){
            $hgroup.hide();
            $smallheaderBtn02.hide();
            $("body").css("overflow-y", "scroll");

            $.data(window, "scrollTop", 0);
            $("#headerOpen").on("click", function(){
                $gnb.show().trigger("mouseleave");
                $hgroup.show(0, function(){ // 20160713
                    $(".hgroup .logo a").focus(); // 20160713, 20160715
                }); //20160713
                $smallHeader.stop(true,false).css({"top": -40}, aniSpd);
                $bookingStep.stop(true,false).animate({top : 110}, aniSpd);
                $header.css({"top": -70}).stop(true,false).animate({"top" : 0}, aniSpd, function(){
                    $.data(window, "scrollFlag", true);
                });
                if($.data(window, "scrollTop") <= 215) {
                    $bookingWrap.stop(true,false).animate({top : 70}, aniSpd);
                }
                $smallheaderBtn01.fadeOut(aniSpd);
                $smallheaderBtn02.fadeIn(aniSpd);
                return false;
            });

            $("#headerClose").on("click", function(){
                if ($.data(window, "scrollFlag") === true) {
                    $smallHeader.stop(true,false).css({"top": 70}, aniSpd);
                    $bookingStep.stop(true,false).animate({top : 40}, aniSpd);
                    $header.animate({"top": -70}, aniSpd, function(){
                        $(this).removeAttr("style");
                        $gnb.hide();
                        $hgroup.hide();
                        $smallHeader.css("top" , 0);
                    });
                    if ($bookingWrap.position().top >= 70) {
                        $bookingWrap.stop(true,false).animate({top : 0}, aniSpd);
                        //$(".booking-airlineticket-finalInfo").css({"position": "fixed"}).animate({"top": 155});
                    }

                    $.data(window, "scrollFlag", false);
                }
                $smallheaderBtn01.fadeIn(aniSpd);
                $smallheaderBtn02.fadeOut(aniSpd);
                return false;
            });

            var footerH = $("#footer").outerHeight(true);//2016-08-04
            var scrollFlag = true;
            var $scrolBtn = $(".scroll-top-btn");

            $(window).on("scroll", function(){
                var wrapH = $("#wrap").outerHeight(true);
                var winH = $(window).outerHeight(true);
                $.data(window, "scrollTop", $(this).scrollTop());

                if ($.data(window, "scrollFlag") === true) {
                    $smallHeader.show().stop(true,false).css({"top": 70}, aniSpd);
                    $bookingStep.stop(true,false).animate({top : 40}, aniSpd);
                    $header.animate({"top": -70}, aniSpd, function(){
                        $(this).removeAttr("style");
                        $gnb.hide();
                        $hgroup.hide();
                        $smallHeader.css("top" , 0);
                    });
                    if ($bookingWrap.position().top >= 70) {
                        $bookingWrap.stop(true,false).animate({top : 0}, aniSpd);
                        //$(".booking-airlineticket-finalInfo").css({"position": "fixed"}).animate({"top": 155});
                    }
                    $smallheaderBtn01.fadeIn(aniSpd);
                    $smallheaderBtn02.fadeOut(aniSpd);
                    $.data(window, "scrollFlag", false);
                }

                if($(this).scrollTop() > 110 && scrollFlag === true) {
                    $scrolBtn.stop(true,true).css({"position" : "fixed","bottom": 10}).fadeIn(aniSpd);
                    scrollFlag = false;
                } else if ($(this).scrollTop() < 110 && scrollFlag === false){
                    $scrolBtn.stop(true,true).fadeOut(aniSpd);
                    scrollFlag = true;
                }

                if( Math.floor(wrapH - (footerH + 10)) <= Math.floor(winH + $(this).scrollTop())) {//2016-08-04
                    $scrolBtn.stop(true,true).css({"position":"absolute","bottom": (footerH + 10)});//2016-08-04
                } else {
                    $scrolBtn.css({"position" : "fixed","bottom": 10})
                }
                return false;
            });

            $(".scroll-top-btn button").on("click", function(){
                $('html, body').animate({scrollTop: 0});
            });
        }
        /*var winH = $(window).outerHeight(true);;
        var contentH = $("#content").outerHeight(true);;
        if(winH > contentH) {*/
        init();


    } else {
        $smallheaderBtn02.hide();
        var $layerBanner = $("#layerBanner");
        var scrollFlag = false;
        var smallHeaderFalg = false;
        var footerH = $("#footer").outerHeight(true);//2016-08-04

        var scrollFlag = true;
        var $scrolBtn = $(".scroll-top-btn");

        // skip gnb 버튼 클릭시
        $("#headerOpen").on("click", function(){
            $smallHeader.stop(true,false).css({"top": -40}, aniSpd);
            $header.stop(true,false).animate({
                "top" : 0
            }, aniSpd, function(){
                scrollFlag = true;
            });
            $("#location").animate({"top": 110}, aniSpd);
            $hgroup.show();
            $smallheaderBtn01.fadeOut(aniSpd);
            $smallheaderBtn02.fadeIn(aniSpd);
            $header.removeClass("hid").addClass("smallopen"); // 20160729
            return false;
        });

        $("#headerClose").on("click", function(){
            if (scrollFlag === true && smallHeaderFalg === true) {
                close();
                scrollFlag = false;
            }
            $header.removeClass("smallopen").addClass("hid"); // 20160729
            return false;
        });

        function close(){
            $smallheaderBtn01.fadeIn(aniSpd);
            $smallheaderBtn02.fadeOut(aniSpd);
            $smallHeader.show().stop(true,false).css({"top": 0});
            $header.stop(true,false).animate({
                "top" : -70
            }, aniSpd);
            $("#location").animate({"top": 40}, aniSpd, function(){
                $(this).removeAttr("style");
                $smallHeader.show().stop(true,false).css({"top": 0});
            });
        }

        $(window).on("scroll", function(){
            var scrollTop = $(this).scrollTop();
            var wrapH = $("#wrap").outerHeight(true);
            var winH = $(window).outerHeight(true);
        	 //header 높이값 계산 하기위한 변수
            var lyaerBannerH = ($layerBanner.length !== 0 ? $layerBanner.outerHeight(true) : 0);
            var headerH = 110;
            var scrollCheckH = parseInt(lyaerBannerH + headerH, 10);

            // 높이가 header + layerBanner 보다 높을때 발생
            if (scrollTop >= scrollCheckH && smallHeaderFalg === false) {
                $hgroup.hide()
                $smallHeader.show().css({"top": 0}, aniSpd);
                $header.stop(true,false).addClass("hid").css({ // 20160729
                    "position" : "fixed",
                    "top" : -70
                });
                $scrolBtn.stop(true,true).css({"position" : "fixed","bottom": 10}).fadeIn(aniSpd);
                $("#location").stop(true,false).css({"top": 0}).animate({"top": 40}, aniSpd).addClass("change");
                smallHeaderFalg = true;

            }
           // 높이가 header + layerBanner 보다 작을때 발생
            if (scrollTop <= scrollCheckH && smallHeaderFalg === true) {
                $smallHeader.stop(true,false).css({"top": -40}).hide();
                $hgroup.show()
                $header.stop(true,false).removeAttr("style").removeAttr("class") // 20160729
                $("#location").stop(true,false).css({"top": 0}).removeClass("change");
                $scrolBtn.stop(true,true).fadeOut(aniSpd);
                smallHeaderFalg = false;
            }

            /*if($(this).scrollTop() > 110 && scrollFlag === true) {

                scrollFlag = false;
            } else if ($(this).scrollTop() < 110 && scrollFlag === false){

                scrollFlag = true;
            }*/

            if( Math.floor(wrapH - (footerH+10)) <= Math.floor(winH + $(this).scrollTop())) {//2016-08-04 수정
                $scrolBtn.stop(true,true).css({"position":"absolute","bottom": (footerH+10)});//2016-08-04 수정
            } else {
                $scrolBtn.css({"position" : "fixed","bottom": 10})
            }

            if (scrollFlag === true && smallHeaderFalg === true) {
                close();
                scrollFlag = false;
            }
            return false;
        });

        $(".scroll-top-btn button").on("click", function(){
            $('html, body').animate({scrollTop: 0});
        });
    }
}
/*	출발지 리스트를 받아오는 제이슨 데이터형을 이용한 아작스 함수	*/
var JsNation; // 나라, 영문명, JsAirport[]
var JsAirport = []; // 공항, 도시, 값 -> JSON 배열을 받아온 것 
	
var Dep = []; //


function DconvJs(data){
	$.each(data, function(index, entry){
		// data 에는 나라 , 공항 배열 
		JsNation =[];
		JsAirport =[];
		
		JsNation = entry.nation_kor;
		JsAirport = entry.airport;
		var AirportList = []; 
		
		for(var i=0; i<JsAirport.length; i++){
		
			var Airport = {
					airport : JsAirport[i].airport,	
					city : JsAirport[i].city,
					value : JsAirport[i].value
			}
			AirportList.push(Airport);
		}		
		
		var DepInfo = {
				nation : JsNation,
				airport : AirportList
		}
		Dep.push(DepInfo);
	});
	fn_Dairport(Dep);
}
function fn_Dairport(Dep){
	var str = "";
	for(var i = 0 ; i <Dep.length; i++){
		str += "<div class='booking-journey-layer-section booking-journey-layer-section-dep'>"+
					"<h3 class='booking-journey-layer-title'>"+Dep[i].nation+"</h3>"+
					"<ul class='booking-journey-layer-lists'>";
		for(var j = 0; j<Dep[i].airport.length; j++){
			str += "<li><button type='botton' value='"+Dep[i].airport[j].value+"'><span>"+Dep[i].airport[j].value+"</span></button></li>";
		}
		str +="</ul>"+"\n"+"</div>";
	}
	
	$("#divBookingJourneyLayer div.booking-journey-layer-section-dep").off("click").remove();

	$("#divBookingJourneyLayer .hidden-title").after(str);
	
	$("#divBookingJourneyLayer div.booking-journey-layer-section-dep button").on("click", function(){
		if($(this).parents(".booking-journey-layer-section").hasClass("booking-journey-layer-section-dep")){
			
			var value = $(this).children("span").text();
	//		alert(dep);
			$("#txtDepAirport").val($(this).children("span").text());
			$("#hidDepValue").val($(this).children("span").text());
			
			$('#spanBookingRouteLayerOpenDep').parents(".d").removeClass('active');
			$('#spanBookingRouteLayerOpenArr').parents(".a").removeClass('active');
			$("#divBookingJourneyLayer").slideUp(150);
			
			$.ajax({
				type : "POST",
				url : "./searchArr.na",
				datatype : "JSON",
				contextType : "application/x-www-form-urlencoded; charset=UTF-8",
				data : { dep : value },
				success : function(data){
					AconvJs(data);
				}
			}); 
				
		}
	});
	

	 	
}

var JsANation; // 나라, 영문명, JsAirport[]
var JsAAirport = []; // 공항, 도시, 값 -> JSON 배열을 받아온 것 

var Arr = []; //
function AconvJs(data){
	$.each(data, function(index, entry){
		// data 에는 나라 , 공항 배열 
		JsANation =[];
		JsAAirport =[];
		
		JsANation = entry.nation_kor;
		JsAAirport = entry.airport;
		var AirportList = []; 

		
		for(var i=0; i<JsAAirport.length; i++){
		
			var Airport = {
					airport : JsAAirport[i].airport,	
					city : JsAAirport[i].city,
					value : JsAAirport[i].value
			}
			AirportList.push(Airport);
		}
		

		var ArrInfo = {
				nation : JsANation,
				airport : AirportList
		}
		console.log(ArrInfo);
		Arr.push(ArrInfo);
});

fn_Aairport(Arr);
}
function fn_Aairport(Arr){
	var str = "";
	
	$(".booking-journey-layer-section-arr").remove();
	
	if(Arr.length==0){
		str+= "<div class='booking-journey-layer-sction booking-journey-layer-section-arr'>"+
				"<h3 class='booking-journey-layer-title'>"+
				"<em id='emDepartureRouteNotSelected' class='pointColor01'><br>운항하는 스케줄이 없습니다.</em></h3><br>"+
				"<ul class='booking-journey-layer-lists'></ul></div>";
		
		$("#divBookingJourneyLayer .hidden-title").after(str);
	}
	
	str="";
	
	for(var i = 0 ; i <Arr.length; i++){
		str += "<div class='booking-journey-layer-section booking-journey-layer-section-arr'>"+
					"<h3 class='booking-journey-layer-title'>"+Arr[i].nation+"</h3>"+
					"<ul class='booking-journey-layer-lists'>"
		for(var j = 0; j<Arr[i].airport.length; j++){
			str += "<li><button value='"+Arr[i].airport[j].value+"'><span>"+Arr[i].airport[j].value+"</span></button></li>";
		}
		str +="</ul></div>";
	}
	

	$("#divBookingJourneyLayer .hidden-title").after(str);
	
	
	$("#divBookingJourneyLayer div.booking-journey-layer-section-arr button").on("click", function(){
		if($(this).parents(".booking-journey-layer-section").hasClass("booking-journey-layer-section-arr")){
			$("#txtArrAirport").val($(this).children("span").text());
			$("#hidArrValue").val($(this).children("span").text());
//			alert("hidArrValue :"+$("#hidArrValue").val());
			$('#spanBookingRouteLayerOpenDep').parents(".d").removeClass('active');
			$('#spanBookingRouteLayerOpenArr').parents(".a").removeClass('active');
			$("#divBookingJourneyLayer").slideUp(150);
		}
	});
}


/*		달력 & 탑승자 		*/

$(document).ready(function(){
	
	// 예약 정보를 저장하기 위해 변수 설정 
	var jsBookConditionDataObject = new BookingConditionDataObject();
	var ShowBooking = new BookingInfo();
	var DateObj = new Date(); 
	var currentYear =Number(DateObj.getFullYear());
	var currentMonth = Number(DateObj.getMonth()+1);
	var currentDate =Number(DateObj.getDate());
	
	
	$("input:radio[name=radTripType]").on("click", function() {
			selectTripType = this.value; //현재 클릭한 버튼 
			var $label = $(this).parent('label'); //현재 클릭된 버튼의 상위 label 태그
			var $now = $(this);
			var $ulOneWayDesc_id = $("#ulOneWayDesc");
			var $btnDirectory_id = $("#btnDirectory");
			var $other;
			var $otherlabel;
	
		
			if($now.attr("id")=='radRoundTripType'){
				$other = $("#radOneWayTripType");
				$otherlabel = $other.parent('label');
			}else if($now.attr("id")=='radOneWayTripType'){
				$other = $("#radRoundTripType");
				$otherlabel = $other.parent('label');
			}
//			console.log($now);
//			console.log($otherlabel);
			
			
			if(selectTripType == 'RT'){
				$ulOneWayDesc_id.css("display","none");
				$btnDirectory_id.removeClass("booking-journey-items-diretory-oneway").addClass("booking-journey-items-diretory-roundtrip");
				$(".booking-date-items-enddate").css("display","");
				$label.removeClass('disabled').addClass('active');
				$otherlabel.removeClass('active').addClass('disabled');
				nowTripType=selectTripType;
			}else if(selectTripType='OW'){
				$ulOneWayDesc_id.css("display","");
				$btnDirectory_id.removeClass("booking-journey-items-diretory-roundtrip").addClass("booking-journey-items-diretory-oneway");
				$(".booking-date-items-enddate").css("display","none");
				$label.removeClass('disabled').addClass('active');
				$otherlabel.removeClass('active').addClass('disabled');
				nowTripType=selectTripType;
			}
			console.log("Select Trip Type :"+selectTripType);
	});
	
	
		$("#radRoundTripType").trigger("click");
		$("#ulOneWayDesc").css("display","none");
		



		$("#btnBoardingInfo").on("click", function(){

					var $this = $(this);
					var $target = $($(this).attr("data-target"));
					
					if($this.hasClass("active")){	//활성화 되어있는 버튼을 누른 경우 
					$this.removeClass("active");	//활성화 상태를 표시해주는 클래스를 삭제
					$target.slideUp(200);				//타겟으로 설정한 레이어를 슬라이드 업하여 닫아준다 속도는 200
					}else{
					$this.addClass("active");		//활성화 되지 않은 버튼을 누른 경우
					$target.slideDown(200);		//타겟으로 설정한 레이어를 슬라이드 다운하여 열어준다 속도는 200
					} 
	
					$(".layer-close").on("click", function(){
						$this.removeClass("active");
						$target.slideUp(200);
					});
			
			});	

		$("#btnAgeCalculator").on("click", function(){
	
				var $this = $(this);
				var $target = $($(this).attr("data-target")); //버튼 설정을 해주는 곳에서 data-target으로 설정한 것을 제이쿼리 객체로 연결
				var $closebtn = $("#spanAgeCalLayerClose");
				//선택 했을 때, 활성화 된 버튼인지를 구분하고 슬라이드를 열어주고, 닫아준다. 
				
				if($this.hasClass("active")){	//활성화 되어있는 버튼을 누른 경우 
					$this.removeClass("active");	//활성화 상태를 표시해주는 클래스를 삭제
					$target.slideUp(200);				//타겟으로 설정한 레이어를 슬라이드 업하여 닫아준다 속도는 200
				}else{
					$this.addClass("active");		//활성화 되지 않은 버튼을 누른 경우
					$target.slideDown(200);		//타겟으로 설정한 레이어를 슬라이드 다운하여 열어준다 속도는 200
				} 

			
			// 나이를 계산하기 위해 연도 설정
			
			var textYear = "년";
				$("#selAgeCalYear").val("").change().html('<option value="" selected="selected" class="ex">'+textYear+'</option>');
			
				
				for(var i =currentYear, j=0; j<13; i--, j++){
					// setAgeCalYeart 아이디 안의 마지막 option 뒤에 after 안에 적힌 코드를 추가 하여라. 
					$("#selAgeCalYear option:last").after('<option value="' + i + '">' + i + '</option>');
				}
			
				$("#spanAgeCalLayerClose").on("click", function(obj){
				
				});
				$(".layer-close").on("click", function(){
					$this.removeClass("active");
					$target.slideUp(200);
				});
			
			});


//년도를 선택했을 때 해당되는 월들을 표현


		$("#selAgeCalYear").on("change", function(){
				var $Yearval = $("#selAgeCalYear");
				var textMonth = "월";
				$("#selAgeCalMonth").val("").change().html('<option value="" selected="selected" class="ex">'+textMonth+'</option>');

			if($Yearval.val() != ""){
				var Monthval;
				if($Yearval.val() == currentYear){
					Monthval = currentMonth;  //선택한 해가 올해와 같다면, 현재 달까지만 표시 
				}else{
					Monthval = 12; //아니면 12월까지 표시 
				}
				
				for(var i=1; i<=Monthval; i++){
					$("#selAgeCalMonth option:last").after('<option value="'+i+'">'+i+'</option>');
				}
			}		
			});


			// 월을 선택했을 때 해당되는 일 들을 표현
			$("#selAgeCalMonth").on("change", function(){  //이 함수가 실행될 조건 -> 월이 선택 되어야 한다 . 
					var $Yearval = $("#selAgeCalYear");
					var $Monthval = $("#selAgeCalMonth");
					var textDate = "일";
					
					$("#selAgeCalDate").val("").change().html('<option value="" selected="selected" class="ex">'+textDate+'</option>');
					
					if($Monthval.val() != ""){
						var Dateval;
							if($Yearval.val() == currentYear && $Monthval.val()==currentMonth){
								Dateval = currentDate;
							}else{
								Dateval = new Date($Yearval.val(), $Monthval.val(),0).getDate();
							}
						
						for(var i=1; i<=Dateval; i++){
							$("#selAgeCalDate option:last").after('<option value="'+i+'">'+i+'</option>');
						}
						
					}
			});

		$("#btnAgeCal").on("click",function(){
		var $messageBox = $("#pAgeCalMsg");
		var $Yearval = $("#selAgeCalYear");	//태어난 연도
		var $Monthval = $("#selAgeCalMonth"); //태어난 달
		var $Dateval = $("#selAgeCalDate");	//태어난 일
		
		$messageBox.empty();

		/*첫 구간 탑승일 기준으로 만 2세 이상 ~ 만 12세 미만은 소아, 만 2세 미만은 유아 운임*/
		var Depdate = $("#txtDepBookingDate").val();
		var DepY = Depdate.substr(0,4); //출발 년도
		var DepM = Depdate.substr(5,2);  //출발 월
		var DepD = Depdate.substr(8,2); //출발 일

			
		var age = DepY - $Yearval.val();
		if(age < 2 ){
			var p1 = "<span style='font-weight : bold;'>"+Depdate+"</span>";
			var p2 = "<span style='font-weight: bold; color:red;'>유아입니다.</span>";
			$messageBox.append("가는 날 "+p1+" 기준으로"+p2);
		}else if(age >= 2 && age < 12 ){
			var p1 = "<span style='font-weight : bold;'>"+Depdate+"</span>";
			var p2 = "<span style='font-weight: bold; color:red;'>소아입니다.</span>";
			$messageBox.append("가는 날 "+p1+" 기준으로"+p2);		
		}else{
			var p1 = "<span style='font-weight : bold;'>"+Depdate+"</span>";
			var p2 = "<span style='font-weight: bold; color:red;'>성인입니다.</span>";
			$messageBox.append("가는 날 "+p1+" 기준으로"+p2);
		}
		
		});

			
			/*	탑승자 연령 정보		*/
			
			var $_this = $(".js-selectLayer01");
			var $_this_btn = $_this.find(".js-selectLayer01-btn");
			
			$(".js-selectLayer01").each(function(i){
			var $this = $(this);
			var $this_btn = $this.find(".js-selectLayer01-btn");
			var $target = $($this_btn.attr("data-target"));
			var $txt = $this.find(":text");
			
			$this_btn.on("click", function(){
				if($this_btn.hasClass('active')){
					$this_btn.removeClass('active');
					$target.slideUp(150);
				}else{
					
					//만약 다른 선택창이 활성화 되어 있는 경우 ! 
					$_this.each(function(i){
						if($_this_btn.eq(i).hasClass('active')){
							// 다른 변수로 불러온 selectLayer 들 중에 active 클래스를 가진 것이 있으면, 그걸 닫아
							$_this_btn.eq(i).removeClass('active');
							$($_this_btn.eq(i).attr("data-target")).slideUp(150);
						}
					});				
					$this_btn.addClass('active');
					$target.slideDown(150);
				} //if-else 문 중 else
				
				// target 레이어 안에 버튼이 선택 되었을 때, 
					$target.find("button").one("click", function(i){
						$txt.val($(this).text());
						$this_btn.removeClass('active');
						$target.slideUp(150);
					});	//target 레이어 안에 글자가 선택 되었을 때,
					
				});		//레이어 오픈 버튼이 클릭 되었을 때 함수
			
			});	// 오픈 레이어 선택 함수
					
			
			// book_01 항공권 예약 페이지
			
			$("#btnAirportConfirm").on("click", function(){
				// 출도착지 선택 후 확인 버튼 시, 설정되지 않은 값이 있으면 return 하여 다시 화면으로! 
	//			alert("HidDepValue :"+$("#hidDepValue").val()+ "  HidArrValue :"+$("hidArrValue").val());
				if($("#hidDepValue").val()==''){
					alert('출발지를 선택 해주세요 : )');
					$("#txtDepAirport").focus();
				return;
				}
				if($("#hidArrValue").val()==''){
					alert('도착지가 선택되지 않았어요 : (');
					$("#txtArrAirport").focus();
				return;
				}
				
				console.log("HidDepValue :"+$("#hidDepValue").val()+ "  HidArrValue :"+$("#hidArrValue").val());
				
				var $bookingJourney = $(".booking-journey");
				var $bookingDate = $(".booking-date");
				
				// 출도착지가 선택 되었으면 전달할 객체에 값을 저장하고 난 뒤, 날짜 정보를 선택한다. 
				jsBookConditionDataObject.TRIPTYPE=selectTripType;
				jsBookConditionDataObject.segmentDatas =[];
				
				var jsSegmentDataObject = new SegmentDataObject();
				jsSegmentDataObject.departureAirport = $("#hidDepValue").val();
				jsSegmentDataObject.arrivalAirport = $("#hidArrValue").val();
				// <= 여기 까지가 출도착지를 선택하고 난 뒤에 저장될 데이터 값
				console.log("jsSegmentDataObject : "+jsSegmentDataObject);
				jsBookConditionDataObject.segmentDatas.push(jsSegmentDataObject);
				
				//왕복 일정이면 출발지와 도착지를 바꾸어 저장
				if(selectTripType=='RT'){
					var jsSegmentDataObject = new SegmentDataObject();
					jsSegmentDataObject.departureAirport=$("#hidArrValue").val();
					jsSegmentDataObject.arrivalAirport=$("#hidDepValue").val();
					jsBookConditionDataObject.segmentDatas.push(jsSegmentDataObject);
				}
	
				// 1단계에서 저장된 데이터를 가지고 2단계 일정을 선택하러 함수 실행 
				console.log("jsBookConditionDataObject :"+jsBookConditionDataObject);
				fn_changeBookingStep("2", jsBookConditionDataObject);
				
				$bookingJourney.css("display","none");
				$bookingDate.css("display","block");
				
				
			});
			
			/*	날짜 선택 후 확인	*/
			
			$("#btnDateConfirm").on("click",function(){
				var $bookingDate = $(".booking-date");
				var $bookingPassenger = $(".booking-passenger");
				
				jsBookConditionDataObject.segmentDatas[0].departureDateTime = $("#txtDepBookingDate").val();
				console.log("출발 날짜 : "+$("#txtDepBookingDate").val());
				if(selectTripType=='RT'){
					jsBookConditionDataObject.segmentDatas[1].departureDateTime = $("#txtArrBookingDate").val();
					console.log("도착 날짜 :"+$("#txtArrBookingDate").val());
				}
				
				fn_changeBookingStep("3", jsBookConditionDataObject);
					
				$bookingDate.css("display","none");
				$bookingPassenger.css("display","block");
			});
	
			/*
			 * 
			 * 	승객에 대한 정보 저장 객체	
			*	var PassengerDataObject = function(){
				this.passengerNo = ""; 	//승객 수 
				this.paxType = ""; //승객 탑승 종류 (성인, 소아, 유아)
				}
			 * 
			 * */
			
			
			/*	탑승 인원 선택 후 확인 버튼	*/
			$("#btnPaxCntConfirm").on("click", function(){
				var jsAdult = $("#txtSelAdtPaxCnt").val();
				var jsChd = $("#txtSelChdPaxCnt").val();
				var jsInf = $("#txtSelInfPaxCnt").val();
				
				if(jsAdult =='성인1'){jsAdult=1;}
				if(jsChd =='소아0'){jsChd=0;}
				if(jsInf=='유아0'){jsInf=0;}
				console.log("JsAdult :"+jsAdult+" JsChd :"+jsChd+"  JsInf :"+jsInf);
				
				if(jsAdult < jsChd){alert('유아 인원이 성인의 인원 보다 많습니다.'); return false;}
				
				console.log("jsBookConditionDataObject TRIPTYPE :"+jsBookConditionDataObject.TRIPTYPE);
				console.log("Dep : "+jsBookConditionDataObject.segmentDatas[0].departureAirport);
				console.log("Dep Date :"+jsBookConditionDataObject.segmentDatas[0].departureDateTime);
				
				var setPaxNo = 1; // 전체 탑승 인원 수 
				
				jsBookConditionDataObject.passengerDatas = []; //성인, 소아, 유아 
				
				var jsAdtPassengerData = new PassengerDataObject();
				jsAdtPassengerData.passengerNo = jsAdult;
				jsAdtPassengerData.paxType="ADT";
				console.log("paxType :"+jsAdtPassengerData.paxType);	
				jsBookConditionDataObject.passengerDatas.push(jsAdtPassengerData);
				
				if(jsChd > 0 ){
					var jsChdPassengerData = new PassengerDataObject();
					jsChdPassengerData.passengerNo=jsChd;
					jsChdPassengerData.paxType="CHD";
					jsBookConditionDataObject.passengerDatas.push(jsChdPassengerData);
				}
				
				if(jsInf > 0){
					var jsInfPassengerData = new PassengerDataObject();
					jsInfPassengerData.passengerNo = jsInf;
					jsInfPassengerData.paxType="INF";
					jsBookConditionDataObject.passengerDatas.push(jsInfPassengerData);
				}
				
				fn_changeBookingStep("4", jsBookConditionDataObject);
					
				goSelectSchedule(jsBookConditionDataObject);

			});
		
		
			/*	메인 페이지에서 확인 버튼	*/
			$("#goItinerary").on("click", function(){
			
				var jsBookConditionDataObject = new BookingConditionDataObject();
				var ShowBooking = new BookingInfo();
				
				var $triptype = $(".booking-journey-type-area").find("input:radio:checked").val();
				
				jsBookConditionDataObject.TRIPTYPE = $triptype;
				jsBookConditionDataObject.segmentDatas =[];
				jsBookConditionDataObject.passengerDatas = [];
				
				var $dep = $("#txtDepAirport").val();
				var $arr = $("#txtArrAirport").val();
				
				if($dep == "" || $arr==""){
					alert(" 출도착지를 선택 해주세요");
					return;
				}
				
				var $depdate = $("#txtDepBookingDate").val();
				var $arrdate = "";
				
				var jsSegmentDataObject = new SegmentDataObject();
				jsSegmentDataObject.departureAirport = $dep;
				jsSegmentDataObject.departureDateTime = $depdate;
				jsSegmentDataObject.arrivalAirport = $arr;
								
				jsBookConditionDataObject.segmentDatas.push(jsSegmentDataObject);
				if($triptype == 'RT'){
					$arrdate = $("#txtArrBookingDate").val();
					var jsSegmentDataObject = new SegmentDataObject();
					jsSegmentDataObject.departureAirport = $arr;
					jsSegmentDataObject.departureDateTime = $arrdate;
					jsSegmentDataObject.arrivalAirport = $dep;
					jsBookConditionDataObject.segmentDatas.push(jsSegmentDataObject);
				}
				
				var jsPassengerDataObject = new PassengerDataObject();
				
				var $adtcnt = $("#txtSelAdtPaxCnt").val().replace(/[^0-9]/g,'');
				var $chdcnt = $("#txtSelChdPaxCnt").val().replace(/[^0-9]/g,'');
				var $infcnt = $("#txtSelInfPaxCnt").val().replace(/[^0-9]/g,'');
				
				jsPassengerDataObject.paxType="ADT";
				jsPassengerDataObject.passengerNo = $adtcnt;
				
				jsBookConditionDataObject.passengerDatas.push(jsPassengerDataObject);
				
				if($chdcnt > 0){
					var jsPassengerDataObject = new PassengerDataObject();
					jsPassengerDataObject.paxType="CHD";
					jsPassengerDataObject.passengerNo = $chdcnt;
					jsBookConditionDataObject.passengerDatas.push(jsPassengerDataObject);
				}
				
				if($infcnt > 0){
					var jsPassengerDataObject = new PassengerDataObject();
					jsPassengerDataObject.paxType="INF";
					jsPassengerDataObject.passengerNo = $chdcnt;
					jsBookConditionDataObject.passengerDatas.push(jsPassengerDataObject);
				}
				
				
				console.log("메인 페이지");
				console.log(" TripType :"+$triptype+"  Dep :"+$dep+"  Arr :"+$arr);
				console.log(" Dep Date :"+$depdate+"  Arr Date :"+$arrdate);
				console.log(" Adult Cnt :"+$adtcnt+"  Chd Cnt :"+ $chdcnt+"  Inf Cnt :"+$infcnt);
			
				
				document.availInforForm.hidBookConditionData.value = JSON.stringify(jsBookConditionDataObject);
				document.availInforForm.action="./Gobooking.bo";
				document.availInforForm.submit();
				
				
			});
			
			
			
			/* 5단계에서 탑승객의 정보를 입력한 후 확인 버튼 */
			
			$("#BtnComplete").on("click", function(){
				
				// 항공기 정보 포함
				var detailFlightCondition = $("#detailBookingCondition").val();
				var detailBookingCondition = $("#jsbookingCondition").val();
				// 원래 가지고 있던 정보
				
				var jsFlightDetailInfo = new FlightDetailInfo();
				var jsBookingCondition = new BookingConditionDataObject();
				
				var jsPassengerDatas = new PassengerDataObject();
				jsPassengerDatas = [];
	
				
				jsFlightDetailInfo = jQuery.parseJSON(detailFlightCondition);
				jsBookingCondition = jQuery.parseJSON(detailBookingCondition);
			
				jsPassengerDatas = jsBookingCondition.passengerDatas;
				
//				console.log(jsPassengerDatas);
				
//				console.log('Flight ');
//				console.log(jsFlightDetailInfo);
//				console.log('Booking');
//				console.log(jsBookingCondition);
			
				var rePhoneType = $(".single").find(".active").find("input:radio").val();
//				console.log(rePhoneType);
				var countryNum = $("#selCountryCode").val();
				var phoneNumF = $("#phoneFirstNumber").val();
				var phoneNumM = $("#phoneSecondNumber").val();
				var phoneNumT = $("#phoneThirdNumber").val();
				
				var rePhoneNum = countryNum + phoneNumF + phoneNumM + phoneNumT;
				
				var reEmail = $("#email").val();
				
				var jsReservationPerson = new ReservationPersonInfo();
				
				jsReservationPerson.phoneType = rePhoneType;
				jsReservationPerson.phoneNumber = rePhoneNum;
				jsReservationPerson.email = reEmail;
				/* 예약자의 정보 저장. 필요하다면 나중에 아이디값  */
				console.log(jsReservationPerson);
				
				document.GoBook06.jsBookingCondition.value = JSON.stringify(jsBookingCondition);
				document.GoBook06.jsFlightInfo.value = JSON.stringify(jsFlightDetailInfo);
				document.GoBook06.jsReservationPerson.value= JSON.stringify(jsReservationPerson);
				document.GoBook06.action="./GoBook06.bo";
				document.GoBook06.submit();
			});
			
			/*
			 *
			 * 	var OptionSeatTotal = function(){
				this.optionSeats = [];
			}
			 * var OptionSeatObj = function(){
				this.seatNum = "";
				this.price = "";
			}
			
			var OptionSeat = function(){
			     this.SeattripType = "";
			     this.SeatArray = [];
			} * */
			
			
			$("#Go_Pay").on("click", function(){
				
				var triptype = $("#triptype").val();
				var jsOptionService = new OptionService();
				
				
				
					jsOptionService.bagDatas = [];
					jsOptionService.mealDats = [];

					var jsOptionBag = new OptionBag();
					var jsOptionMeal = new OptionMeal();					

					jsOptionService.seatDatas= "";
					
				var jsOptionSeatTotal = new OptionSeatTotal();
				jsOptionSeatTotal.optionSeats = [];
				
				var jsOptionSeat = new OptionSeat();
				jsOptionSeat.SeatArray = [];
				
				var adcnt = Number($("#Summary_ADT").text());
				var chcnt = Number($("#Summary_CHD").text());
				
				var personCnt = adcnt + chcnt ;
				
				jsOptionSeat.SeattripType = "OW";
				for(var i=1; i<=personCnt; i++){
					var jsOptionSeatObj = new OptionSeatObj();
					jsOptionSeatObj.seatNum = $("#OWseatNum_"+i).text();
					jsOptionSeatObj.price = $("#OWseatPrice_"+i).text();
					
					if(jsOptionSeatObj.seatNum ==""){
						alert("좌석을 선택 해주세요");
						return false;
					}
					
					console.log(jsOptionSeatObj);
					jsOptionSeat.SeatArray.push(jsOptionSeatObj);
				}
				
				jsOptionSeatTotal.optionSeats.push(jsOptionSeat);
				
				
				if(triptype=='RT'){
					var RToptionSeat = new OptionSeat();
					RToptionSeat.SeatArray = [];
					
					RToptionSeat.SeattripType="RT";
					
					for(var i=1; i<=personCnt; i++){
						var jsOptionSeatObj = new OptionSeatObj();
						jsOptionSeatObj.seatNum = $("#RTseatNum_"+i).text();
						jsOptionSeatObj.price = $("#RTseatPrice_"+i).text();
					
						if(jsOptionSeatObj.seatNum ==""){
							alert("좌석을 선택 해주세요");
							return false;
						}
					
						RToptionSeat.SeatArray.push(jsOptionSeatObj);
					}
					
					jsOptionSeatTotal.optionSeats.push(RToptionSeat);
				}
				
				
				alert("부가 서비스는 출발 48 시간 전까지 변경 가능 합니다.");

				jsOptionService.seatDatas = jsOptionSeatTotal;
				
				document.GoBook07.jsOption.value = JSON.stringify(jsOptionService);
				document.GoBook07.action = "./GoPaymentPage.bo";
				document.GoBook07.submit();
				
			});
			
			$("#btnPayment").on("click", function(){
				
				var payType = $("input:radio:checked").val();
				var total = $(".total-price").find(".price").text();
				console.log(payType);
				console.log(total);
				
				var PayInfo = function(){
					this.payType ="";
					this.totalPrice = "";
				}
				
				var jsPay = new PayInfo();
				jsPay.payType = payType;
				jsPay.totalPrice = total;
				
				console.log(jsPay);
				
				if(confirm("결제 하시겠습니까?")){
					document.GoBook07.jsPay.value = JSON.stringify(jsPay);
					document.GoBook07.action = "./GoReservationAndPay.bo";
					document.GoBook07.submit();
				}else{
					return false;
				}
				
			});
			
			
			
			/*	출도착, 스케줄 조회 확인 버튼 눌렀을 때			*/
			
			// 1. 스케줄 조회 / 확인 버튼 
			$("#btnSubmit").on("click", function(){
				
				
				
				var scradio = $("input:radio[name='radTripType']:checked").val();

				var dep = $("#txtDepAirport").val();
				var arr = $("#txtArrAirport").val();
				var scCondition = $("input:radio[name='radTerm']:checked").attr("id");
				
				var depDate = $("#txtDepBookingDate").val();
				var arrDate = "";
				
				if(scradio == "RT"){
					arrDate = $("#txtArrBookingDate").val();
				}
						
				
				console.log(scradio +"        "+scCondition);
				console.log("dep :"+dep+'       arr :'+ arr);
				console.log("dep Date :"+depDate+"    arr Date :"+arrDate);
				
				var condition = function(){
					this.triptype= "";
					this.condition ="";
					this.dep="";
					this.arr = "";
					this.depDate = "";
					this.arrDate = "";
				}
				
				var LookupCon = new condition();
				LookupCon.triptype = scradio;
				LookupCon.condition = scCondition;
				LookupCon.dep = dep;
				LookupCon.arr = arr;
				LookupCon.depDate = depDate;
				LookupCon.arrDate = arrDate;
				
				console.log(LookupCon);
				fn_ScheduleLookup(LookupCon);
				
			});
			
			
			
			//	2. 출도착 조회 
			
			// 노선별 
			
			var DepArrival = function(){
				this.type="";
				this.condition ="";
			}
			
			$("#btnSearch_Tab1").on("click", function(){
				var type = "Route";
				var dep = $("#txtDepAirport").val();
				var arr = $("#txtArrAirport").val();
				var depDate = $("#selDepDate1").val();
				
				var condition = function(){
					this.dep = "";
					this.arr = "";
					this.depDate = "";
				}
				
				var RouteCondition = new condition();
				
				RouteCondition.dep = dep;
				RouteCondition.arr = arr;
				RouteCondition.depDate = depDate;
				
				var jsDepArrival = new DepArrival();
				jsDepArrival.type="Route";
				jsDepArrival.condition = RouteCondition;
				
				fn_DepArrivalLookup(jsDepArrival);
				
			});
			
			// 편명별 
			
			$("#btnSearch_Tab2").on("click", function(){
				var type = "FlightName";
				var flightname = $("#txtFlightid").val();
				var depDate = $("#selDepDate2").val();
				
				var condition = function(){
					this.flightname = "";
					this.depDate = "";
				}
				
				var byFlightCondition = new condition();
				
				byFlightCondition.flightname = flightname;
				byFlightCondition.depDate = depDate;
				
				var jsDepArrival = new DepArrival();
				jsDepArrival.type="FlightName";
				jsDepArrival.condition = byFlightCondition;
				
				fn_DepArrivalLookup(jsDepArrival);
				
			});
		
			
}); // document.ready 함수 끝 

function fn_DepArrivalLookup(data){
	var str = JSON.stringify(data);
	console.log(str);
	
	$.ajax({
		type : "POST",
		url : "./depArrivalLookup.bo",
		dataType :"JSON",
		contextType : "application/x-www-form-urlencoded; charset=UTF-8",
		data : {LookupData : str},
		success : function(data){
//			alert("ㅇㅇ");
			console.log(data);
			$("#FlightSearchList_div").removeClass('hide');
			$("#spanSrchDepAirportid").text(data.dep);
			$("#spanSrchArrAirportid").text(data.arr);
			$("#spanSrchDepDate").text(data.depdate);
			console.log(data.flightlist.length);
			var str ="";
			
			if(data.flightlist.length == 0){
				str +="<tr><td colspan='8' class='tbl-null'>해당 일자에는 운항하는 항공편이 없습니다. </td></tr>";
			}else{
			
				
				for(var i=0; i<data.flightlist.length; i++){
					str += "<tr>"+
						   "<td>"+data.flightlist[i].flight+"</td>"+
						   "<td><em class='point-color01'>"+data.flightlist[i].state+"</em></td>"+
						   "<td>"+data.flightlist[i].deptime+"</td>"+
						   "<td>"+data.flightlist[i].willdep+"</td>"+
						   "<td>"+data.flightlist[i].sucdep+"</td>"+
						   "<td>"+data.flightlist[i].arrtime+"</td>"+
						   "<td>"+data.flightlist[i].willarr+"</td>"+
						   "<td>"+data.flightlist[i].sucarr+"</td>"+
						   "</tr>";
				}
			}	
				$("#FlightSearchList_tbody").html(str);
			
		}
	});
}

function fn_ScheduleLookup(data){
	
	console.log(data);
	var triptype = data.triptype;
	console.log(triptype);
	var condition = data.condition;
	var dep = data.dep;
	var arr = data.arr;
	var depDate = data.depDate;
	var arrDate = data.arrDate;
	
	var str = JSON.stringify(data);
	console.log(str);
	
	$.ajax({
		type : "POST",
		url : "./scheduleLookup.bo",
		dataType :"JSON",
		contextType : "application/x-www-form-urlencoded; charset=UTF-8",
		data : {LookupData : str},
		success : function(data){
			alert("d");
			console.log(data);
	
		if(condition == "radWeekly"){	
		
			$("#spanDepAirportName_1").text(dep);
			$("#spanArrAirportName_1").text(arr);
			
			var owStr = "";
			
			if(data.list.length == 0 ){
				owStr +="<tr><td colspan='12' class='tbl-null'>해당 주간에는 운항하는 항공편이 없습니다.</td></tr>";
			} else {
			
				for(var i=0; i<data.list.length; i++){
					owStr +="<tr>"+
							"<td>"+data.list[i].flightName+"</td>"+
							"<td>"+data.list[i].flightType+"</td>"+
							"<td>"+data.list[i].depTime+"</td>"+
							"<td>"+data.list[i].arrTime+"</td>"+
							"<td>운항시간 ㅇㅅㅠ</td>";
					for(var j=0; j<data.list[i].dayList.length; j++){
						var importClass ="Import";
						if(data.list[i].dayList[j].day == "N") importClass = "hideImport";
						owStr += "<td class='tbl-flight'><span class='icon-flight-from02 "+importClass+"'>"+data.list[i].dayList[j].day+"</span></td>";
					}
						owStr += "</tr>";
							
				}
			}
			$("#weekly_DepFlight_tbody").html(owStr);
			$("#divWeeklyResult_Dep").removeClass("hide");
			
			if(triptype=="RT"){
				
				$("#spanDepAirportName_2").text(arr);
				$("#spanArrAirportName_2").text(dep);
				
				var rtStr = "";
				if(data.rtlist.length == 0){
					rtStr += "<tr><td colspan='12' class='tbl-null'>해당 주간에는 운항하는 항공편이 없습니다.</td></tr>";
				}else {
					for(var i=0; i<data.rtlist.length; i++){
						rtStr +="<tr>"+
								"<td>"+data.rtlist[i].flightName+"</td>"+
								"<td>"+data.rtlist[i].flightType+"</td>"+
								"<td>"+data.rtlist[i].depTime+"</td>"+
								"<td>"+data.rtlist[i].arrTime+"</td>"+
								"<td>운항시간 ㅇㅅㅠ</td>";
						for(var j=0; j<data.rtlist[i].dayList.length; j++){
							var importClass ="Import";
							if(data.list[i].dayList[j].day == "N") importClass = "hideImport";
							rtStr += "<td class='tbl-flight'><span class='icon-flight-to02 "+importClass+"'>"+data.rtlist[i].dayList[j].day+"</td>";
						}
							rtStr += "</tr>";
					}		
				}
				
				$("#weekly_ArrFlight_tbody").html(rtStr);
				$("#divWeeklyResult_Arr").removeClass("hide");
				
			}
		}else if(condition == "radSelectOne"){
			
			$("#spanSelectOneDepAirportName_1").text(dep);
			$("#spanSelectOneArrAirportName_1").text(arr);
			
			var owStr = "";
			
			if(data.list.length == 0 ){
				owStr += "<tr><td colspan='6' class='tbl-null'>해당 주간에는 운항하는 항공편이 없습니다.</td></tr>";
			}else {
				for(var i=0; i<data.list.length; i++){
					owStr +="<tr>"+
							"<td>"+data.list[i].flightName+"</td>"+
							"<td>"+data.list[i].flightType+"</td>"+
							"<td>"+depDate+"</td>"+
							"<td>"+data.list[i].depTime+"</td>"+
							"<td>"+data.list[i].arrTime+"</td>"+
							"<td>운항 시간</td>"+
							"</tr>";
							
				}
			}
			$("#selectOne_DepFlight_tbody").empty();
			$("#selectOne_DepFlight_tbody").html(owStr);
			$("#divSelectOneResult_Dep").removeClass("hide");
			
			if(triptype="RT"){
				
				$("#spanSelectOneDepAirportName_2").text(arr);
				$("#spanSelectOneArrAirportName_2").text(dep);
				
				var rtStr = "";
				
				if(data.rtlist.length == 0 ){
					rtStr += "<tr><td colspan='6' class='tbl-null'>해당 주간에는 운항하는 항공편이 없습니다.</td></tr>";
				}else {
					for(var i=0; i<data.rtlist.length; i++){
						rtStr +="<tr>"+
								"<td>"+data.rtlist[i].flightName+"</td>"+
								"<td>"+data.rtlist[i].flightType+"</td>"+
								"<td>"+arrDate+"</td>"+
								"<td>"+data.rtlist[i].depTime+"</td>"+
								"<td>"+data.rtlist[i].arrTime+"</td>"+
								"<td>운항 시간</td>"+
								"</tr>";
								
						}
				}
				$("#selectOne_ArrFlight_tbody").html(rtStr);
				$("#divSelectOneResult_Arr").removeClass("hide");
				
			}
			
			
		}
			
		}
		
		
		
	});
	
}

//5단계로 가져가야 할 데이터는 뭘까. (확실하게 선택된 데이터 )
/*	1. 여행 타입 RT, OW 
*  2. 출발지와 목적지 / RT의 경우 두가지를 바꾼 것. 
*  3. 출발지에서의 탑승 날짜와, 탑승 시간. 항공기편
*  4. RT의 경우 목적지에서 출발지로 오는 날짜와, 시간, 항공기편 
* 	5. 탑승 인원의 종류와 그 수 (성인, 소아, 유아)
* 	6. 각 인원의 금액과 총 금액, 세금, 유류할증료 등. 
* 
* */

//여행 조건을 전부 입력후 5단계, 탑승자 정보를 입력하는 페이지로 이동할 데이터들 
function fn_ClickConfirmBtn(){
	var memid = $("#memID").val();
	var memEmail = $("#memEMAIL").val();

	if(memid==""){
		alert("로그인 후 이용 가능합니다.");
		location.href="./LoginJoin.bo";
	}else{

	var jsFlightInfo = new FlightInfo();
	var jsBookingDataObject = new BookingConditionDataObject();
	
	var $tripType = $("#triptype").val();
	var $depflight = $("#depFlight").text();
	
	var $owFlightNum = $("#OWscheduleNum").val();
	var $rtFlightNum = $("#RTscheduleNum").val();

	
	
	jsFlightInfo.triptype = $tripType;
	jsFlightInfo.flightDetailInfo =[];

	jsBookingDataObject.TRIPTYPE= $tripType;
	jsBookingDataObject.segmentDatas = [];
	jsBookingDataObject.passengerDatas = [];
	
	
	var $departureAirport=$("#departureAirport").val();
//	var $departureDate = moment($("#departureDateTime").val()).format('YYYY.MM.DD [(]dd[)]' );
	var $departureDate = $("#departureDateTime").val();
	var $departureTime = $("#deptime").text();
	var $arrivalTime = $("#arrtime").text();
	var $arrivalAirport = $("#arrivalAirport").val();
	
	var depFlightDetailInfo = new FlightDetailInfo();
	depFlightDetailInfo.depflight = $depflight;
	depFlightDetailInfo.dep = $departureAirport;
	depFlightDetailInfo.arr = $arrivalAirport;
	depFlightDetailInfo.depDate = $departureDate;
	depFlightDetailInfo.depTime = $departureTime;
	depFlightDetailInfo.arrTime = $arrivalTime;
	depFlightDetailInfo.baseprice = $("#depBaseprice").val();
	depFlightDetailInfo.saleprice = $("#depSaleprice").val();

	var segmentData = new SegmentDataObject();
	segmentData.arrivalAirport=$arrivalAirport;
	segmentData.departureAirport = $departureAirport;
	segmentData.departureDateTime = $departureDate;
	
	jsBookingDataObject.segmentDatas.push(segmentData);
	jsFlightInfo.flightDetailInfo.push(depFlightDetailInfo);
	
	
	
	
	var $adtcnt = $("#adtPaxCnt").val();
	var $chdcnt = $("#chdPaxCnt").val();
	var $infcnt = $("#infPaxCnt").val(); 
	
	

	var $arrTocomeDep ="";
	var $arrTocomeArr = "";
	var $arrTocomeflight = "";
	var $arrTocomeDate ="";
	var $arrTocomeTime ="";
	var $arrTocomearrivalTime="";
	
	if($tripType=='RT'){
		
		var arrFlightDetailInfo = new FlightDetailInfo();

		$arrTocomeflight = $("#arrFlight").text();
		$arrTocomeDep = $arrivalAirport;
		$arrTocomeArr = $departureAirport;
		$arrTocomeDate = $("#rtdepartureDate").text();
		$arrTocomeTime = $("#rtdeptime").text();
		$arrTocomearrivalTime = $("#rtarrtime").text();
		
		arrFlightDetailInfo.depflight = $arrTocomeflight;
		arrFlightDetailInfo.dep = $arrTocomeDep;
		arrFlightDetailInfo.arr = $arrTocomeArr;
		arrFlightDetailInfo.depDate = $arrTocomeDate;
		arrFlightDetailInfo.depTime = $arrTocomeTime;
		arrFlightDetailInfo.arrTime = $arrTocomearrivalTime;
		arrFlightDetailInfo.baseprice = $("#arrBaseprice").val();
		arrFlightDetailInfo.saleprice = $("#arrSaleprice").val();
		
		
		var AsegmentData = new SegmentDataObject();
		AsegmentData.arrivalAirport=$arrTocomeArr;
		AsegmentData.departureAirport =$arrTocomeDep;
		AsegmentData.departureDateTime = $arrTocomeDate;
	
		jsBookingDataObject.segmentDatas.push(AsegmentData);
		
		jsFlightInfo.flightDetailInfo.push(arrFlightDetailInfo);
		
	}
	
	var jsPassengerDataObject = new PassengerDataObject();
	
	jsPassengerDataObject.paxType="ADT";
	jsPassengerDataObject.passengerNo = $adtcnt;
	
	jsBookingDataObject.passengerDatas.push(jsPassengerDataObject);
	
	if($chdcnt > 0){
		var jsPassengerDataObject = new PassengerDataObject();
		jsPassengerDataObject.paxType="CHD";
		jsPassengerDataObject.passengerNo = $chdcnt;
		jsBookingDataObject.passengerDatas.push(jsPassengerDataObject);
	}
	
	if($infcnt > 0){
		var jsPassengerDataObject = new PassengerDataObject();
		jsPassengerDataObject.paxType="INF";
		jsPassengerDataObject.passengerNo = $chdcnt;
		jsBookingDataObject.passengerDatas.push(jsPassengerDataObject);
	}
	
	document.goPassengerInfoView.detailBooking.value = JSON.stringify(jsFlightInfo);
	document.goPassengerInfoView.jsDetailBooking.value= JSON.stringify(jsBookingDataObject);
	document.goPassengerInfoView.action ="./GoPassengerInfoView.bo";
	document.goPassengerInfoView.submit();

	}
}

// main 페이지에서 빠른 예매 버튼을 이용하여 예매창으로 넘어갈 경우 실행되는 함수
function GoBook_04(data){
	
	var jsBookConditionDataObject = jQuery.parseJSON(data);
	
	console.log("Go Book_04 JsonData :"+jsBookConditionDataObject);

	
	fn_changeBookingStep("1", jsBookConditionDataObject);
	fn_changeBookingStep("2", jsBookConditionDataObject);
	fn_changeBookingStep("3", jsBookConditionDataObject);
	fn_changeBookingStep("4", jsBookConditionDataObject);

	goSelectSchedule(jsBookConditionDataObject);
}

function GoBook_05(data){
	var jsBookConditionDataObject= jQuery.parseJSON(data);

	fn_changeBookingStep("1", jsBookConditionDataObject);
	fn_changeBookingStep("2", jsBookConditionDataObject);
	fn_changeBookingStep("3", jsBookConditionDataObject);
	fn_changeBookingStep("4", jsBookConditionDataObject);
	fn_changeBookingStep("5", jsBookConditionDataObject);
	
}

function GoBook_06(data){
	var jsBookConditionDataObject = jQuery.parseJSON(data);
	
	fn_changeBookingStep("1", jsBookConditionDataObject);
	fn_changeBookingStep("2", jsBookConditionDataObject);
	fn_changeBookingStep("3", jsBookConditionDataObject);
	fn_changeBookingStep("4", jsBookConditionDataObject);
	fn_changeBookingStep("5", jsBookConditionDataObject);
	fn_changeBookingStep("6", jsBookConditionDataObject);
	
}
function GoBook_07(data){
	var jsBookConditionDataObject = jQuery.parseJSON(data);
	
	fn_changeBookingStep("1", jsBookConditionDataObject);
	fn_changeBookingStep("2", jsBookConditionDataObject);
	fn_changeBookingStep("3", jsBookConditionDataObject);
	fn_changeBookingStep("4", jsBookConditionDataObject);
	fn_changeBookingStep("5", jsBookConditionDataObject);
	fn_changeBookingStep("6", jsBookConditionDataObject);
	fn_changeBookingStep("7", jsBookConditionDataObject);
}

function goSelectSchedule(Object){
	var bookingInfo = new BookingInfo();
//	alert("d");
	bookingInfo.tripType = Object.TRIPTYPE;

	bookingInfo.departureAirport = Object.segmentDatas[0].departureAirport;
	bookingInfo.departureDateTime = Object.segmentDatas[0].departureDateTime;

	bookingInfo.arrivalAirport = Object.segmentDatas[0].arrivalAirport;
	bookingInfo.adtPaxCnt = Object.passengerDatas[0].passengerNo;
	bookingInfo.chdPaxCnt = 0;
	bookingInfo.infPaxCnt = 0;
//	alert(Object.passengerDatas[0].passengerNo);

	//생기지 않은 배열에 대한 인덱스는 먹히지 않음. 
	
	if(bookingInfo.tripType =='RT'){
		bookingInfo.arrivalDateTime = Object.segmentDatas[1].departureDateTime;
		console.log("geSelectSchdule Arrival Date Time :"+bookingInfo.arrivalDateTime);
	}
	
	
	if(Object.passengerDatas.length == 2){
		// 성인외의 인원이 있을 때
		if(Object.passengerDatas[1].passengerNo > 0){
			//1번 인덱스의 인원 수가 1이상일 때, 
			if(Object.passengerDatas[1].paxType=='CHD'){
				//소아 이면
				bookingInfo.chdPaxCnt = Object.passengerDatas[1].passengerNo;
				bookingInfo.infPaxCnt = 0;
			}else if(Object.passengerDatas[1].paxType=='INF'){
				bookingInfo.infPaxCnt = Object.passengerDatas[1].passengerNo;
				bookingInfo.chdPaxCnt = 0;
			}
			

		}
	}else if(Object.passengerDatas.length == 3){
		bookingInfo.chdPaxCnt = Object.passengerDatas[1].passengerNo;
		bookingInfo.infPaxCnt = Object.passengerDatas[2].passengerNo;
	}

//	alert("d");
	
	$.ajax({
		type:"POST",
		url : "./Schedule.bo",
		dataType : "html",
		contextType : "application/x-www-form-urlencoded; charset=UTF-8",
		data : { tripType : bookingInfo.tripType,
					  dep : bookingInfo.departureAirport,
				  depDate : bookingInfo.departureDateTime,
				  arrDate : bookingInfo.arrivalDateTime,
					  arr : bookingInfo.arrivalAirport,
					  adt : bookingInfo.adtPaxCnt,
					  chd : bookingInfo.chdPaxCnt,
					  inf : bookingInfo.infPaxCnt
				},
		success : function(data){

			$(".booking-wrap").html(data);
			ShowBookingCondition(bookingInfo);
		}
	});
};

/*	Book_04.jsp 에 셋팅	*/

function ShowBookingCondition(data){
	alert("Show Booking Condition");
	// 인원 수 
	var $txtAdult = $("#Summary_ADT");
	var $txtChild = $("#Summary_CHD");
	var $txtInfant = $("#Summary_INF");

	$txtAdult.text(data.adtPaxCnt);
	$txtChild.text(data.chdPaxCnt);
	$txtInfant.text(data.infPaxCnt);
}


/*		Book_05.jsp, Book_06.jsp 우측 안내 셋팅 	*/
function SettingDataBook05(detailFlight, detailBooking){

	var jsFlight = new FlightInfo();
	var jsFlightDetailDep =new FlightDetailInfo();
	var jsFightDetailRT = new FlightDetailInfo();
	
	var jsBookingCondition = new BookingConditionDataObject();
	var jsPassengerDataOject = new PassengerDataObject();
	
	var adcnt;
	var chdcnt;
	var infcnt;

	console.log("detailFlight :"+detailFlight);
	
	console.log("detailBooking :"+ detailBooking);
	
	if(detailFlight != null){

		jsFlight = jQuery.parseJSON(detailFlight);
		console.log("jsFlight.flightDetailInfo.length :"+jsFlight.flightDetailInfo.length);
		if(jsFlight.flightDetailInfo.length	== 2){
			jsFlightDetailDep = jsFlight.flightDetailInfo[0];
			jsFlightDetailRT = jsFlight.flightDetailInfo[1];
		}else if(jsFlight.flightDetailInfo.length == 1 ){
			console.log("들어왔는데 왜 안 들어가니 개새야");
			console.log("오타가 났으니까 안 들어가지 ><");
			jsFlightDetailDep = jsFlight.flightDetailInfo[0];
		}
		
		console.log(jsFlight);
		console.log(jsFlightDetailDep);
//		console.log(jsFlightDetailRT);
	}
	
	jsBookingCondition = jQuery.parseJSON(detailBooking);
	
	console.log(jsBookingCondition);
	
	var passengerDatas = new PassengerDataObject();
		passengerDatas = [];
		passengerDatas = jsBookingCondition.passengerDatas;
	
	adcnt = jsBookingCondition.passengerDatas[0].passengerNo;
	
/*	console.log(passengerDatas[0]);
	console.log(passengerDatas[1]);
	console.log(passengerDatas[2]);
	
	console.log(passengerDatas.length);
	console.log("detailBooking adcnt : "+adcnt);*/
	console.log(" 여긴 잘 들어와 확인 했어");
	
	if(jsBookingCondition.passengerDatas.length == 2){
		if(jsBookingCondition.passengerDatas[1].paxType='CHD'){
			chdcnt = jsBookingCondition.passengerDatas[1].passengerNo;
			infcnt = 0;
		
		}else{
			chdcnt = 0;
			infcnt = jsBookingCondition.passengerDatas[1].passengerNo;
		}
	}else if(jsBookingCondition.passengerDatas.length==3){
		chdcnt = jsBookingCondition.passengerDatas[1].passengerNo;
		infcnt = jsBookingCondition.passengerDatas[2].passengerNo;
		
		console.log("1244 :"+chdcnt +"   infcnt :  "+infcnt);
	}else{
		chdcnt = 0;
		infcnt =0;
	}
	
	console.log("Adult :"+adcnt+"  Child :"+chdcnt+"  Infant :"+infcnt);
	
	$("#Summary_ADT").text(adcnt);
	$("#Summary_CHD").text(chdcnt);
	$("#Summary_INF").text(infcnt);
	
	
	var depDate = moment(jsFlightDetailDep.depDate).format('YYYY.MM.DD [(]dd[)]');
	
	console.log("왜 안뜨고 지랄일까 존나 힘빠지네 ㅅㅂ");
	
	/*	우측 간편 안내 셋팅  	*/
	var depStr = '<div class="booking-airlineticket-finalInfo-head-kinds"><span class="icon_airlineticket_from02" name="lblDepartureItinerary">가는여정</span>'+jsFlightDetailDep.depflight+'</div>'+
				 '<div class="booking-airlineticket-finalInfo-head-fly">'+jsFlightDetailDep.dep+'&nbsp;<span class="diretory icon_airlineticket_oneway02" name="lblFrom"></span></div>'+
				 '<div class="booking-airlineticket-finalInfo-head-fly">'+jsFlightDetailDep.arr+'</div>'+
				 '<div class="booking-airlineticket-finalInfo-head-date" id="Summary_1"><div class="booking-airlineticket-finalInfo-head-date">'+depDate+' '+jsFlightDetailDep.depTime+' ~ '+jsFlightDetailDep.arrTime+'</div></div>';
	
	$(".booking-airlineticket-finalInfo-head-from").html(depStr);
	
	if(jsFlight.triptype =='RT'){
		var RTdepDate = moment(jsFlightDetailRT.depDate).format('YYYY.MM.DD [(]dd[)]');
		
		var RTdepStr = '<div class="booking-airlineticket-finalInfo-head-kinds"><span class="icon_airlineticket_from02" name="lblDepartureItinerary">가는여정</span>'+jsFlightDetailRT.depflight+'</div>'+
		 '<div class="booking-airlineticket-finalInfo-head-fly">'+jsFlightDetailRT.dep+'&nbsp;<span class="diretory icon_airlineticket_oneway02" name="lblFrom"></span></div>'+
		 '<div class="booking-airlineticket-finalInfo-head-fly">'+jsFlightDetailRT.arr+'</div>'+
		 '<div class="booking-airlineticket-finalInfo-head-date" id="Summary_1"><div class="booking-airlineticket-finalInfo-head-date">'+RTdepDate+' '+jsFlightDetailRT.depTime+' ~ '+jsFlightDetailRT.arrTime+'</div></div>';

		$(".booking-airlineticket-finalInfo-head-to").html(RTdepStr);
		
	}
}
// 출도착 항공편의 가격 각각의 총 가격(총 인원)
var PriceInfo = function(){
	this.FlightPrice = "";
	this.fuelPrice = 0;
	this.tax = 28000;
	this.total = "";
}
var PersonPrice = function(){
	this.personPerprice = [];
}
//승객별 가격
var PricePerPerson = function(){
	this.paxType = "";	//승객 타입 
	this.passengerNo = "";	//인원수 
	this.price="";			//기본 가격
	this.tax="";			//세금
	this.perPerson ="";		//기본 가격 + 세금
	this.totalPrice=""; 	// 해당 타입의 인원의 총 금액 
}

// 출도착 항공편 각각의 가격을 합한 가격
var finallyPriceInfo = function(){
	this.FlightPriceTotal = "";
	this.fuelPrice = 0;
	this.tax = "";
	this.FinallyTOTAL = "";
}

/*	총 금액 및 개인 가격 셋팅	*/
function SettingFinalPrice(detailFlight, passengerDatas){
	var jsFlight = new FlightInfo();
	var jsFlightDetailDep =new FlightDetailInfo();
	var jsFightDetailRT = new FlightDetailInfo();
	
	var jsPassengerDataOject = new PassengerDataObject();
	jsPassengerDataObject = [];
	
	var depBase_price ="";
	var depSale_price = "";
	
	var RtBase_price = "";
	var RtSale_price = "";
	
	var TotalPrice = "";
	
	var DepPrice = "";
	var RtPrice = "";
	
	var depFinallyPrice = new PriceInfo();
	var RtFinallyPrice = new PriceInfo();
	var FinallyPrice = new finallyPriceInfo();
	
	var adcnt;
	var chdcnt;
	var infcnt;
	
	jsFlight = jQuery.parseJSON(detailFlight);
	jsPassengerDataObject = passengerDatas;
	
	var triptype = jsFlight.triptype;
	
	console.log("In Setting Final Price :"+jsPassengerDataObject);
	
	console.log('dd : '+jsPassengerDataObject[0].paxType);
	
	adcnt = jsPassengerDataObject[0].passengerNo;
	
	if(jsPassengerDataObject.length == 2){
		if(jsPassengerDataObject[1].paxType='CHD'){
			chdcnt = jsPassengerDataObject[1].passengerNo;
			infcnt = 0;
		}else{
			infcnt = jsPassengerDataObject[1].passengerNo;
			chdcnt = 0;
		}
	}else if(jsPassengerDataObject.length==3){
		chdcnt = jsPassengerDataObject[1].passengerNo;
		infcnt = jsPassengerDataObject[2].passengerNo;
	}else{
		chdcnt = 0;
		infcnt = 0;
	}

	
	if(jsFlight.flightDetailInfo.length > 1){
		jsFlightDetailDep = jsFlight.flightDetailInfo[0];
		jsFlightDetailRT = jsFlight.flightDetailInfo[1];
		
		console.log("jsFlightDetailRT :"+jsFlightDetailRT);
		
		RtBase_price = jsFlightDetailRT.baseprice;
		RtSale_price = jsFlightDetailRT.saleprice;
		console.log("RtBase_price :"+RtBase_price+"  RtSale_price :"+RtSale_price);
		RtFinallyPrice = Cal_PassengerPrice(RtBase_price, RtSale_price, adcnt, chdcnt, infcnt, 'RT');
		
	}else if(jsFlight.flightDetailInfo.length ==1 ){
		
		jsFlightDetailDep = jsFlight.flightDetailInfo[0];
		RtFinallyPrice.total = 0;
		RtFinallyPrice.tax = 0;
		
	}

	
	depBase_price = jsFlightDetailDep.baseprice;
	depSale_price = jsFlightDetailDep.saleprice;
	
	console.log("Adult :"+adcnt+"  Child :"+chdcnt+"  Infant :"+infcnt);
	console.log("depBase_price :"+depBase_price+"  depSale_price :"+depSale_price);
	depFinallyPrice = Cal_PassengerPrice(depBase_price, depSale_price, adcnt, chdcnt, infcnt, 'OW');
	
	
	TotalPrice = Number(depFinallyPrice.total) + Number(RtFinallyPrice.total);
	this.FlightPriceTotal = "";
	this.fuelPrice = 0;
	this.tax = "";
	this.FinallyTOTAL = "";

	FinallyPrice.FlightPriceTotal = Number(depFinallyPrice.FlightPrice) + Number(RtFinallyPrice.FlightPrice);
	FinallyPrice.fuelPrice = Number(depFinallyPrice.fuelPrice)+Number(RtFinallyPrice.fuelPrice);
	FinallyPrice.tax = Number(depFinallyPrice.tax)+Number(RtFinallyPrice.tax);
	FinallyPrice.FinallyTOTAL = TotalPrice;
	
	$("#EquivFare").text(FinallyPrice.FlightPriceTotal);
	$("#FuelCharge").text(FinallyPrice.fuelPrice);
	$("#Tax").text(FinallyPrice.tax);

	$("#finallyTotal").val(JSON.stringify(FinallyPrice));
	
	
	$(".price-area .unit").text("KRW");
	$(".price-area .price").text(TotalPrice);
	console.log("총액 :"+TotalPrice);
	
}

function Set_OptionTotalPrice(strOptionPrice){
	var optionPrices = function(){
		this.seat = "";
		this.bag = "";
		this.meal = "";
	}
	
	var jsOptionPrices = new optionPrices();
	
	jsOptionPrices = jQuery.parseJSON(strOptionPrice);
	
	$("#seatPrice").text(jsOptionPrices.seat);
	$("#mealPrice").text(jsOptionPrices.meal);
	$("#bagPrice").text(0);
	
	var seatP = Number($("#seatPrice").text());
	var mealP = Number($("#mealPrice").text());
	var bagP = Number($("#bagPrice").text());
	console.log(seatP);
	
	var total = $(".total-price .price").text();
	total = Number(total) + seatP + mealP + bagP;
	$(".price-area .price").text(total);
}

function Cal_PassengerPrice(baseP, saleP, adt, chd, inf, type){
	var flightPrice = ""; //항공 운임 
	var fuelPrice = 0; //유류 할증료 
	var tax = 28000; // 세금, 제반 세금 
	
	var TotalPrice = ""; // 세금 포함 총 가격 
	/* Number(adt)+Number(chd)+Number(inf);*/

	var PassengerCount = Number(adt)+Number(chd)+Number(inf);//총 인원 수 
	var pricetotal = new PriceInfo();
	
	console.log("In cal_PassegerPrice() / 총 탑승 인원 수 :"+PassengerCount);
	
	var adult = "";
	var child = "";
	var infant = "";
	
	var chdfee = 0.6;
	var inffee = 0.1;
	
	adult = Number(saleP * adt); // 세금 제외 
	
	var totalPersonPrice = new PersonPrice();
		totalPersonPrice.personPerprice =[];
	
	var Aprice = new PricePerPerson();
	Aprice.paxType="ADT";
	Aprice.passengerNo=adt;
	Aprice.price = saleP;
	Aprice.tax = tax;
	Aprice.perPerson = Number(Aprice.price)+Number(Aprice.tax);
	Aprice.totalPrice = Aprice.perPerson * adt;
	
	totalPersonPrice.personPerprice.push(Aprice);
	
	child = (Number(baseP * chdfee)) * chd; // 세금 제외
	
	var Cprice = new PricePerPerson();
	Cprice.paxType="CHD";
	Cprice.passengerNo=chd;
	Cprice.price = baseP*chdfee;
	Cprice.tax = tax;
	Cprice.perPerson = Number(Cprice.price)+Number(Cprice.tax);
	Cprice.totalPrice = Cprice.perPerson * chd;

	totalPersonPrice.personPerprice.push(Cprice);


	infant = (Number(baseP * inffee)+ Number(tax)) * inf;

	var Iprice = new PricePerPerson();
	Iprice.paxType="INF";
	Iprice.passengerNo=inf;
	Iprice.price = baseP*inffee;
	Iprice.tax = tax;
	Iprice.perPerson = Number(Iprice.price)+Number(Iprice.tax);
	Iprice.totalPrice = Iprice.perPerson * inf;

	totalPersonPrice.personPerprice.push(Iprice);
	
	if(type=="OW"){
		$("#personPrice").val(JSON.stringify(totalPersonPrice));
	}else if(type=="RT"){
		$("#RTpersonPrice").val(JSON.stringify(totalPersonPrice));
	}
	TotalPrice = Number(adult)+Number(child)+Number(infant) + (Number(tax)*(PassengerCount));
	
	flightPrice = Number(TotalPrice)-Number(tax);
	
	pricetotal.FlightPrice = flightPrice;
	pricetotal.fuelPrice = 0;
	pricetotal.tax = 28000*PassengerCount;
	pricetotal.total = TotalPrice;
	
	console.log("항공 운임 :"+pricetotal.FlightPrice);
	console.log("편도 총액 :"+ TotalPrice);
	console.log(totalPersonPrice);
	
	
	return pricetotal;
}

function fn_SetUnitPrice(type, OWpersonPrice, RTpersonPrice, FinallyPrice){
	
		
	var jsFinallyPrice = new finallyPriceInfo();
		jsFinallyPrice = jQuery.parseJSON(FinallyPrice);
	
	console.log("Finally Price : "+jsFinallyPrice.FinallyTOTAL);
	
	var jsOWpersonPrice = new PersonPrice();
		jsOWpersonPrice = jQuery.parseJSON(OWpersonPrice);
	
	var jsPersonPerPrice = new PricePerPerson();
	
	jsPersonPerPrice = [];
	jsPersonPerPrice = jsOWpersonPrice.personPerprice;
	
	console.log("OWpersonPrice :"+jsOWpersonPrice);
	
	var jsADT = new PricePerPerson();
	var jsCHD = new PricePerPerson();
	var jsINF = new PricePerPerson();
	
	var adcnt="";
	var chdcnt="";
	var infcnt="";
	
	jsADT = jsPersonPerPrice[0];
	adcnt = jsADT.passengerNo;
	console.log(jsADT);
	
	if(jsPersonPerPrice.length == 3){
		jsCHD = jsPersonPerPrice[1];
		jsINF = jsPersonPerPrice[2];
	}else if(jsPersonPerPrice.length ==2 ){
		if(jsPersonPerPrice.length[1].paxType='CHD'){
			jsCHD = jsPersonPerPrice[1];
			
			infcnt=0;
		}else if(jsPersonPerPrice.length[1].paxType='INF'){
			jsINF = jsPersonPerPrice[1];
			infcnt = jsINF.passengerNo;
			chdcnt =0;
		}
	}else{
		chdcnt = 0;
		infcnt = 0;
	}

	console.log(jsCHD);
	console.log(jsINF);
	chdcnt = jsCHD.passengerNo;
	infcnt = jsINF.passengerNo;
	
	console.log("OW 소아 :"+chdcnt);
	console.log(infcnt);
	
	var jsRTpersonPrice = new PersonPrice();
	var jsRTPersonPerPrice = new PricePerPerson();
	
	jsRTPersonPerPrice =[];
	if(type == 'RT'){
		jsRTpersonPrice = jQuery.parseJSON(RTpersonPrice);
		jsRTPersonPerPrice = jsRTpersonPrice.personPerprice;
		
		console.log("RTpersonPrice :"+jsRTpersonPrice);
	
		var RjsADT = new PricePerPerson();
		var RjsCHD = new PricePerPerson();
		var RjsINF = new PricePerPerson();
			
		var Radcnt= "";
		var Rchdcnt="";
		var RInfcnt = "";
	
		RjsADT =jsRTPersonPerPrice[0];
		Radcnt = RjsADT.passengerNo;
		console.log(RjsADT);
		
		if(jsRTPersonPerPrice.length == 3){
			RjsCHD =jsRTPersonPerPrice[1];
			RjsINF =jsRTPersonPerPrice[2];
		}else if(jsRTPersonPerPrice.length ==2 ){
			if(jsRTPersonPerPrice.length[1].paxType='CHD'){
				RjsCHD =jsRTPersonPerPrice[1];
				RInfcnt =0;
			}else if(jsRTPersonPerPrice.length[1].paxType='INF'){
				RjsINF =jsRTPersonPerPrice[1];
				Rchdcnt =0;
			}
		}else{
			Rchdcnt =0;
			RInfcnt=0;
		}
		console.log(RjsCHD);
		console.log(RjsINF);
		
		
		Rchdcnt = RjsCHD.passengerNo;
		Rinfcnt = RjsINF.passengerNo;
		
		console.log("RT 소아 :"+Rchdcnt);
		console.log(Rinfcnt);
		
	}
	
	
	
	var totalPassengerCount =Number(adcnt)+Number(chdcnt)+Number(infcnt);
	
	console.log(" 총 탑승 인원 수 :"+totalPassengerCount);
	
	var PriceSTR = "";
	/*	편도 (갈 때)	*/
	
	for(var j =1; j<=adcnt ; j++){
			PriceSTR += "<tr id='ad"+j+"'><td id='tdAdt"+j+"' style='text-transform:uppercase'><span></span></td>"
									+"<td class='tbl-price' name='strongPrice1'>"+jsADT.price+"</td>"
									+"<td class='tbl-price' name='strongPrice2'>"+0+"</td>"
									+"<td class='tbl-price' name='strongPrice3'>"+jsADT.tax+"</td>"
									+"<td class='tbl-price'><strong class='point-color02' name='strongCoupon'>"+0+"</strong></td>"
									+"<td class='tbl-price'><strong class='point-color02' name='strongPrice4'>"+jsADT.perPerson+"</strong></td></tr>"
									+"<input type='hidden' id='tdLastAdt"+j+"' name='tdLastAdt"+j+"'>"
									+"<input type='hidden' id='tdFirstAdt"+j+"' name='tdFirstAdt"+j+"'>"
									+"<input type='hidden' id='tdPriceAdt"+j+"' name='tdPriceAdt"+j+"'value='"+jsADT.perPerson+"'>";
		}
	for(var j=1; j<=chdcnt; j++){
		PriceSTR += "<tr id='ch"+j+"'><td id='tdChd"+j+"' style='text-transform:uppercase'><span></span></td>"
		+"<td class='tbl-price' name='strongPrice1'>"+jsCHD.price+"</td>"
		+"<td class='tbl-price' name='strongPrice2'>"+0+"</td>"
		+"<td class='tbl-price' name='strongPrice3'>"+jsCHD.tax+"</td>"
		+"<td class='tbl-price'><strong class='point-color02' name='strongCoupon'>"+0+"</strong></td>"
		+"<td class='tbl-price'><strong class='point-color02' name='strongPrice4'>"+jsCHD.perPerson+"</strong></td></tr>"
		+"<input type='hidden' id='tdLastChd"+j+"' name='tdLastChd"+j+"'>"
		+"<input type='hidden' id='tdFirstChd"+j+"' name='tdFirstChd"+j+"'>"
		+"<input type='hidden' id='tdPriceChd"+j+"' name='tdPriceChd"+j+"' value='"+jsCHD.perPerson+"'>";
	}
	
	for(var j=1; j<=infcnt; j++){
		PriceSTR += "<tr id='in"+j+"'><td id='tdInf"+j+"' style='text-transform:uppercase'><span></span></td>"
		+"<td class='tbl-price' name='strongPrice1'>"+jsINF.price+"</td>"
		+"<td class='tbl-price' name='strongPrice2'>"+0+"</td>"
		+"<td class='tbl-price' name='strongPrice3'>"+jsINF.tax+"</td>"
		+"<td class='tbl-price'><strong class='point-color02' name='strongCoupon'>"+0+"</strong></td>"
		+"<td class='tbl-price'><strong class='point-color02' name='strongPrice4'>"+jsINF.perPerson+"</strong></td></tr>"
		+"<input type='hidden' id='tdLastInf"+j+"' name='tdLastInf"+j+"'>"
		+"<input type='hidden' id='tdFirstInf"+j+"' name='tdFirstInf"+j+"'>"
		+"<input type='hidden' id='tdPriceInf"+j+"' name='tdPriceInf"+j+"'value='"+jsINF.perPerson+"'>";
	}
	

	
	$("#OWpassengerList").html(PriceSTR);
	$("#OWtable span#spanTotalAmt").text(jsFinallyPrice.FinallyTOTAL);
	$("#RTtable span#spanTotalAmt").text(jsFinallyPrice.FinallyTOTAL);
	
	/*	왕복, 올 때	*/
	
	if(type == 'RT'){
	var RpriceSTR = "";
	
	for(var j =1; j<=Radcnt ; j++){
				RpriceSTR += "<tr id='RTad"+j+"'><td id='RTtdAdt"+j+"' style='text-transform:uppercase'><span></span></td>"
								+"<td class='tbl-price' name='strongPrice1'>"+RjsADT.price+"</td>"
								+"<td class='tbl-price' name='strongPrice2'>"+0+"</td>"
								+"<td class='tbl-price' name='strongPrice3'>"+RjsADT.tax+"</td>"
								+"<td class='tbl-price'><strong class='point-color02' name='strongCoupon'>"+0+"</strong></td>"
								+"<td class='tbl-price'><strong class='point-color02' name='strongPrice4'>"+RjsADT.perPerson+"</strong></td></tr>"
								+"<input type='hidden' id='RTtdLastAdt"+j+"' name='RTtdLastAdt"+j+"'>"
								+"<input type='hidden' id='RTtdFirstAdt"+j+"' name='RTtdFirstAdt"+j+"'>"
								+"<input type='hidden' id='RTtdPriceAdt"+j+"' name='RTtdPriceAdt"+j+"' value='"+RjsADT.perPerson+"'>";
	}
	for(var j=1; j<=Rchdcnt; j++){
				RpriceSTR += "<tr id='RTch"+j+"'><td id='RTtdChd"+j+"' style='text-transform:uppercase'><span></span></td>"
								+"<td class='tbl-price' name='strongPrice1'>"+RjsCHD.price+"</td>"
								+"<td class='tbl-price' name='strongPrice2'>"+0+"</td>"
								+"<td class='tbl-price' name='strongPrice3'>"+RjsCHD.tax+"</td>"
								+"<td class='tbl-price'><strong class='point-color02' name='strongCoupon'>"+0+"</strong></td>"
								+"<td class='tbl-price'><strong class='point-color02' name='strongPrice4'>"+RjsCHD.perPerson+"</strong></td></tr>"
								+"<input type='hidden' id='RTtdLastChd"+j+"' name='RTtdLastChd"+j+"'>"
								+"<input type='hidden' id='RTtdFirstChd"+j+"' name='RTtdFirstChd"+j+"'>"
								+"<input type='hidden' id='RTtdPriceChd"+j+"' name='RTtdPriceChd"+j+"' value='"+RjsCHD.perPerson+"'>";
	}
	
	for(var j=1; j<=Rinfcnt; j++){
				RpriceSTR += "<tr id='RTin"+j+"'><td id='RTtdInf"+j+"' style='text-transform:uppercase'><span></span></td>"
								+"<td class='tbl-price' name='strongPrice1'>"+RjsINF.price+"</td>"
								+"<td class='tbl-price' name='strongPrice2'>"+0+"</td>"
								+"<td class='tbl-price' name='strongPrice3'>"+RjsINF.tax+"</td>"
								+"<td class='tbl-price'><strong class='point-color02' name='strongCoupon'>"+0+"</strong></td>"
								+"<td class='tbl-price'><strong class='point-color02' name='strongPrice4'>"+RjsINF.perPerson+"</strong></td></tr>"
								+"<input type='hidden' id='RTtdLastInf"+j+"' name='RTtdLastInf"+j+"'>"
								+"<input type='hidden' id='RTtdFirstInf"+j+"' name='RTtdFirstInf"+j+"'>"
								+"<input type='hidden' id='RTtdPriceInf"+j+"' name='RTtdPriceInf"+j+"' value='"+RjsINF.perPerson+"'>";
	}
	
	$("#RTpassengerList").html(RpriceSTR);
	
	}

	
	var PassengerSTR = "";
	
	for(var j =1; j<adcnt ; j++){
		PassengerSTR+="<div class='booking-table-title mgt20'><h3 class='table-title-mid mgr25'>성인 "+(j+1)+"</h3></div>"+
		 			  "<div class='tbl-input-row01 mgt50' id='dvAdt"+(j+1)+"' paxno='"+(j+1)+"'>"+
		 			  "<table>"+
		 			  "<caption>영문 성명, 성별, 쿠폰할인으로 구성된 탑승자 정보입력표입니다.</caption>"+
		 			  "<colgroup>"+
		 			  	"<col style='width:20%'><col>"+
		 			  "</colgroup>"+
		 			  	"<tbody>"+
		 			  		"<tr>"+
		 			  		"<th scope='row'>영문 성명</th>"+
		 			  		"<td>"+
		 			  			"<div><span class='inp-txt mgr03'>" +
		 			  			"<input type='text' id='lastNameAdt"+(j+1)+"' name='lastName' style='width: 224px; ime-mode:disabled; text-transform:uppercase;' title='Last Name(성) 입력' placeholder='Last Name(성)'  maxlength='30' >"+
		 			  			"</span><span class='inp-txt mgr03'>"+
		 			  			"<input type='text' id='firstNameAdt"+(j+1)+"' name='firstName' style='width: 224px; ime-mode:disabled; text-transform:uppercase;' title='First Name(이름) 입력' placeholder='First Name(이름)'  maxlength='30' >"+
		 			  			"</span></div></td></tr>"+
		 			  			"<tr>"+
		 			  			"<th scope='row'>성별</th>"+
		 			  			"<td><ul class='radio_list'>"+
		 			  			"<li><span class='radiobox01 js-radiobox01'>"+
		 			  				"<label for='radioSexManAdt"+(j+1)+"' >"+
		 			  					"<input type='radio' id='radioSexManAdt"+(j+1)+"' name='radioSexAdt"+(j+1)+"' value='M'><span>남</span>"+ 
		 			  				"</label></span>"+ 
		 			  			"</li>"+
		 			  			"<li><span class='radiobox01 js-radiobox01'>"+
		 			  				"<label for='radioSexWomanAdt"+(j+1)+"'>"+
		 			  				"<input type='radio' id='radioSexWomanAdt"+(j+1)+"' name='radioSexAdt"+(j+1)+"' value='F' ><span>여</span>"+
		 			  				"</label>"+
		 			  				"</span></li>"+
		 			  				"</ul></td></tr>"+
		 			  			"<tr><th scope='row'>여권번호</th>"+
		 			  			"<td><div><span class='inp-txt mgr03'>"+
		 			  			"<input type='text' id='passportNumberAdt"+(j+1)+"' style='width:324px;'>"+
		 			  			"</span></div></td></tr>"+
		 			  			"<tr><th scope='row'>"+
		 			  			"<label for='coupon'>쿠폰할인</label></th>"+
		 			  			"<td><div><span class='selectbox01 js-selectbox01' id='Span_Coupon'>"+
		 			  			"<span class='txt ex'></span>"+
		 			  			"<select id='coupon' title='쿠폰할인선택' style='width: 324px;'>"+
		 			  			"<option value='' selected='selected' class='ex'>사용 가능한 쿠폰이 없습니다.</option></select>"+
		 			  			"</span></div></td>"+
		 			  			"</tr></tbody></table></div>";
		 	}
	for(var j=1; j<=chdcnt; j++){
		PassengerSTR += "<div class='booking-table-title mgt20'><h3 class='table-title-mid mgr25'>소아 "+j+"</h3></div>"+
							"<div class='tbl-input-row01 mgt50' id='dvChd"+j+"' paxno='"+j+"'>"+
								"<table><caption>영문 성명, 성별, 쿠폰할인으로 구성된 탑승자 정보입력표입니다.</caption>"+
										"<colgroup><col style='width:20%'><col></colgroup>"+
										"<tbody>"+
										"<tr><th scope='row'>영문 성명</th>"+
										"<td>"+
										"<div><span class='inp-txt mgr03'>" +
											"<input type='text' id='lastNameChd"+j+"' name='lastName' style='width: 224px; ime-mode:disabled; text-transform:uppercase;' title='Last Name(성) 입력' placeholder='Last Name(성)'  maxlength='30' >"+
											"</span>"+
											"<span class='inp-txt mgr03'>"+
											"<input type='text' id='firstNameChd"+j+"' name='firstName' style='width: 224px; ime-mode:disabled; text-transform:uppercase;' title='First Name(이름) 입력' placeholder='First Name(이름)'  maxlength='30' >"+
										"</span></div>"+
										"</td>"+
										"</tr>"+
										"<tr><th scope='row'>성별</th>"+
										"<td>"+
											"<ul class='radio_list'>"+
												"<li>"+
													"<span class='radiobox01 js-radiobox01'>"+
														"<label for='radioSexManChd"+j+"' >"+
														"<input type='radio' id='radioSexManChd"+j+"' name='radioSexChd"+j+"' value='M'><span>남</span>"+ 
														"</label>"+
													"</span>"+
												"</li>"+
												"<li>"+
													"<span class='radiobox01 js-radiobox01'>"+
														"<label for='radioSexWomanChd"+j+"'>"+
														"<input type='radio' id='radioSexWomanChd"+j+"' name='radioSexChd"+j+"' value='F' ><span>여</span>"+
														"</label>"+
													"</span>"+
												"</li>"+
											"</ul>"+
										"</td>"+
										"</tr>"+
										"<tr><th scope='row'>여권번호</th>"+
											"<td><div><span class='inp-txt mgr03'>"+
											"<input type='text' id='passportNumberChd"+j+"' style='width:324px;'>"+
											"</span></div></td></tr>"+
										"<tr><th scope='row'>"+
											"<label for='coupon'>쿠폰할인</label>"+
											"</th>"+
											"<td>"+
											"<div>"+
											"<span class='selectbox01 js-selectbox01' id='Span_Coupon'>"+
											"<span class='txt ex'></span>"+
												"<select id='coupon' title='쿠폰할인선택' style='width: 324px;'>"+
												"<option value='' selected='selected' class='ex'>사용 가능한 쿠폰이 없습니다.</option>"+
												"</select>"+
											"</span>"+
											"</div>"+
											"</td>"+
										"</tr></tbody></table></div>";
	}
	
	for(var j=1; j<=infcnt; j++){
		PassengerSTR += "<div class='booking-table-title mgt20'><h3 class='table-title-mid mgr25'>유아 "+j+"</h3></div>"+
	  "<div class='tbl-input-row01 mgt50' id='dvInf"+j+"' paxno='1'>"+
		  "<table><caption>영문 성명, 성별, 쿠폰할인으로 구성된 탑승자 정보입력표입니다.</caption>"+
		  "<colgroup><col style='width:20%'><col></colgroup>"+
		  "<tbody><tr><th scope='row'>영문 성명</th><td>"+
		  "<div><span class='inp-txt mgr03'>" +
		  "<input type='text' id='lastNameInf"+j+"' name='lastName' style='width: 224px; ime-mode:disabled; text-transform:uppercase;' title='Last Name(성) 입력' placeholder='Last Name(성)'  maxlength='30' >"+
		  "</span><span class='inp-txt mgr03'>"+
		  "<input type='text' id='firstNameInf"+j+"' name='firstName' style='width: 224px; ime-mode:disabled; text-transform:uppercase;' title='First Name(이름) 입력' placeholder='First Name(이름)'  maxlength='30' >"+
		  "</span></div></td></tr>"+
		  "<tr><th scope='row'>성별</th><td><ul class='radio_list'>"+
		  "<li><span class='radiobox01 js-radiobox01'><label for='radioSexManAdt1' >"+
		  "<input type='radio' id='radioSexManInf"+j+"' name='radioSexInf"+j+"' value='M'><span>남</span>"+ 
		  "</label></span></li><li><span class='radiobox01 js-radiobox01'>"+
		  "<label for='radioSexWomanInf"+j+"'><input type='radio' id='radioSexWomanInf"+j+"' name='radioSexInf"+j+"' value='F' ><span>여</span>"+
		  "</label></span></li></ul></td></tr>"+
		  "<tr><th scope='row'>여권번호</th>"+
		  "<td><div><span class='inp-txt mgr03'>"+
		  "<input type='text' id='passportNumberInf"+j+"' style='width:324px;'>"+
		  "</span></div></td></tr>"+
		  "<tr><th scope='row'>"+
		  "<label for='coupon'>쿠폰할인</label></th><td><div><span class='selectbox01 js-selectbox01' id='Span_Coupon'>"+
		  "<span class='txt ex'></span><select id='coupon' title='쿠폰할인선택' style='width: 324px;'>"+
		  "<option value='' selected='selected' class='ex'>사용 가능한 쿠폰이 없습니다.</option></select></span></div></td>"+
		  "</tr></tbody></table></div>";
	}
	
	$("#originOne").after(PassengerSTR);
	
}
	
	
	
	



function Cal_fu(){

	var d = new Date();
	var minDate = moment().format('YYYYMMDD'); //선택할 수 있는 제일 이른 날짜 : 오늘
	var maxDate = moment().add(323,'days').endOf('month').toDate();
	var range = 2;



		$("#bookingDatePicker").datepicker({
		minDate : moment().toDate(),
		maxDate : moment().add(323,'days').endOf('month').toDate(),
		numberOfMonths : 2,
		onSelect : function(valueDate,key){
		/* 			alert("key :"+$(this).attr("class") +" valueDate: "+valueDate); */
			var d = moment(valueDate).format("YYYY.MM.DD");
		//		alert(d);
			setDate(d, key);
		}
		});

		$(".booking-date-items-button").on("click", function(){
				var $this = $(this);
				var $target = $($(this).attr("data-target"));
				
				$("#bookingDatePicker").find("div").css("width","inherit");
		
				if($this.hasClass("active")){
					$this.removeClass("active");
					$target.slideUp(200);
				}else{
					$("#bookingDatePicker").find("div").css("width","inherit");
					$this.addClass("active");
					$target.slideDown(200);
				}
			
				$(".layer-close").on("click", function(){
					$this.removeClass("active");
					$target.slideUp(200);
				});
		
		});
}

var count=1;
function setDate(d, key){
			/* 	alert(nowTripType);
			alert(d +"count :"+count); */
			if(count ==0)count=1;
			
			if(nowTripType=='RT'){
					if(count ==1){
						$("#txtDepBookingDate").val(d);
						$("#bookingDateLayer").slideUp(1);
						count++;
					}else if(count ==2 ){
							$("#txtArrBookingDate").val(d);
							$("#bookingDateLayer").slideUp(1);
							count = 0;
					}
			}else if(nowTripType=='OW'){
				$("#txtDepBookingDate").val(d);
				$("#bookingDateLayer").slideUp(1);
		}	
}

/*	체크인 		
function fn_checkin(btndata, memid, dep, arr){
	alert(btndata+"  id :"+memid);
	
	$.ajax({
		type : "POST",
		url : "./OnlineCheckIn.cK",
		data : {bookingNum : btndata, 
				userId : memid,
				dep : dep,
				arr : arr },
		contextType : "application/x-www-form-urlencoded; charset=UTF-8",
		success : function(data){
			alert("체크인 처리가 완료 되었습니다.");
			fn_CheckInAjax(memid);
		}
	});
	
}
*/


