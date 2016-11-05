/**
 * 
 */

var flotplaceholder = "#flotplaceholder";

//var dataSet = [];
  
jQuery(flotplaceholder).unbind();

function labelFormatter(label, series) {
  return "<div style='font-size:8pt; text-align:center; padding-left:-12px; color:white;'>" + label + "<br/>" + Math.round(series.percent) + "%</div>";
}
var options = {
  series: {
    pie: {
      show: 'auto',
      radius: 1,
      label: {
        show: false,
      }
    }
  },
  legend: {
    show: false,
  },
  grid: {
    hoverable: true,
    clickable: true
  },
};

function subCategory(keyword){
	 $.ajax({
    	 url : '../sidebar/subCategory',
    	 type : 'post',
    	 data : {"keyword" : keyword},
    	 dataType : 'json',
    	 success : function(response){
    		var dataSet = response.subCategorys;
    		$.plot(flotplaceholder, dataSet, options);
    	 }
    	 
     });
}

$(document).ready(function() {
	subCategory('외식');
	
  	$('#subCategory').on('change', function(){
  		var category = $('#subCategory > option:selected').val();
  		subCategory(category);
  	});
});
$(flotplaceholder).bind("plothover", function(event, pos, obj) {
  if(obj){
    var percent = parseFloat(obj.series.percent).toFixed(2);
    var price = new String(obj.series.data);
    price = price.substring(2, price.length);
    $("#hover").html("<span style='font-weight:bold; color:" + obj.series.color + "'>" + obj.series.label + " (총액: " + price + "원 / " + percent + "%)</span>");
    $('#hover').css({'position':'absolute','display':'block','left':pos.pageX - 100,'top':pos.pageY - 100});
  }
  else {
    $('#hover').css('display','none');
  }
});
