$(function(){
/*    $("#footer").load("/CW/public/include/footer.html", function(){
        jsLayerPopup(); //20160706 추가
        jsSelectbox();//20160711 추가
    });
    $("#headerContent").load("/CW/public/include/header.html", function(){
        jsGnb();
        jsHrgroup();
    });*/
    jsGnb();
    //jsBannerList();
    jsHrgroup();
    jsCheckbox01();
    jsCheckbox02();
    jsRadiobox01();
    jsNumberbox01();
    jsRadioLayer();
    jsSelectLayer01();
    jsSelectbox();
    jsToggleLayer();
    jsTabEvent();
    jsShowHide();
    jsChoice();
    jsLayerPopup(".jsOpenLayer");
    jsLocation();
    jsNumberSelect();
    jsRadioMonth();
    jsEmailLayer();
    jsEmailLayer01();
    jsRadioLayerMulti();
    jsGroupLink();//2016-08-04 추가

    //jsFooter();
    $('input[placeholder], textarea[placeholder]').placeholder({customClass:'my-placeholder'});
});
jQuery.extend( jQuery.easing,
    {
        def: 'easeOutQuad',
        swing: function (x, t, b, c, d) {
            //alert(jQuery.easing.default);
            return jQuery.easing[jQuery.easing.def](x, t, b, c, d);
        },
        easeInQuad: function (x, t, b, c, d) {
            return c*(t/=d)*t + b;
        },
        easeOutQuad: function (x, t, b, c, d) {
            return -c *(t/=d)*(t-2) + b;
        },
        easeInOutQuad: function (x, t, b, c, d) {
            if ((t/=d/2) < 1) return c/2*t*t + b;
            return -c/2 * ((--t)*(t-2) - 1) + b;
        },
        easeInCubic: function (x, t, b, c, d) {
            return c*(t/=d)*t*t + b;
        },
        easeOutCubic: function (x, t, b, c, d) {
            return c*((t=t/d-1)*t*t + 1) + b;
        },
        easeInOutCubic: function (x, t, b, c, d) {
            if ((t/=d/2) < 1) return c/2*t*t*t + b;
            return c/2*((t-=2)*t*t + 2) + b;
        },
        easeInQuart: function (x, t, b, c, d) {
            return c*(t/=d)*t*t*t + b;
        },
        easeOutQuart: function (x, t, b, c, d) {
            return -c * ((t=t/d-1)*t*t*t - 1) + b;
        },
        easeInOutQuart: function (x, t, b, c, d) {
            if ((t/=d/2) < 1) return c/2*t*t*t*t + b;
            return -c/2 * ((t-=2)*t*t*t - 2) + b;
        },
        easeInQuint: function (x, t, b, c, d) {
            return c*(t/=d)*t*t*t*t + b;
        },
        easeOutQuint: function (x, t, b, c, d) {
            return c*((t=t/d-1)*t*t*t*t + 1) + b;
        },
        easeInOutQuint: function (x, t, b, c, d) {
            if ((t/=d/2) < 1) return c/2*t*t*t*t*t + b;
            return c/2*((t-=2)*t*t*t*t + 2) + b;
        },
        easeInSine: function (x, t, b, c, d) {
            return -c * Math.cos(t/d * (Math.PI/2)) + c + b;
        },
        easeOutSine: function (x, t, b, c, d) {
            return c * Math.sin(t/d * (Math.PI/2)) + b;
        },
        easeInOutSine: function (x, t, b, c, d) {
            return -c/2 * (Math.cos(Math.PI*t/d) - 1) + b;
        },
        easeInExpo: function (x, t, b, c, d) {
            return (t==0) ? b : c * Math.pow(2, 10 * (t/d - 1)) + b;
        },
        easeOutExpo: function (x, t, b, c, d) {
            return (t==d) ? b+c : c * (-Math.pow(2, -10 * t/d) + 1) + b;
        },
        easeInOutExpo: function (x, t, b, c, d) {
            if (t==0) return b;
            if (t==d) return b+c;
            if ((t/=d/2) < 1) return c/2 * Math.pow(2, 10 * (t - 1)) + b;
            return c/2 * (-Math.pow(2, -10 * --t) + 2) + b;
        },
        easeInCirc: function (x, t, b, c, d) {
            return -c * (Math.sqrt(1 - (t/=d)*t) - 1) + b;
        },
        easeOutCirc: function (x, t, b, c, d) {
            return c * Math.sqrt(1 - (t=t/d-1)*t) + b;
        },
        easeInOutCirc: function (x, t, b, c, d) {
            if ((t/=d/2) < 1) return -c/2 * (Math.sqrt(1 - t*t) - 1) + b;
            return c/2 * (Math.sqrt(1 - (t-=2)*t) + 1) + b;
        },
        easeInElastic: function (x, t, b, c, d) {
            var s=1.70158;var p=0;var a=c;
            if (t==0) return b;  if ((t/=d)==1) return b+c;  if (!p) p=d*.3;
            if (a < Math.abs(c)) { a=c; var s=p/4; }
            else var s = p/(2*Math.PI) * Math.asin (c/a);
            return -(a*Math.pow(2,10*(t-=1)) * Math.sin( (t*d-s)*(2*Math.PI)/p )) + b;
        },
        easeOutElastic: function (x, t, b, c, d) {
            var s=1.70158;var p=0;var a=c;
            if (t==0) return b;  if ((t/=d)==1) return b+c;  if (!p) p=d*.3;
            if (a < Math.abs(c)) { a=c; var s=p/4; }
            else var s = p/(2*Math.PI) * Math.asin (c/a);
            return a*Math.pow(2,-10*t) * Math.sin( (t*d-s)*(2*Math.PI)/p ) + c + b;
        },
        easeInOutElastic: function (x, t, b, c, d) {
            var s=1.70158;var p=0;var a=c;
            if (t==0) return b;  if ((t/=d/2)==2) return b+c;  if (!p) p=d*(.3*1.5);
            if (a < Math.abs(c)) { a=c; var s=p/4; }
            else var s = p/(2*Math.PI) * Math.asin (c/a);
            if (t < 1) return -.5*(a*Math.pow(2,10*(t-=1)) * Math.sin( (t*d-s)*(2*Math.PI)/p )) + b;
            return a*Math.pow(2,-10*(t-=1)) * Math.sin( (t*d-s)*(2*Math.PI)/p )*.5 + c + b;
        },
        easeInBack: function (x, t, b, c, d, s) {
            if (s == undefined) s = 1.70158;
            return c*(t/=d)*t*((s+1)*t - s) + b;
        },
        easeOutBack: function (x, t, b, c, d, s) {
            if (s == undefined) s = 1.70158;
            return c*((t=t/d-1)*t*((s+1)*t + s) + 1) + b;
        },
        easeInOutBack: function (x, t, b, c, d, s) {
            if (s == undefined) s = 1.70158;
            if ((t/=d/2) < 1) return c/2*(t*t*(((s*=(1.525))+1)*t - s)) + b;
            return c/2*((t-=2)*t*(((s*=(1.525))+1)*t + s) + 2) + b;
        },
        easeInBounce: function (x, t, b, c, d) {
            return c - jQuery.easing.easeOutBounce (x, d-t, 0, c, d) + b;
        },
        easeOutBounce: function (x, t, b, c, d) {
            if ((t/=d) < (1/2.75)) {
                return c*(7.5625*t*t) + b;
            } else if (t < (2/2.75)) {
                return c*(7.5625*(t-=(1.5/2.75))*t + .75) + b;
            } else if (t < (2.5/2.75)) {
                return c*(7.5625*(t-=(2.25/2.75))*t + .9375) + b;
            } else {
                return c*(7.5625*(t-=(2.625/2.75))*t + .984375) + b;
            }
        },
        easeInOutBounce: function (x, t, b, c, d) {
            if (t < d/2) return jQuery.easing.easeInBounce (x, t*2, 0, c, d) * .5 + b;
            return jQuery.easing.easeOutBounce (x, t*2-d, 0, c, d) * .5 + c*.5 + b;
        }
    }
);
function Shifttab(callback, event){
    var e = event;
    var charCode = e.which || e.keyCode;
    if (charCode === 9 && e.shiftKey) {
        callback();
        return true;
    } else {
    	return false;
    }
}
function Tab(callback, event){
    var e = event;
    var charCode = e.which || e.keyCode;
    if (charCode === 9 && !e.shiftKey) {
    	callback();
        return true;
    } else {
    	return false;
    }
}
function ScrollTop(){

}
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

