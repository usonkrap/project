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
	href="../assets/lib/jquery.nanoscroller/css/nanoscroller.css" />
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
<link rel="stylesheet" type="text/css" href="../dist/sweetalert.css">
<script src="../dist/sweetalert.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="../assets/lib/select2/css/select2.min.css" />
<link rel="stylesheet" type="text/css"
	href="../assets/lib/bootstrap-slider/css/bootstrap-slider.css" />
<link rel="stylesheet" type="text/css"
	href="../assets/lib/jquery.vectormap/jquery-jvectormap-1.2.2.css" />
<link rel="stylesheet" href="../assets/css/style.css" type="text/css" />
<style>
.btn-lg, .btn-group-lg>.btn {
	padding: 6px 40px;
	font-size: 18px;
}

.btn-rounded.btn-lg {
	border-radius: 5px;
	border: 3px solid white;
}

.circle {
	width: 100%;
	margin: 6px 6px 60px;
	display: inline-block;
	position: relative;
	text-align: center;
	line-height: 1.2;
}

.circle canvas {
	vertical-align: top;
}

.circle strong {
	position: absolute;
	top: 40%;
	left: 0;
	width: 100%;
	text-align: center;
	line-height: 40px;
	font-size: 4.6em;
}

.circle strong i {
	font-style: normal;
	font-size: 0.6em;
	font-weight: normal;
}

.circle span {
	display: block;
	color: #aaa;
	margin-top: 12px;
}

.widget.widget-tile.widget-tile-wide .data-info .title {
	padding-top: 0.5em;
	padding-left: 1em;
	font-size: 22px;
}

.widget.widget-tile .data-info .desc {
	font-size: 16px;
	line-height: 18px;
	padding-top: 1em;
	float: right;
}

