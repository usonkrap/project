var App = (function () {
	'use strict';

	App.personalStat = function( ){
		  
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

		      var radarChart = new Chart( $("#rader").get(0).getContext("2d") ).Radar(data, {
		        scaleShowLine : true,
		        responsive: true,
		        maintainAspectRatio: true,
		        legendTemplate : "<ul class=\"<%=name.toLowerCase()%>-legend\"><% for (var i=0; i<datasets.length; i++){%><li><span style=\"background-color:<%=datasets[i].strokeColor%>\"></span><%if(datasets[i].label){%><%=datasets[i].label%><%}%></li><%}%></ul>"
		      });
		}
		 function donut_chart(){
			  var color1 = App.color.alt2;
		      var color2 = App.color.alt4;
		      var color3 = App.color.alt3;
		      var color4 = App.color.alt1;
		      var color5 = tinycolor( App.color.primary ).lighten( 5 ).toString();
		      

		  	  Morris.Donut({
				    element: 'donut',
				    data: [
				      {label: 'KFC', value: 10 },
				      {label: '스타벅스', value: 20 },
				      {label: 'GS25', value: 10 },
				      {label: '버거킹', value: 55 },
				      {label: '기타', value: 5 }],
				    colors:[color5, color1, color3, color4, color2],
				    formatter: function (y) { return y + "%" }
				  });
			  }
		 
		 
		 
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
				    	
				  });
			  }
		 
		 
		
		rader_chart();
		donut_chart();
		line_chart();
	};

	return App;
})(App || {});
