/**
 * profileForm.jsp 관련
 */

$(document).ready(function() {
	$.ajax({
		url : '../customer/loadProfile',
		type : 'get',
		dataType : 'json',
		success : function(response) {
			var value = response.customer;
			$('#email').attr('value', value.cust_email);
			/*$('#pw1').attr('value', value.cust_password);
			$('#pw2').attr('value', value.cust_password);*/
			$('#nickname').attr('value', value.cust_nickname);
			
			var address = value.cust_address;
			var sido = address.split(" ")[0];
			var gugun = address.split(" ")[1];
			var dong = address.split(" ")[2];
			sojaeji(sido, gugun, dong); 
			$('#birthday').attr('value', value.cust_birthday);
			$('#targetPrice').attr('value', value.cust_target_price);
			//소재지ㅠㅠ
		}
	
	

	});
	
	
	$.ajax({
		url : '../sidebar/progressGet',
		type: 'post',
		dataType: 'json',
		success : function(response) {
			var datas = response.progressData;
			var d = new Date();
			var month = d.getMonth()+1;
			document.getElementById("budgetMonth").innerHTML = month+"월 예산 설정";
			
			
			$('.circle').circleProgress({
		    	value: datas.precentMonth/100
		      	}).on('circle-animation-progress', function(event, progress) {
		        	$(this).find('strong').html(parseInt(datas.precentMonth * progress) + '<i>%</i>');
		    	});
			
			$('#targetPrice').attr('value', datas.CUST_TARGET_PRICE);
		}
	});
});
