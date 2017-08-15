$(document).ready(function(){
		
	$("#SeatSelectLayerPopupOpen").on("click", function(){
		var $this = $(this);
		var $target = $("#seatSelectedLayer");
		
		if($this.hasClass('active')){
			$this.removeClass('active');
			$target.slideUp(150);
		}else{
			$this.addClass('active');
			$target.slideDown(150);
		}
		
	});
	
	$("#SeatResetBtn").on("click", function(){
		if(confirm("좌석 선택을 초기화 하시겠습니까?")){
		fn_ResetSeat();
		}else{
			return false;
		}
	});

});

var seatInfo = function(){
	this.seatCol = "";
	this.seatRow = "";
	this.seatLevel = "";
	this.seatPrice = "";
}
function Show_Seat(scNum, scDate){
	var jsScNUM = jQuery.parseJSON(scNUM);
	console.log(scDate);
//	console.log(jsScNUM);	
	var OWnum = jsScNUM.owNum;
	var RTnum = jsScNUM.rtNum;
	
	var OWdate = scDate.ow;
	var RTdate = scDate.rt;
	
//	console.log(OWnum);
	var AlltotalPrice = $(".price").text();
	var adtcnt = $("#Summary_ADT").text();
	var chdcnt = $("#Summary_CHD").text();	
	var personCnt = Number(adtcnt)+Number(chdcnt);
	
//	var personCnt = 2;
	console.log("Person Cnt : "+personCnt);
	if(RTnum != ""){
		fn_SetSeatView('RT',RTnum, RTdate, personCnt);
	}
		fn_SetSeatView('OW',OWnum, OWdate, personCnt);
}

