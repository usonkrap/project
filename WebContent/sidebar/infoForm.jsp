<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="description" content="">
<meta name="author" content="">
<title>PACHIRIS</title>
<link rel="stylesheet" type="text/css"
	href="../assets/lib/stroke-7/style.css" />
<link rel="stylesheet" type="text/css"
	href="../assets/lib/stroke-7/material-icons.css" />
<link rel="stylesheet" type="text/css"
	href="../assets/lib/jquery.nanoscroller/css/nanoscroller.css" />
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
<link rel="stylesheet" type="text/css"
	href="../assets/lib/select2/css/select2.min.css" />
<link rel="stylesheet" type="text/css"
	href="../assets/lib/bootstrap-slider/css/bootstrap-slider.css" />
<link rel="stylesheet" type="text/css"
	href="../assets/lib/jquery.vectormap/jquery-jvectormap-1.2.2.css" />
<link rel="stylesheet" href="../assets/css/style.css" type="text/css" />

<style>
.btn-lg, .btn-group-lg > .btn {
    padding: 6px 40px;
    font-size: 18px;
}
.btn-rounded.btn-lg {
    border-radius: 5px;
    border: 3px solid white;
}


.payment {
	font-size: 5em;
    padding-left: 0.6em;
    padding-top: 5%;
    float: right;
    color: #f38282;
    font-weight: bold;
}

.cash {
	color: #cccccc;
}

.lineIcon {
	text-align: center;
}

.lineIcon img{
	margin: 1em;
}
#progressbarValue{
	font-size: 2em;
	font-weight: 700;
	margin: 20px;
	line-height: 2em;
	color: #ef6262;
	
    /* text-align: center;
    margin-top: 40px; */
}

.flotTip 
    {
      padding: 3px 5px;
      background-color: #000;
      z-index: 100;
      color: #fff;
      box-shadow: 0 0 10px #555;
      opacity: .7;
      filter: alpha(opacity=70);
      border: 2px solid #fff;
      -webkit-border-radius: 4px;
      -moz-border-radius: 4px;
      border-radius: 4px;
      font-size: 1.6em;
    }


</style>
</head>
<body>
	<div class="am-wrapper">
		<!--  ??? -->
		<nav class="navbar navbar-default navbar-fixed-top am-top-header">
			<!-- 상단 적색바 -->
			<div class="container-fluid">
				<!--  ??? -->
				<div class="navbar-header">

					<!--  ??? -->
					<div class="page-title">
						<!--  페이지 축소 title -->
						<span>PACHIRIS</span>
					</div>
					<a href="#" class="am-toggle-left-sidebar navbar-toggle collapsed">
					</a> <a href="../sidebar/main.action" class="navbar-brand"><!-- <img src="../assets/img/newLogo1.png" alt="logo" width="100px" height="70px" class="logo-img"> --> <!-- 메인 페이지 링크 및 로고 표시 -->
					</a>
				</div>

				<a href="#" data-toggle="collapse" data-target="#am-navbar-collapse"
					class="am-toggle-top-header-menu collapsed"> <span
					class="icon s7-angle-down"></span> <!-- ??? -->
				</a>
				<div id="am-navbar-collapse" class="collapse navbar-collapse">
					<ul class="nav navbar-nav navbar-right am-user-nav">
						<li class="dropdown"><a href="#" data-toggle="dropdown"
							role="button" aria-expanded="false" class="dropdown-toggle">
								<img src="../assets/img/janzani.jpg"> <!-- 오른쪽 상단 프로필 사진 --> 
								<span class="user-name"><s:property value="#session.nickname" /></span> <span class="angle-down s7-angle-down"></span>
						</a>
							<ul role="menu" class="dropdown-menu">
								<!--프로필 왼쪽 화살표 눌렀을시 드롭메뉴 -->
								<!-- href는 링크, span class는 아이콘을 나타냄, 아이콘의 종류는 html\assets\lib\stroke-7\demo.html 참고  -->
								<li><a href="../customer/profile.action"> <span class="icon s7-user"></span>내
										프로필
								</a></li>
								<li><a href="#"> <span class="icon s7-config"></span>설정
								</a></li>
								<%-- <li><a href="#"> <span class="icon s7-help1"></span>도움!
								</a></li> --%>
								<li><a href="../customer/logout.action"> <span class="icon s7-power"></span>로그
										아웃
								</a></li>
							</ul></li>
					</ul>
					<ul class="nav navbar-nav am-nav-right">
						<li><a><s:property value="#session.nickname" />님의 정보</a></li>
					</ul>
					<!-- \<ul class="nav navbar-nav am-nav-right"> 왼쪽 상단 메뉴
							<li><a href="#">메 인</a></li>
              				<li><a href="#">어바웃</a></li>
              				<li class="dropdown">
              					<a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="dropdown-toggle">조원소개
		              				<span class="angle-down s7-angle-down"></span>
              					</a>	
	              				<ul role="menu" class="dropdown-menu"> 드롭박스 메뉴
	              					<li><a href="#">조장 박노수</a></li>
					                <li><a href="#">나경상</a></li>
					                <li><a href="#">유형은</a></li>
					                <li><a href="#">김수진</a></li>
					                <li><a href="#">이정승</a></li>
	              				</ul>
              				</li>
              				<li><a href="#">고객지원</a></li>
						</ul> -->
					<!-- 왼쪽 상단 메뉴 끝 -->

					<ul class="nav navbar-nav navbar-right am-icons-nav">
						<li class="dropdown"><a href="#" data-toggle="dropdown"
							role="button" aria-expanded="false" class="dropdown-toggle">
