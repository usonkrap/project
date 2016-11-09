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
<link rel="stylesheet" type="text/css"
	href="../assets/lib/select2/css/select2.min.css" />
<link rel="stylesheet" type="text/css"
	href="../assets/lib/bootstrap-slider/css/bootstrap-slider.css" />
<link rel="stylesheet" type="text/css"
	href="../assets/lib/datetimepicker/css/bootstrap-datetimepicker.css" />
<link rel="stylesheet" type="text/css"
	href="../assets/lib/jquery.magnific-popup/magnific-popup.css" />
<link rel="stylesheet" href="../assets/css/style.css" type="text/css" />
<link rel="stylesheet" type="text/css" href="../dist/sweetalert.css">
<script src="../dist/sweetalert.min.js"></script>
<script src="../assets/lib/jquery/jquery.min.js" type="text/javascript"></script>

</head>



<style>
.form-horizontal .form-group {
	padding: 3px 0;
}

.col-sm-1 {
	padding-top: 10px;
	padding-left: 0;
}

.col-sm-12.addBtn {
	text-align: center;
	margin-top: 14px;
	margin-bottom: 40px;
}

i {
	cursor: pointer;
	cursor: hand;
}

.btn-lg, .btn-group-lg>.btn {
	padding: 6px 40px;
}