.widget.widget-tile.widget-tile-wide .tile-value .ave {
	font-size: 20px;
	padding-top: 16px;
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
						<!--  ??? -->
						<span>Dashboard</span>
					</div>
					<a href="#" class="am-toggle-left-sidebar navbar-toggle collapsed">
					</a> <a href="../sidebar/main.action" class="navbar-brand"> <!-- 메인 페이지 링크 및 로고 표시 -->
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
								<span class="user-name"><s:property
										value="#session.nickname" /></span> <span
								class="angle-down s7-angle-down"></span>
						</a>
							<ul role="menu" class="dropdown-menu">
								<!--프로필 왼쪽 화살표 눌렀을시 드롭메뉴 -->
								<!-- href는 링크, span class는 아이콘을 나타냄, 아이콘의 종류는 html\assets\lib\stroke-7\demo.html 참고  -->
								<li><a href="../customer/profile.action"> <span
										class="icon s7-user"></span>내 프로필
								</a></li>
								<li><a href="#"> <span class="icon s7-config"></span>설정
								</a></li>
								<%-- <li><a href="#"> <span class="icon s7-help1"></span>도움!
								</a></li> --%>
								<li><a href="#"> <span class="icon s7-power"></span>로그
										아웃
								</a></li>
							</ul></li>
					</ul>

					<ul class="nav navbar-nav am-nav-right">
						<li><a>목표 관리</a></li>
					</ul>
					<!-- \<ul class="nav navbar-nav am-nav-right"> 왼쪽 상단 메뉴
							<li><a href="#">메인</a></li>
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
						</a> <a href="../bill/goBillForm.action">
								<button type="button"
									class="btn btn-space btn-primary btn-rounded btn-lg">
									<i class="icon icon-left s7-cloud-upload"></i> 소비 등록
								</button>
						</a></li>
					</ul>
				</div>
			</div>
		</nav>

		<div class="am-left-sidebar">
			<div class="content">
				<div class="am-logo"></div>
				<ul class="sidebar-elements">

					<li class="parent active"><a href="../sidebar/infoForm.action"><i
							class="icon s7-user"></i><span><s:property
									value="#session.nickname" />님의 정보</span></a> <!-- <ul class="sub-menu"><li class="title">소비 정보</li>
                
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

					<li class="parent"><a href="../sidebar/targetForm.action"
						class="select"><i class="icon s7-piggy"></i><span>목표 관리</span></a>
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
							class="icon s7-display1"></i><span>개인 분석</span></a></li>

					<li class="parent"><a href="../sidebar/groupStatForm.action"><i
							class="icon s7-users"></i><span>비교 분석</span></a></li>


<%-- 
					<li class="parent"><a href="../sidebar/locationForm.action"><i
							class="icon s7-map-2"></i><span>위치 통계</span></a></li>

					<li class="parent"><a href="#"><i class="icon s7-ticket"></i><span>맞춤
								정보</span></a></li> --%>
				</ul>
				<!--Sidebar bottom content-->
			</div>
		</div>


		<div class="am-content">
			<!-- am 컨텐츠 시작 -->
			<div class="main-content">
				<!-- 메인 컨텐츠 시작  -->
				<!--+general-chart("classes", "title", "height", "id", "counter value", "counter desc", tools enabled (use true or false))-->

				<div class="col-md-5">
					<div class="panel panel-defaultt">
						<div class="panel-heading">
							<h2 id="budgetMonth" style="font-size: 1.4em; text-align: center">월
								예산</h2>
						</div>
						<div class="panel-body">
							<div class="circle">
								<strong></strong>
							</div>
							<div class="col-sm-12">
								<div class="col-sm-6">
									<input data-toggle="counter" data-end="" data-prefix="&#8361 "
										type="text" class="form-control" id="targetPrice">
								</div>
								<div class="col-sm-6 btn" style="padding: initial;">
									<button type="button" id="setBudget"
										class="btn btn-space btn-success" style="font-size: 14px;">
										<i class="icon icon-left s7-piggy" style="font-size: 26px;"></i>
										예산 설정
									</button>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-7" style="padding-left: initial;">


					<div class="row">
						<div class="col-md-12">
							<div class="widget widget-tile widget-tile-wide">
								<div class="tile-info">
									<div class="icon">
										<span class="s7-date"></span>
									</div>
									<div class="data-info">
										<div class="title">이번 달 지출액</div>
									</div>
								</div>
								<div class="tile-value">
									<span id="spendMonth" data-toggle="counter" data-end=""
										data-prefix="&#8361 "></span> <span id="averMonth"
										data-toggle="counter" data-end="" data-prefix="&#8361 "
										data-suffix=" /일" class="ave"></span>

								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="widget widget-tile widget-tile-wide">
								<div class="tile-info">
									<div class="icon">
										<span class="s7-date"></span>
									</div>
									<div class="data-info">
										<div class="title">이번 달 잔액</div>
									</div>
								</div>
								<div class="tile-value">
									<span id="leftMonth" data-toggle="counter" data-end=""
										data-prefix="&#8361 "></span> <span id="canMonth"
										data-toggle="counter" data-end="18.6" data-decimals="0"
										data-prefix="&#8361 " data-suffix=" /일" class="ave"></span>

								</div>
							</div>
						</div>
					</div>
					<%-- <div class="row">
							<div class="col-md-12">
								<div class="widget widget-tile widget-tile-wide">
									<div class="tile-info">
										<div class="icon">
											<span class="s7-cash"></span>
										</div>
										<div class="data-info">
											<div class="title">평균 지출</div>
										</div>
									</div>
									<div class="tile-value">
										<span id="leftMonth" data-toggle="counter" data-end="" data-prefix="&#8361 "></span>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<div class="widget widget-tile widget-tile-wide">
									<div class="tile-info">
										<div class="icon">
											<span class="s7-cash"></span>
										</div>
										<div class="data-info">
											<div class="title">남은 예산</div>
										</div>
									</div>
									<div class="tile-value">
										<span id="leftMonth" data-toggle="counter" data-end="" data-prefix="&#8361 "></span>
									</div>
								</div>
							</div>
						</div> --%>



					<%-- <div class="row">
							<div class="col-md-6">
								<div class="widget widget-tile">
									<div class="data-info">
										<div id="averMonth" data-toggle="counter" data-end="33" data-prefix="&#8361 " data-suffix=" /일"
											class="value">0%</div>
										<div class="desc">평균 지출</div>
									</div>
									<div class="icon">
										<span class="s7-date"></span>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="widget widget-tile">
									<div class="data-info">
										<div id="canMonth" data-toggle="counter" data-end="18.6" data-decimals="0" data-prefix="&#8361 " data-suffix=" /일" class="value">0%</div>
										<div class="desc">남은 예산</div>
									</div>
									<div class="icon">
										<span class="s7-date"></span>
									</div>
								</div>
							</div> 
							
						</div>--%>
					<div class="row">
						<div class="col-md-6">
							<div class="widget widget-tile">
								<div class="data-info">
									<div id="mostSpendItem"></div>
									<div data-toggle="counter" data-prefix="&#8361 " data-end="0"
										class="value" id="mostSpendItemPrice">0</div>
									<div class="desc">최고 지출액</div>
								</div>
								<div class="icon">
									<span class="s7-cash"></span>
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="widget widget-tile">
								<div class="data-info">
									<div id="mostSpendDayPrice"></div>
									<div data-prefix="&#8361 " data-toggle="counter" data-end=""
										class="value" id="mostSpendDay"></div>
									<div class="desc">최대 소비날</div>
								</div>
								<div class="icon">
									<span class="s7-wallet"></span>
								</div>
							</div>
						</div>
					</div>




				</div>

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

	<script src="../assets/lib/jquery-ui/jquery-ui.min.js"
		type="text/javascript"></script>

	<script src="../assets/lib/select2/js/select2.min.js"
		type="text/javascript"></script>
	<script src="../assets/lib/bootstrap-slider/js/bootstrap-slider.js"
		type="text/javascript"></script>
	<script src="../assets/lib/countup/countUp.min.js"
		type="text/javascript"></script>




	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script src="../script/circle-progress.js"></script>
	<script src="../assets/js/target.js" type="text/javascript"></script>

	<script type="text/javascript">
		$(document).ready(function() {
			//initialize the javascript
			App.init();
		});
		budgetCall();

		var tempPrice = "";

		$("#targetPrice").focus(function() {
			tempPrice = $("#targetPrice").val();
			$("#targetPrice").val("");

		});

		/*
		$("#targetPrice").blur(function() {

			$("#targetPrice").val(tempPrice);

		});
		 */

		$("div.btn").on('click', 'button#setBudget', function() {
			var cust_target_price = $("#targetPrice").val();
			$.ajax({
				url : '../customer/setBudget',
				type : 'post',
				data : {
					cust_target_price : cust_target_price
				},
				dataType : 'json',
				success : function(response) {
					swal({
						title : "예산이 수정되었습니다!",
						text : "",
						type : "info",
						showCancelButton : false,
						closeOnConfirm : false,
						showLoaderOnConfirm : true,
					}, function() {
						setTimeout(function() {
							window.location.reload(true);
						}, 1000);
					});
				}
			});

		});
	</script>
</body>

</html>