/*function jsBannerList(){
	$('.event_img').slick({
		dots: true,
		infinite: true,
		speed: 500,
		fade: true,
		cssEase: 'linear'
	});
}*/

function jsSelectLayer01(){
    var $jsSelectLayer01 = $(".js-selectLayer01");
    var $jsSelectLayer01Btn = $jsSelectLayer01.find(".js-selectLayer01-btn");

    $(".js-selectLayer01").each(function(i){
        var _$jsSelectLayer01 = $(this);
        var _$jsSelectLayer01Btn = _$jsSelectLayer01.find(".js-selectLayer01-btn");
        var _$target = $(_$jsSelectLayer01Btn.attr("data-target"));
        var _$dataInput = _$jsSelectLayer01.find("input");
        _$jsSelectLayer01Btn.on("click", function(){
            // active가 있는경우
            if(_$jsSelectLayer01Btn.hasClass("active")){
                _$jsSelectLayer01Btn.removeClass("active");
                _$target.removeAttr("tabindex").slideUp(150); 
                $(window).off("click");
            // active가 없는경우
            } else {
                // 다른 select 가 열려있는경우
                $jsSelectLayer01.each(function(i){
                    if ($jsSelectLayer01Btn.eq(i).hasClass("active")) {
                        $jsSelectLayer01Btn.eq(i).removeClass("active");
                        $($jsSelectLayer01Btn.eq(i).attr("data-target")).slideUp(150);
                    }
                });
                // 기본 설정
                _$jsSelectLayer01Btn.addClass("active");
                _$target.attr("tabindex", 0).slideDown(150).focus();

                // list를 클릭한경우
                _$target.find("button").one("click", function(i){
                    _$dataInput
                        .data("before_value", _$dataInput.data("value"))
                        .data("value", $(this).val())
                        .val($(this).find("span").text()).change();
                    _$jsSelectLayer01Btn.removeClass("active").focus();
                    _$target.find("button").off("click");
                    _$target.slideUp(150);
                });

                // last button 포커스 벗어날경우
                _$target.find("button").eq(-1).on("keydown", function(e){
                    var tab = Tab(function(){
                        _$jsSelectLayer01Btn.removeClass("active").focus();
                        _$target.slideUp(150);
                    }, e);
                    if (tab) return false;
                });

                // list외 클릭할경우
                $(window).one("click", function(){
                    _$jsSelectLayer01Btn.removeClass("active").focus();
                    _$target.slideUp(150);
                });
            }
            return false;
        });

        _$dataInput.on("click", function(){
            $(this).next().trigger("click");
            return false;
        });
    });
}


