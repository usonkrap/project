<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
	<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="viewport" content="initial-scale=1.0">
    
    <meta name="description" content="">
    <meta name="author" content="">
    <title>PACHIRIS</title>
    <link rel="stylesheet" type="text/css" href="../assets/lib/stroke-7/style.css"/>
    <link rel="stylesheet" type="text/css" href="../assets/lib/stroke-7/material-icons.css"/>
    <link rel="stylesheet" type="text/css" href="../assets/lib/jquery.nanoscroller/css/nanoscroller.css"/><!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script type="text/javascript" src="../script/jquery-3.1.0.min.js"></script>
    <link rel="stylesheet" type="text/css" href="../assets/lib/select2/css/select2.min.css"/>
    <link rel="stylesheet" type="text/css" href="../assets/lib/bootstrap-slider/css/bootstrap-slider.css"/>
    <link rel="stylesheet" type="text/css" href="../assets/lib/jquery.vectormap/jquery-jvectormap-1.2.2.css"/>
    <link rel="stylesheet" href="../assets/css/style.css" type="text/css"/>
  	<style>
       	#map {
       		height: 450px; 
       		width: 95%;
       		padding-left: 5%;
       	}
       	
       	.main-content{
       		padding: 0px;
       	}
       	
       	.btn-lg, .btn-group-lg > .btn {
    padding: 12px 100px;
}
.btn-rounded.btn-lg {
    border-radius: 5px;
    border: 3px solid white;
}
    </style>
  	
  	</head>
	<body>
		<div class="am-wrapper"><!--  ??? -->
			<nav class="navbar navbar-default navbar-fixed-top am-top-header"><!-- 상단 적색바 -->
				<div class="container-fluid"><!--  ??? -->
					<div class="navbar-header"><!--  ??? -->
						<div class="page-title"><!--  ??? -->
							<span>Dashboard</span>
						</div>
						<a href="#" class="am-toggle-left-sidebar navbar-toggle collapsed">
						</a>
						<a href="../sidebar/main.action" class="navbar-brand"><!-- 메인 페이지 링크 및 로고 표시 --></a>
					</div>
					
					<a href="#" data-toggle="collapse" data-target="#am-navbar-collapse" class="am-toggle-top-header-menu collapsed">
						<span class="icon s7-angle-down"></span> <!-- ??? -->
					</a>
					<div id="am-navbar-collapse" class="collapse navbar-collapse">
						<ul class="nav navbar-nav navbar-right am-user-nav">
							<li class="dropdown">
								<a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="dropdown-toggle">
									<img src="assets/img/cat.jpg"> <!-- 오른쪽 상단 프로필 사진 -->
									<span class="user-name"><s:property value="#session.nickname" /></span>
									<span class="angle-down s7-angle-down"></span>
								</a>
								<ul role="menu" class="dropdown-menu"><!--프로필 왼쪽 화살표 눌렀을시 드롭메뉴 -->
									<!-- href는 링크, span class는 아이콘을 나타냄, 아이콘의 종류는 html\assets\lib\stroke-7\demo.html 참고  -->
									<li><a href="../customer/profile.action"> <span class="icon s7-user"></span>내 프로필</a></li>
					                <li><a href="../customer/logout.action"> <span class="icon s7-power"></span>로그 아웃</a></li>
								</ul>
							</li>
						</ul>
						
						<ul class="nav navbar-nav am-nav-right">
							<li><a>위치 통계</a></li>
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
						</ul> --><!-- 왼쪽 상단 메뉴 끝 -->
						
						<ul class="nav navbar-nav navbar-right am-icons-nav">
							<li class="dropdown">
								<a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="dropdown-toggle">
								</a>
									<a href="../bill/goBillForm.action" >
									<button type="button"
										class="btn btn-space btn-primary btn-rounded btn-lg">
										<i class="icon icon-left s7-cloud-upload"></i> 소비 등록
									</button>
									</a>								<!-- <ul class="dropdown-menu am-messages">
									<li>
										<div class="title">메세지
									 		<span class="badge">3</span>3은 메세지 갯수
										</div>
										<div class="list">
											<div class="am-scroller nano"> ??
												<div class="content nano-content"> ??
													<ul>
														<li class="active">  ??
															<a href="#"> ??
																<div class="logo">
																	<img src="assets/img/avatar2.jpg">
																</div>
															</a>
														</li>
													</ul>
												</div>
											</div>
										</div>
									</li>
								</ul> -->
							</li>
						</ul>					
					</div>
				</div>			
			</nav>
	<div class="am-left-sidebar">
        <div class="content">
          <div class="am-logo"></div>
          <ul class="sidebar-elements">
          
            <li class="parent active"><a href="../sidebar/infoForm.action"><i class="icon s7-user"></i><span><s:property value="#session.nickname" />님의 정보</span></a> 
              <!-- <ul class="sub-menu"><li class="title">소비 정보</li>
                
              <li class="nav-items"><div class="am-scroller nano has-scrollbar"><div class="content nano-content" style="margin-right: 0px; right: -17px;">
              <ul><li class="active"><a href="index.html">Version 1</a>
                </li>
                <li><a href="#">소비 내역 등록</a>
                <li><a href="#">소비 내역 수정</a>
                <li><a href="#">목표치 설정</a>
                <li><a href="#">카드 등록</a>
                </li><li><a href="dashboard4.html"><span class="label label-primary pull-right">New</span>Version 4</a>
                </li></ul></div><div class="nano-pane" style="display: none;"><div class="nano-slider" style="height: 876px; transform: translate(0px, 0px);"></div></div></div></li>
              </ul> -->
            </li>
            
            <li class="parent"><a href="../sidebar/spendListForm.action" ><i class="icon s7-news-paper"></i><span>소비 목록</span></a>
            <!--   <ul class="sub-menu"><li class="title">차트1</li>
                
              <li class="nav-items"><div class="am-scroller nano has-scrollbar"><div class="content nano-content" style="margin-right: 0px; right: -17px;"><ul><li><a href="charts-flot.html">Flot</a>
                </li><li><a href="charts-morris.html">Morris.js</a>
                </li><li><a href="charts-sparkline.html">Sparklines</a>
                </li></ul></div><div class="nano-pane" style="display: none;"><div class="nano-slider" style="height: 876px; transform: translate(0px, 0px);"></div></div></div></li></ul> -->
            </li>
            
            
            <li class="parent"><a href="../sidebar/personalStatForm.action"><i class="icon s7-graph"></i><span>개인 분석</span></a>
              <!-- <ul class="sub-menu"><li class="title">차트2</li>
                
              <li class="nav-items"><div class="am-scroller nano has-scrollbar"><div class="content nano-content" style="margin-right: 0px; right: -17px;"><ul><li><a href="form-elements.html">Elements</a>
                </li><li><a href="form-validation.html">Validation</a>
                </li><li><a href="form-wizard.html">Wizard</a>
                </li><li><a href="form-masks.html">Input Masks</a>
                </li><li><a href="form-wysiwyg.html">WYSIWYG Editor</a>
                </li><li><a href="form-upload.html">Multi Upload</a>
                </li></ul></div><div class="nano-pane" style="display: none;"><div class="nano-slider" style="height: 876px; transform: translate(0px, 0px);"></div></div></div></li></ul> -->
            </li>
            
            <li class="parent"><a href="../sidebar/groupStatForm.action"><i class="icon s7-users"></i><span>비교 분석</span></a>
              <!-- <ul class="sub-menu"><li class="title">차트3</li>
                
              <li class="nav-items"><div class="am-scroller nano has-scrollbar"><div class="content nano-content" style="margin-right: 0px; right: -17px;"><ul><li><a href="tables-general.html">General</a>
                </li><li><a href="tables-datatables.html">Data Tables</a>
                </li></ul></div><div class="nano-pane" style="display: none;"><div class="nano-slider" style="height: 20px; transform: translate(0px, 0px);"></div></div></div></li></ul> -->
            </li>
            
            
            
            <li class="parent"><a href="../sidebar/locationForm.action"><i class="icon s7-map-2"></i><span>위치 통계</span></a>
              <!-- <ul class="sub-menu"><li class="title">위치 정보</li>
                
              <li class="nav-items"><div class="am-scroller nano has-scrollbar"><div class="content nano-content" style="margin-right: 0px; right: -17px;"><ul><li><a href="ui-general.html">음...</a>
                </li><li><a href="ui-alerts.html">일</a>
                </li><li><a href="ui-panels.html">단</a>
                </li><li><a href="ui-buttons.html">메</a>
                </li><li><a href="ui-modals.html">뉴</a>
                </li><li><a href="ui-notifications.html">내</a>
                </li><li><a href="ui-icons.html">비</a>
                </li><li><a href="ui-grid.html">둠</a>
                </li><li><a href="ui-tabs-accordions.html">여 &amp; 기</a>
                </li><li><a href="ui-chat.html"><span class="label label-primary pull-right">New</span>에</a>
                </li><li><a href="ui-nestable-lists.html">뭐넣을까</a>
                </li></ul></div><div class="nano-pane" style="display: none;"><div class="nano-slider" style="height: 876px; transform: translate(0px, 0px);"></div></div></div></li></ul> -->
            </li>
            
			<li class="parent"><a href="#"><i class="icon s7-ticket"></i><span>맞춤 정보</span></a>
             <!--  <ul class="sub-menu"><li class="title">차트4</li>
                
              <li class="nav-items"><div class="am-scroller nano has-scrollbar"><div class="content nano-content" style="margin-right: 0px; right: -17px;"><ul><li><a href="pages-blank.html">Blank Page</a>
                </li><li><a href="pages-blank-header.html">Blank Page Header</a>
                </li><li><a href="pages-login.html">Login</a>
                </li><li><a href="pages-404.html">404 Page</a>
                </li><li><a href="pages-sign-up.html">Sign Up</a>
                </li><li><a href="pages-forgot-password.html">Forgot Password</a>
                </li><li><a href="pages-profile.html">Profile</a>
                </li><li><a href="pages-calendar.html">Calendar</a>
                </li><li><a href="pages-gallery.html">Gallery</a>
                </li><li><a href="pages-pricing-tables.html"><span class="label label-primary pull-right">New</span>Pricing Tables</a>
                </li></ul></div><div class="nano-pane" style="display: none;"><div class="nano-slider" style="height: 20px; transform: translate(0px, 0px);"></div></div></div></li></ul> -->
            </li>
          </ul>
          <!--Sidebar bottom content-->
    	</div>
    </div>
	
	
	
	   <div class="am-content"> <!-- am 컨텐츠 시작 -->
        <div class="main-content"> <!-- 메인 컨텐츠 시작  -->
          <!--+general-chart("classes", "title", "height", "id", "counter value", "counter desc", tools enabled (use true or false))-->
        	<div id="map"></div>
			<script>
			var map;
			function initMap() {
			  map = new google.maps.Map(document.getElementById('map'), {
			    center: {lat: 37.511771, lng: 127.059675},
			    zoom: 13
			  });
			}
			
			</script>
	    	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDNCm3UQNzK__pj-eJ_WPhP1bmi7K-A-pU&callback=initMap"
	        async defer></script>
	        
	        
	        
         
         
        </div><!-- 메인 컨텐츠 끝 -->
        
       
      </div><!-- am 컨텐츠 끝 -->
  
    </div>
	
	
	<script src="../assets/lib/jquery/jquery.min.js" type="text/javascript"></script>
    <script src="../assets/lib/jquery.nanoscroller/javascripts/jquery.nanoscroller.min.js" type="text/javascript"></script>
    <script src="../assets/js/main.js" type="text/javascript"></script>
    <script src="../assets/lib/bootstrap/dist/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="../assets/lib/jquery-flot/jquery.flot.js" type="text/javascript"></script>
    <script src="../assets/lib/jquery-flot/jquery.flot.pie.js" type="text/javascript"></script>
    <script src="../assets/lib/jquery-flot/jquery.flot.resize.js" type="text/javascript"></script>
    <script src="../assets/lib/jquery-flot/plugins/jquery.flot.orderBars.js" type="text/javascript"></script>
    <script src="../assets/lib/jquery-flot/plugins/curvedLines.js" type="text/javascript"></script>
    <script src="../assets/lib/jquery.sparkline/jquery.sparkline.min.js" type="text/javascript"></script>
    <script src="../assets/lib/jquery-ui/jquery-ui.min.js" type="text/javascript"></script>
    <script src="../assets/lib/jquery.vectormap/jquery-jvectormap-1.2.2.min.js" type="text/javascript"></script>
    <script src="../assets/lib/jquery.vectormap/maps/jquery-jvectormap-us-merc-en.js" type="text/javascript"></script>
    <script src="../assets/lib/jquery.vectormap/maps/jquery-jvectormap-world-mill-en.js" type="text/javascript"></script>
    <script src="../assets/lib/jquery.vectormap/maps/jquery-jvectormap-uk-mill-en.js" type="text/javascript"></script>
    <script src="../assets/lib/jquery.vectormap/maps/jquery-jvectormap-fr-merc-en.js" type="text/javascript"></script>
    <script src="../assets/lib/jquery.vectormap/maps/jquery-jvectormap-us-il-chicago-mill-en.js" type="text/javascript"></script>
    <script src="../assets/lib/jquery.vectormap/maps/jquery-jvectormap-au-mill-en.js" type="text/javascript"></script>
    <script src="../assets/lib/jquery.vectormap/maps/jquery-jvectormap-in-mill-en.js" type="text/javascript"></script>
    <script src="../assets/lib/jquery.vectormap/maps/jquery-jvectormap-map.js" type="text/javascript"></script>
    <script src="../assets/lib/jquery.vectormap/maps/jquery-jvectormap-ca-lcc-en.js" type="text/javascript"></script>
    <script src="../assets/lib/countup/countUp.min.js" type="text/javascript"></script>
    <script src="../assets/lib/chartjs/Chart.min.js" type="text/javascript"></script>
    <script src="../assets/js/app-dashboard.js" type="text/javascript"></script>
    
    <script type="text/javascript">
      $(document).ready(function(){
      	//initialize the javascript
      	App.init();
      	App.dashboard();
      });
    </script>
	</body>
</html>