<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="description" content="">
<meta name="author" content="">
<title>Amaretti</title>
<link rel="stylesheet" type="text/css"
	href="../assets/lib/stroke-7/style.css" />
<link rel="stylesheet" type="text/css"
	href="../assets/lib/jquery.nanoscroller/css/nanoscroller.css" />

<link rel="stylesheet" type="text/css"
	href="../assets/lib/select2/css/select2.min.css" />
<link rel="stylesheet" type="text/css"
	href="../assets/lib/bootstrap-slider/css/bootstrap-slider.css" />
<link rel="stylesheet" type="text/css"
	href="../assets/lib/datetimepicker/css/bootstrap-datetimepicker.min.css" />
<link rel="stylesheet" type="text/css"
	href="../assets/lib/jquery.magnific-popup/magnific-popup.css" />
<link rel="stylesheet" href="../assets/css/style.css" type="text/css" />
<style>
.fileDrop {
	width: 100%;
	height: 200px;
	border: 1px dotted blue;
}

small {
	margin-left: 3px;
	font-weight: bold;
	color: gray;
}
</style>
</head>
<body>

	<div class="row">
		<div class="col-sm-6">
			<div class="widget widget-pie">
				<!-- 메인 화면 대표 그래프 -->
				<div class="widget-head">
					<span class="title">Bill</span>
				</div>
				<div class="dragContext">
					<div class='fileDrop'></div>
					<div class='uploadedList'></div>
					<div class="main-content">
						<div class="gallery-container">
							<div class="item w2">
								<div class="photo">
									<div class="img">
										<!-- 여기로 이미지가 들어옴-->
										<div class="over">
											<div class="func">
												<a href="#" class="delImg"><i class="icon s7-link"></i></a><a
													href="#" class="image-zoom"><i class="icon s7-search"></i></a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>


				</div>
			</div>
		</div>


		<div class="col-sm-6">
			<div class="widget widget-pie">

				<div class="widget-head">
					<span class="title">Bill</span>
				</div>
				<form action="inputBill" id="fm">
					<div class="dataTable">
						<table>
							<tr>
								<td>상호</td>
								<td><input type="text" id="storeName" name="bill.storeName"></td>
							</tr>
							<tr>
								<td>주소</td>
								<td><input type="text" id="address" name="bill.address"></td>
							</tr>
							<tr>
								<td>일시</td>
								<td><input type="text" id="billDate" name="bill.billDate"></td>
							</tr>
							<tr>
								<td rowspan="2">
									<div class="form-group">
										<div class="col-sm-6">
											<div data-start-view="0" data-date="1979-09-16T05:25:07Z"
												data-date-format="yyyy-mm-dd - HH:ii"
												data-link-field="dtp_input1"
												class="input-group date datetimepicker col-md-5 col-xs-7">
												<input size="16" type="text" value="" class="form-control"><span
													class="input-group-addon btn btn-primary"><i
													class="icon-th s7-date"></i></span>
											</div>
										</div>
									</div>
								</td>
							</tr>
						</table>
						<table class="itemMenu">
							<tr>
								<th width="200">상품명</th>
								<th>금액(원)</th>
								<th><i class="s7-plus" id="addBtn"></i></th>
							</tr>
							<tr>
								<td><input type='text' name='itemName'></td>
								<td><input type='text' name='itemPrice' class='itemPrice'></td>
								<td><i class='s7-less' id='lessBtn'></i></td>
							</tr>
						</table>

						<table>
							<tr>
								<td>거래유형</td>
								<td><select id="payment" name="bill.payment">
										<option value='현금'>현금</option>
										<option value='카드'>카드</option>
								</select></td>
							</tr>
							<tr>
								<td>총액</td>
								<td><input type="text" class="totalPrice" value="0"
									readonly="readonly" name="bill.totalPrice"></td>
							</tr>

						</table>

					</div>
				</form>
				<button id="inputBtn">등록하기</button>
				<button id="cancel">취소</button>
			</div>
		</div>

		<input type="hidden" value="#" id="imgPath" name="bill.img">
	</div>






	<script src="../assets/lib/jquery/jquery.min.js" type="text/javascript"></script>
	<script
		src="../assets/lib/jquery.nanoscroller/javascripts/jquery.nanoscroller.min.js"
		type="text/javascript"></script>
	<script src="../assets/js/main.js" type="text/javascript"></script>
	<script src="../assets/lib/bootstrap/dist/js/bootstrap.min.js"
		type="text/javascript"></script>
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
		src="../assets/lib/datetimepicker/js/bootstrap-datetimepicker.min.js"
		type="text/javascript"></script>


	<script src="../assets/lib/bootstrap-slider/js/bootstrap-slider.js"
		type="text/javascript"></script>

	<script src="../assets/js/app-form-elements.js" type="text/javascript"></script>

	<script src="../assets/js/app-page-gallery.js" type="text/javascript"></script>
	<script>
		$(document).ready(function() {
			//initialize the javascript
			App.init();
			App.formElements();
			var totalPrice = 0;

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
										success : function(data) {

											if (checkImageType(data.imagePath)) {

												var imagePath = data.imagePath;

												$(".dragContext").children()
														.hide();

												var str2 = "<div class='gallery-container'>"
														+ "<div class='item w2'>"
														+ "<div class='photo'>"
														+ "<div class='img'>"
														+ "<div class='over'>"
														+ "<div class='func'>"
														+ "<a href='#' class='del-img'>"
														+ "<i class='icon s7-link'>"
														+ "</i></a><a href='#' class='image-zoom'>"
														+ "<i class='icon s7-search'>"
														+ "</i></a></div></div></div></div></div></div>";

												$(".dragContext").append(str2);

												App.pageGallery();

												var str = "";

												str = "<img src='../" + imagePath + "'>";

												$(".img").append(str);
												$(".image-zoom").attr("href",
														"../" + imagePath);

												var itemList = data.bill.itemList;

												/////////bill에서 데이터 꺼내오기
												$("#storeName").val(
														data.bill.storeName);
												$("#address").val(
														data.bill.address);
												$("#billDate").val(
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

												$
														.each(
																itemList,
																function(index,
																		item) {

																	$(
																			".itemMenu")
																			.append(
																					"<tr>"
																							+ "<td><input type='text' value='" + item.name + "' name='itemName'></td>"
																							+ "<td><input type='text' value='" + item.price + "' name='itemPrice' class='itemPrice'></td>"
																							+ "<td><i class='s7-less' id='lessBtn'></i></td>"
																							+ "</tr>");

																})//each

											} else {

												alert("이미지 파일만 올려주세요!");

											}

											calTotalPrice();
										}
									});
						});

		///////////////////////////////////////////////////////////////////

		//////////////////이미지 삭제///////////////////
		$('.dragContext').on('click', '.del-img', function() {

			intiForm();

		});

		//////////////////폼 취소/////////////////////
		$("#cancel").click(function() {

			intiForm();
		});

		/////////////////영수증 등록////////////////////
		$("#inputBtn").on("click", function(event) {

			var form = $("form");

			form.submit();

		});

		///////////////아이템 등록/////////////////////
		$("#addBtn")
				.on(
						"click",
						function() {

							var result = false;
							$(".itemMenu tr td input").each(function() {

								if ($(this).val() == "") {

									result = true;

								}

							})

							if (result) {
								alert("현재 아이템을 먼저 제대로 입력해주세요");
								return;
							}

							$(".itemMenu")
									.append(
											"<tr>"
													+ "<td><input type='text' name='itemName'></td>"
													+ "<td><input type='text' name='itemPrice' class='itemPrice'></td>"
													+ "<td><i class='s7-less' id='lessBtn'></i></td>"
													+ "</tr>");

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

					$(".gallery-container").remove();

					$('.itemMenu tr:gt(1)').remove();

					$(".dragContext").children().show();

					$("form").each(function() {
						this.reset();
					});

				}

			});

		}

		///////////////////총액 구하기///////////////////
		function calTotalPrice() {

			totalPrice = 0;
			$(".itemPrice").each(function(index, item) {

				totalPrice = totalPrice + Number($(this).val());

			})//fore

			$(".totalPrice").val(totalPrice);

		}

		///////////////////이미지 확장자 검사///////////////////
		function checkImageType(fileName) {

			var pattern = /jpg|gif|png|jpeg/i;

			return fileName.match(pattern);

		}
	</script>
</body>
</html>