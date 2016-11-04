function budgetCall(){
	;(function($) {
		$.ajax({
			url : '../sidebar/progressGet',
			type: 'post',
			dataType: 'json',
			success : function(response) {
				var data = response.progressData;
				var d = new Date();
				var month = d.getMonth()+1;
				document.getElementById("budgetMonth").innerHTML = month+"월 예산 설정";
				
				$('.circle').circleProgress({
			    	value: data.precentMonth/100
			      	}).on('circle-animation-progress', function(event, progress) {
			        	$(this).find('strong').html(parseInt(data.precentMonth * progress) + '<i>%</i>');
			    	});
				
				$('#targetPrice').attr('data-end', data.CUST_TARGET_PRICE);
				$("#spendMonth").attr("data-end", data.spendMonth);
				$("#leftMonth").attr("data-end", data.leftMonth);
				$("#canMonth").attr("data-end", data.canMonth);
				//$("#spendMonth").attr("data-end", data.averTotal);
				$("#averMonth").attr("data-end", data.averMonth);
			}
		});
		
		
		window.onload = setTimeout( function() {
			$('[data-toggle="counter"]').each(function(i, e){
		        var _el       = $(this);
		        var prefix    = '';
		        var suffix    = '';
		        var start     = 0;
		        var end       = 0;
		        var decimals  = 0;
		        var duration  = 2.5;

		        if( _el.data('prefix') ){ prefix = _el.data('prefix'); }

		        if( _el.data('suffix') ){ suffix = _el.data('suffix'); }

		        if( _el.data('start') ){ start = _el.data('start'); }

		        if( _el.data('end') ){ end = _el.data('end'); }

		        if( _el.data('decimals') ){ decimals = _el.data('decimals'); }

		        if( _el.data('duration') ){ duration = _el.data('duration'); }

		        var count = new CountUp(_el.get(0), start, end, decimals, duration, { 
		          suffix: suffix,
		          prefix: prefix,
		        });

		        count.start();
		      });
			
			
		}, 500);

	})(jQuery);


	
	
}







/*
$(document).ready(function() {
	
		
		
		
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
				$("#showBar").append(datas.precentMonth+"%");
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
				
				.append("<p>○ 총 예산 <br>"+datas.CUST_TARGET_PRICE+"원</p>");
				$("#testcall").append("<p>○ 현재까지 지출액 <br>"+datas.spendMonth+"원</p>");
				$("#testcall").append("<p>○ 잔액 <br>"+datas.leftMonth+"원</p>");
				$("#testcall").append("<p>○ 하루 예산<br> "+datas.canMonth+"원</p>");
				$("#testcall").append("<p>○ 소비자 하루평균 지출액 <br>"+datas.averTotal+"원</p>");
				$("#testcall").append("<p>○ 이번달 하루평균 지출액 <br>"+datas.averMonth+"원</p>");
				
			}
		});
	
});

*/
