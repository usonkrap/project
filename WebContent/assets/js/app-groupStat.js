var App = (function () {
	'use strict';

	App.groupStat = function( ){

	  //Bar chart
	  function groupStat(){
		var color1 = tinycolor( App.color.alt3 ).lighten( 15 ).toString();
	  	var color2 = tinycolor( App.color.alt3 ).brighten( 3 ).toString();

	  	Morris.Bar({
			  element: 'groupStat',
			  data: [
			    {device: 'iPhone', geekbench: 136, macbench: 180},
			    {device: 'iPhone 3G', geekbench: 137, macbench: 200},
			    {device: 'iPhone 3GS', geekbench: 275, macbench: 350},
			    {device: 'iPhone 4', geekbench: 380, macbench: 500},
			    {device: 'iPhone 4S', geekbench: 655, macbench: 900},
			    {device: 'iPhone 5', geekbench: 1571, macbench: 1700},
			    {device: 'iPhone', geekbench: 33, macbench: 180},
			    {device: 'iPhone ', geekbench: 223, macbench: 443},
			    {device: 'iPhone ', geekbench: 432, macbench: 350},
			    {device: 'iPhone ', geekbench: 380, macbench: 533},
			    {device: 'iPhone ', geekbench: 664, macbench: 566},
			    {device: 'iPhone ', geekbench: 345, macbench: 1443}
			  ],
			  xkey: 'device',
			  ykeys: ['geekbench','macbench'],
			  labels: ['Geekbench','Macbench'],
			  barColors: [color1, 'red'],
			  barRatio: 0.4,
			  xLabelAngle: 35,
			  hideHover: 'auto'
			});
	  }

	  groupStat();
	};

	return App;
})(App || {});