</a>
									<a href="../bill/goBillForm.action" >
									<button type="button"
										class="btn btn-space btn-primary btn-rounded btn-lg">
										<i class="icon icon-left s7-cloud-upload"></i> 
										<span class="insertBill">소비 등록</span>
									</button>
									</a>	
								</li>
					</ul>
				</div>
			</div>
		</nav>
		<div class="am-left-sidebar">
			<div class="content">
				<div class="am-logo"></div>
				<ul class="sidebar-elements">

					<li class="parent active"><a href="../sidebar/infoForm.action" class="select"><i
							class="icon s7-user"></i><span><s:property value="#session.nickname" />님의 정보</span></a> <!-- <ul class="sub-menu"><li class="title">소비 정보</li>
                
              <li class="nav-items"><div class="am-scroller nano has-scrollbar"><div class="content nano-content" style="margin-right: 0px; right: -17px;">
              <ul><li class="active"><a href="index.html">Version 1</a>
                </li>
                <li><a href="#">소비 내역 등록</a>
                <li><a href="#">소비 내역 수정</a>
                <li><a href="#">목표치 설정</a>
                <li><a href="#">카드 등록</a>
                </li><li><a href="dashboard4.html"><span class="label label-primary pull-right">New</span>Version 4</a>
                </li></ul></div><div class="nano-pane" style="display: none;"><div class="nano-slider" style="height: 876px; transform: translate(0px, 0px);"></div></div></div></li>
              </ul> --></li>
              
              <li class="parent"><a href="../sidebar/targetForm.action"><i
							class="icon s7-piggy"></i><span>목표 관리</span></a> 
				</li>

					<li class="parent"><a href="../sidebar/spendListForm.action"><i
							class="icon s7-news-paper"></i><span>소비 목록</span></a> <!--   <ul class="sub-menu"><li class="title">차트1</li>
                
              <li class="nav-items"><div class="am-scroller nano has-scrollbar"><div class="content nano-content" style="margin-right: 0px; right: -17px;"><ul><li><a href="charts-flot.html">Flot</a>
                </li><li><a href="charts-morris.html">Morris.js</a>
                </li><li><a href="charts-sparkline.html">Sparklines</a>
                </li></ul></div><div class="nano-pane" style="display: none;"><div class="nano-slider" style="height: 876px; transform: translate(0px, 0px);"></div></div></div></li></ul> -->
					</li>



					<li class="parent"><a
						href="../sidebar/personalStatForm.action"><i
							class="icon s7-display1"></i><span>개인 분석</span></a> <!-- <ul class="sub-menu"><li class="title">차트2</li>

					<li class="parent"><a href="../table/personalStatForm.action"><i class="icon s7-graph"></i><span>통계
								1</span></a> <!-- <ul class="sub-menu"><li class="title">차트2</li>
