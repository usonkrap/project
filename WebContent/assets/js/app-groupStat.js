var App = (function() {
	'use strict';

	App.groupStat = function(comparison) {

		function groupStat() {

			$.ajax({
				url : '../stat/comparison',
				method : 'GET',
				data : comparison,
				success : function(resp) {

					var statArray = resp.statArray;

					Morris.Bar({
						element : 'groupStat',
						data : statArray,
						xkey : 'category',
						ykeys : [ 'self', 'average' ],
						labels : [ '사용자', '평균' ],
						barColors : [ 'LightCoral', 'SteelBlue' ],
						barRatio : 3.0,
						xLabelAngle : 30,
						hideHover : 'auto'

					});

				}// success

			})// ajax

		}
		$("#groupStat").empty();
		groupStat();
	};

	return App;
})(App || {});
