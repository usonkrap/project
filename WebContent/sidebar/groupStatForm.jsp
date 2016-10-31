<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="description" content="">
<meta name="author" content="">
<title>연습용</title>
<link rel="stylesheet" type="text/css"
	href="../assets/lib/stroke-7/style.css" />
<link rel="stylesheet" type="text/css"
	href="../assets/lib/jquery.nanoscroller/css/nanoscroller.css" />
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

<link rel="stylesheet" type="text/css"
	href="../assets/lib/datetimepicker/css/bootstrap-datetimepicker.min.css" />
<link rel="stylesheet" type="text/css"
	href="../assets/lib/select2/css/select2.min.css" />
<link rel="stylesheet" type="text/css"
	href="../assets/lib/bootstrap-slider/css/bootstrap-slider.css" />
<link rel="stylesheet" type="text/css"
	href="../assets/lib/morrisjs/morris.css" />
<link rel="stylesheet" href="../assets/css/style.css" type="text/css" />




<style>
.rotate {
	-webkit-transition-duration: 0.8s;
	-moz-transition-duration: 0.8s;
	-o-transition-duration: 0.8s;
	transition-duration: 0.8s;
	-webkit-transition-property: -webkit-transform;
	-moz-transition-property: -moz-transform;
	-o-transition-property: -o-transform;
	transition-property: transform;
	overflow: hidden;
}

.rotate:hover {
	-webkit-transform: rotate(360deg);
	-moz-transform: rotate(360deg);
	-o-transform: rotate(360deg);
}

#select {
	height: 50px;
}

#okbtn {
	background-color: #58ba54;
	color: white;
	height: 44px;
}

#okbtn:HOVER {
	background-color: #66c56b;
}

#okbtn:ACTIVE {
	background-color: #58ba54;
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
								<span class="user-name">nickname</span> <span
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
						<li><a>비교 분석</a></li>
					</ul>


					<ul class="nav navbar-nav navbar-right am-icons-nav">
						<li class="dropdown"><a href="#" data-toggle="dropdown"
							role="button" aria-expanded="false" class="dropdown-toggle">
								<button type="button"
									class="btn btn-space btn-primary btn-rounded btn-lg">
									<i class="icon icon-left s7-cloud-upload"></i> 소비 입력
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
							class="icon s7-user"></i><span>nickname님의 정보</span></a></li>

					<li class="parent"><a href="../sidebar/spendListForm.action"><i
							class="icon s7-news-paper"></i><span>소비 목록</span></a></li>


					<li class="parent"><a
						href="../sidebar/personalStatForm.action"><i
							class="icon s7-graph"></i><span>개인 분석</span></a></li>

					<li class="parent"><a href="../sidebar/groupStatForm.action"><i
							class="icon s7-users"></i><span>비교 분석</span></a></li>



					<li class="parent"><a href="../sidebar/locationForm.action"><i
							class="icon s7-map-2"></i><span>위치 통계</span></a></li>

					<li class="parent"><a href="#"><i class="icon s7-ticket"></i><span>맞춤
								정보</span></a></li>
				</ul>
				<!--Sidebar bottom content-->
			</div>
		</div>



		<div class="am-content">
			<!-- am 컨텐츠 시작 -->
			<div class="main-content">
				<!-- 메인 컨텐츠 시작  -->
				<!--+general-chart("classes", "title", "height", "id", "counter value", "counter desc", tools enabled (use true or false))-->

				<div class="col-sm-12">
					<div class="panel panel-default">
						<div class="panel-heading">
							<span class="title">총 지출 (원)</span>
						</div>
						<div class="panel-body">
							<div id="groupStat" style="height: 400px;"></div>
						</div>
					</div>
				</div>
				<div class="row">
					<br>
				</div>
				<div class="row">
					<br>
				</div>
				<div class="row">



					<div class="col-sm-3  wow fadeInDown text-center">
						<img class="rotate" src="../img/icon/genders.png"
							alt="Generic placeholder image" style="size: 114px;">
						<h3>
							<select class="form-control" style="width: 40%; margin: auto;"
								id="gender">
								<option value="all">미선택</option>
								<option value="M">남성</option>
								<option value="F">여성</option>
							</select>
						</h3>
					</div>

					<div class="col-sm-3 wow fadeInDown text-center">
						<img class="rotate" src="../img/icon/age.png"
							alt="Generic placeholder image">
						<h3>
							<select class="form-control" style="width: 40%; margin: auto;"
								id="age">
								<option value="all">미선택</option>
								<option value="10">10대</option>
								<option value="20">20대</option>
								<option value="30">30대</option>
								<option value="40">40대</option>
								<option value="50">50대</option>
								<option value="60">60대이상</option>
							</select>
						</h3>
					</div>

					<div class="col-sm-3 wow fadeInDown text-center">
						<img class="rotate" src="../img/icon/location.png"
							alt="Generic placeholder image">
						<h3>
							<select class="form-control" style="width: 40%; margin: auto;"
								id="address">
								<option value="all">미선택</option>
								<option value="서울">서울</option>
								<option value="부산">부산</option>
								<option value="대구">대구</option>
								<option value="인천">인천</option>
								<option value="광주">광주</option>
								<option value="대전">대전</option>
								<option value="울산">울산</option>
								<option value="강원">강원</option>
								<option value="경기">경기</option>
								<option value="경남">경남</option>
								<option value="경북">경북</option>
								<option value="전남">전남</option>
								<option value="전북">전북</option>
								<option value="제주">제주</option>
								<option value="충남">충남</option>
								<option value="충북">충북</option>
								<option></option>
							</select>
						</h3>
					</div>
					<div class="col-sm-3 wow fadeInDown text-center">
						<img class="rotate" src="../img/icon/checked.png"
							alt="Generic placeholder image">
						<h3>
							<button type="submit" id="okbtn" class="btn" style="width: 40%">확
								인</button>
						</h3>

					</div>
				</div>
				<!-- /.row -->
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
	<script src="../assets/lib/jquery.nestable/jquery.nestable.js"
		type="text/javascript"></script>
	<script src="../assets/lib/moment.js/min/moment.min.js"
		type="text/javascript"></script>
	<script
		src="../assets/lib/datetimepicker/js/bootstrap-datetimepicker.min.js"
		type="text/javascript"></script>

	<script src="../assets/lib/select2/js/select2.min.js"
		type="text/javascript"></script>
	<script src="../assets/lib/bootstrap-slider/js/bootstrap-slider.js"
		type="text/javascript"></script>
	<script src="../assets/js/app-form-elements.js" type="text/javascript"></script>

	<script src="../assets/lib/raphael/raphael-min.js"
		type="text/javascript"></script>
	<script src="../assets/lib/morrisjs/morris.min.js"
		type="text/javascript"></script>
	<script src="../assets/js/app-groupStat.js" type="text/javascript"></script>



	<script type="text/javascript">
		$(document).ready(function() {
			//initialize the javascript
			App.init();
			App.groupStat(StatData());

		});

		$("#okbtn").click(function() {
			App.groupStat(StatData());
		});//okbtn

		function StatData() {
			var gender = $("#gender").val();
			var age = $("#age").val();
			var address = $("#address").val();

			var comparison = {

				"comparison.gender" : gender,
				"comparison.age" : age,
				"comparison.address" : address
			}

			return comparison;

		}
	</script>
</body>
</html>
