/**
 * main.jsp에서 나타낼 통계를 계산, 표시하기 위한 자바스크립트
 */

$(document).ready(function() {
	
	
	$.ajax({
		url : '../sidebar/mainPageLoad',
		type : 'post',
		dataType : 'json',
		success : function(response) {
			var value = response.main;
			var visit = value.mostVisitStoreName + " - " + value.mostVisitStoreNumber + "회";
			var spendDay = value.mostSpendDayDate + "  총" + value.mostSpendDayCount + "건 " + value.mostSpendDayMoney + "원";
			var mostSpend = value.mostSpendPrice + "원 - " + value.mostSpendStore;
			var latestbills = value.latestBills;
			$("#mostVisit").append(visit);
			$("#mostSpendDay").append(spendDay);
			$("#mostSpend").append(mostSpend);
			$.each(latestbills, function(index, i) {
				$('#latestBills').append(
					"<p>[" + i.billDate + "]<br>" + i.storeName + " - " + i.totalPrice + "원</p>");
						});
			callinfo();
			paymentData();
			
		}

	});
	  
	function callinfo(){
		$.ajax({
			url : '../sidebar/progressGet',
			type: 'post',
			dataType: 'json',
			success : function(response) {
				var datas = response.progressData;
				var d = new Date();
				var month = d.getMonth()+1;
				document.getElementById("todaysMonth").innerHTML = "이번 달 예산";
				$("#showBar").css("width",datas.precentMonth+"%");
				$("#showBar").append(datas.precentMonth+"%");
				if(parseInt(datas.precentMonth)<70){
					$("#showBar").attr('class','progress-bar progress-bar-success progress-bar-striped active');
				}else if(parseInt(datas.precentMonth)<90){
					$("#showBar").attr('class','progress-bar progress-bar-warning progress-bar-striped active');
				}else if(parseInt(datas.precentMonth)<=100){
					$("#showBar").attr('class','progress-bar progress-bar-danger progress-bar-striped active');
				}
				$("#testcall").append("<div id='progressbarValue'> "+datas.spendMonth+"원 / "+datas.CUST_TARGET_PRICE+"원</div>");
				
				
				
				
				/*$("#testcall").append("<p>○ 현재까지 지출액 <br>"+datas.spendMonth+"원</p>");
				$("#testcall").append("<p>○ 잔액 <br>"+datas.leftMonth+"원</p>");
				$("#testcall").append("<p>○ 하루 예산<br> "+datas.canMonth+"원</p>");
				$("#testcall").append("<p>○ 소비자 하루평균 지출액 <br>"+datas.averTotal+"원</p>");
				$("#testcall").append("<p>○ 이번달 하루평균 지출액 <br>"+datas.averMonth+"원</p>");*/
				
			}
		});
	}
	
	//카드현금비율
	 function paymentData(){
		 $.ajax({
	    	 url : '../sidebar/paymentData',
	    	 type : 'post',
	    	 dataType : 'json',
	    	 success : function(response){
	    		 var paymentData = response.paymentData;
	    		 $.each(paymentData,function(index, value) {
	    			 var data = value;
	    			 if(index == 0){
	    				 $('<span class="payment">' + data + '%</span>').insertAfter('#card');
	    			 }else{
	    				 $('<span class="payment cash">' + data + '%</span>').insertAfter('#cash');
	    			 }
	    			});
	    		 
	    	 }
	    	 
	     });
	}
	
	
});
