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
				document.getElementById("todaysMonth").innerHTML = month+"월의 소비 현황";
				$("#showBar").css("width",datas.precentMonth+"%");
				$("#showBar").append("예산의"+datas.precentMonth+"% 사용");
				if(parseInt(datas.precentMonth)<70){
					$("#showBar").attr('class','progress-bar progress-bar-success progress-bar-striped active');
				}else if(parseInt(datas.precentMonth)<90){
					$("#showBar").attr('class','progress-bar progress-bar-warning progress-bar-striped active');
				}else if(parseInt(datas.precentMonth)<=100){
					$("#showBar").attr('class','progress-bar progress-bar-danger progress-bar-striped active');
				}else{
					$("#showBar").attr('class','progress-bar progress-bar-danger progress-bar-striped active');
					$("#showBar").css("width","100%");
				}
				$("#testcall").append("<p>총 예산 "+datas.CUST_TARGET_PRICE+"원</p>");
				$("#testcall").append("<p>현재 "+datas.spendMonth+"원 사용</p>");
				$("#testcall").append("<p>잔액 "+datas.leftMonth+"원</p>");
				$("#testcall").append("<p>일 "+datas.canMonth+"원씩 사용 가능</p>");
				$("#testcall").append("<p>전체 일평균 지출액 "+datas.averTotal+"원</p>");
				$("#testcall").append("<p>이번달 일평균 지출액 "+datas.averMonth+"원</p>");
				
			}
		});
		/*alert(datas);
		var d = new Date();
		var month = d.getMonth()+1;
		document.getElementById("todaysMonth").innerHTML = month+"월의 소비 현황";
		document.getElementById("showBar").innerHTML = "사용";
		$("#showBar").css("width","30%");
		$("#showBar").attr('class','progress-bar progress-bar-warning progress-bar-striped active');
		$("#testcall").append("<p>aaaaaaaaaaaaaaaaaaaaa</p>");*/
	}
	
	function progressWrite(){
		alert(datas);
		var d = new Date();
		var month = d.getMonth()+1;
		document.getElementById("todaysMonth").innerHTML = month+"월의 소비 현황";
		document.getElementById("showBar").innerHTML = "사용";
		$("#showBar").attr('class','progress-bar progress-bar-warning progress-bar-striped active');
		$("#testcall").append("<p>aaaaaaaaaaaaaaaaaaaaa</p>");
	}
});