//airsoft
function selectLayer_rollback(txtId) {
    $("#" + txtId).data("value", $("#" + txtId).data("before_value"));
    $("#" + txtId).parents(".js-selectLayer01").find("li").each(function() {
        if ($(this).children("button").val() == $("#" + txtId).data("value")) {
            $("#" + txtId).val($(this).find("span").text());
            return false;   // break;
        }
    });
}
function jsSelectbox(){
    $(".js-selectbox01").each(function() {
        var $self = $(this);
        var $txt = $self.find(".txt");
        var $select = $self.find("select");

        function txt_Injection(){
            if ($self.find("option:selected").hasClass("ex")) {
                $txt.addClass("ex");
            } else {
                $txt.removeClass("ex");
            }
            $txt.text($self.find("option:selected").text());
        }
        function txt_focusin(){
            $txt.css("outline", "1px dotted #111");
        }
        function txt_focusout(){
            $txt.removeAttr("style");
        }

        function init(){
            txt_Injection();
            $select
                .off("change focusin focusout")
                .on({
                    "change": txt_Injection,
                    "focusin": txt_focusin,
                    "focusout": txt_focusout
                });
        }

        init();
        /*if($select.is(":disabled")){
            $(this).addClass("selectOff");
        }*/
    });
}
function jsRadioLayer(){
    $(".js-radioLayer01-wrap").each(function(){
        var $jsRadioLayer01 = $(this).find(".js-radioLayer01");
        var $jsRadioLayer01Btn = $(this).find(".js-radioLayer01-btn");
        var $selfBtn = null;

        $(this).find(".js-radioLayer01-btn").each(function (i) {
            if($(this).is(":disabled")){
                $jsRadioLayer01.eq(i).addClass("off");
                $jsRadioLayer01Btn.eq(i).addClass("off");
                return;
            }
            var $target = $($(this).attr("data-target"));


            function clear(){
                $jsRadioLayer01Btn.each(function(i){
                    if($(this).is(":disabled")) {
                        return false;
                    } else {
                        $jsRadioLayer01.eq(i).removeClass("active off");
                        $jsRadioLayer01Btn.eq(i).removeClass("active off");
                        // $target.removeAttr("tabindex"); //20160704 삭제
                        $jsRadioLayer01Btn.eq(i).find(".hidden-title").text(layerPopOpenTxt); /* 레이어 팝업 열기 ${dic.getWord(langCode, 'script', '0005')} */
                    }
                });
            }

            /*$target.find(".layer-close").off("keydown").on("keydown", function(e){
                var tab = Tab(function(){
                	$target.find("a, button, input, select, textarea").each(function(){
                    	if ($(this).is(":visible")){
                    		$(this).eq(0).focus();
                    		return false;
                    	}
                    });
                }, e);
                if (tab) return false;
            });*/
            /*$target.find("select, a, button, input, textarea").eq(0).off("keydown").on("keydown", function(e){ //20160714 수정
                var tab = Shifttab(function(){
                    $target.find(".layer-close").focus();
                }, e);
                if (tab) return false;
            });*/
            /*$target.find(".layer-close").off("click").on("click", function(){
                $target.slideUp({duration: 200});
                clear();
                if ($selfBtn !== null) $selfBtn.focus();
            });*/

            $(this).off("click").on("click", function () {
                $selfBtn = $(this);
                var $firstBtn;//2016-10-05 추가
                var $jsCloseBtn = $(this).closest(".js-radioLayer01-wrap").find(".layer-close"), // 20160704 추가
                $jsTit = $(this).closest(".js-radioLayer01-wrap").find("h2.hidden-title"), // 20160704 추가

                $jsTit02 = $(this).closest(".booking-journey-wrap").find("h2.hidden-title"), // 20160713 추가
                $jsCloseBtn02 = $(this).closest(".booking-journey-wrap").find(".layer-close"), // 20160713 추가
                $jsTit03 = $(this).closest(".booking-date").find("h2.hidden-title"), // 20160713 추가
                $jsCloseBtn03 = $(this).closest(".booking-date").find(".layer-close"), // 20160713 추가


                // booking-journey-multi
                _tit = $(this).text(); // 20160704 추가
                _tit =  _tit.substr(0,3); // 20160704 추가
                
                // 활성화 되어있는 버튼 클릭한 경우
                if ($(this).hasClass("active")) {
                    $target.slideUp({duration: 200});
                    clear();
                // 활성화 되어있지 않은 버튼 클릭한 경우
                } else {
                    var idx = $jsRadioLayer01Btn.index(this);
                    clear();
                    
                    $jsRadioLayer01Btn.each(function(){
                        var _$target = $($(this).attr("data-target"));
                        if(_$target.is(":visible") && _$target.attr("class") !== $target.attr("class")) {
                            return _$target.slideUp({duration: 200});
                        }
                    })

                    $jsRadioLayer01.each(function (i) {
                        // 클릭되어진 영역
                        if (idx === i) {
                            $jsRadioLayer01.eq(i).addClass("active");
                            $jsRadioLayer01Btn.eq(i).addClass("active");
                            $jsRadioLayer01Btn.eq(i).find(".hidden-title").text(layerPopCloseTxt); /* "레이어 팝업 닫기" ${dic.getWord(langCode, 'script', '0006')} */

                        // 클릭이되지않은 영역
                        } else {
                            $jsRadioLayer01.eq(i).addClass("off");
                            $jsRadioLayer01Btn.eq(i).addClass("off");
                            $jsRadioLayer01Btn.eq(i).find(".hidden-title").text(layerPopCloseTxt); /* "레이어 팝업 닫기" ${dic.getWord(langCode, 'script', '0006')} */
                        }
                    });

                    $target.slideDown({duration: 200});
                    // $target.attr("tabindex", 0).focus(); // 20160704 삭제
                    /* 2016-10-05 추가 (S) */
                    // display none일경우 0번째 배제하기 위함
                    $target.find("a, button, input, select, textarea").each(function(){
                    	if ($(this).is(":visible")){
//                    		if ($(this).hasClass("layer-close")) return $(this).eq(0).focus();
                    		$firstBtn = $(this).eq(0).focus();
                    		return false;
                    	}
                    });
                    $target.find(".layer-close").off("keydown").on("keydown", function(e){
                        var tab = Tab(function(){
                        	$target.find("a, button, input, select, textarea").each(function(){
                            	if ($(this).is(":visible")){
                            		$(this).eq(0).focus();
                            		return false;
                            	}
                            });
                        }, e);
                        if (tab) return false;
                    });
                    
                    // 위에서 첫번째 버튼 선택후 저장한 버튼에 쉬프트 탭 이벤트 적용
                    $firstBtn.on("keydown", function(e){
                        var tab = Shifttab(function(){
                            $target.find(".layer-close").focus();
                        }, e);	
                        if (tab) return false;
                    });
                    $target.find(".layer-close").off("click").on("click", function(){
                        $target.slideUp({duration: 200});
                        clear();
                        if ($selfBtn !== null) $selfBtn.focus();
                    });
                    /* 2016-10-05 추가 (E) */
                    //$target.find("button").eq(0).focus();
                    $jsCloseBtn.find("em").text(_tit); // 20160704 추가
                    
                    $jsTit.find("em").text(_tit); // 20160704 추가
                    // 20160713 추가
                    if($(".booking-journey-wrap").length > 0){
                        $jsCloseBtn02.find("em").text(_tit); 
                        $jsTit02.find("em").text(_tit); 
                    }else if($(".booking-date").length > 0){
                        $jsCloseBtn03.find("em").text(_tit); 
                        $jsTit03.find("em").text(_tit); 
                    }

                }
            });
        });
    });
}
function jsRadioLayerMulti(){
    $(".js-radioLayer02-wrap").each(function(){
        var $jsRadioLayer01 = $(this).find(".js-radioLayer02");
        var $jsRadioLayer01Btn = $(this).find(".js-radioLayer02-btn");
        var $selfBtn = null;

        // _tit = $(this).text(); // 20160704 추가
        // _tit =  _tit.substr(0,3); // 20160704 추가

        $(this).find(".js-radioLayer02-btn").each(function (i) {
            if($(this).is(":disabled")){
                $jsRadioLayer01.eq(i).addClass("off");
                $jsRadioLayer01Btn.eq(i).addClass("off");
                return;
            }
            var $target = $($(this).attr("data-target"));

            function clear(){
                $jsRadioLayer01Btn.each(function(i){
                    if($(this).is(":disabled")) {
                        return false;
                    } else {
                        $jsRadioLayer01.eq(i).removeClass("active off");
                        $jsRadioLayer01Btn.eq(i).removeClass("active off");
                        // $target.removeAttr("tabindex");
                    }
                });
            }

            /*$target.find(".layer-close").off("keydown").on("keydown", function(e){
                var tab = Tab(function(){
                	$target.find("a, button, input, select, textarea").each(function(){
                    	if ($(this).is(":visible")){
                    		$(this).eq(0).focus();
                    		return false;
                    	}
                    });
                }, e);
                if (tab) return false;
            });*/
            /*$target.find("select, a, button, input, textarea").eq(0).off("keydown").on("keydown", function(e){// 20160714 수정
                var tab = Shifttab(function(){
                    $target.find(".layer-close").focus();
                }, e);
                if (tab) return false;
            });*/
            /*$target.find(".layer-close").off("click").on("click", function(){
                $target.slideUp({duration: 200});
                clear();
                if ($selfBtn !== null) $selfBtn.focus();
            });*/

            $(this).off("click").on("click", function () {
            	var $firstBtn;//2016-10-05 추가 
                $selfBtn = $(this);

                var $jsTit = $(this).text(); // 20160715
                $jsTit = $jsTit.substr(0,3); // 20160715

                var layerName = $(this).attr("data-target"); // 20160715

                // 활성화 되어있는 버튼 클릭한 경우
                if ($(this).hasClass("active")) {
                    $target.slideUp({duration: 200});
                    clear();
                    $(this).find(".hidden-title").text(layerPopOpenTxt); /* 레이어 팝업 열기 ${dic.getWord(langCode, 'script', '0005')}*/
                    // 활성화 되어있지 않은 버튼 클릭한 경우
                } else {
                    var idx = $jsRadioLayer01Btn.index(this);
                    clear();

                    //다른 layer팝업이 열린경우
                    /*$(".js-radioLayer02-btn").each(function(){
                        if($(this).hasClass("active")){
                            $(this).removeClass("active off");
                            $($(this).attr("data-target")).slideUp(200).removeClass("active off");
                            $(".js-radioLayer02").removeClass("active off")
                        }
                    });*/

                    $(this).find(".hidden-title").text(layerPopCloseTxt); /* "레이어 팝업 닫기" ${dic.getWord(langCode, 'script', '0006')} */
                    $(layerName).find("h2.hidden-title em").text($jsTit); //20160715
                    $(layerName).find(".layer-close-area .hidden-title em").text($jsTit); // 20160715

                    $jsRadioLayer01Btn.each(function(){
                        var _$target = $($(this).attr("data-target"));
                        if(_$target.is(":visible") && _$target.attr("class") !== $target.attr("class")) {
                            return _$target.slideUp({duration: 200});
                        }
                    })

                    $jsRadioLayer01.each(function (i) {
                        // 클릭되어진 영역
                        if (idx === i) {
                            $jsRadioLayer01.eq(i).addClass("active");
                            $jsRadioLayer01Btn.eq(i).addClass("active");
                            // 클릭이되지않은 영역
                        } else {
                            $jsRadioLayer01.eq(i).addClass("off");
                            $jsRadioLayer01Btn.eq(i).addClass("off");
                        }
                    });

                    $target.slideDown({duration: 200});
                    /* 2016-10-05 추가 (S) */
                    $target.find(".layer-close").off("keydown").on("keydown", function(e){
                        var tab = Tab(function(){
                        	$target.find("a, button, input, select, textarea").each(function(){
                            	if ($(this).is(":visible")){
                            		$(this).eq(0).focus();
                            		return false;
                            	}
                            });
                        }, e);
                        if (tab) return false;
                    });
                    // display none일경우 0번째 배제하기 위함
                    $target.find("a, button, input, select, textarea").each(function(){
                    	if ($(this).is(":visible")){
//                    		if ($(this).hasClass("layer-close")) return $(this).eq(0).focus();
                    		$firstBtn = $(this).eq(0).focus();
                    		return false;
                    	}
                    });
                    // 위에서 첫번째 버튼 선택후 저장한 버튼에 쉬프트 탭 이벤트 적용
                    $firstBtn.on("keydown", function(e){
                        var tab = Shifttab(function(){
                            $target.find(".layer-close").focus();
                        }, e);	
                        if (tab) return false;
                    });
                    $target.find(".layer-close").off("click").on("click", function(){
                        $target.slideUp({duration: 200});
                        clear();
                        if ($selfBtn !== null) $selfBtn.focus();
                    });
                    /* 2016-10-05 추가 (E) */
                    //$target.find("button").eq(0).focus();
                }
            });
        });
    });
}
function jsToggleLayer(){
    $(".js-togglelayer").each(function(){
        var $target = $($(this).attr("data-target"));
        var $selfBtn = null;

        $target.find("button").eq(-1).on("keydown", function(e){
            var tab = Tab(function(){
                $target.find("select, button, a, input, textarea").eq(0).focus();
            }, e);
            if (tab) return false;
        });
        $target.find("select, button, a, input, textarea").eq(0).on("keydown", function(e){ // 20160714 수정
            var tab = Shifttab(function(){
                $target.find("button").eq(-1).focus();
            }, e);
            if (tab) return false;
        });
        $target.find(".layer-close").on("click", function(){
            if ($selfBtn === null) return false;
            $target.slideUp(200);
            $selfBtn.removeClass("active").focus();
        });

        $(this).on("click", function () {
            $selfBtn = $(this);

            // 활성화 되어있는 버튼 클릭한 경우
            if ($(this).hasClass("active")) {
                $(this).removeClass("active");
                $target.slideUp(200);
                $(this).find(".hidden-title").text(layerPopOpenTxt); /* 레이어 팝업 열기 ${dic.getWord(langCode, 'script', '0005')} */
            // 활성화 되어있지 않은 버튼 클릭한 경우
            } else {
                $(this).addClass("active");
                $target.slideDown(200);
                $target.find("select, button, input, textarea, a").eq(0).focus(); //20160713 수정
                $(this).find(".hidden-title").text(layerPopCloseTxt); /* "레이어 팝업 닫기" ${dic.getWord(langCode, 'script', '0006')} */

            }
        });
    });
}
function jsCheckbox01(){
    $(".js-checkbox01").find("input").each(function(i, checkBox){
        var $checkBox = $(checkBox);
        $checkBox.off("focus blur change");

        /* checked가 되어있는경우 */
        if($checkBox.is(":checked")==true){
            if($checkBox.is(":disabled")==true){
                $checkBox.closest(".js-checkbox01").find('label').addClass('disabled'); //20160714 수정
            } else{
                $checkBox.closest(".js-checkbox01").find('label').addClass('active'); //20160714 수정
            }
        }
        /* disable이 되어있는경우 */
        else if($checkBox.is(":disabled")==true){
            $checkBox.closest(".js-checkbox01").find('label').addClass('disabled'); // 20160714 수정
        }

        $checkBox.focus(function(){
            $checkBox.closest(".checkbox01").addClass("focus");
        });
        $checkBox.blur(function(){
            $checkBox.closest(".checkbox01").removeClass("focus");
        });

        $checkBox.on("change", function(){
            if ($(this).prop("checked") === true) {
                $(this).prop("checked", true).closest(".js-checkbox01").find('label').addClass('active'); //20160714 수정
            } else {
                $(this).prop("checked", false).closest(".js-checkbox01").find('label').removeClass("active"); //20160714 수정
            }
        });
    });
}
/* S : 20161221_추가_sungjae */
function jsCheckbox02(){
    $(".checkbox01").find("input").each(function(i, checkBox){
        var $checkBox = $(checkBox);
        $checkBox.off("focus blur change");
        /* checked가 되어있는경우 */
        if($checkBox.is(":checked")==true){
            if($checkBox.is(":disabled")==true){
                $checkBox.closest(".js-checkbox01").find('label').addClass('disabled');
            } else{
                $checkBox.closest(".js-checkbox01").find('label').addClass('active');
            }
        }
        /* disable이 되어있는경우 */
        else if($checkBox.is(":disabled")==true){
            $checkBox.closest(".js-checkbox01").find('label').addClass('disabled');
        }

        $checkBox.focus(function(){
            $checkBox.closest(".checkbox01").addClass("focus");
        });
        $checkBox.blur(function(){
            $checkBox.closest(".checkbox01").removeClass("focus");
        });

        $checkBox.on("change", function(){
            if ($(this).prop("checked") === true) {
                $(this).prop("checked", true).closest(".checkbox01").find('label').addClass('active');
            } else {
                $(this).prop("checked", false).closest(".checkbox01").find('label').removeClass("active");
            }
        });
    });
}
/* E : 20161221_추가_sungjae */
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
function jsNumberbox01(){
    $(".js-numberbox01").each(function(){
        var $numberBox = $(this);
        var $increase = $(this).find(".increase");
        var $reduction = $(this).find(".reduction");
        var $val = $(this).find(".num");

        $val.on("keyup", function(){
            var newValue = parseInt($val.val());
            if ($numberBox.attr("data-maxvalue")) {
                var maxValue = parseInt($numberBox.attr("data-maxvalue"));
                // data-max 보다 클경우
                if (maxValue < newValue) {
                    newValue = Math.min(newValue, maxValue);
                    $val.val(newValue);
                }
            }
            if ($numberBox.attr("data-minvalue")) {
                var minValue = parseInt($numberBox.attr("data-minvalue"));
                // data-min 보다 작을경우
                if (minValue > newValue) {
                    newValue = Math.max(newValue, minValue);
                    $val.val(newValue);
                }
            }
        });

        $increase.on("click", function(){
            var newValue = parseInt($val.val()) + 1;
            if ($numberBox.attr("data-maxvalue")) {
                var maxValue = parseInt($numberBox.attr("data-maxvalue"));
                // data-max 보다 클경우
                if (maxValue < newValue) {
                }
                newValue = Math.min(newValue, maxValue);
                $val.val(newValue);
            }
            return false;
        });
        $reduction.on("click", function(){
            var newValue = parseInt($val.val()) - 1;
            if ($numberBox.attr("data-maxvalue")) {
                var minValue = parseInt($numberBox.attr("data-minvalue"));
                // data-min 보다 작을경우
                if (minValue > newValue) {
                }
                newValue = Math.max(newValue, minValue);
                $val.val(newValue);
            }
            return false;
        });
    });
}

