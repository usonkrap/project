var App = (function () {
	'use strict';

	App.personalStat = function( ){
		  
		
		//요일별 지출 비율
		function rader_day_chart(){
		     $.ajax({
		    	 url : '../sidebar/raderChart',
		    	 type : 'post',
		    	 dataType : 'json',
		    	 success : function(response){
		    		 var dayRecentAver = response.dayRecentAver;
		    		 var dayTotalAver = response.dayTotalAver;
		    		 rader_day_chart_call(dayRecentAver, dayTotalAver);
		    	 }
		    	 
		     });
		}
		function rader_day_chart_call(dayRecentAver, dayTotalAver){
			 var color1 = tinycolor( App.color.primary ).lighten( 6 );
		      var color2 = tinycolor( App.color.alt4 ).lighten( 6.5 );
		      var data = {
		        labels: ["월요일", "화요일", "수요일", "목요일", "금요일", "토요일", "일요일"],
		        datasets: [
		          {
		            label: "month",
		            fillColor: color2.setAlpha(.5).toString(),
		            pointColor: color2.setAlpha(.8).toString(),
		            strokeColor: color2.setAlpha(.8).toString(),
		            highlightFill: color2.setAlpha(.75).toString(),
		            highlightStroke: color2.toString(),
		            data: dayRecentAver
		          },
		          {
		            label: "all",
		            fillColor: color1.setAlpha(.5).toString(),
		            pointColor: color1.setAlpha(.8).toString(),
		            strokeColor: color1.setAlpha(.8).toString(),
		            highlightFill: color1.setAlpha(.75).toString(),
		            highlightStroke: color1.toString(),
		            data: dayTotalAver
		          }
		        ]
		      };

		      var radarChart = new Chart( $("#rader_day").get(0).getContext("2d") ).Radar(data, {
		        scaleShowLine : true,
		        responsive: true,
		        maintainAspectRatio: true,
		        legendTemplate : "<ul class=\"<%=name.toLowerCase()%>-legend\"><% for (var i=0; i<datasets.length; i++){%><li><span style=\"background-color:<%=datasets[i].strokeColor%>\"></span><%if(datasets[i].label){%><%=datasets[i].label%><%}%></li><%}%></ul>"
		      });
		      
		}
		
		
		function rader_time_chart(){
			 $.ajax({
		    	 url : '../sidebar/raderChartForTime',
		    	 type : 'post',
		    	 dataType : 'json',
		    	 success : function(response){
		    		 var dayRecentAverForTime = response.dayRecentAverForTime;
		    		 var dayTotalAverForTime = response.dayTotalAverForTime;
		    		 rader_time_chart_call(dayRecentAverForTime, dayTotalAverForTime);
		    	 }
		    	 
		     });
		
		
		}
		
		//시간대별 지출 비율
		function rader_time_chart_call(dayRecentAverForTime, dayTotalAverForTime){
		      var color1 = tinycolor( App.color.primary ).lighten( 6 );
		      var color2 = tinycolor( App.color.alt4 ).lighten( 6.5 );

		      var data = {
		    		  labels: ["오전(6~12)", "오후(12~18)", "저녁(18~24)", "새벽(0~6)"],
				        datasets: [
		          {
		            label: "month",
		            fillColor: color2.setAlpha(.5).toString(),
		            pointColor: color2.setAlpha(.8).toString(),
		            strokeColor: color2.setAlpha(.8).toString(),
		            highlightFill: color2.setAlpha(.75).toString(),
		            highlightStroke: color2.toString(),
		            data: dayRecentAverForTime
		          },
		          {
		            label: "all",
		            fillColor: color1.setAlpha(.5).toString(),
		            pointColor: color1.setAlpha(.8).toString(),
		            strokeColor: color1.setAlpha(.8).toString(),
		            highlightFill: color1.setAlpha(.75).toString(),
		            highlightStroke: color1.toString(),
		            data: dayTotalAverForTime
		          }
		        ]
		      };

		      var radarChart = new Chart( $("#rader_time").get(0).getContext("2d") ).Radar(data, {
		        scaleShowLine : true,
		        responsive: true,
		        maintainAspectRatio: true,
		        legendTemplate : "<ul class=\"<%=name.toLowerCase()%>-legend\"><% for (var i=0; i<datasets.length; i++){%><li><span style=\"background-color:<%=datasets[i].strokeColor%>\"></span><%if(datasets[i].label){%><%=datasets[i].label%><%}%></li><%}%></ul>"
		      });
		}
		
		
		
	//자주간 매장 	
		
				 function donut_chart(){
		     $.ajax({
		    	 url : '../sidebar/donutChart',
		    	 type : 'post',
		    	 dataType : 'json',
		    	 success : function(response){
		    		 var donutData = response.donutData;
		    		 donut_chart_call(donutData);
		    	 }
		    	 
		     });
		}
		
		
		 function donut_chart_call(donutData){
			  var color1 = App.color.alt2;
		      var color2 = App.color.alt4;
		      var color3 = App.color.alt3;
		      var color4 = App.color.alt1;
		      var color5 = tinycolor( App.color.primary ).lighten( 5 ).toString();

		  	  Morris.Donut({
				    element: 'donut',
				    data: donutData,
				    colors:[color5, color1, color3, color4, color2],
				    formatter: function (y) { return y + "건" }
				  });
			  }
		 
		 
		 
		 
		//월별 지출 비교
		 function line_chart(){
			 $.ajax({
		    	 url : '../sidebar/lineChart',
		    	 type : 'post',
		    	 dataType : 'json',
		    	 success : function(response){
		    		 var lineData = response.lineData;
		    		 line_chart_call(lineData);
		    	 }
		    	 
		     });
		 }
		 
//		 ykeys: ['item1', 'item2', 'item3', 'item4', 'item5', 'item6', 'item7', 'item8', 'item9', 'item10', 'item11', 'item12'],
//		 labels: ['외식', '식음료', '교통', '패션/미용', '문화생활', '생활용품', '사회생활', '교육', '주거/관리/통신', '의료/건강', '금융', '기타'],
		 function line_chart_call(lineData){
			 var color1 = App.color.alt1;
		        var color2 = App.color.alt2;
		        var color3 = App.color.alt3;
		        var color4 = App.color.alt4;
		        var color5 = App.color.alt5;
		        var color6 = App.color.alt6;
		        var color7 = App.color.alt7;
		        var color8 = App.color.alt8;
		        var color9 = App.color.alt9;
		        var color10 = App.color.alt10;
		        var color11 = App.color.alt11;
		        var color12 = App.color.alt12;
			  	var color13 = tinycolor( App.color.primary ).lighten( 15 ).toString();
			  	new Morris.Line({
				    element: 'line',
				    data: lineData,
				    xkey: 'month',
				    ykeys: ['item1', 'item2', 'item3', 'item4', 'item5', 'item6', 'item7', 'item8', 'item9', 'item10', 'item11', 'item12'],
				    labels: ['외식', '식음료', '교통', '패션/미용', '문화생활', '생활용품', '사회생활', '교육', '주거/관리/통신', '의료/건강', '금융', '기타'],
				    lineColors: [color1, color2, color3, color4, color5, color6, color7, color8, color9, color10, color11, color12],
				    parseTime: false
				  });
		}
		 
		 
		 
//카테고리별 지출


		var color1Src = tinycolor(App.color.primary);
		var color2Src = tinycolor(App.color.alt1);
		var color3Src = tinycolor(App.color.alt2);
		var color4Src = tinycolor(App.color.alt3);
		var color1 = color1Src.toString();
		var color2 = color2Src.toString();
		var color3 = color3Src.toString();
		var color4 = color4Src.toString();
		
		$('#category1').sparkline([ 45000, 50000, 76000, 80000 ], {
			type : 'pie',
			sliceColors : [ color4, color3, color2, color1 ],
			height : '200px'
		});
		
		$('#category2').sparkline([ 80000, 30000, 40000 ], {
			type : 'pie',
			sliceColors : [ color3, color2, color1 ],
			height : '200px'
		});

		
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
		
		
		rader_day_chart();
		rader_time_chart();
		donut_chart();
		line_chart();
		paymentData();
	};

	return App;
})(App || {});
