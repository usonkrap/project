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
		}

	});
});
