


/*	MainBanner  슬라이딩 제이쿼리	*/
function mainBanner(){
          
             var $self = $(".travel-banner1");
             var $inself = $self.find(".banner-slider");
             var $bannerImg = $inself.find("#banner-img");
             var $bannerImgList = $bannerImg.find("li");
       
             var $bannerImgListA = $bannerImgList.find("img");
             var $cloneBannerImgList;
             var $btnPrev = $self.find(".control_group .prev");
             var $btnNext = $self.find(".control_group .next");
             var $btnStop = $self.find(".control .stop");
             var $btnPlay = $self.find(".control .play");
             var $indicatorList;

             var idxPrev, idxNext, idxPrev2, idxNext2;
             var itemLeg = $bannerImgList.length;
             var timer = null;
             var flag = false;
         
             var idx = 0;
             var aniTime = 1000;
             var autoTime = 3000;
       
                /**
                 * transition 사용가능여부 판단 함수
                 */
             function transitionCheck(){
                var style = document.documentElement.style;
                 if (
                         style.webkitTransition !== undefined ||
                         style.MozTransition !== undefined ||
                         style.OTransition !== undefined ||
                         style.MsTransition !== undefined ||
                         style.transition !== undefined
                  ) return true;
                 else return false;
              }

                /**
                 * 자동 slide 호출 함수
                 */
                function AutoStart(){
                    if (timer !== null) return;
                    if ($btnPlay.parent().hasClass("on")) return;
                    return timer = setInterval(btnNextClickEvent, autoTime);
                }
                /**
                 * 자동 slide 멈춤 호출 함수
                 */
                function AutoStop(){
                    if (timer === null) return;
                    clearInterval(timer);
                    return timer = null;
                }
                /**
                 * 보이는 영역 , 왼쪽 영역 , 오른쪽 영역 설정 부
                 */
                function EventFunction(){
                    // banner event
                    $bannerImg.stop(true,true).removeAttr("style");
            //      $bannerImg.stop(true,true).css({"left":  0});
                    $bannerImgList.add($cloneBannerImgList).removeClass("on next prev first last");
                    $bannerImgList.eq(idx).addClass("on");
                    $bannerImgList.eq(idxNext).addClass("next");
                    if (itemLeg === 2) $cloneBannerImgList.eq(idxPrev).addClass("prev");
                    else $bannerImgList.eq(idxPrev).addClass("prev");
                    // location event
                    $indicatorList.removeClass("on").eq(idx).addClass("on");
                    // flag
                    flag = false;
                }
                /**
                 * 넘겨받은 number 체크하여 legth보다 클경우 0 , 0보다 작을경우 length - 1
                 */
                function MaxLegCheck(num){
                    if (itemLeg <= num) return 0;
                    else if (num < 0) return itemLeg - 1;
                    else return num;
                }
                /**
                 * Prev button Event
                 */
                function btnPrevClickEvent(){
                    // 이벤트 진행중일경우 return
                    if (flag === true) return false;
                    else flag = true;

                    AutoStop();
                    idx--;
                    if (idx === -1) {idx = MaxLegCheck(itemLeg - 1); idxNext = MaxLegCheck(0); idxPrev = MaxLegCheck(idx - 1); idxPrev2 = MaxLegCheck(idx - 1);}
                    else {idxNext = MaxLegCheck(idx + 1); idxPrev = MaxLegCheck(idx - 1); idxPrev2 = MaxLegCheck(idx - 1);}
                    $cloneBannerImgList.eq(idxPrev2).addClass("first");
                    if (transitionCheck()) {
                        $bannerImg.css({
                            'transition' : 'all 1s',
                            '-ms-transition' : 'all 1s',
                            '-moz-transition' : 'all 1s',
                            '-webkit-transition' : 'all 1s',
                            'transform' : 'translateX('+2000+'px)',
                            '-ms-transform' : 'translateX('+2000+'px)',
                            '-moz-transform' : 'translateX('+2000+'px)',
                            '-webkit-transform' : 'translateX('+2000+'px)'
                        });
                        setTimeout(EventFunction, aniTime);
                    } else {
                        $bannerImg.animate({"left" : 2000}, aniTime, 'easeInOutQuart', EventFunction);
                    }
                    AutoStart();
                }
                /**
                 * Next button Event
                 */
                function btnNextClickEvent(){
                    // 이벤트 진행중일경우 return
                    if (flag === true) return false;
                    else flag = true;

                    AutoStop();
                    idx++;
                    if (idx === itemLeg) {idx = MaxLegCheck(0); idxNext = MaxLegCheck(idx + 1); idxPrev = MaxLegCheck(idx - 1); idxNext2 = MaxLegCheck(idx + 1);}
                    else {idxNext = MaxLegCheck(idx + 1); idxPrev = MaxLegCheck(idx - 1); idxNext2 = MaxLegCheck(idx + 1);}
                    $cloneBannerImgList.eq(idxNext2).addClass("last");
                    if (transitionCheck()) {
                        $bannerImg.css({
                            'transition' : 'all 1s',
                            '-ms-transition' : 'all 1s',
                            '-moz-transition' : 'all 1s',
                            '-webkit-transition' : 'all 1s',
                            'transform' : 'translateX(-'+2000+'px)',
                            '-ms-transform' : 'translateX(-'+2000+'px)',
                            '-moz-transform' : 'translateX(-'+2000+'px)',
                            '-webkit-transform' : 'translateX(-'+2000+'px)'
                        });
                        setTimeout(EventFunction, aniTime);
                    } else {
                        $bannerImg.animate({"left" : -2000}, aniTime, 'easeInOutQuart', EventFunction);
                    }
                    AutoStart();
                }
                /**
                 * focus img Event
                 */
                function bannerImgListAFocusEvent(){
                    AutoStop();
                    idx = $bannerImgListA.index(this);
                    idxNext = MaxLegCheck(idx + 1);
                    idxNext2 = MaxLegCheck(idx + 1);
                    idxPrev = MaxLegCheck(idx - 1);
                    EventFunction();
                    $(".travel-banner-section").scrollLeft(0);
                    return false;
                }
                /**
                 * Stop button Event
                 */
                function btnStopClickEvent(){
                    $btnPlay.parent().addClass("on");
                    $btnStop.parent().removeClass("on");
                    AutoStop();
                }
                /**
                 * Play button Event
                 */
                function btnPlayClickEvent(){
                    $btnPlay.parent().removeClass("on");
                    $btnStop.parent().addClass("on");
                    AutoStart();
                }
                /**
                 * 초기값 설정
                 */
                function init(){
                    // list가 1개면 이벤트 실행하지 않음
                    if (itemLeg === 1) {
                        $bannerImg.find("li").eq(idx).addClass("on");
                        $self.find(".indicator").hide();
                        return false;
                    }
                   
                    // index 설정
                    idxNext = idx + 1;
                    idxPrev = idx - 1;

                    // element 복사 적용
                    $bannerImg.find("li").each(function(){
                        $bannerImg.append($(this).clone().addClass("clone"));
                    });
                    $cloneBannerImgList = $bannerImg.find(".clone"); // 선택자 저장
                    $cloneBannerImgList.find("img").attr("tabIndex", -1).attr("title", "복사된 데이터 입니다.");
                    
                    // indicator 생성부
                    var _html = "";
                    $bannerImgList.each(function(i){
                        if(i === idx){_html += "<li class='on'><span>"+ (i + 1) +"</span></li>";}
                        else{_html += "<li><span>"+ (i + 1) +"</span></li>";}
                    });
                    $indicatorList = $(".indicator .number").html(_html).find("li");

                    // 초기 위치값 설정
                    EventFunction();

                    // 이벤트리스너 등록
                    $bannerImgListA.on({
                        focus : bannerImgListAFocusEvent,
                        focusout : AutoStart,
                        mouseenter : AutoStop,
                        mouseleave : AutoStart
                    });
                    $btnPrev.on({
                        click : btnPrevClickEvent
                    });
                    $btnNext.on({
                        click : btnNextClickEvent
                    });
                    $btnStop.on({
                        click : btnStopClickEvent
                    });
                    $btnPlay.on({
                        click : btnPlayClickEvent
                    });

                    AutoStart();
                }
                init();
            }
