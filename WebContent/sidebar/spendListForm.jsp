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
<title>연습용</title>
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
<script type="text/javascript" src="script/jquery-3.1.0.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="../assets/lib/select2/css/select2.min.css" />
<link rel="stylesheet" type="text/css"
	href="../assets/lib/bootstrap-slider/css/bootstrap-slider.css" />
<link rel="stylesheet" type="text/css"
	href="../assets/lib/jquery.vectormap/jquery-jvectormap-1.2.2.css" />
<link rel="stylesheet" href="../assets/css/style.css" type="text/css" />
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
					</a> <a href="index.html" class="navbar-brand"> <!-- 메인 페이지 링크 및 로고 표시 -->
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
								<img src="../assets/img/cat.jpg"> <!-- 오른쪽 상단 프로필 사진 --> <span
								class="user-name">떼껄룩</span> <span
								class="angle-down s7-angle-down"></span>
						</a>
							<ul role="menu" class="dropdown-menu">
								<!--프로필 왼쪽 화살표 눌렀을시 드롭메뉴 -->
								<!-- href는 링크, span class는 아이콘을 나타냄, 아이콘의 종류는 html\assets\lib\stroke-7\demo.html 참고  -->
								<li><a href="#"> <span class="icon s7-user"></span>내
										프로필
								</a></li>
								<li><a href="#"> <span class="icon s7-config"></span>설정
								</a></li>
								<li><a href="#"> <span class="icon s7-help1"></span>도움!
								</a></li>
								<li><a href="#"> <span class="icon s7-power"></span>로그
										아웃
								</a></li>
							</ul></li>
					</ul>

					<ul class="nav navbar-nav am-nav-right">
						<li><a>소비 정보</a></li>
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

					<li class="parent active"><a href="../table/infoForm.action"><i class="icon s7-user"></i><span>nickname님의 정보</span></a> 
							</li>

					<li class="parent"><a href="../table/spendListForm.action" ><i class="icon s7-news-paper"></i><span>소비 목록</span></a>
					</li>


					<li class="parent"><a href="../table/personalStatForm.action"><i class="icon s7-graph"></i><span>개인 분석</span></a>
						</li>

					<li class="parent"><a href="../table/groupStatForm.action"><i class="icon s7-users"></i><span>비교 분석</span></a>

					</li>



					<li class="parent"><a href="../table/locationForm.action"><i class="icon s7-map-2"></i><span>위치 통계</span></a>
						</li>

					<li class="parent"><a href="#"><i class="icon s7-search"></i><span>돋보기</span></a>
					</li>
				</ul>
				<!--Sidebar bottom content-->
			</div>
		</div>



		<div class="am-content">
			<!-- am 컨텐츠 시작 -->
			<div class="main-content">
				<!-- 메인 컨텐츠 시작  -->
				<!--+general-chart("classes", "title", "height", "id", "counter value", "counter desc", tools enabled (use true or false))-->





				<div class="page-head" style="margin-left: 85px; margin-right: 55px;">
					<h2>내 소비 내역보기</h2>
					<ol class="breadcrumb">
						<li><a href="#">메인페이지</a></li>
						<li class="active">내 소비 내역보기</li>
					</ol>
				</div>
				<div class="main-content">
					<div class="row">
						<div class="col-sm-12">
							<div class="widget widget-fullwidth widget-small">
								<div class="widget-head">
									<div class="tools" style="visibility: hidden">
										<span class="icon s7-upload"></span><span class="icon s7-edit"></span><span
											class="icon s7-close"></span>
									</div>
									<div class="title">내 전체 거래내역</div>
								</div>
								<table id="table3"
									class="table table-striped table-hover table-fw-widget">
									<thead>
										<tr>
											<th>이름</th>
											<th>가격</th>
											<th>카테고리</th>
											<th>날짜</th>
											<th>거래처</th>
										</tr>
									</thead>
									<tbody>
										<s:iterator value="billList" var="bill">
											<s:iterator value="itemList">
												<tr>
													<td><s:property value="name" /></td>
													<td><s:property value="price" /></td>
													<td><s:property value="category" /></td>
													<td><s:property value="billDate" /></td>
													<td><s:property value="storeName" /></td>
												</tr>
											</s:iterator>
										</s:iterator>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>

			</div>
			<!-- 메인 컨텐츠 끝 -->
		</div>
		<!-- am 컨텐츠 끝 -->

		<nav class="am-right-sidebar">
			<div class="sb-content">
				<div class="user-info">
					<img src="assets/img/avatar.jpg"><span class="name">Samantha
						Amaretti<span class="status"></span>
					</span><span class="position">Art Director</span>
				</div>
				<div class="tab-navigation">
					<ul role="tablist" class="nav nav-tabs nav-justified">
						<li role="presentation" class="active"><a href="#tab1"
							aria-controls="home" role="tab" data-toggle="tab"> <span
								class="icon s7-smile"></span></a></li>
						<li role="presentation"><a href="#tab2"
							aria-controls="profile" role="tab" data-toggle="tab"> <span
								class="icon s7-chat"></span></a></li>
						<li role="presentation"><a href="#tab3"
							aria-controls="messages" role="tab" data-toggle="tab"> <span
								class="icon s7-help2"></span></a></li>
						<li role="presentation"><a href="#tab4"
							aria-controls="settings" role="tab" data-toggle="tab"> <span
								class="icon s7-ticket"></span></a></li>
					</ul>
				</div>
				<div class="tab-panel">
					<div class="tab-content">
						<div id="tab1" role="tabpanel"
							class="tab-pane announcement active am-scroller nano">
							<div class="nano-content">
								<div class="content">
									<h2>Announcement</h2>
									<ul>
										<li>
											<div class="icon">
												<span class="icon s7-sun"></span>
											</div>
											<div class="content">
												<a href="#">Happy Day</a><span>Suspendisse nec leo
													tortor rhoncus tincidunt. Duis sit amet rutrum elit.</span>
											</div>
										</li>
										<li>
											<div class="icon">
												<span class="icon s7-gift"></span>
											</div>
											<div class="content">
												<a href="#">Congratulations Developers</a><span>Suspendisse
													nec leo tortor rhoncus tincidunt. Duis sit amet rutrum
													elit.</span>
											</div>
										</li>
										<li>
											<div class="icon">
												<span class="icon s7-star"></span>
											</div>
											<div class="content">
												<a href="#">High Score</a><span>Suspendisse nec leo
													tortor rhoncus tincidunt. Duis sit amet rutrum elit.</span>
											</div>
										</li>
									</ul>
								</div>
							</div>
							<div class="search">
								<input type="text" placeholder="Search..." name="q"><span
									class="s7-search"></span>
							</div>
						</div>
						<div id="tab2" role="tabpanel" class="tab-pane chat">
							<div class="chat-contacts">
								<div class="chat-sections">
									<div class="am-scroller nano">
										<div class="content nano-content">
											<h2>Recent</h2>
											<div class="recent">
												<div class="user">
													<a href="#"><img src="assets/img/avatar4.jpg">
														<div class="user-data">
															<span class="status away"></span><span class="name">Claire
																Sassu</span><span class="message">Can you share the...</span>
														</div></a>
												</div>
												<div class="user">
													<a href="#"><img src="assets/img/avatar7.jpg">
														<div class="user-data">
															<span class="status"></span><span class="name">Maggie
																jackson</span><span class="message">I confirmed the
																info.</span>
														</div></a>
												</div>
												<div class="user">
													<a href="#"><img src="assets/img/avatar3.jpg">
														<div class="user-data">
															<span class="status offline"></span><span class="name">Joel
																King </span><span class="message">Ready for the meeti...</span>
														</div></a>
												</div>
											</div>
											<h2>Contacts</h2>
											<div class="contact">
												<div class="user">
													<a href="#"><img src="assets/img/avatar6.jpg">
														<div class="user-data2">
															<span class="status"></span><span class="name">Mike
																Bolthort</span>
														</div></a>
												</div>
												<div class="user">
													<a href="#"><img src="assets/img/avatar7.jpg">
														<div class="user-data2">
															<span class="status"></span><span class="name">Maggie
																jackson</span>
														</div></a>
												</div>
												<div class="user">
													<a href="#"><img src="assets/img/avatar8.jpg">
														<div class="user-data2">
															<span class="status offline"></span><span class="name">Jhon
																Voltemar</span>
														</div></a>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="search">
									<input type="text" placeholder="Search..." name="q"><span
										class="s7-search"></span>
								</div>
							</div>
							<div class="chat-window">
								<div class="title">
									<div class="user">
										<img src="assets/img/avatar7.jpg">
										<h2>Maggie jackson</h2>
										<span>Active 1h ago</span>
									</div>
									<span class="icon return s7-angle-left"></span>
								</div>
								<div class="chat-messages">
									<div class="am-scroller nano">
										<div class="content nano-content">
											<ul>
												<li class="friend">
													<div class="msg">Hello</div>
												</li>
												<li class="self">
													<div class="msg">Hi, how are you?</div>
												</li>
												<li class="friend">
													<div class="msg">Good, I'll need support with my pc</div>
												</li>
												<li class="self">
													<div class="msg">Sure, just tell me what is going on
														with your computer?</div>
												</li>
												<li class="friend">
													<div class="msg">I don't know it just turns off
														suddenly</div>
												</li>
											</ul>
										</div>
									</div>
								</div>
								<div class="chat-input">
									<div class="input-wrapper">
										<span class="photo s7-camera"></span> <input type="text"
											placeholder="Message..." name="q" autocomplete="off"><span
											class="send-msg s7-paper-plane"></span>
									</div>
								</div>
							</div>
						</div>
						<div id="tab3" role="tabpanel"
							class="tab-pane faqs am-scroller nano">
							<div class="nano-content">
								<div class="content">
									<h2>FAQs</h2>
									<div id="accordion" role="tablist" aria-multiselectable="true"
										class="panel-group accordion">
										<div class="panel">
											<div role="tab" class="panel-heading">
												<h4 class="panel-title">
													<a data-toggle="collapse" data-parent="#accordion"
														href="#faq1" aria-expanded="true"
														aria-controls="collapseOne">
														<div class="icon">
															<span class="s7-angle-down"></span>
														</div> <span class="title">Under Error 352</span>
													</a>
												</h4>
											</div>
											<div id="faq1" role="tabpanel" aria-labelledby="headingOne"
												class="panel-collapse collapse in">
												<div class="panel-body">Suspendisse nec leo tortor
													rhoncus tincidunt. Duis sit amet rutrum elit.</div>
											</div>
										</div>
										<div class="panel">
											<div role="tab" class="panel-heading">
												<h4 class="panel-title">
													<a data-toggle="collapse" data-parent="#accordion"
														href="#faq2" aria-expanded="false"
														aria-controls="collapseTwo" class="collapsed">
														<div class="icon">
															<span class="s7-angle-down"></span>
														</div> <span class="title">Failure platform</span>
													</a>
												</h4>
											</div>
											<div id="faq2" role="tabpanel" aria-labelledby="headingTwo"
												class="panel-collapse collapse">
												<div class="panel-body">Suspendisse nec leo tortor
													rhoncus tincidunt. Duis sit amet rutrum elit.</div>
											</div>
										</div>
										<div class="panel">
											<div role="tab" class="panel-heading">
												<h4 class="panel-title">
													<a data-toggle="collapse" data-parent="#accordion"
														href="#faq3" aria-expanded="false"
														aria-controls="collapseThree" class="collapsed">
														<div class="icon">
															<span class="s7-angle-down"></span>
														</div> <span class="title">Error 404</span>
													</a>
												</h4>
											</div>
											<div id="faq3" role="tabpanel" aria-labelledby="headingThree"
												class="panel-collapse collapse">
												<div class="panel-body">Suspendisse nec leo tortor
													rhoncus tincidunt. Duis sit amet rutrum elit.</div>
											</div>
										</div>
										<div class="panel">
											<div role="tab" class="panel-heading">
												<h4 class="panel-title">
													<a data-toggle="collapse" data-parent="#accordion"
														href="#faq4" aria-expanded="false"
														aria-controls="collapseThree" class="collapsed">
														<div class="icon">
															<span class="s7-angle-down"></span>
														</div> <span class="title">New workstation</span>
													</a>
												</h4>
											</div>
											<div id="faq4" role="tabpanel" aria-labelledby="headingThree"
												class="panel-collapse collapse">
												<div class="panel-body">Suspendisse nec leo tortor
													rhoncus tincidunt. Duis sit amet rutrum elit.</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="search">
								<input type="text" placeholder="Search..." name="q"><span
									class="s7-search"></span>
							</div>
						</div>
						<div id="tab4" role="tabpanel"
							class="tab-pane ticket am-scroller nano">
							<div class="nano-content">
								<div class="content">
									<h2>New Ticket</h2>
									<form>
										<div class="form-group send-ticket">
											<input type="text" placeholder="Title" class="form-control">
										</div>
										<div class="form-group send-ticket">
											<textarea rows="3" placeholder="Write Here..."
												class="form-control"></textarea>
										</div>
										<button type="submit" class="btn btn-primary btn-lg">Create
											Ticket</button>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</nav>

	</div>


	<script src="../assets/lib/jquery/jquery.min.js" type="text/javascript"></script>
	<script
		src="../assets/lib/jquery.nanoscroller/javascripts/jquery.nanoscroller.min.js"
		type="text/javascript"></script>
	<script src="../assets/js/main.js" type="text/javascript"></script>
	<script src="../assets/lib/bootstrap/dist/js/bootstrap.min.js"
		type="text/javascript"></script>
	<script src="../assets/lib/datatables/js/jquery.dataTables.min.js"
		type="text/javascript"></script>
	<script src="../assets/lib/datatables/js/dataTables.bootstrap.min.js"
		type="text/javascript"></script>
	<script
		src="../assets/lib/datatables/plugins/buttons/js/dataTables.buttons.js"
		type="text/javascript"></script>
	<script
		src="../assets/lib/datatables/plugins/buttons/js/buttons.html5.js"
		type="text/javascript"></script>
	<script
		src="../assets/lib/datatables/plugins/buttons/js/buttons.flash.js"
		type="text/javascript"></script>
	<script
		src="../assets/lib/datatables/plugins/buttons/js/buttons.print.js"
		type="text/javascript"></script>
	<script
		src="../assets/lib/datatables/plugins/buttons/js/buttons.colVis.js"
		type="text/javascript"></script>
	<script
		src="../assets/lib/datatables/plugins/buttons/js/buttons.bootstrap.js"
		type="text/javascript"></script>
	<script src="../assets/js/app-tables-datatables.js"
		type="text/javascript"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			//initialize the javascript
			App.init();
			App.dataTables();

		});
	</script>
</body>
</html>