.btn-rounded.btn-lg {
	border-radius: 5px;
	border: 3px solid white;
}
</style>
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
						<span>JanZani</span>
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
						<li><a>소비 등록</a></li>
					</ul>


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
									value="#session.nickname" />님의 정보</span></a></li>

					<li class="parent"><a href="../sidebar/targetForm.action"><i
							class="icon s7-piggy"></i><span>목표 관리</span></a></li>

					<li class="parent"><a href="../sidebar/spendListForm.action"><i
							class="icon s7-news-paper"></i><span>소비 목록</span></a></li>



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
				<div class="col-sm-6">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 style="text-align: center">영수증 사진 등록</h3>
						</div>
						<div class="panel-body panel-bill" id="imgSize"
							style="border: 5px dashed #eaeaea; width: 100%;">
							<div class="dragContext" style="height: 100%; width: 100%;">

								<div class='fileDrop' align="center" id="file-drop"
									style="height: 100%;">
									<div class="dz-message" style="padding-top: 6em;">
										<div class="icon" style="font-size: 8em;">
											<span class="s7-cloud-upload"></span>
										</div>
										<h2 style="font-weight: 700;">Drag and Drop files here</h2>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-6">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 style="text-align: center">상품 등록</h3>
						</div>
						<div class="panel-body" style="height: 40%;">
							<form role="form" if="fm" onsubmit="return submitForm;"
								class="form-horizontal" action="inputBill">
								<div class="form-group">
									<label for="storeName" class="col-sm-2 control-label">상호</label>
									<div class="col-sm-10">
										<input id="storeName" name="bill.storeName" type="text"
											placeholder="상호" class="form-control">
									</div>
								</div>
								<div class="form-group">
									<label for="address" class="col-sm-2 control-label">주소</label>
									<div class="col-sm-10">
										<input id="address" type="text" placeholder="주소"
											class="form-control">
									</div>
								</div>
								<div class="form-group"
									style="border-bottom: 1px solid #dddddd;">
									<label for="address" class="col-sm-2 control-label">일시</label>
									<div class="col-sm-10">
										<div data-start-view="2" data-date-format="yyyy-mm-dd - hh:mm"
											data-link-field="dtp_input1"
											class="input-group date datetimepicker col-md-8 col-xs-7">
											<input type="text" value="" class="form-control"
												id="calendar_date" name="bill.billDate"> <span
												class="input-group-addon btn btn-primary"><i
												class="icon-th s7-date"></i></span>
										</div>
									</div>
								</div>

								<div class="form-group">

									<div class="col-sm-8">
										<label for="address" class="col-sm-12 control-label"
											style="text-align: center;">상품명</label>
									</div>
									<div class="col-sm-3">
										<label for="address" class="col-sm-12 control-label"
											style="text-align: center;">금액</label>
									</div>
								</div>

								<div class="form-group itemMenu"></div>
								<div class="col-sm-12 addBtn">
									<i class="s7-plus" id="addBtn" style="font-size: 2em;"></i>
								</div>


								<div class="form-group"
									style="border-bottom: 1px solid #dddddd;">
									<label for="storeName" class="col-sm-3 control-label">지불수단</label>
									<div class="col-sm-3">
										<select id="payment" name="bill.payment" class="form-control">
											<option value='현금'>현금</option>
											<option value='카드'>카드</option>
										</select>
									</div>
									<label for="storeName" class="col-sm-2 control-label">총
										액</label>
									<div class="col-sm-4">
										<input id="totalPrice" name="bill.totalPrice" type="text"
											class="form-control" readonly="readonly">
									</div>
								</div>
							</form>
							<div class="form-group" style="padding-top: 5em;">
								<div class="col-sm-offset-2 col-sm-10">
									<div class="text-right">
										<button type="submit" class="btn btn-space btn-primary"
											id="inputBtn">등록하기</button>
										<!-- <button data-toggle="modal" data-target="#mod-success"
											type="submit" class="btn btn-space btn-success" id="inputBtn">
											등록하기</button> -->
										<button class="btn btn-space btn-default" id="cancel">취소</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>





			</div>
			<!-- 메인 컨텐츠 끝 -->
		</div>
		<!-- am 컨텐츠 끝 -->

		<!-- 알림창 -->
		<%-- <div id="dialog-message" title="경고" class="alert alert-warning alert-icon alert-border-color alert-dismissible">
 		 <div class="icon"><span class="s7-attention"></span></div>
                    <div class="message">
                      <button type="button" data-dismiss="alert" aria-label="Close" class="close"><span aria-hidden="true" class="s7-close"></span></button><strong> 이미지 파일만 올려주세요!</strong>
                    </div>
		</div>  --%>

	</div>


	<img alt="" src="" style="padding: 30%">

	<script
		src="../assets/lib/jquery.nanoscroller/javascripts/jquery.nanoscroller.min.js"
		type="text/javascript"></script>
	<script src="../assets/js/main.js" type="text/javascript"></script>
	<script src="../assets/lib/bootstrap/dist/js/bootstrap.min.js"
		type="text/javascript"></script>
	<script src="../js/jquery.form.js" type="text/javascript"></script>
	<script
		src="../assets/lib/jquery.magnific-popup/jquery.magnific-popup.min.js"
		type="text/javascript"></script>
	<script src="../assets/lib/masonry/masonry.pkgd.min.js"
		type="text/javascript"></script>
	<script src="../assets/lib/select2/js/select2.min.js"
		type="text/javascript"></script>
	<script src="../assets/lib/jquery-ui/jquery-ui.min.js"
		type="text/javascript"></script>
	<script src="../assets/lib/jquery.nestable/jquery.nestable.js"
		type="text/javascript"></script>



	<script
		src="../assets/lib/datetimepicker/js/bootstrap-datetimepicker.js"
		type="text/javascript"></script>


	<script src="../assets/lib/bootstrap-slider/js/bootstrap-slider.js"
		type="text/javascript"></script>

	<script src="../assets/js/app-form-elements.js" type="text/javascript"></script>

	<script src="../assets/js/app-page-gallery.js" type="text/javascript"></script>

	<script src="../assets/lib/jquery.niftymodals/dist/jquery.niftymodals.js"
		type="text/javascript"></script>

	<script>
		$(document).ready(function() {
			
			
			
			//Set Nifty Modals defaults
		   
			//initialize the javascript
			App.init();
			App.formElements();			
			
			
			var con = "%{confirm}";
			
			if( con == 'chk'){
				
				alert("성공적으로 등록 되었습니다");
				
			}
			
			var totalPrice = 0;

			$("#calendar_date").val();

			$('.itemMenu').on('keyup', '.itemPrice', function() {

				if (isNaN($(this).val())) {
					alert("숫자만 입력가능합니다");
					$(this).val("");
					calTotalPrice();
					return;

				}

				calTotalPrice();
			});

				
			
		});//ready

		$(window).load(function() {
			App.pageGallery();
			
	

			

		});

		$(".fileDrop").on("dragenter dragover", function(event) {
			event.preventDefault();
		});
		
	$(".fileDrop")
				.on(
						"drop",
						function(event) {
							event.preventDefault();

							intiForm();

							var pro_int="";
							
							var files = event.originalEvent.dataTransfer.files;

							var file = files[0];

							var formData = new FormData();

							formData.append("billImg", file);

							
							
							$
									.ajax({
										url : '../bill/uploadBill',
										data : formData,
										dataType : 'json',
										processData : false,
										contentType : false,
										type : 'POST',
										beforeSend : function() {
											$("#file-drop").children().hide();
											$("#file-drop")
													.append(
															"<div class='progress' >"
															+"<div style='width:0%' id='showBar'></div>"
															+"</div>"
															); 
											
											
											
											setTimeout(function() {
												var per = 0;
											
											pro_int = setInterval(function() {
												per = per + 1;
												
												var aa = per +"%";
												
												$("#showBar").attr("style", "width:"+aa);  
												$("#showBar").html(function () {
													
													return '';
												});
												$("#showBar").append(aa);
												if(parseInt(per)<70){
													$("#showBar").attr('class','progress-bar progress-bar-success progress-bar-striped active');
												}else if(parseInt(per)<90){
													$("#showBar").attr('class','progress-bar progress-bar-warning progress-bar-striped active');
												}else if(parseInt(per)<=100){
													$("#showBar").attr('class','progress-bar progress-bar-danger progress-bar-striped active');
												}else{
													$("#showBar").attr('class','progress-bar progress-bar-danger progress-bar-striped active');
													$("#showBar").css("width","100%");
												}		
												
												if(per == 100){
													
													swal({
														title : "영수증등록에 실패하였습니다",
														text : "",
														type : "error",
														showCancelButton : false,
														closeOnConfirm : false,
														showLoaderOnConfirm : true,
													}, function() {
														clearInterval(pro_int);
														intiForm();
														setTimeout(function() {
															window.location.reload(true);
														}, 1000);
													});
													
												}
												
											}, 100)

											}, 10);
										},
										success : function(data) {
											
											clearInterval(pro_int);
											$("#lodingImg").remove();
											
											if(data.bill.payment != "wrongPic"){
											
											if (checkImageType(data.imagePath)) {

												var imagePath = data.imagePath;

												$(".dragContext").children()
														.hide();
									
												var str2 = "<div class='gallery-container' style='width: 100%;'>"
														+ "<div class='item w2' style='width: 100%;'>"
														+ "<div class='photo' style='width: 100%;' >"
														+ "<div class='img' style='width: 100%;' >"
														+ "<div class='over'>"
														+ "<div class='func'>"
														+ "<a href='#' class='del-img'>"
														+ "<i class='icon s7-close'>"
														+ "</i></a><a href='#' class='image-zoom'>"
														+ "<i class='icon s7-search'>"
														+ "</i></a></div></div></div></div></div></div>";

												$(".dragContext").append(str2);

												App.pageGallery();

												var str = "";

												str = "<img src='../" + imagePath + "' class='imgOri'>";

											 	$(".img").append(str);
												$(".image-zoom").attr("href",
														"../" + imagePath);
									
			
												setTimeout(function() {
											
													$(".panel-bill").height($(".imgOri").height());		

												}, 30)
											    
												
												var itemList = data.bill.itemList;

												/////////bill에서 데이터 꺼내오기
												$("#storeName").val(
														data.bill.storeName);
												$("#address").val(
														data.bill.address);
												$("#calendar_date").val(
														data.bill.billDate);
												$("#imgPath")
														.val(data.bill.img);
												$("#payment").val(
														data.bill.payment);

												/////////select태그 값 적용하기///////////////

												if (data.bill.payment == "카드") {

													$("#card").selected;

												} else if (data.bill.payment == "현금") {

													$("#cash").selected;
												}

												//////itemList에 있는 상품들 등록///////////////
												$(".itemMenu tr:gt(0)")
														.remove();

												$.each(
																itemList,
																function(index,
																		item) {

																	$(
																			".itemMenu")
																			.append(
																					
																					"<div class='col-sm-12'>"+
																					"<div class='col-sm-8'>"+
																                    	"<input type='text' value='" + item.name + "' name='itemName' class='itemName form-control'>"　+
																                    "</div>" +
																                    "<div class='col-sm-3'>" +
																                    	"<input type='text' value='" + item.price + "' name='itemPrice' class='itemPrice form-control'>" +
																                    "</div>" +
																                    "<div class='col-sm-1'>" +
																						"<i class='s7-less' id='lessBtn' style='font-size: 1.6em;'></i>" +
																					"</div>" +
																				"</div>"
																					
																					);

																})//each
																

											} else {
												swal({
													title : "이미지파일만 올려주세요!",
													text : "",
													type : "error",
													showCancelButton : false,
													closeOnConfirm : false,
													showLoaderOnConfirm : true,
												}, function() {
													intiForm();
													setTimeout(function() {
														window.location.reload(true);
													}, 1000);
												});

											}

											calTotalPrice();
											
										}else{
											swal({
												title : "영수증사진을 올려주세요!",
												text : "",
												type : "error",
												showCancelButton : false,
												closeOnConfirm : false,
												showLoaderOnConfirm : true,
											}, function() {
												intiForm();
												setTimeout(function() {
													window.location.reload(true);
												}, 1000);
											});
											
										}
										}
									});
						});

		///////////////////////////////////////////////////////////////////
		
		
			
		//////////////////이미지 삭제///////////////////
		$('.dragContext').on('click', '.del-img', function() {
			intiForm();
			location.reload();  

		});

		//////////////////폼 취소/////////////////////
		$("#cancel").click(function() {
			intiForm();
			location.reload();  
		});

		/////////////////영수증 등록////////////////////
		
		 $("#inputBtn").on("click", function() {
			 var options = {
					 beforeSubmit: formChk,
					 success : responseCtl,
					 url : "../bill/inputBill.action",
					 contentType : "application/x-www-form-urlencoded;charset=UTF-8",
					 type:"post",
					 dataType:'text'
					 
			 };
			 
			 
			 $("form").ajaxSubmit(options);
			 
		});
		
		
			function formChk() {
				
			};
		
		
		 function responseCtl(html, status){
			
			 if(status=='success'){
					
				 swal({
						title : "성공적으로 등록했습니다!",
						text : "",
						type : "success",
						showCancelButton : false,
						closeOnConfirm : false,
						showLoaderOnConfirm : true,
					}, function() {
						intiForm();
						setTimeout(function() {
							window.location.reload(true);
						}, 1000);
					});
			 }else{
				 swal({
						title : "등록에 실패하였습니다!",
						text : "",
						type : "success",
						showCancelButton : false,
						closeOnConfirm : false,
						showLoaderOnConfirm : true,
					}, function() {
						intiForm();
						setTimeout(function() {
							window.location.reload(true);
						}, 1000);
					});
			 }
				
		 };

		///////////////아이템 등록/////////////////////
		$("#addBtn")
			.on(
				"click",
				function() {
	
					var result = false;
					$(".itemMenu div div input").each(function() {
	
						if ($(this).val() == "") {
	
							result = true;
	
						}
	
					})
	
					if (result) {
						alert("현재 아이템을 먼저 입력해주세요");
								return;
							}

							$(".itemMenu")
									.append("<div class='col-sm-12'>" +
												"<div class='col-sm-8'>"　+
							                    	"<input type='text' name='itemName' class='form-control'>"　+
							                    "</div>" +
							                    "<div class='col-sm-3'>" +
							                    	"<input type='text' name='itemPrice' class='itemPrice form-control'>" +
							                    "</div>" +
							                    "<div class='col-sm-1'>" +
													"<i class='s7-less' id='lessBtn' style='font-size: 1.6em;'></i>" +
												"</div>" +
											"</div>");

						})

		////////////////////아이템 삭제//////////////////				
		$(".itemMenu").on("click", "#lessBtn", function() {

			
			$(this).parent().parent().remove();
			calTotalPrice();
			

		});

		/*                 호출 메소드                                   */

		///////////////////페이지 초기화///////////////////
		function intiForm() {

			var delBill = $("img").attr("src");

			$.ajax({
				url : "../bill/deleteBill",
				type : "post",
				data : {
					imagePath : delBill
				},
				dataType : "text",
				success : function() {

				
				/** 	
					$(".gallery-container").remove();

					$('.itemMenu tr:gt(1)').remove();

					
					$(".dragContext").children().show();

					$(".itemName").each(function() {
						this.remove();
					});
					
					$(".itemPrice").each(function() {
						this.remove();
					});
					
					$(".s7-less").each(function() {
						this.remove();
					});
					

					$("form").each(function() {
						this.reset();
					}); **/
					
				

				}

			});

		}

		///////////////////총액 구하기///////////////////
		function calTotalPrice() {

			totalPrice = 0;
			$(".itemPrice").each(function(index, item) {

				totalPrice = totalPrice + Number($(this).val());

			})//fore

			$("#totalPrice").val(totalPrice);

		}

		///////////////////이미지 확장자 검사///////////////////
		function checkImageType(fileName) {

			var pattern = /jpg|gif|png|jpeg/i;

			return fileName.match(pattern);

		}

		
		</script>
	<!-- alert() -->
	<div id="mod-success" tabindex="-1" role="dialog" style=""
		class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" data-dismiss="modal" aria-hidden="true"
						class="close">
						<i class="icon s7-close"></i>
					</button>
				</div>
				<div class="modal-body">
					<div class="text-center">
						<div class="i-circle text-success">
							<i class="icon s7-check"></i>
						</div>
						<h4>등록성공!</h4>
						<p>영수증이 성공적으로 등록되었습니다!</p>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" data-dismiss="modal" class="btn btn-default">Cancel</button>
					<button type="button" data-dismiss="modal" class="btn btn-success">Proceed</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