>>>>>>> branch 'master' of https://github.com/usonkrap/project.git
                
              <li class="nav-items"><div class="am-scroller nano has-scrollbar"><div class="content nano-content" style="margin-right: 0px; right: -17px;"><ul><li><a href="form-elements.html">Elements</a>
                </li><li><a href="form-validation.html">Validation</a>
                </li><li><a href="form-wizard.html">Wizard</a>
                </li><li><a href="form-masks.html">Input Masks</a>
                </li><li><a href="form-wysiwyg.html">WYSIWYG Editor</a>
                </li><li><a href="form-upload.html">Multi Upload</a>
                </li></ul></div><div class="nano-pane" style="display: none;"><div class="nano-slider" style="height: 876px; transform: translate(0px, 0px);"></div></div></div></li></ul> -->
					</li>

					<li class="parent"><a href="../sidebar/groupStatForm.action"><i
							class="icon s7-users"></i><span>비교 분석</span></a> <!-- <ul class="sub-menu"><li class="title">차트3</li>
                
              <li class="nav-items"><div class="am-scroller nano has-scrollbar"><div class="content nano-content" style="margin-right: 0px; right: -17px;"><ul><li><a href="tables-general.html">General</a>
                </li><li><a href="tables-datatables.html">Data Tables</a>
                </li></ul></div><div class="nano-pane" style="display: none;"><div class="nano-slider" style="height: 20px; transform: translate(0px, 0px);"></div></div></div></li></ul> -->
					</li>


