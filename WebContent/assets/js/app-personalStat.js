var App = (function () {
	'use strict';

	App.personalStat = function( ){
		  
<<<<<<< HEAD
		
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
		
		
		
		
		
		
		
		
		//시간대별 지출 비율
		function rader_time_chart(){
		      var color1 = tinycolor( App.color.primary ).lighten( 6 );
=======
		function rader_chart(){
		     $.ajax({
		    	 url : '../sidebar/raderChart',
		    	 type : 'post',
		    	 dataType : 'json',
		    	 success : function(response){
		    		 var dayRecentAver = response.dayRecentAver;
		    		 var dayTotalAver = response.dayTotalAver;
		    		 rader_chart_call(dayRecentAver, dayTotalAver);
		    	 }
		    	 
		     });
		}
		
		function rader_chart_call(dayRecentAver, dayTotalAver){
			
			 var color1 = tinycolor( App.color.primary ).lighten( 6 );
>>>>>>> refs/heads/naks
		      var color2 = tinycolor( App.color.alt4 ).lighten( 6.5 );

		      var data = {
<<<<<<< HEAD
		    		  labels: ["오전(6~12)", "오후(12~18)", "저녁(18~24)", "새벽(0~6)"],
				        datasets: [
=======
		        labels: ["월요일", "화요일", "수요일", "목요일", "금요일", "토요일", "일요일"],
		        datasets: [
>>>>>>> refs/heads/naks
		          {
		            label: "month",
		            fillColor: color2.setAlpha(.5).toString(),
		            pointColor: color2.setAlpha(.8).toString(),
		            strokeColor: color2.setAlpha(.8).toString(),
		            highlightFill: color2.setAlpha(.75).toString(),
		            highlightStroke: color2.toString(),
<<<<<<< HEAD
		            data: [65, 59, 80, 81 ]
=======
		            data: dayRecentAver
>>>>>>> refs/heads/naks
		          },
		          {
		            label: "all",
		            fillColor: color1.setAlpha(.5).toString(),
		            pointColor: color1.setAlpha(.8).toString(),
		            strokeColor: color1.setAlpha(.8).toString(),
		            highlightFill: color1.setAlpha(.75).toString(),
		            highlightStroke: color1.toString(),
<<<<<<< HEAD
		            data: [28, 48, 40, 19]
=======
		            data: dayTotalAver
>>>>>>> refs/heads/naks
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
<<<<<<< HEAD
		
		
		
		
		
		//자주 간 매장
=======
>>>>>>> refs/heads/naks
		 function donut_chart(){
<<<<<<< HEAD
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
=======
>>>>>>> refs/heads/naks
			  var color1 = App.color.alt2;
		      var color2 = App.color.alt4;
		      var color3 = App.color.alt3;
		      var color4 = App.color.alt1;
		      var color5 = tinycolor( App.color.primary ).lighten( 5 ).toString();
		      

		  	  Morris.Donut({
				    element: 'donut',
<<<<<<< HEAD
				    data: donutData,
=======
				    data: [
				      {label: 'KFC', value: 10 },
				      {label: '스타벅스', value: 20 },
				      {label: 'GS25', value: 10 },
				      {label: '버거킹', value: 55 },
				      {label: '기타', value: 5 }],
>>>>>>> refs/heads/naks
				    colors:[color5, color1, color3, color4, color2],
				    formatter: function (y) { return y + "%" }
				  });
			  }
		 
		 
		 
<<<<<<< HEAD
=======
		 var tax_data = [
		       {"month": "1월", "item1": 150000, "item2": 85600},
		       {"month": "2월", "item1": 210000, "item2": 95900},
		       {"month": "3월", "item1": 156000, "item2": 83300},
		       {"month": "4월", "item1": 111000, "item2": 82600},
		       {"month": "5월", "item1": 123000, "item2": 85600},
		       {"month": "6월", "item1": 150000, "item2": 85600},
		       {"month": "7월", "item1": 124000, "item2": 40900},
		       {"month": "8월", "item1": 213000, "item2": 65600},
		       {"month": "9월", "item1": 221000, "item2": 55400},
		       {"month": "10월", "item1": 190700, "item2": 65300},
		       {"month": "11월", "item1": 156300, "item2": 75600},
		       {"month": "12월", "item1": 198700, "item2": 95600},
		  ];
>>>>>>> refs/heads/naks
		 
		//월별 지출 비교
		 var tax_data = [
		       {"month": "1월", "item1": 150000, "item2": 85600},
		       {"month": "2월", "item1": 210000, "item2": 95900},
		       {"month": "3월", "item1": 156000, "item2": 83300},
		       {"month": "4월", "item1": 111000, "item2": 82600},
		       {"month": "5월", "item1": 123000, "item2": 85600},
		       {"month": "6월", "item1": 150000, "item2": 85600},
		       {"month": "7월", "item1": 124000, "item2": 40900},
		       {"month": "8월", "item1": 213000, "item2": 65600},
		       {"month": "9월", "item1": 221000, "item2": 55400},
		       {"month": "10월", "item1": 190700, "item2": 65300},
		       {"month": "11월", "item1": 156300, "item2": 75600},
		       {"month": "12월", "item1": 198700, "item2": 95600},
		  ];
		 function line_chart(){
			  	var color1 = App.color.primary;
			  	var color2 = tinycolor( App.color.primary ).lighten( 15 ).toString();

			  	new Morris.Line({
				    element: 'line',
				    data: tax_data,
				    xkey: 'month',
				    ykeys: ['item1', 'item2'],
				    labels: ['카테고리1', '카테고리2'],
				    lineColors: [color1, color2],
				    parseTime: false
<<<<<<< HEAD
=======
				    	
>>>>>>> refs/heads/naks
				  });
		}
<<<<<<< HEAD
		 
		 
		 
//카테고리별 지출
=======


>>>>>>> refs/heads/naks
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


<<<<<<< HEAD
		
		
		
		rader_day_chart();
		rader_time_chart();
=======
		rader_chart();
>>>>>>> refs/heads/naks
		donut_chart();
		line_chart();
	};

	return App;
})(App || {});