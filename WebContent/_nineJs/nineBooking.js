var PassengerDetailDatas = function(){
	this.passengerDetailInfo = [];
}

var PassengerDetailInfo = function(){
	this.paxType = "";
	this.lastName = "";
	this.firstName = "";
	this.passportNumber = "";
	this.gender = "";
	this.price = "";
}
$(document).ready(function(){
	jsRadiobox01();

	var memid = $("#memID").val();
	var memEmail = $("#memEMAIL").val();
	var memGender = $("#memGender").val();
	var memLast = $("#memLast").val();
	var memFirst = $('#memFirst').val();

	/* 예약자 정보 : 로그인, 비로그인 이메일 */
	$("#email").val(memEmail);
	
	/*	성인 1, 기본적으로 예약자의 정보 입력	*/
	
	$("#lastNameAdt1").val(memLast);
	$("#firstNameAdt1").val(memFirst);
	
	if(memGender=='F'){
		$("#radioSexWomanAdt1").parent('label').addClass('active');
		$("#radioSexWomanAdt1").attr("selected","selected");
	}else if(memGender =='M'){
		$("#radioSexManAdt1").parent('label').addClass('active');
		$("#radioSexManAdt1").attr("selected","selected");
	}
	
	

	$("#checkAgree").on("click", function(){
	
		if($(this).parent('span').find('label').hasClass('active')){
			$(this).parent('span').find('label').removeClass('active');
			$("#lastNameAdt1").val(memLast);
			$("#firstNameAdt1").val(memFirst);

			if(memGender=='F'){
				$("#radioSexWomanAdt1").parent(' .').addClass('active');
				$("#radioSexWomanAdt1").attr("selected","selected");
			}else if(memGender =='M'){
				$("#radioSexManAdt1").parent('label').addClass('active');
				$("#radioSexManAdt1").attr("selected","selected");
			}
			
		}else{
			$(this).parent('span').find('label').addClass('active');
			
			$("#lastNameAdt1").val("");
			$("#firstNameAdt1").val("");
			
			$("ul .radio_list").find('label').removeClass('active');
		
		}
	});
	
	/*
	 * 
	 * var PassengerDetailInfo = function(){
	this.paxType = "";
	this.lastName = "";
	this.firstName = "";
	this.gender = "";
	this.price = "";
}
	 * 
	 * 
	 * */
	
	
	$(window).click(function(){
	
		var type=$("#type").val();
		
		var adt = $("#Summary_ADT").text();
		var chd = $("#Summary_CHD").text();
		var inf = $("#Summary_INF").text();
	
		console.log("adt : "+adt+"  chd :"+chd+"  inf :"+inf);

		var jsPassengerDetailDatas = new PassengerDetailDatas();
		jsPassengerDetailDatas.passengerDetailInfo = [];
		
		for(var i=1; i<=adt;i++){
			
			var AdtDetail = new PassengerDetailInfo();
			
			var last = $("#lastNameAdt"+i).val();
			var first = $("#firstNameAdt"+i).val();
			var gender = "";
			var price = "";
			
			var $wRA = $("#radioSexWomanAdt"+i).parent('label');
			var $mRA = $("#radioSexManAdt"+i).parent('label');
		
			if($wRA.hasClass('active')){ 	gender = "F"; 	}
			else if($mRA.hasClass('active')){ 	gender = 'M'; }
			
//			console.log(gender);
			$("#tdAdt"+i).find('span').text(last+first);
			var inputLat = $("#tdAdt"+i).find('span').text();
			
			price = $("#ad"+i).find('strong[name="strongPrice4"]').text();
			
			if(type=='RT'){
				$("#RTtdAdt"+i).text(last+first);
				price = Number(price)+Number($("#RTad"+i).find('strong[name="strongPrice4"]').text());			
			}
		
			AdtDetail.paxType='Adt';
			AdtDetail.lastName = last;
			AdtDetail.firstName = first;
			AdtDetail.passportNumber = $("#passportNumberAdt"+i).val();
			AdtDetail.gender = 	gender;
			AdtDetail.price =price;
			
//			console.log(AdtDetail.price);
//			console.log(inputLat);
	
	//		PassengerDetailDatas.push(AdtDetail);
			jsPassengerDetailDatas.passengerDetailInfo.push(AdtDetail);	
		}
		
		if(chd > 0){
			for(var i=1; i<=chd ; i++){
				
				var ChdDetail = new PassengerDetailInfo();
				
				var last = $("#lastNameChd"+i).val();
				var first = $("#firstNameChd"+i).val();
				var gender = "";
				var price = "";
				
				var $wRA = $("#radioSexWomanChd"+i).parent('label');
				var $mRA = $("#radioSexManChd"+i).parent('label');
				
				if($wRA.hasClass('active')){	gender = "F";	}
				else if($mRA.hasClass('active')){	gender = 'M';	}
//				console.log(gender);
				
				 $("#tdChd"+i).find('span').text(last+first);
				 var inputLat = $("#tdChd"+i).find('span').text();
				 
				 price =  $("#ch"+i).find('strong[name="strongPrice4"]').text();
				 
				if(type=='RT'){
					$("#RTtdChd"+i).text(last+first);
					price = Number(price) + Number($("#RTch"+i).find('strong[name="strongPrice4"]').text());
				}
				
				ChdDetail.paxType='Chd';
				ChdDetail.lastName = last;
				ChdDetail.firstName = first;
				ChdDetail.passportNumber = $("#passportNumberChd"+i).val();
				ChdDetail.gender = 	gender;
				ChdDetail.price = price;
				
				console.log(ChdDetail.passportNumber);
				
//				console.log(ChdDetail.price);
//				console.log(inputLat);
				
	//			PassengerDetailDatas.push(ChdDetail);
				jsPassengerDetailDatas.passengerDetailInfo.push(ChdDetail);
			}
			
		}
		
		if(inf > 0){
			for(var i=1; i<=inf ; i++){
				
				var InfDetail = new PassengerDetailInfo();
				
				var last = $("#lastNameInf"+i).val();
				var first = $("#firstNameInf"+i).val();
				var gender = "";
				var price = "";
				
				var $wRA = $("#radioSexWomanInf"+i).parent('label');
				var $mRA = $("#radioSexManInf"+i).parent('label');
				
				if($wRA.hasClass('active')){	gender = "F";	}
				else if($mRA.hasClass('active')){	gender = 'M';	}
//				console.log(gender);
				$("#tdInf"+i).find('span').text(last+first);
				
				var inputLat = $("#tdInf"+i).find('span').text();
			
				price = $("#in"+i).find('strong[name="strongPrice4"]').text();
				
				if(type=='RT'){
					$("#RTtdInf"+i).text(last+first);
					price = Number(price)+Number($("#RTin"+i).find('strong[name="strongPrice4"]').text());
				}
				
				InfDetail.paxType='Inf';
				InfDetail.lastName = last;
				InfDetail.firstName = first;
				InfDetail.passportNumber = $("#passportNumberInf"+i).val();
				InfDetail.gender = 	gender;
				InfDetail.price = price;
				
//				console.log(InfDetail.price);
//				console.log(inputLat);
				
	//			PassengerDetailDatas.push(InfDetail);
				jsPassengerDetailDatas.passengerDetailInfo.push(InfDetail);
			}
		}
		
		console.log(jsPassengerDetailDatas);
		document.GoBook06.jsPassengerDetail.value = JSON.stringify(jsPassengerDetailDatas);
	});
	
	
	
	$("#btnSearch").on("click", function(){
		
		var searchWord = $("#txtCountrySearch").val();
		console.log(searchWord);
		
		$.ajax({
			type : "POST",	// 서버로 보내는 방식 
			url : "./AllsearchNation.na",	//서버로 보낼 url 주소, 여기로 보내고 여기서 받음.
			dataType : "JSON",				//받을 데이터 형태 (주로 json, xml, html 이 사용됨)
			contextType : "application/x-www-form-urlencoded; charset=UTF-8", //제이슨을 인코딩하는 과정 (제이슨은 유니코드만 취급하기 때문에 한글을 인식하기 위해 꼭 필요함!)
			data : { 	worldWord : searchWord 	},	// url 로 보낼 데이터 => worldWord 가 변수 명, searchWord가 데이터가 담겨있는 변수 
			success : function(data){	// 아작스 함수가 성공했을 때, 실행되는 함수. data 에 원하는 정보가 담겨서 넘어온다. 
			
			/*	아작스를 이용해 가지고 온 검색 결과를 화면에 나열 후 선택 이벤트를 준다. 	*/
			/*	서버측에서 입력한 단어를 포함하는 모든 나라를 배열에 담아서 가져오게 코딩을 하여, 배열 크기로 구분		*/
				if(data.length == 0){
					alert("해당하는 나라가 없습니다.");
					$("#result_list").css("display","none");
					$("#none_data").css("display","block");
				}else{ //배열의 크기가 1이상일 때, 화면에 표시해줄 html 구문 작성
					var nationStr = "";
					nationStr += "<ul>"
					for(var i=0; i<data.length; i++){
						nationStr += "<li data-calling-code='"+data[i].number+"'>"+
									"<a href='#this'><span class='country' name='"+data[i].kor+"'>"+data[i].kor+"</span>"+
									"<span class='en_country' name='"+data[i].eng+"'>"+data[i].eng+"</span></a></li>"
					}
					nationStr += "</ul>";
					
					
					$("#result_list").html(nationStr);
					$("#result_list").css("display","block");
					$("#none_data").css("display","none");
					
					
					/*	검색 결과를 	선택할 때, 이미 선택되어 있는 것은 선택 해제 시킴. */
					/*	선택된 값의 한글 국가명을 변수 kor에 담고 확인 버튼을 눌렀을 때, jsp 화면에 표시	*/
					var callingNum ="";
					var _list = $("#result_list li");
					$("#result_list li").on("click", function(){
						console.log(this);
						
						_list.each(function(i){
							if(_list.eq(i).hasClass('selected')){
								_list.eq(i).removeClass('selected');
							}
						});
						if($(this).addClass('selected'));
						callingNum = $(this).attr("data-calling-code");
						console.log(callingNum);
					});
					
					/* 그 후 확인 버튼을 눌렀을 때 이벤트  */
					
				$("#btnConfirm").on("click", function(){
			//		var $liselected = $("#result_list").find("li .selected").attr("data-calling-code").val();
				//	var $textworld = $liselected.find('span');
					console.log(callingNum);
					
					$("#selCountryCode").val(callingNum);
					closeCountryLayer();
					
				});
					
				}
				
			} /*  ajax success 이벤트	*/
			
		});
		
	});
	
	

	

});

/*function fn_ClickConfirmBtn(){
	var _txt = $(".inp-txt");
	
	_txt.each(function(i){
		if(_txt.find('input:text').text()==""){
			alert("작성하지 않은 항목이 있습니다.");
			return false;
		}
	});
	
	alert("전부 작성 했음?");
	
	nine.js에 함수 나머지 함수 작성
}*/

function viewLayerCountrySearch(){
	$("#divLayerPopup0").css("display","block");
}
function closeCountryLayer(){
	$("#divLayerPopup0").css("display","none");
}
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