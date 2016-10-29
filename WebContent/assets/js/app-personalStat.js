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
		        labels: ["월요일" ,"화요일", "수요일", "목요일", "금요일", "토요일","일요일"],
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
				      {label: 'KFC', value: 43 },
				      {label: '스타벅스', value: 35 },
				      {label: 'GS25', value: 17 },
				      {label: '버거킹', value: 5 }		    ],
				    colors:[color1, color5, color3, color4],
				    formatter: function (y) { return y + "%" }
				  });
			  }
		 
		 
		 
		 var tax_data = [
		       {"period": "2013", "licensed": 400, "sorned": 550},
		       {"period": "2012", "licensed": 450, "sorned": 400},
		       {"period": "2011", "licensed": 350, "sorned": 550},
		       {"period": "2010", "licensed": 500, "sorned": 700},
		       {"period": "2009", "licensed": 250, "sorned": 380},
		       {"period": "2008", "licensed": 350, "sorned": 240},
		       {"period": "2007", "licensed": 180, "sorned": 300},
		       {"period": "2006", "licensed": 300, "sorned": 250},
		       {"period": "2005", "licensed": 200, "sorned": 150}
		  ];
		 
		 function line_chart(){
			  	var color1 = App.color.primary;
			  	var color2 = tinycolor( App.color.primary ).lighten( 15 ).toString();

			  	new Morris.Line({
				    element: 'line',
				    data: tax_data,
				    xkey: 'period',
				    ykeys: ['licensed', 'sorned'],
				    labels: ['총지출', '총지출'],
				    lineColors: [color1, color2]
				  });
			  }
		 
		 
		
		rader_chart();
		donut_chart();
		line_chart();
	};

	return App;
})(App || {});
