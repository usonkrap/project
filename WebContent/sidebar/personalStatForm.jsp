<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
	<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>PACHIRIS</title>
    <link rel="stylesheet" type="text/css" href="../assets/lib/stroke-7/style.css"/>
    <link rel="stylesheet" type="text/css" href="../assets/lib/jquery.nanoscroller/css/nanoscroller.css"/><!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    
  	<link rel="stylesheet" type="text/css" href="../assets/lib/morrisjs/morris.css"/>
    <link rel="stylesheet" type="text/css" href="../assets/lib/bootstrap-slider/css/bootstrap-slider.css"/>
    <link rel="stylesheet" type="text/css" href="../assets/lib/jquery.vectormap/jquery-jvectormap-1.2.2.css"/>
    
    <link rel="stylesheet" href="../assets/css/style.css" type="text/css"/>
  	
  	
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
		
		#okbtn{
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
		
		
		#img_1 {
		   background-image: url('http://icons.iconarchive.com/icons/graphicloads/food-drink/256/drink-icon.png');
			width: 50px;
		}
		
		.btn-lg, .btn-group-lg > .btn {
   			 padding: 6px 40px;
   			 font-size: 18px;
		}
		.btn-rounded.btn-lg {
		    border-radius: 5px;
		    border: 3px solid white;
		}
		
		.legendLabel{
			font-size: 18px;
		}
		
		#check1{
			color: #fe6f5e;
			font-weight: bold;
		}
		#check2{
			color: #ffcc33;
			font-weight: bold;
		}
		#check3{
			color: #afe313;
			font-weight: bold;
		}
		#check4{
			color: #95e0e8;
			font-weight: bold;
		}
		#check5{
			color: #7070cc;
			font-weight: bold;
		}
		#check6{
			color: #fdbaba;
			font-weight: bold;
		}
		#check7{
			color: #ff9090;
			font-weight: bold;
		}
		#check8{
			color: #cba6eb;
			font-weight: bold;
		}
		#check9{
			color: #93d8a5;
			font-weight: bold;
		}
		#check10{
			color: #add3ff;
			font-weight: bold;
		}
		#check11{
			color: #ff8800;
			font-weight: bold;
		}
		#check12{
			color: #ab2d07;
			font-weight: bold;
		}
		.am-checkbox.inline + .am-checkbox.inline, .am-checkbox.inline + .am-radio.inline, .am-radio.inline + .am-checkbox.inline, .am-radio.inline + .am-radio.inline {
			margin-left: initial;
		}
	</style>
  	
  	</head>
	<body>
		<div class="am-wrapper" ><!--  ??? -->
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
									<img src="../assets/img/janzani.jpg"> <!-- 오른쪽 상단 프로필 사진 --> <span
								class="user-name"><s:property value="#session.nickname" /></span> <span
								class="angle-down s7-angle-down"></span>
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
							<li><a>개인 분석</a></li>
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
									</a><!-- <ul class="dropdown-menu am-messages">
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
            
            <li class="parent"><a href="../sidebar/targetForm.action"><i
							class="icon s7-piggy"></i><span>목표 관리</span></a> 
				</li>
            
            <li class="parent"><a href="../sidebar/spendListForm.action" ><i class="icon s7-news-paper"></i><span>소비 목록</span></a>
            <!--   <ul class="sub-menu"><li class="title">차트1</li>
                
              <li class="nav-items"><div class="am-scroller nano has-scrollbar"><div class="content nano-content" style="margin-right: 0px; right: -17px;"><ul><li><a href="charts-flot.html">Flot</a>
                </li><li><a href="charts-morris.html">Morris.js</a>
                </li><li><a href="charts-sparkline.html">Sparklines</a>
                </li></ul></div><div class="nano-pane" style="display: none;"><div class="nano-slider" style="height: 876px; transform: translate(0px, 0px);"></div></div></div></li></ul> -->
            </li>
            
            
            <li class="parent"><a href="../sidebar/personalStatForm.action" class="select"><i class="icon s7-display1"></i><span>개인 분석</span></a> 
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
            
            
            <%-- 
            <li class="parent"><a href="../sidebar/locationForm.action"><i class="icon s7-map-2"></i><span>위치 통계</span></a>
            </li>
            
			<li class="parent"><a href="#"><i class="icon s7-ticket"></i><span>맞춤 정보</span></a>
            </li> --%>
          </ul>
          <!--Sidebar bottom content-->
    	</div>
    </div>
	
	
	   <div class="am-content"> <!-- am 컨텐츠 시작 -->
        <div class="main-content"> <!-- 메인 컨텐츠 시작  -->
          <!--+general-chart("classes", "title", "height", "id", "counter value", "counter desc", tools enabled (use true or false))-->


