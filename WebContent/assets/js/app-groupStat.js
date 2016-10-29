var App = (function () {
	'use strict';

	App.groupStat = function( ){
	  function groupStat(){
	  	Morris.Bar({
			  element: 'groupStat',
			  data: [
			    {category: '외식', user: 500000, average: 180000},
			    {category: '식음료', user: 200000, average: 200000},
			    {category: '교통', user: 80000, average: 350000},
			    {category: '패션/미용', user: 120000, average: 500000},
			    {category: '문화생활', user: 60000, average: 900000},
			    {category: '생활용품', user: 145000, average: 17000},
			    {category: '사회생활', user: 90080, average: 18000},
			    {category: '교육', user: 500000, average: 440300},
			    {category: '주거/관리/통신', user: 70000, average: 3500},
			    {category: '의료/건강', user: 160000, average: 53300},
			    {category: '금융', user: 800000, average: 566000},
			    {category: '기타', user: 45000, average: 1000000}
			  ],
			  xkey: 'category',
			  ykeys: ['user','average'],
			  labels: ['사용자','평균'],
			  barColors: ['LightCoral', 'SteelBlue'],
			  barRatio: 3.0,
			  xLabelAngle: 30,
			  hideHover: 'auto'
			});
	  }

	  groupStat();
	};

	return App;
})(App || {});