/*
var storageVal = null;
$(".inpTxt").each(function(){
    storageVal = $(this).attr("val");
    if($(this).is(":disabled")==true){
        $(this).addClass("off");
    }
    if (storageVal !== undefined) {
        $(this).val(storageVal);
        $(this).on({
            "click" : function(){
                storageVal = $(this).attr("val");
                if ($(this).val() === storageVal) {
                    $(this).val("");
                }
            },
            "focusout" : function(){
                if ($(this).val() == "") {
                    $(this).val(storageVal);
                }
            }
        });
    }
});*/

function jsTabEvent(){
    if($(".js-tab-section").length <= 0) return false;

    $(".js-tab-section").each(function(){
        $(this).find(".tab_title").off("click").on("click", function(){
            if ($(this).attr("confirmFunc")) {
                if (!window[$(this).attr("confirmFunc")]()) {
                    return false;
                }
            }
            $(this).closest("li").addClass("on").siblings().removeClass("on");
            return false;
        })
    })
}
// 둘중 하나 보여주기 위한 js
function jsShowHide(){
    $(".jsShowHide").each(function(){
        $(this).find(".jsBtn").click(function(){
            $(this).closest(".jsArea").addClass("off").siblings().removeClass("off");
            var _area01 = $(this).closest(".jsArea").siblings(),
            _area02 = $(this).closest(".jsArea");

            if(_area01.hasClass("password")){_area01.find("#c_pass").focus();
            }else if(_area02.hasClass("password")){_area02.siblings().find("#user_pass1").focus();}
            return false;
        })
    })
}
// 버튼 선택시 해당 컨텐츠 보여줌 (다수가능)
function jsChoice(){
    $(".jsChoice").each(function(){
        $(this).find(".jsChoiceBtn input").click(function(){
            var _this = $(this).closest("li").index();
            $(this).closest(".jsChoice").find(".jsChoiceGroup").children().eq(_this).addClass("on").siblings().removeClass("on");
        })
    })
}

