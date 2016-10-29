var App = (function () {
	'use strict';

	App.personalStat = function( ){
		  
		function rader(){
		      var color1 = tinycolor( App.color.primary ).lighten( 6 );
		      var color2 = tinycolor( App.color.alt4 ).lighten( 6.5 );

		      var data = {
		        labels: ["January", "February", "March", "April", "May", "June", "July"],
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
		
		 function donut(){
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
		 
		 
		 
		 
		 
		
		rader();
		donut();
	};

	return App;
})(App || {});