function fn_SetSeatView(type, scNum, scDate, personCnt){
	var str= "";
	str += "<ul>";
	for(var i=0; i<personCnt ; i++){
		str += "<li><span class='seatNum' id='"+type+"seatNum_"+(i+1)+"'></span><em class='unit' id='unit_"+(i+1)+"'></em><span class='seatPrice' id='"+type+"seatPrice_"+(i+1)+"'></span></li>";
	}
	str +="</ul>";
	
	$("#"+type+"seatList").html(str);
	var jsseatInfo = new seatInfo();
	
	$.ajax({
		type : "POST",
		dataType : "JSON",
		url : "./ShowSeatInfo.op",
		data : {scNum : scNum,
				scDate : scDate
				},
		success : function(data){
			
			jsseatInfo = [];
			jsseatInfo = data.seatList;
			
			var str = "";
			var index = 0;
			for(var i=1; i<=data.colCount; i++){
				str += "<tr>"
					for(var j=1; j<7;j++){
						var seatData = data.seatList[index].seatNum;
						var seatPrice = data.seatList[index].seatPrice;
						var seatSelected = data.seatList[index].selected;
	//					console.log(seatData);
						if(j!=4){
							str +="<td>"+"<button class='_"+data.seatList[index].seatLevel+" "+seatSelected+"' id='"+type+"buttonSeat_"+seatData+"' data='"+seatData+"' seatPrice='"+seatPrice+"'><span class='title'>"+data.seatList[index].seatLevel+"</span></button>"+"</td>";
						}else{
							str +="<td class='tbl-hallway'>"+i+"</td>"+
								  "<td>"+"<button class='_"+data.seatList[index+1].seatLevel+"' id='"+type+"buttonSeat_"+seatData+"' data='"+seatData+"' seatPrice='"+seatPrice+"'><span class='title'>"+data.seatList[index].seatLevel+"</span></button></button>"+"</td>";
						}
						index++;
					}
				str +=	"</tr>";
			//	console.log("hall way :"+i);
				}
				
			$("#"+type+"seatView").find("#tbodyseatSectionTable").html(str);
			
			var $_button = $("#"+type+"seatView").find("#tbodyseatSectionTable").find("button");

			var pcnt = 1;		// 각 좌석이 표시될 id 값의 index
			var seatIndex = 1; // 인원 수 이상의 좌석을 선택하여 선택되었던 좌석이 선택 해제 되고 
								// 또 다른 좌석이 선택 될 때, 좌석이 표시되는 부분의 index
	
			var btnList = [];	// 선택한 좌석이 저장될 배열
						
			$("#"+type+"seatView").find("#tbodyseatSectionTable").find("button").on("click", function(){
					var price = $(this).attr("seatPrice");
					var seat = $(this).attr("data");
					
					if(pcnt > personCnt){
//						console.log("Pcnt > personCnt "+pcnt);
						
						var btn = btnList[0];	// 개수를 초과하여 좌석이 선택 될 때, 좌석 배열의 [0]의 값을 삭제
						
						if(seatIndex > personCnt) seatIndex = 1;
						
						$("#"+btn).removeClass('choice');
						
						
						if($(this).hasClass('choice')){
							
							$(this).removeClass('choice');
							$("#"+type+"seatList").find("#"+type+"seatNum_"+seatIndex).text("");
							$("#"+type+"seatList").find("#unit_"+seatIndex).text('KRW');
							$("#"+type+"seatList").find("#"+type+"seatPrice_"+seatIndex).text("");
							return false;
							
						}else{
							$(this).addClass('choice');
							$("#"+type+"seatList").find("#"+type+"seatNum_"+seatIndex).text("");
							$("#"+type+"seatList").find("#unit_"+seatIndex).text('KRW');
							$("#"+type+"seatList").find("#"+type+"seatPrice_"+seatIndex).text("");
							
							$("#"+type+"seatList").find("#"+type+"seatNum_"+seatIndex).text(seat);
							$("#"+type+"seatList").find("#unit_"+seatIndex).text('KRW');
							$("#"+type+"seatList").find("#"+type+"seatPrice_"+seatIndex).text(price);
						}
						btnList.splice(0,1);	// 배열[0] 삭제 
						
//						console.log(btnList);
						
						pcnt = pcnt - 1;
						seatIndex++;
						
//						console.log("if문 종단 : "+pcnt);
					}else{
					
						if($(this).hasClass('choice')){
							$(this).removeClass('choice');
							$("#"+type+"seatList").find("#"+type+"seatNum_"+pcnt).text("");
							$("#"+type+"seatList").find("#unit_"+pcnt).text('KRW');
							$("#"+type+"seatList").find("#"+type+"seatPrice_"+pcnt).text("");
						}else{
							$(this).addClass('choice');
							$("#"+type+"seatList").find("#"+type+"seatNum_"+pcnt).text(seat);
							$("#"+type+"seatList").find("#unit_"+pcnt).text('KRW');
							$("#"+type+"seatList").find("#"+type+"seatPrice_"+pcnt).text(price);
						}
					}
					
					btnList.push($(this).attr("id"));
					
//					console.log(btnList);
//					console.log(pcnt);
					pcnt++;
					
					fn_totalSeatPrice(type, btnList);
					
					
				});
				
		}
	});
	
	
	
	
	
}
function fn_ResetSeat(){
	alert("모든 여정의 좌석 선택이 초기화 됩니다.");
	
	var $_button = $("#OWseatView").find("#tbodyseatSectionTable").find("button");
	$_button.each(function(i){
		if($_button.eq(i).hasClass('choice')){
			$_button.eq(i).removeClass('choice');
			var price = Number($_button.eq(i).attr("seatPrice"));
			var _price = $(".price").text();
			_price = Number(_price)-price;
			$(".price").text(_price);
		}
	});
	
	if( $("#RTseatView").find("#tbodyseatSectionTable").find("button")){
		var $_btn = $("#RTseatView").find("#tbodyseatSectionTable").find("button");
		$_btn.each(function(i){
			if($_btn.eq(i).hasClass('choice')){
				$_btn.eq(i).removeClass('choice');
				var price = Number($_btn.eq(i).attr("seatPrice"));
				var _price = $(".price").text();
				_price = Number(_price)-price;
				$(".price").text(_price);
			}
		});
	}
	
	$(".seatNum").text("");
	$(".unit").text("");
	$(".seatPrice").text("");
	$(".totalSeatPrice").text("");
	
}
function fn_totalSeatPrice(type, seatList){
	var totalPrice = "";
	var seatPrice = "";
	
	var index = 0;
		
	console.log(totalPrice);
	
	for(var i=0; i<seatList.length; i++){
		seatPrice = $("#"+seatList[i]).attr("seatPrice");
		totalPrice = Number(totalPrice)+Number(seatPrice);
		
		console.log($("#"+type+"seatPrice_"+(i+1)).text());
		
	}
	
	$("#"+type+"totalSeatPrice").find(".unit").text(type+' KRW');
	$("#"+type+"totalSeatPrice").find(".totalSeatPrice").text(totalPrice);
	
	fn_optionAllPrice();
}

function fn_optionAllPrice(){
	var Eq = Number( $("#EquivFare").text());
	var Fuel = Number($("#FuelCharge").text());
	var Tax = Number($("#Tax").text());
	
	var owseat = Number($("#OWtotalSeatPrice").find(".totalSeatPrice").text());
	var rtseat = Number($("#RTtotalSeatPrice").find(".totalSeatPrice").text());
	
	var meal = Number($("#mealPrice").find(".totalMealPrice").text());
	
	var totalprice = Eq+Fuel+Tax+owseat+rtseat+meal;
	
	var optionPrices = function(){
		this.seat = "";
		this.bag = "";
		this.meal = "";
	}
	
	var jsOptionPrices = new optionPrices();
	
	jsOptionPrices.seat = owseat+rtseat;
	jsOptionPrices.meal = meal;
	
	console.log(totalprice);
	document.GoBook07.jsOptionPrice.value = JSON.stringify(jsOptionPrices);
	
	$("#seatPrice span.totalSeatPrice").text(owseat+rtseat);
	$(".price").text(totalprice);
}