// layerpopup
function jsLayerPopup(obj){
    $(obj).bind('click', function(){
        var jsOpenerData = $(this).data("opener");
        var jsOpenLayerAddClass = "";
        
        if ($(this).attr("confirmFunc")) {
            if (!window[$(this).attr("confirmFunc")]()) {
                return false;
            }
        }
        
        if($(this).attr("href")) var url_map_name = $(this).attr("href");
        else var url_map_name = $(this).attr("id");

        // 기존에 Open 된 Layer 가 존재하는지 확인
        var jsLayerCnt = $("div.layer.open").length;

        var _url = "";
        if (url_map_name.indexOf(".html") != -1) {
            _url = url_map_name;
        } else {
            _url = '/' + url_map_name + '.do';
            if(url_map_name == 'logout') return;
        }
        if (_url.indexOf("CountrySearch") >= 0) {
            jsOpenLayerAddClass = "countrySearch";
        }

        var jsOpenLayerData = {};
        if ($(this).attr("dataFunc")) {
            jsOpenLayerData = window[$(this).attr("dataFunc")]();
        }
        
        var dimmed = "<span class='dimmed'></span>",
            _height = $("#container").outerHeight();
        var _html = "<div id='divLayerPopup" + jsLayerCnt + "' class='layer "+ jsOpenLayerAddClass +"'></div>";
        var _focus = $(this);

        $("body").css("overflow", "hidden");
        if (jsLayerCnt == 0) {
            $("#wrap").prepend(dimmed);
            $(".dimmed").animate({"opacity": 0.4}, 300);
        }
        $("#wrap").append(_html).find("#divLayerPopup" + jsLayerCnt).load(_url, jsOpenLayerData, function(){
            if($(this).find(".layer_right_type").length) {
                // 슬라이딩 될 경우
                $(this).addClass("open").data("opener", jsOpenerData).show().find(".layer_right_type").css("right", -1200).animate({"right": 0}, 200);
                callback();
            } else {
                // 일반 팝업인 경우
                $("#wrap").append(_html).find("#divLayerPopup" + jsLayerCnt).load(_url, function(){
                    $(this).addClass("open").data("opener", jsOpenerData).fadeIn(function(){
                        callback();
                    });
                })
            }
        });

        function callback(){
            var _window = $(window).height(),
            _layerH = $("#divLayerPopup" + jsLayerCnt + " .layer_inner").outerHeight(true),
            _contentH = $("#divLayerPopup" + jsLayerCnt + " .layer_content").height(),
            term = _window - _layerH;
            var $layerContent = $("#divLayerPopup" + jsLayerCnt + " .layer_content");
            //if($(".layer_center_type").hasClass("large_type")){
            if($("#divLayerPopup" + jsLayerCnt + " .layer_center_type").length){
                if(_window < _layerH){ // window height 768 미만
                    $layerContent.outerHeight(_window - 100).css("overflow-y", "scroll");
                }
            }
            $(window).resize(function(){
                if($("#divLayerPopup" + jsLayerCnt + " .layer_center_type").length) {
                    var re_window = $(window).height();
                    if(re_window < _layerH){
                        $layerContent.outerHeight(re_window - 100).css("overflow-y", "scroll");
                    } else {
                        $layerContent.outerHeight(_layerH - 58).css("overflow-y", "hidden");
                    }
                }
             });
            jsEmailLayer();
            jsSelectbox();
            jsCheckbox01();
            jsCheckbox02();
            jsRadiobox01();
            jsTabEvent();
            jsNumberSelect();

            $('input[placeholder], textarea[placeholder]').placeholder({customClass:'my-placeholder'});
            // $("#divLayerPopup" + jsLayerCnt + " .layer_title .title").attr("tabindex", "0").focus(); // 20160704 삭제

            $(".layer_inner").find("input, button, a, select, textarea").eq(0).focus(); // 20160704 추가, 20160714 수정
            
            /* S : 20161222_vricks_sungjae */
            if($(".layer_content").find("select, a, button, input, textarea").length > 0){
            	$(".jsCloseBtn").off("keydown").on("keydown", function(e){
                    var tab = Tab(function(){
                        $(".layer_content").find("select, a, button, input, textarea .tab_title").eq(0).focus();
                    }, e);
                    if (tab) return false;
                });
                $(".tab_area .tab_title").find("select, a, button, input, textarea .tab_title").eq(0).off("keydown").on("keydown", function(e){
                    var tab = Shifttab(function(){
                        $(".jsCloseBtn").focus();
                    }, e);
                    if (tab) return false;
                });
            }else{
            	$(".layer_content").focus();
            	$(".jsCloseBtn").off("keydown").on("keydown", function(e){
                    var tab = Tab(function(){
                        $(".layer_content").eq(0).focus();
                    }, e);
                    if (tab) return false;
                });
            	$(".layer_content").off("keydown").on("keydown", function(e){
                    var tab = Shifttab(function(){
                        $(".jsCloseBtn").eq(0).focus();
                    }, e);
                    if (tab) return false;
                });
            }
            /* E : 20161222_vricks_sungjae */

            $("#divLayerPopup" + jsLayerCnt + " .js-scroll-height").each(function(){
                var height = $(window).outerHeight();
                $(this).css("height", height);
            })

            $("#divLayerPopup" + jsLayerCnt + " .jsCloseBtn").bind('click', function(){
                $("#divLayerPopup" + jsLayerCnt).fadeOut(function(){$(this).remove();})
                if (jsLayerCnt == 0) {
                    $(".dimmed").fadeOut(function(){$(this).remove();})
                }
                _focus.focus();
                $("body").css("overflow", "auto");
                return false;
            });

            // $("#divLayerPopup" + jsLayerCnt).append("<a class='layerlastarea' href='#'></a>").attr("tabindex" , 0);
            // $("#divLayerPopup" + jsLayerCnt + " .layer_content").attr("tabindex", 0); // 20160704 삭제

            $("#divLayerPopup" + jsLayerCnt + " .layerlastarea").on("focus", function(){
                $("#divLayerPopup" + jsLayerCnt + " .layer_title .title").focus();
            });
            $("#divLayerPopup" + jsLayerCnt).on("focus", function(){
                $("#divLayerPopup" + jsLayerCnt + " .jsCloseBtn").focus();
            });

            layername();
        }

        function layername(){
            var _i = $("#divLayerPopup" + jsLayerCnt + ' .layer_title .title').size();
            if(_i == 0) return false;
            var _tit = $("#divLayerPopup" + jsLayerCnt + ' .layer_title .title').eq(0).text();
            $("#divLayerPopup" + jsLayerCnt + " .btn_close a").attr("title", _tit + layerPopCloseTxt); /* "레이어 팝업 닫기" ${dic.getWord(langCode, 'script', '0006')} */
        }

        return false;
    });

}