<div class="row">
					<div class="col-sm-12">
						<div class="panel panel-default">
							<div class="panel-heading">
								<span class="title" style="padding: 20px;">월별 지출 비교 <select
									class="form-control" style="width: 15%; float: right;">
										<option>2016년</option>
										<option>2015년</option>
										<option>2014년</option>
								</select></span>
							</div>
							<div class="panel-body">
							<div id="graph">
								<div id="line" style="height: 300px;"></div>
								<div class="lineIcon">
									<div id="img_1"></div>
									<!-- <img src="http://icons.iconarchive.com/icons/graphicloads/food-drink/256/drink-icon.png" height="50px">
									<img src="http://icons.iconarchive.com/icons/graphicloads/food-drink/256/drink-icon.png" height="50px">
									<img src="http://icons.iconarchive.com/icons/graphicloads/food-drink/256/drink-icon.png" height="50px">
									<img src="http://icons.iconarchive.com/icons/graphicloads/food-drink/256/drink-icon.png" height="50px">
									<img src="http://icons.iconarchive.com/icons/graphicloads/food-drink/256/drink-icon.png" height="50px">
									<img src="http://icons.iconarchive.com/icons/graphicloads/food-drink/256/drink-icon.png" height="50px">
									<img src="http://icons.iconarchive.com/icons/graphicloads/food-drink/256/drink-icon.png" height="50px">
									<img src="http://icons.iconarchive.com/icons/graphicloads/food-drink/256/drink-icon.png" height="50px">
									<img src="http://icons.iconarchive.com/icons/graphicloads/food-drink/256/drink-icon.png" height="50px">
									<img src="http://icons.iconarchive.com/icons/graphicloads/food-drink/256/drink-icon.png" height="50px">
									<img src="http://icons.iconarchive.com/icons/graphicloads/food-drink/256/drink-icon.png" height="50px">
									<img src="http://icons.iconarchive.com/icons/graphicloads/food-drink/256/drink-icon.png" height="50px">
								-->
								</div>
								</div>
								
								<div style="margin-top: 3em;">
                      <label class="col-sm-3 control-label" style="font-size: 1.5em;">카테고리 선택</label>
                        <div class="field" style="float: right"><span>전체 선택 &nbsp;</span>
                              <div class="pull-right">
                                <div class="switch-button switch-button-xs">
                                  <input type="checkbox" checked="" name="swt1" id="swt1"><span>
                                    <label for="swt1"></label></span>
                                </div>
                              </div>
                            </div>
                            </div>
					<div class="form-group">
                      <div class="col-sm-12" id="checkBoxArea">
                      	<div class="col-sm-2">
                      		<div class="am-checkbox inline col-sm-12">
                          <input id="check1" type="checkbox" checked="checked" class="box" value="0">
                          <label for="check1" id="check1">외식</label>
                        </div>
                        <div class="am-checkbox inline col-sm-12">
                          <input id="check2" type="checkbox" checked="checked" class="box" value="1">
                          <label for="check2" id="check2">식음료</label>
                        </div>
                        </div>
                      	<div class="col-sm-2">
                      		<div class="am-checkbox inline col-sm-12">
                          <input id="check3" type="checkbox" checked="checked" class="box" value="2">
                          <label for="check3" id="check3">교통</label>
                        </div>
                        <div class="am-checkbox inline col-sm-12">
                          <input id="check4" type="checkbox" checked="checked" class="box" value="3">
                          <label for="check4" id="check4">패션/미용</label>
                        </div>
                        </div>
                      	<div class="col-sm-2">
                      	<div class="am-checkbox inline col-sm-12">
                          <input id="check5" type="checkbox" checked="checked" class="box" value="4">
                          <label for="check5" id="check5">문화생활</label>
                        </div>
                        <div class="am-checkbox inline col-sm-12">
                          <input id="check6" type="checkbox" checked="checked" class="box" value="5">
                          <label for="check6" id="check6">생활용품</label>
                        </div>
                        </div>
                      	<div class="col-sm-2">
                        <div class="am-checkbox inline col-sm-12">
                          <input id="check7" type="checkbox" checked="checked" class="box" value="6">
                          <label for="check7" id="check7">사회생활</label>
                        </div>
                        <div class="am-checkbox inline col-sm-12">
                          <input id="check8" type="checkbox" checked="checked" class="box" value="7">
                          <label for="check8" id="check8">교육</label>
                        </div>
                        </div>
                      	<div class="col-sm-2">
                      	<div class="am-checkbox inline col-sm-12">
                          <input id="check9" type="checkbox" checked="checked" class="box" value="8">
                          <label for="check9" id="check9">주거/관리/통신</label>
                        </div>
                        <div class="am-checkbox inline col-sm-12">
                          <input id="check10" type="checkbox" checked="checked" class="box" value="9">
                          <label for="check10" id="check10">의료/건강</label>
                        </div>
                        </div>
                      	<div class="col-sm-2">
                      	<div class="am-checkbox inline col-sm-12">
                          <input id="check11" type="checkbox" checked="checked" class="box" value="10">
                          <label for="check11" id="check11">금융</label>
                        </div>
                        <div class="am-checkbox inline col-sm-12">
                          <input id="check12" type="checkbox" checked="checked" class="box" value="11">
                          <label for="check12" id="check12">기타</label>
                        </div>
                        </div>
                        </div>
                    </div>
							</div>

						</div>
					</div>
				</div>


		 <div class="row">
					<div class="col-md-6">
						<div class="widget widget-radar">
							<div class="widget-head">
								<div class="tools">
									<table
										style="top: 5px; right: 5px;; font-size: smaller; color: #545454"
										class="">
										<tbody>
											<tr>
												<td class="legendColorBox">
													<div style="border: 1px solid #ccc; padding: 1px">
														<div
															style="width: 4px; height: 0; border: 5px solid #b3e8ed; overflow: hidden"></div>
													</div>
												</td>
												<td class="legendLabel">전체 기간</td>
											</tr>
											<tr>
												<td class="legendColorBox">
													<div style="border: 1px solid #ccc; padding: 1px">
														<div
															style="width: 4px; height: 0; border: 5px solid #f9bfbf; overflow: hidden"></div>
													</div>
												</td>
												<td class="legendLabel">최근 30일</td>
											</tr>
										</tbody>
									</table>
								</div>
								<span class="title">요일별 지출 비율(%)</span>
							</div>
							<div class="chart-container">
								<canvas id="rader_day" height="250px"></canvas>
							</div>
						</div>
					</div>
					
					
					<div class="col-md-6">
						<div class="widget widget-radar">
							<div class="widget-head">
								<div class="tools">
									<table
										style="top: 5px; right: 5px;; font-size: smaller; color: #545454"
										class="">
										<tbody>
											<tr>
												<td class="legendColorBox">
													<div style="border: 1px solid #ccc; padding: 1px">
														<div
															style="width: 4px; height: 0; border: 5px solid #b3e8ed; overflow: hidden"></div>
													</div>
												</td>
												<td class="legendLabel">전체 기간</td>
											</tr>
											<tr>
												<td class="legendColorBox">
													<div style="border: 1px solid #ccc; padding: 1px">
														<div
															style="width: 4px; height: 0; border: 5px solid #f9bfbf; overflow: hidden"></div>
													</div>
												</td>
												<td class="legendLabel">최근 30일</td>
											</tr>
										</tbody>
									</table>
								</div>
								<span class="title">시간대별 지출 비율(%)</span>
							</div>
							<div class="chart-container">
								<canvas id="rader_time" height="250px"></canvas>
							</div>
						</div>
					</div>
	</div>				
					
					
					<div class="row">
	
				 	<div class="col-sm-6">
						<div class="panel panel-default">
							<div class="panel-heading">
								<span class="title">자주 간 매장 TOP5</span>
							</div>
							<div class="panel-body">
								<div id="donut" style="height: 250px;"></div>
							</div>
						</div>
					</div>
					
					<div style="width:50%; float:right;">
					
					<div class="panel panel-default">
							<div class="panel-heading">
								<span class="title">카테고리별 지출
									<select class="form-control" style="width: 25%; float: right;" id="subCategory">
										<option>외식</option>
										<option>식음료</option>
										<option>교통</option>
										<option>패션/미용</option>
										<option>문화생활</option>
										<option>생활용품</option>
										<option>사회생활</option>
										<option>교육</option>
										<option>주거/관리/통신</option>
										<option>의료/건강</option>
										<option>금융</option>
										<option>기타</option>
									</select>
								</span>
							</div>
							<div class="panel-body">
				 				<div id="flotplaceholder" style="height: 250px"></div>
   					 			<div id="hover" style="postion:absolute;display:none;"></div>
							</div>
						</div>
					</div>
					</div>
						
			</div><!-- 메인 컨텐츠 끝 -->
      </div><!-- am 컨텐츠 끝 -->
 
    </div>
	
	
	<script src="../assets/lib/jquery/jquery.min.js" type="text/javascript"></script>
    <script src="../assets/lib/jquery.nanoscroller/javascripts/jquery.nanoscroller.min.js" type="text/javascript"></script>
    <script src="../assets/js/main.js" type="text/javascript"></script>
    <script src="../assets/lib/bootstrap/dist/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="../assets/lib/jquery-ui/jquery-ui.min.js" type="text/javascript"></script>
    <script src="../assets/lib/jquery.nestable/jquery.nestable.js" type="text/javascript"></script>
    <script src="../assets/lib/moment.js/min/moment.min.js" type="text/javascript"></script>
    <script src="../assets/lib/datetimepicker/js/bootstrap-datetimepicker.min.js" type="text/javascript"></script>
    
    <script src="../assets/lib/select2/js/select2.min.js" type="text/javascript"></script>
    <script src="../assets/lib/bootstrap-slider/js/bootstrap-slider.js" type="text/javascript"></script>
    <script src="../assets/js/app-form-elements.js" type="text/javascript"></script>
    
    <script src="../assets/lib/raphael/raphael-min.js" type="text/javascript"></script>
    <script src="../assets/lib/chartjs/Chart.min.js" type="text/javascript"></script>
    <script src="../assets/lib/morrisjs/morris.min.js" type="text/javascript"></script>
	<script src="../assets/lib/jquery.sparkline/jquery.sparkline.min.js" type="text/javascript"></script>
    
	<script src="../assets/js/app-personalStat.js" type="text/javascript"></script>
    <script data-require="flot@0.8.2" data-semver="0.8.2" src="//cdnjs.cloudflare.com/ajax/libs/flot/0.8.2/jquery.flot.min.js"></script>
    <script src="http://www.flotcharts.org/flot/jquery.flot.pie.js"></script>
    <script src="../assets/js/personalStat-subcategory.js" type="text/javascript"></script>
	</body>
</html>