<%-- 
					<li class="parent"><a href="../sidebar/locationForm.action">
					<i class="icon s7-map-2"></i><span>위치 통계</span></a> 
					</li>

					<li class="parent"><a href="#"><i class="icon s7-ticket"></i><span>맞춤 정보</span></a>
					</li> --%>
				</ul>
				<!--Sidebar bottom content-->
			</div>
		</div>



		<div class="am-content">
			<!-- am 컨텐츠 시작ㄴ -->
			<div class="main-content" style="padding-left: initial; padding-right: initial;">
				<!-- 메인 컨텐츠 시작  -->
				<!--+general-chart("classes", "title", "height", "id", "counter value", "counter desc", tools enabled (use true or false))-->

				<div class="row">
					<!-- 가로줄 한줄 묶음 시작 -->
					<div class="col-md-12">
						<div class="widget widget-pie">
							<!-- 메인 화면 대표 그래프 -->
							<div class="widget-head">
								<span class="title" style="font-size: 24px;">지출 비율</span>
							</div>
							<div class="row chart-container">
								<div class="col-md-6">
									<div id="widget-top-1" class="chart"
										style="padding: 0px; position: relative;">
										<canvas class="flot-base" width="102" height="125"
											style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 102px; height: 125px;"></canvas>
										<canvas class="flot-overlay" width="102" height="125"
											style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 102px; height: 125px;"></canvas>
									</div>
								</div>
								<div class="col-md-6" style="padding-left: 2em;">
									<div class="legend">
										<table style="font-size: smaller; color: #545454">
											<tbody>
											</tbody>
										</table>
									</div>
								</div>
							</div>
							
							
							<div class="row chart-info">
								<%-- <div class="col-xs-4">
									<span class="title">New Clients</span><span
										data-toggle="counter" data-end="180" class="number">180</span>
								</div>
								<div class="col-xs-4">
									<span class="title">Total Sales</span><span
										data-toggle="counter" data-end="500" data-prefix="$"
										class="number">$500</span>
								</div>
								<div class="col-xs-4">
									<span class="title">Refunds</span><span data-toggle="counter"
										data-end="90" class="number">90</span>
								</div> --%>
							</div>
							
							
						</div>
					</div>
				</div><!--  row 끝 -->
					
					
				<div class = "row">
					<div class="col-sm-8">
							<div class="panel panel-default" style="height: 224px">
								<div class="panel-heading">
									<span class="title">지불 방법</span>
								</div>
								<div class="panel-body text-center">
									<div>
										<span style="float: left; margin: 0 15px"> <img
											class="rotate method" src="../img/icon/credit-card.png"
											id="card">
										</span>
									</div>

									<div>
										<span style="float: left;"> <img class="rotate method"
											src="../img/icon/money.png" id="cash">
										</span>
									</div>
								</div>
							</div>
					</div>
					<!-- 메인 화면 대표 그래프 끝 -->
					<div class="col-md-4">
					<!-- 목표치 패널 시작-->
						<div class="col-sm-12">
							<div class="panel panel-default" style="height: 224px;">
								<div class="panel-heading" id = "todaysMonth">이번 달 예산</div>
								<div class="panel-body" id="testcall">
									<p></p>
									<div class="progress">
										<div style="width: 0%" id="showBar">
										</div>
									</div><span id="moneyBag">
									<img class="rotate method" src="../img/icon/money-bag.png" style="width: 50px;">
									</span>
								</div>
							</div>
						</div>
					<!-- 목표치 패널 끝 -->
					
					</div>
					
					<%-- 
					
					<div class="col-md-3" style="padding-left: initial;">
						<div class="col-md-12">
							<!-- 메세지 위젯1-->
							<div class="panel panel-alt1">
								<div class="panel-heading">
									<div class="tools"></div>
									<span class="title">가장 많이 간 가게는?</span>
								</div>
								<div class="panel-body">
									<p id="mostVisit"></p>
								</div>
							</div>
						</div>
						<!-- 메세지 위젯1-->
	
						<div class="col-md-12">
							<!-- 메세지 위젯2-->
							<div class="panel panel-alt1">
								<div class="panel-heading">
									<div class="tools"></div>
									<span class="title">최대 소비날</span>
								</div>
								<div class="panel-body">
									<p id="mostSpendDay"></p>
								</div>
							</div>
						<!-- 메세지 위젯2-->
						</div>
	
						<div class="col-md-12">
							<!-- 메세지 위젯3-->
							<div class="panel panel-alt1">
								<div class="panel-heading">
									<div class="tools"></div>
									<span class="title">최고 소비액</span>
								</div>
								<div class="panel-body">
									<p id="mostSpend"></p>
								</div>
							</div>
						</div>
						<!-- 메세지 위젯3-->
					
					</div>
					 --%>
					
				</div>
				<!-- 가로줄 한줄 묶음 끝 -->

				<div class="row">
					<!-- 가로줄 한줄 묶음 시작 -->


					


					<div class="col-md-4">
						<!-- 지출 내역 패널 -->
						<div class="panel panel-default">
							<div class="panel-heading">최근 지출 내역</div>
							<div class="panel-body" id="latestBills"></div>
						</div>
					</div>
					<!-- 지출 내역 패널 끝-->


					<div class="col-md-8">
						<!-- 달력 위젯 시작 -->
						<div class="widget widget-calendar">
							<div class="cal-container">
								<div class="cal-notes">
									<span class="day">Thursday</span><span class="date">September 24</span><span class="title">Purchases</span>
									<ul id="calendar_note">
									</ul>
								</div>
								<div class="cal-calendar">
									<div class="ui-datepicker"></div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12"></div>
						</div>
					</div>
					<!-- 달력 위젯 끝 -->


				</div>
				<!-- 가로줄 한줄 묶음 끝 -->

				<div class="main-content"
					style="visibility: hidden; margin-top: -300px;">
					<!-- 달력을 작동시키기 위한 더미데이터 시작-->
					<!--+general-chart("classes", "title", "height", "id", "counter value", "counter desc", tools enabled (use true or false))-->
					<div class="row">
						<div class="col-md-4">
							<div class="widget widget-pie">
								<div class="widget-head"></div>
								<div class="row chart-container">
									<div class="col-md-6">
										<div id="widget-top-2" class="chart"></div>
									</div>
									<div class="col-md-6"></div>
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<div class="widget widget-pie widget-pie-stats">
								<div class="widget-head"></div>
								<div class="row chart-container">
									<div class="col-md-6">
										<div id="widget-top-3" class="chart"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- 달력을 작동시키기 위한 더미데이터 끝-->

			</div>
			<!-- 메인 컨텐츠 끝 -->
		</div>
		<!-- am 컨텐츠 끝 -->

	</div>


	<script src="../assets/lib/jquery/jquery.min.js" type="text/javascript"></script>
	<script
		src="../assets/lib/jquery.nanoscroller/javascripts/jquery.nanoscroller.min.js"
		type="text/javascript"></script>
	<script src="../assets/js/main.js" type="text/javascript"></script>
	<script src="../assets/lib/bootstrap/dist/js/bootstrap.min.js"
		type="text/javascript"></script>
	<script src="../assets/lib/jquery-flot/jquery.flot.js"
		type="text/javascript"></script>
	<script src="../assets/lib/jquery-flot/jquery.flot.pie.js"
		type="text/javascript"></script>
	<script src="../assets/lib/jquery-flot/jquery.flot.resize.js"
		type="text/javascript"></script>
	<script
		src="../assets/lib/jquery-flot/plugins/jquery.flot.orderBars.js"
		type="text/javascript"></script>
	<script src="../assets/lib/jquery-flot/plugins/curvedLines.js"
		type="text/javascript"></script>
	<script src="../assets/lib/jquery.sparkline/jquery.sparkline.min.js"
		type="text/javascript"></script>
	<script src="../assets/lib/jquery-ui/jquery-ui.min.js"
		type="text/javascript"></script>
	<script
		src="../assets/lib/jquery.vectormap/jquery-jvectormap-1.2.2.min.js"
		type="text/javascript"></script>
	<script
		src="../assets/lib/jquery.vectormap/maps/jquery-jvectormap-us-merc-en.js"
		type="text/javascript"></script>
	<script
		src="../assets/lib/jquery.vectormap/maps/jquery-jvectormap-world-mill-en.js"
		type="text/javascript"></script>
	<script
		src="../assets/lib/jquery.vectormap/maps/jquery-jvectormap-uk-mill-en.js"
		type="text/javascript"></script>
	<script
		src="../assets/lib/jquery.vectormap/maps/jquery-jvectormap-fr-merc-en.js"
		type="text/javascript"></script>
	<script
		src="../assets/lib/jquery.vectormap/maps/jquery-jvectormap-us-il-chicago-mill-en.js"
		type="text/javascript"></script>
	<script
		src="../assets/lib/jquery.vectormap/maps/jquery-jvectormap-au-mill-en.js"
		type="text/javascript"></script>
	<script
		src="../assets/lib/jquery.vectormap/maps/jquery-jvectormap-in-mill-en.js"
		type="text/javascript"></script>
	<script
		src="../assets/lib/jquery.vectormap/maps/jquery-jvectormap-map.js"
		type="text/javascript"></script>
	<script
		src="../assets/lib/jquery.vectormap/maps/jquery-jvectormap-ca-lcc-en.js"
		type="text/javascript"></script>
	<script src="../assets/lib/countup/countUp.min.js"
		type="text/javascript"></script>
	<script src="../assets/lib/chartjs/Chart.min.js" type="text/javascript"></script>
	<script src="../assets/js/app-dashboard.js" type="text/javascript"></script>
	<script src="../assets/js/main-statistics.js" type="text/javascript"></script>
	<script src="../script/jquery.flot.tooltip.js"></script>


	
	<script type="text/javascript">
		$(document).ready(function() {
			//initialize the javascript
			App.init();
			App.dashboard();
		
			
		});
	</script>
</body>
</html>