function jsLocation(){
    $("#location .btn_lnb").each(function(){
        if($(this).hasClass("on"))$(this).append("<span class='hidden-title'>"+locationCloseTxt+"</span>"); /* 닫기 "${dic.getWord(langCode, 'script', '0008')}"; */
        else $(this).append("<span class='hidden-title'>"+locationOpenTxt+"</span>"); /* 열기 "${dic.getWord(langCode, 'script', '0007')}"; */
    });
    $(".location_area").on("mouseleave" , function(){
        $(".btn_lnb").removeClass("on").find("span").text(locationOpenTxt);/* 열기 "${dic.getWord(langCode, 'script', '0007')}"; */
        $(".lnb_area").hide();
    });
    $("#location .btn_lnb.on").next().show();
    $(".btn_lnb").click(function(){
        var w1 = $(this).closest("li").width();
        var w2 = $(this).next(".lnb_area").width();
        if (Math.min(w1, w2) === w2) {
            //$(this).next().css("width", w1);
        } else {
            //$(this).next().css("width", w2);
        }
        if($(this).hasClass("on")){
            $(this).removeClass("on").next().slideUp(200);
            $(this).find("span").text("열기");
        }else{
            $(this).addClass("on").closest("li").siblings().find(".btn_lnb").removeClass("on").next().slideUp();
            $(this).next().slideDown(200)//.css("min-width", w);
            $(this).find("span").text(locationCloseTxt) /* 닫기 "${dic.getWord(langCode, 'script', '0008')}"; */
            	.closest("li").siblings().find(".btn_lnb span").text(locationOpenTxt);/* 열기 "${dic.getWord(langCode, 'script', '0007')}"; */
        }
    })
}

