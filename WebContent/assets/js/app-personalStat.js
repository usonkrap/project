var App = (function () {
	'use strict';

	App.personalStat = function( ){
		  
		function rader_chart(){
		      var color1 = tinycolor( App.color.primary ).lighten( 6 );
		      var color2 = tinycolor( App.color.alt4 ).lighten( 6.5 );

		      var data = {
		        labels: ["월요일", "화요일", "수요일", "목요일", "금요일", "토요일", "일요일"],
		        datasets: [
		          {
		            label: "My First dataset",
		            fillColor: color2.setAlpha(.5).toString(),
		            pointColor: color2.setAlpha(.8).toString(),
		            strokeColor: color2.setAlpha(.8).toString(),
		            highlightFill: color2.setAlpha(.75).toString(),
		            highlightStroke: color2.toString(),
		            data: [65, 59, 80, 81, 56, 55, 40]
		          },
		          {
		            label: "My Second dataset",
		            fillColor: color1.setAlpha(.5).toString(),
		            pointColor: color1.setAlpha(.8).toString(),
		            strokeColor: color1.setAlpha(.8).toString(),
		            highlightFill: color1.setAlpha(.75).toString(),
		            highlightStroke: color1.toString(),
		            data: [28, 48, 40, 19, 86, 27, 90]
		          }
		        ]
		      };

		      var radarChart = new Chart( $("#rader").get(0).getContext("2d") ).Radar(data, {
		        scaleShowLine : true,
		        responsive: true,
		        maintainAspectRatio: false,
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
		       {"period": "1월", "itme1": 150000, "itme2": 85600},
		       {"period": "2월", "itme1": 210000, "itme2": 95900},
		       {"period": "3월", "itme1": 156000, "itme2": 83300},
		       {"period": "4월", "itme1": 111000, "itme2": 82600},
		       {"period": "5월", "itme1": 123000, "itme2": 85600},
		       {"period": "6월", "itme1": 150000, "itme2": 85600},
		       {"period": "7월", "itme1": 124000, "itme2": 40900},
		       {"period": "8월", "itme1": 213000, "itme2": 65600},
		       {"period": "9월", "itme1": 221000, "itme2": 55400},
		       {"period": "10월", "itme1": 190700, "itme2": 65300},
		       {"period": "11월", "itme1": 156300, "itme2": 75600},
		       {"period": "12월", "itme1": 198700, "itme2": 95600},
		  ];
		 
		 function line_chart(){
			  	var color1 = App.color.primary;
			  	var color2 = tinycolor( App.color.primary ).lighten( 15 ).toString();

			  	new Morris.Line({
				    element: 'line',
				    data: tax_data,
				    xkey: 'period',
				    ykeys: ['itme1', 'itme2'],
				    labels: ['카테고리1', '카테고리2'],
				    lineColors: [color1, color2]
				  });
			  }
		 
		 
		
		rader_chart();
		donut_chart();
		line_chart();
	};

	return App;
})(App || {});
