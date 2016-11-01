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
			$('#pw1').attr('value', value.cust_password);
			$('#pw2').attr('value', value.cust_password);
			$('#nickname').attr('value', value.cust_nickname);
			$('#birthday').attr('value', value.cust_birthday);
			//소재지ㅠㅠ
		}

	});
	  
});