function jsNumberSelect(){
    $(".js-number-select").each(function(){
        var $lists = $(this).find("li");
        var $prevList = null;
        $lists.each(function(){
            if ($(this).hasClass("active")) {
                $prevList = $(this);
            }
        })
        $lists.off("click").on("click", function(){
            var _$button = $(this).find("button");
            var _title = _$button.attr("title");
            var _titleMatch = selectChoiceTxt; /* 선택됨 "${dic.getWord(langCode, 'script', '0009')}"; */
            if($(this).hasClass("active")){
                $(this).removeClass("active");
                // $("input[type=hidden]").val(0);
                $(this).closest(".js-number-select").find("input[type=hidden]").val(0);// 20160629 추가
                _$button.attr("title", _title.replace(" "+selectChoiceTxt,"")); /* 선택됨 "${dic.getWord(langCode, 'script', '0009')}"; */
            }else{
                var idx = $lists.index(this);
                if ($prevList !== null) {
                    var _title02 = $prevList.find("button").attr("title"); // 20160719 추가
                    $prevList.removeClass("active");
                    $prevList.find("button").attr("title", _title02.replace(_titleMatch, "")); // 20160719 수정
                }
                // $("input[type=hidden]").val($lists.eq(idx).find("button").val());
                $(this).closest(".js-number-select").find("input[type=hidden]").val($lists.eq(idx).find("button").val()); // 20160629 추가
                
                $lists.eq(idx).addClass("active");
                _$button.attr("title", _title + " " + _titleMatch);
                $prevList = $lists.eq(idx);
            }
        })
    })
}

function jsAccordion(btn, ctnbox){ // 버튼 클래스명, 열려야하는 컨텐츠 박스 클래스명
    var _i = $(".jsAccordion .on").size();

    $(".jsAccordion").find("."+btn).append("<span class='hidden-title'>"+acodianOpenTxt+"</span>"); /* 내용 열기 "${dic.getWord(langCode, 'script', '0010')}"; */
    if(_i > 0){
        $(".jsAccordion .on").find("."+btn).find("span").text(acodianCloseTxt); /* 내용 닫기 "${dic.getWord(langCode, 'script', '0011')}"; */
        $(".jsAccordion .on").find("."+ctnbox).show();
    }

    $(".jsAccordion").each(function(){
        $(this).find('.'+btn).click(function(){
            var _parent = $(this).closest("li");

            if(_parent.hasClass("on")){
                _parent.removeClass("on").find("."+ ctnbox).slideUp(250);
                $(this).find("span").text(acodianOpenTxt); /* 내용 열기 "${dic.getWord(langCode, 'script', '0010')}"; */
            }else{
                _parent.addClass("on").find("."+ ctnbox).slideDown(250);
                _parent.siblings().removeClass("on").find("."+ctnbox).slideUp(250);
                $(this).find("span").text(acodianCloseTxt); /* 내용 닫기 "${dic.getWord(langCode, 'script', '0011')}"; */
            }
        });
    });
}

// radio 개월수
function jsRadioMonth(){
    var _size = $(".js_month_radio").size();
    if(_size <= 0) return false;
    $(".js_month_radio").each(function(){
        $(this).find("button").click(function(){
            $(this).closest("li").addClass("on").siblings().removeClass("on");
        })
    })
}


function jsFooter(){
   var windowH = $(window).height(),
   _content = $("#content").outerHeight(),
   _footer = $("#footer").outerHeight();

   var total = windowH - _footer;
   var prev_total = _content + _footer;
   if(_content <= total){
        $("#content").outerHeight(total);
   }

   $(window).resize(function(){
        var winH  = $(window).height(),
        re_content = $("#content").outerHeight(),
        re_footer = $("#footer").outerHeight();

        var re_total = re_content + re_footer,
        re_total02 = winH - re_footer;
        if(winH > re_total){
             $("#content").outerHeight(re_total02);
        }else {
            if(winH <= prev_total){
                $("#content").outerHeight(_content);
            }else{
                $("#content").outerHeight(re_total02);
            }
        }
   })
}
function jsEmailLayer(){
    var $prev = null;
    $(".js-email-btn, .js-email-close").off("click");
    $(".js-email-layer").each(function(){
        var $self = $(this);

        $self.find(".js-email-btn").on("click", function(){
            if ($self.find(".email-layer-popup").is(":visible")) {
                $self.find(".email-layer-popup").hide();
                return false;
            }

            $self.find(".js-email-close").on("click", function(){
                $self.find(".email-layer-popup").hide();
                $self.find(".js-email-btn").focus();
            })

            //$self.find(".email-layer-popup").css(width, (300+ $(".js-email-close").width()))
            if ($prev !== null) {
                $prev.hide();
            }
            $self.find(".email-layer-popup").show();
            var top = $(this).position().top + $(this).height() + 8; // button top + button height
            //- ($(this).outerWidth(true) / 2)
            //console.log($(this).next(".email-layer-popup").outerWidth(true))
            var left = $(this).position().left + ($(this).width() /2) + 27 - $(this).next(".email-layer-popup").outerWidth(true);  // button left - email layer size - layer left

            $prev = $self.find(".email-layer-popup").css({"top":top, "left":left});
        });
    });
}

function jsEmailLayer01(){
    var $prev = null;
    $(".js-email-layer01").each(function(){
        var $self = $(this);
        $self.find(".js-email-btn").on("click", function(){
            if ($self.find(".js-layer-popup").is(":visible")) {
                $self.find(".js-layer-popup").hide();
                return false;
            }

            $self.find(".js-email-close").on("click", function(){
                $self.find(".js-layer-popup").hide();
                $self.find(".js-email-btn").focus();
            })

            //$self.find(".email-layer-popup").css(width, (300+ $(".js-email-close").width()))
            if ($prev !== null) {
                $prev.hide();
            }
            $self.find(".js-layer-popup").show();
            var top = $self.closest(".boardingpass-btn-list").position().top + $(this).height() + 8; // button top + button height
            //- ($(this).outerWidth(true) / 2)
            //console.log($(this).next(".email-layer-popup").outerWidth(true))
            var left = $self.closest(".boardingpass-btn-list").position().left;// button left - email layer size - layer left

            $prev = $self.find(".js-layer-popup").css({"top":top, "left":left});
        });
    });
}

function jsGroupLink(){
    $(".group-link-list").find(".group-btn").on("click", function(){
        $(this).next().show();
        $(".group-link").find("li a").on("click", function(){
            $(".group-link-list").find(".group-close-btn").trigger("click");
        });
    });
    $(".group-link-list").find(".group-close-btn").on("click", function(){
        $(".group-link").find("li a").off("click");
        $(".group-link-list").find(".group-btn").focus();
        $(this).parent().hide();
    });
}