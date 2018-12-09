<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<%@include file="/WEB-INF/views/include/title.jsp"%>
<style type="text/css">
/*Date: 2016-05-28T14:47:08.528Z*/
.cropper-container {
	font-size: 0;
	line-height: 0;
	position: relative;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
	direction: ltr !important;
	-ms-touch-action: none;
	touch-action: none;
	-webkit-tap-highlight-color: transparent;
	-webkit-touch-callout: none;
}

.cropper-container img {
	display: block;
	width: 100%;
	min-width: 0 !important;
	max-width: none !important;
	height: 100%;
	min-height: 0 !important;
	max-height: none !important;
	image-orientation: 0deg !important
}

.cropper-canvas, .cropper-crop-box, .cropper-drag-box, .cropper-modal,
	.cropper-wrap-box {
	position: absolute;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0
}

.cropper-wrap-box {
	overflow: hidden
}

.cropper-drag-box {
	opacity: 0;
	background-color: #fff;
	filter: alpha(opacity = 0)
}

.cropper-dashed, .cropper-modal {
	opacity: .5;
	filter: alpha(opacity = 50)
}

.cropper-modal {
	background-color: #000
}

.cropper-view-box {
	display: block;
	overflow: hidden;
	width: 100%;
	height: 100%;
	outline: #39f solid 1px;
	outline-color: rgba(51, 153, 255, .75)
}

.cropper-dashed {
	position: absolute;
	display: block;
	border: 0 dashed #eee
}

.cropper-dashed.dashed-h {
	top: 33.33333%;
	left: 0;
	width: 100%;
	height: 33.33333%;
	border-top-width: 1px;
	border-bottom-width: 1px
}

.cropper-dashed.dashed-v {
	top: 0;
	left: 33.33333%;
	width: 33.33333%;
	height: 100%;
	border-right-width: 1px;
	border-left-width: 1px
}

.cropper-center {
	position: absolute;
	top: 50%;
	left: 50%;
	display: block;
	width: 0;
	height: 0;
	opacity: .75;
	filter: alpha(opacity = 75)
}

.cropper-center:after, .cropper-center:before {
	position: absolute;
	display: block;
	content: ' ';
	background-color: #eee
}

.cropper-center:before {
	top: 0;
	left: -3px;
	width: 7px;
	height: 1px
}

.cropper-center:after {
	top: -3px;
	left: 0;
	width: 1px;
	height: 7px
}

.cropper-face, .cropper-line, .cropper-point {
	position: absolute;
	display: block;
	width: 100%;
	height: 100%;
	opacity: .1;
	filter: alpha(opacity = 10)
}

.cropper-face {
	top: 0;
	left: 0;
	background-color: #fff
}

.cropper-line, .cropper-point {
	background-color: #39f
}

.cropper-line.line-e {
	top: 0;
	right: -3px;
	width: 5px;
	cursor: e-resize
}

.cropper-line.line-n {
	top: -3px;
	left: 0;
	height: 5px;
	cursor: n-resize
}

.cropper-line.line-w {
	top: 0;
	left: -3px;
	width: 5px;
	cursor: w-resize
}

.cropper-line.line-s {
	bottom: -3px;
	left: 0;
	height: 5px;
	cursor: s-resize
}

.cropper-point {
	width: 5px;
	height: 5px;
	opacity: .75;
	filter: alpha(opacity = 75)
}

.cropper-point.point-e {
	top: 50%;
	right: -3px;
	margin-top: -3px;
	cursor: e-resize
}

.cropper-point.point-n {
	top: -3px;
	left: 50%;
	margin-left: -3px;
	cursor: n-resize
}

.cropper-point.point-w {
	top: 50%;
	left: -3px;
	margin-top: -3px;
	cursor: w-resize
}

.cropper-point.point-s {
	bottom: -3px;
	left: 50%;
	margin-left: -3px;
	cursor: s-resize
}

.cropper-point.point-ne {
	top: -3px;
	right: -3px;
	cursor: ne-resize
}

.cropper-point.point-nw {
	top: -3px;
	left: -3px;
	cursor: nw-resize
}

.cropper-point.point-sw {
	bottom: -3px;
	left: -3px;
	cursor: sw-resize
}

.cropper-point.point-se {
	right: -3px;
	bottom: -3px;
	width: 20px;
	height: 20px;
	cursor: se-resize;
	opacity: 1;
	filter: alpha(opacity = 100)
}

.cropper-point.point-se:before {
	position: absolute;
	right: -50%;
	bottom: -50%;
	display: block;
	width: 200%;
	height: 200%;
	content: ' ';
	opacity: 0;
	background-color: #39f;
	filter: alpha(opacity = 0)
}

@media ( min-width :768px) {
	.cropper-point.point-se {
		width: 15px;
		height: 15px
	}
}

@media ( min-width :992px) {
	.cropper-point.point-se {
		width: 10px;
		height: 10px
	}
}

@media ( min-width :1200px) {
	.cropper-point.point-se {
		width: 5px;
		height: 5px;
		opacity: .75;
		filter: alpha(opacity = 75)
	}
}

.cropper-invisible {
	opacity: 0;
	filter: alpha(opacity = 0)
}

.cropper-bg {
	background-image:
		url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQAQMAAAAlPW0iAAAAA3NCSVQICAjb4U/gAAAABlBMVEXMzMz////TjRV2AAAACXBIWXMAAArrAAAK6wGCiw1aAAAAHHRFWHRTb2Z0d2FyZQBBZG9iZSBGaXJld29ya3MgQ1M26LyyjAAAABFJREFUCJlj+M/AgBVhF/0PAH6/D/HkDxOGAAAAAElFTkSuQmCC)
}

.cropper-hide {
	position: absolute;
	display: block;
	width: 0;
	height: 0
}

.cropper-hidden {
	display: none !important
}

.cropper-move {
	cursor: move
}

.cropper-crop {
	cursor: crosshair
}

.cropper-disabled .cropper-drag-box, .cropper-disabled .cropper-face,
	.cropper-disabled .cropper-line, .cropper-disabled .cropper-point {
	cursor: not-allowed
}
</style>
<script type="text/javascript">
  function request(url, method, data, callback) {
		$.ajax({
				url: url, // Endpoint to call
				data: JSON.stringify(data),
				dataType: 'json',
				error: function(error) { // Handle error from server
					callback(error);
				},
				success: function(data) {
					console.log(data)
					callback(null,data);	
				},
				type: method // Method
			});	
	};
  function hihi(){
	  var id = document.getElementById("city").value;
	  var cbdistrict = document.getElementById("districts");
	  var cbward = document.getElementById("wards"); 
	  cbdistrict.innerHTML = "";
	  request('http://localhost:8080/api/city/'+id+'/districts', 'GET', null, function(err, data){
		 if(err){
			 console.log(err)
		 }
		 for(var i = 0; i < data.length; i++) {
		        var option = document.createElement('option');
		        option.text = data[i].name;
		        	option.value = data[i].id;
		        	cbdistrict.add(option, 0);
		    }
		 showdistrict();
	  });
  }
  function showdistrict(){
	  var cbdistrict = document.getElementById("districts").value; 
	  var cbward = document.getElementById("wards"); 
	  cbward.innerHTML ="";
	  request('http://localhost:8080/api/district/'+cbdistrict+'/wards', 'GET', null, function(err, data){
			 if(err){
				 console.log(err)
			 }
			 for(var i = 0; i < data.length; i++) {
			        var option = document.createElement('option');
			        option.text = data[i].name;
			        	option.value = data[i].id;
			        	cbward.add(option, 0);
			    }
		  });
  }
  </script>
</head>
<body>
	<%@include file="/WEB-INF/views/include/header.jsp"%>

	<!-- Navbar -->

	<nav id="open--menu">
		<ul>
			<li><a href="#menu">Menu</a></li>
		</ul>
	</nav>

	<%@include file="/WEB-INF/views/include/menu.jsp"%>


	<hr>
	<h1 class="text-center">gty</h1>
	<div class="container"
		style="margin-bottom: 25px; box-shadow: 1px 1px 1px;">
		<div class="wapper">
			<div id="danger-duration" class="alert alert-danger"
				style="position: absolute; top: 0; left: 30%; display: none;">
				<strong>Hình ảnh bị lặp không được chấp nhận cho 1 sản
					phẩm!</strong>.
			</div>
			<br>
			<div class="form__upload--image text-dark">
				<h2>Thêm hình ảnh sản phẩm</h2>
				<p>
					Kéo để sắp xếp lại hình ảnh của bạn. Mỗi sản phẩm có <b><i
						class="text-danger">tối đa 6 hình ảnh</i></b>.
				</p>

				<c:if test="${ERR_FILE != null}">
					<div id="alert-err" class="alert alert-danger">
						<strong>${ERR_FILE}</strong>
					</div>
				</c:if>



				<form:form action="/post/new/upload" modelAttribute="post"
					method="POST" enctype="multipart/form-data">

					<div class="dropzone">
						<div class="dz-default dz-message">
							<div id="drop">
								<svg viewBox="0 0 1000 1000">
                    <g>
									<g
										transform="translate(0.000000,511.000000) scale(0.100000,-0.100000)">
                      <path
										d="M5754.6,3701.3c-652.2-117.7-1245.6-487.9-1620.7-1010.2l-93.2-127.5h-186.3c-367.8-2.5-742.9-105.4-1039.6-284.4C2537.7,2110,2233.7,1781.4,2089,1497l-49-98.1l-220.7-31.9C961.1,1251.8,296.7,624.1,132.4-226.7c-174.1-912.1,370.2-1865.9,1245.6-2182.2c333.5-120.2,446.3-127.5,1892.9-127.5h1338.7v196.2v196.2H3256.1c-1530,0-1559.4,2.4-1907.6,174.1c-512.4,252.5-858.2,816.5-858.2,1395.2c0,875.3,765,1613.4,1618.3,1564.3l193.7-12.3l51.5,149.6c259.9,718.4,1012.6,1159.8,1743.3,1020c115.2-22.1,134.9-19.6,156.9,14.7c483,819,1184.3,1223.5,2035.1,1179.4c946.4-49,1716.3-674.3,1978.7-1603.6c39.2-147.1,53.9-262.4,53.9-490.4l2.4-301.6l154.5-51.5c203.5-68.6,485.5-259.9,642.4-434c237.8-267.3,392.3-671.8,392.3-1034.7c0-581.1-345.7-1140.1-858.2-1395.2c-348.2-171.6-377.6-174.1-1905.1-174.1H5394.2v-196.2v-196.2h1355.9c1029.8,2.4,1397.6,9.8,1537.4,34.3c845.9,154.5,1490.8,836.1,1598.7,1696.7c51.5,407-41.7,860.6-252.5,1218.6c-171.6,291.8-500.2,598.3-796.9,747.8l-100.5,51.5l-17.2,179c-46.6,456-196.2,887.6-438.9,1245.6c-110.3,161.8-448.7,505.1-617.9,625.2C7117.9,3649.8,6392.1,3816.5,5754.6,3701.3z" />
									<path
										d="M4290.8-219.3L3592-918.1l142.2-139.8l139.8-142.2l465.9,465.9l465.9,465.9V-1894v-1623.2h196.2H5198V-1894v1625.6l465.9-465.9l465.9-465.9l139.8,142.2l142.2,139.8l-698.8,698.8c-385,384.9-703.7,698.8-711.1,698.8C4994.5,479.5,4675.8,165.6,4290.8-219.3z" /></g></g>
                  </svg>
								<span>
									<button class="btn btn-success" type="button" name="button">Tìm
										hình ảnh</button>&nbsp;<i class="lead text-dark">hoặc kéo & thả
										hình ảnh lên</i>
								</span>
								<ul class="text-left">
									<li>Tối đa 6 hình ảnh, tối đa 2.0 MB mỗi hình ảnh.</li>
									<li>Định dạng hình ảnh chấp nhận: JPG, JPEG, PNG, GIF.</li>
									<li>Kích cỡ đề xuất: 1024 x 1024 px.</li>
								</ul>
							</div>
							<p id="sl-Img">
								<span>0</span>/<span>6</span>
							</p>
							<input type="file" id="files" name="productImgAdd"
								onchange="uploadImages()" onclick="hihi()" accept="image/*"
								multiple />
							<output id="list"></output>
						</div>
					</div>

					<br>
					<div class="form__info--product">
						<h2 class="text-dark">Thông tin sản phẩm</h2>
						<div class="form-horizontal text-dark">
							<div class="form-group">
								<label class="control-label col-sm-2" for="Product_Name">Titel:</label>
								<div class="col-sm-6">
									<form:input type="text" path="title" class="form-control"
										id="Product_Name" minlength="1" maxlength="120"
										placeholder="Tên sản phẩm" name="Product_Name" />
									<div class="text-right">
										<span id="proName">0</span>/120
									</div>
								</div>
								<form:errors path="title" cssClass="error text-danger" />
							</div>
							<div class="form-group">
								<label class="control-label col-sm-2" for="Description">Mô
									tả sản phẩm:</label>
								<div class="col-sm-6">
									<div id="froala-editor"></div>
									<form:textarea type="text" path="description"
										class="form-control" id="Description" rows="7" minlength="1"
										maxlength="3000" placeholder="Mô tả sản phẩm"
										name="Description" />
									<div class="text-right">
										<span id="desDetail">0</span>/3000
									</div>
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-sm-2" for="Product_Type">Danh
									mục:</label>
								<div class="col-sm-6">

									<form:select class="form-control" path="subCategory.id"
										id="Product_Type" name="Product_Type"
										onchange="typle(this.options[this.selectedIndex].value)">
										<option label="Danh mục" disabled hidden selected></option>
										<c:forEach items="${subcate}" var="sub">
											<option value="${sub.id }" selected>${sub.name}</option>
										</c:forEach>
									</form:select>
								</div>
							</div>


							<br>

							<h2 class="text-dark">Giá và số lượng</h2>
							<div class="form-group">
								<label class="control-label col-sm-2" for="Price">Giá <a
									href="#" data-price="tooltip" data-placement="top"
									title="Vui lòng đăng sản phẩm với mức giá bạn sẵn lòng bán. Việc thiết lập mức giá có thể ảnh hưởng đến sản phẩm.">
										<i class="fa fa-info-circle text-primary" aria-hidden="true"></i>
								</a>:
								</label>
								<div class="col-sm-4">
									<div class="input-group">
										<form:input type="number" path="price" class="form-control"
											id="Price" placeholder="Giá" min="1" name="Price" />
										<span class="input-group-addon"><b>VNĐ</b></span>
									</div>
									<form:errors path="price" cssClass="error text-danger" />
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-sm-2" for="Quantity">Số
									lượng:</label>
								<div class="col-sm-4">
									<div class="input-group">
										<form:input type="number" path="quantity" class="form-control"
											id="Quantity" min="1" placeholder="Số lượng" name="Quantity" />
										<span class="input-group-addon"><b id="unit">Sản
												phẩm</b></span> <input type="hidden" id="first" name="id" value=""
											hidden readonly>
									</div>
									<form:errors path="quantity" cssClass="error text-danger" />
								</div>
							</div>
							<br>

							<h2 class="text-dark">Thông tin khác</h2>
							<div class="form-group">
								<label class="control-label col-sm-2" for="Brand">Hãng:</label>
								<div class="col-sm-4">
									<form:input type="text" path="info" class="form-control"
										id="Brand" maxlength="200" placeholder="Thương hiệu"
										name="Brand" />
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-sm-2" for="status">Trạng
									thái:</label>
								<div class="col-sm-2">

									<form:select path="status" class="form-control" id="status"
										name="status">
										<option value="NEW">Mới</option>
										<option value="CURRENT">Đã sử dụng</option>
									</form:select>
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-sm-2" for="Product_Type">Dia
									chi:</label>
								<div class="col-sm-3">
									<input type="text" path="info" class="form-control"
										name="address_string">
								</div>

								<div class="col-sm-7">
									<select onchange="hihi()" id="city">

										<option label="Dia chi" disabled hidden selected></option>
										<c:forEach items="${CITYS}" var="CITY">
											<option value="${CITY.id}" selected>${CITY.name}</option>
										</c:forEach>
									</select> <select id="districts" onchange="showdistrict()">

									</select> <select id="wards" name="ward_id" onchange="showward()">

									</select>
								</div>

							</div>

							<br> <br>
							<div class="form-group">
								<div class="col-sm-offset-6 col-sm-10">
									<a href="/kenh-nguoi-ban"> <input type="button" id="cancel"
										class="btn btn-default" value='Huỷ' />
									</a> <input type="submit" id="save" value="Lưu"
										class="btn btn-success" data-toggle="collapse"
										data-target="#await" aria-expanded="true" />
								</div>
							</div>
							<div class="form-group invisible" id="imgArr"></div>
						</div>
					</div>
				</form:form>
			</div>
			<hr>
		</div>
	</div>

	<!-- Modal -->
	<div id="resizeImg" class="modal fade" role="dialog">
		<div class="container">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">Chỉnh sửa hình ảnh</h4>
				</div>
				<div class="modal-body">
					<div class="header--resize">
						<div class="col-sm-7 col-md-offset-2 col-lg-offset-2">
							<div class="col-sm-1">

								<svg id="zooml" viewBox="0 0 1000 1000"
									enable-background="new 0 0 1000 1000" width="32px"
									height="32px" fill="#01a185" cursor="pointer" stroke="none">
                <g>
									<g
										transform="translate(0.000000,511.000000) scale(0.100000,-0.100000)">
									<path
										d="M3439.7,4526.4c-1518.2-178-2820.7-1302.5-3218.6-2783c-358.1-1338.1,92.1-2783,1160.1-3723.3C3219.9-3598.7,6038.5-3071,7200.7-893.1c636.6,1195.7,546.6,2665.8-232.5,3792.4c-546.6,789.5-1417.7,1377.9-2324.4,1566.4C4254.3,4547.3,3808.3,4568.3,3439.7,4526.4z M4532.9,4046.9c636.6-134,1181.1-414.6,1631.3-839.7c485.8-460.7,806.2-1036.6,959.1-1727.6c37.7-175.9,46.1-276.4,46.1-657.5c2.1-395.8-4.2-477.4-46.1-678.5c-142.4-665.9-425.1-1189.5-892.1-1658.5C5739-2007.2,5161.1-2308.7,4470-2436.5c-314.1-58.6-944.4-54.4-1256.5,8.4c-714.1,142.4-1290,456.5-1782.1,973.8c-410.4,427.2-695.2,975.8-829.3,1593.6c-39.8,182.2-46.1,274.3-46.1,672.2s6.3,490,46.1,672.2c144.5,661.7,429.3,1189.4,894.2,1652.2c525.6,527.7,1143.4,835.5,1893.1,944.4C3676.4,4120.1,4256.4,4103.4,4532.9,4046.9z" />
									<path
										d="M3580,1628.2v-554.9h-554.9h-554.9V853.4V633.5h554.9H3580V68.1v-565.4h219.9h219.9V68.1v565.4h565.4h565.4v219.9v219.9h-565.4h-565.4v554.9v554.9h-219.9H3580V1628.2z" />
									<path
										d="M6844.7-1506.7c-62.8-71.2-125.6-144.5-140.3-165.4c-23-33.5,134-178,1440.7-1346.5c806.2-720.4,1472.1-1310.9,1480.5-1308.8c16.7,0,263.8,280.6,274.3,309.9c4.2,14.6-2850,2584.1-2917.1,2623.9C6968.3-1385.2,6913.8-1431.3,6844.7-1506.7z" /></g></g>
                </svg>
							</div>
							<div class="col-sm-1">
								<svg id="zoomn" viewBox="0 0 1000 1000"
									enable-background="new 0 0 1000 1000" width="32px"
									height="32px" fill="#01a185" cursor="pointer" stroke="none">
                <g>
									<path
										d="M377,745.8c88.3,0,171.7-31.3,238.1-88.2L937.7,981c6,6,13.8,9,21.7,9c7.8,0,15.7-3,21.6-8.9c12-11.9,12-31.3,0.1-43.3L658.1,614.1C779,469.7,772,253.5,636.5,117.8C567.2,48.2,475,10,376.9,10S186.7,48.2,117.3,117.8c-143.1,143.5-143.1,376.9,0,520.3C186.7,707.6,278.9,745.8,377,745.8L377,745.8z M160.7,161c57.8-57.9,134.6-89.8,216.2-89.8c81.7,0,158.5,31.9,216.2,89.8c119.3,119.6,119.3,314.2,0,433.8c-57.8,57.9-134.6,89.8-216.2,89.8c-81.7,0-158.5-31.9-216.2-89.8C41.4,475.2,41.4,280.6,160.7,161L160.7,161z" />
									<path
										d="M232.8,409.1h299.4c16.9,0,30.6-13.7,30.6-30.6s-13.7-30.6-30.6-30.6H232.8c-16.9,0-30.6,13.7-30.6,30.6S215.8,409.1,232.8,409.1L232.8,409.1z" /></g>
                </svg>
							</div>
							<div class="col-sm-1">
								<svg id="xoayp" viewBox="0 0 1000 1000"
									enable-background="new 0 0 1000 1000" width="32px"
									height="32px" fill="#01a185" cursor="pointer" stroke="none">
                <g>
									<g
										transform="translate(0.000000,511.000000) scale(0.100000,-0.100000)">
									<path
										d="M3350.2,4164.4c-814.2-463-1495-857.4-1512.7-875c-51-47.1-47.1-164.8,7.9-215.8c25.5-21.6,702.4-421.8,1504.8-888.8c1047.7-610.2,1475.4-849.5,1518.6-849.5c39.2,0,74.6,15.7,106,53l45.1,53v792.6c0,435.6,5.9,796.6,15.7,800.5c27.5,17.7,486.6-25.5,700.4-66.7c484.6-92.2,1057.5-335.5,1461.7-621.9c229.6-160.9,659.2-584.7,824-808.3c1000.6-1363.6,984.9-3229.4-35.3-4565.5c-608.2-796.6-1516.6-1308.6-2534.9-1428.3c-1589.2-188.3-3103.8,616.1-3806.2,2020.8c-237.4,478.7-355.1,904.5-394.4,1438.1c-27.5,378.7-25.5,372.8-107.9,410.1c-62.8,31.4-74.6,31.4-121.6,3.9c-104-56.9-111.8-102-86.3-415.9c29.4-370.8,84.4-649.4,192.3-975.1c233.5-714.2,678.8-1375.3,1243.9-1848.2c590.6-494.4,1253.7-800.5,2011-931.9c274.7-47.1,961.4-47.1,1236,0c880.9,151.1,1646.1,547.4,2266.1,1169.3c951.6,955.5,1377.3,2336.7,1118.3,3625.7c-310,1544.1-1475.4,2784-2994,3184.3c-208,54.9-600.4,117.7-733.8,117.7c-58.8,0-141.2,5.9-184.4,13.7l-74.6,11.8l5.9,771.1l7.8,769.1l-47.1,51c-29.4,31.4-68.7,51-100.1,51C4849.1,5010,4288,4702,3350.2,4164.4z M4709.9,3181.4c-3.9-769.1-9.8-1400.8-13.7-1404.8c-3.9-5.9-551.3,308-1214.5,694.5c-663.1,388.5-1198.8,712.2-1190.9,720c17.7,17.7,2399.5,1383.2,2415.2,1385.1C4711.8,4578.4,4713.8,3950.5,4709.9,3181.4z" /></g></g>
                </svg>
							</div>
							<div class="col-sm-1">
								<svg id="xoayt" viewBox="0 0 1000 1000"
									enable-background="new 0 0 1000 1000" width="32px"
									height="32px" fill="#01a185" cursor="pointer" stroke="none">
                <g>
									<g
										transform="translate(0.000000,511.000000) scale(0.100000,-0.100000)">
									<path
										d="M5032.6,4982.5c-74.6-54.9-78.5-113.8-62.8-877l13.7-737.7l-76.5-11.8c-41.2-7.9-125.6-13.7-184.4-13.7c-241.3,0-674.9-90.2-1030-209.9C2617.4,2765.5,1705.1,1921.9,1255.8,876.1C859.5-46,814.4-1027,1124.4-1974.6c233.5-714.2,678.8-1375.3,1243.9-1848.2c590.6-494.4,1253.7-800.5,2011-931.9c274.7-47.1,961.4-47.1,1236,0c441.4,76.5,827.9,204.1,1208.6,398.3C8087.4-3709,8921.2-2486.7,9058.5-1074c33.4,339.4,29.4,388.5-39.2,457.1c-51,49.1-70.6,56.9-123.6,47.1c-109.9-21.6-117.7-43.1-145.2-386.5c-29.4-378.7-80.4-651.4-184.4-967.3c-310-943.7-975.1-1714.7-1861.9-2160.1C4840.3-5015.6,2560.5-4274,1642.3-2435.6c-160.9,323.7-255.1,588.6-321.8,906.4C1091-438.4,1332.3,672.1,1985.7,1553c158.9,213.9,594.5,637.6,814.2,792.6c396.3,280.6,943.7,518,1422.4,614.1c223.7,45.1,708.3,94.2,739.7,74.5c9.8-3.9,15.7-364.9,15.7-800.5v-792.6l45.1-53c31.4-37.3,66.7-53,106-53c43.2,0,470.9,239.4,1518.5,849.5c802.5,466.9,1479.3,867.2,1504.8,888.8c54.9,51,58.9,168.7,7.9,215.8C8079.5,3363.9,5166,5010,5117,5010C5089.5,5010,5050.2,4998.2,5032.6,4982.5z M6484.4,3897.6c655.3-372.8,1200.7-688.6,1214.5-700.4c17.6-15.7-282.5-200.1-1183.1-725.9c-663.1-386.5-1210.5-700.4-1214.5-696.5c-7.8,7.8-21.6,2803.6-13.7,2803.6C5289.6,4578.4,5829.1,4272.3,6484.4,3897.6z" /></g></g>
                </svg>
							</div>
							<div class="col-sm-1">
								<svg id="reset" viewBox="0 0 1000 1000"
									enable-background="new 0 0 1000 1000" width="32px"
									height="32px" fill="#01a185" cursor="pointer" stroke="none">
                <g>
									<path
										d="M778.3,778.2c-17.8,17.8-37.4,34-58.3,48.1c-21,14.2-43.5,26.4-66.8,36.3c-23.7,10-48.6,17.8-73.8,22.9c-51.8,10.6-106.8,10.6-158.7,0c-25.3-5.2-50.1-12.9-73.8-22.9c-23.3-9.9-45.8-22.1-66.8-36.3c-20.8-14.1-40.4-30.3-58.3-48.1c-17.8-17.8-34-37.4-48.1-58.3c-14.2-21-26.4-43.5-36.3-66.8c-8.8-20.8-15.8-42.4-20.9-64.4l73-12.2L82.2,500L10,606.6l67.8-11.3c5.6,25,13.5,49.6,23.5,73.2c10.8,25.6,24.3,50.4,39.9,73.5c15.5,22.9,33.3,44.4,52.8,64c19.6,19.6,41.1,37.3,64,52.8c23.1,15.6,47.9,29.1,73.5,39.9c26.1,11,53.5,19.5,81.2,25.2c28.5,5.8,57.8,8.8,87.2,8.8s58.7-3,87.2-8.8c27.8-5.7,55.1-14.2,81.3-25.2c25.6-10.8,50.4-24.3,73.5-39.9c22.9-15.5,44.5-33.3,64-52.8c19.6-19.6,37.3-41.1,52.8-64L826.3,720C812.3,740.8,796.1,760.4,778.3,778.2z" />
									<path
										d="M923.5,410.7c-5.7-27.1-14-53.7-24.8-79.2c-10.8-25.6-24.3-50.4-39.9-73.5c-15.5-22.9-33.2-44.4-52.8-64c-19.6-19.6-41.1-37.3-64-52.8c-23.1-15.6-47.9-29.1-73.5-39.9c-26.1-11-53.5-19.5-81.2-25.2c-57-11.7-117.4-11.7-174.4,0c-27.8,5.7-55.1,14.2-81.2,25.2c-25.6,10.8-50.4,24.3-73.5,39.9c-22.9,15.5-44.4,33.2-64,52.8c-19.6,19.6-37.3,41.1-52.8,64l32.5,21.9c14.1-20.8,30.3-40.4,48.1-58.3c17.8-17.8,37.4-34,58.3-48.1c21-14.2,43.5-26.4,66.8-36.3c23.7-10,48.6-17.8,73.8-22.9c51.9-10.6,106.8-10.6,158.7,0c25.3,5.2,50.1,12.9,73.8,22.9c23.3,9.9,45.8,22.1,66.8,36.3c20.8,14.1,40.4,30.3,58.3,48.1c17.8,17.8,34,37.4,48.1,58.3c14.2,21,26.4,43.5,36.3,66.8c9.6,22.7,17,46.3,22.2,70.4l-74.3,12.4l107.3,76.6L990,399.6L923.5,410.7z" />
									<path
										d="M770.3,671.4v-39.2V328.6H229.7v342.8l0,0l0,0H770.3z M324.7,362.2c20.9,0,37.9,17,37.9,37.9s-17,37.9-37.9,37.9s-37.9-17-37.9-37.9C286.8,379.2,303.8,362.2,324.7,362.2z M437.6,453.8l130.3,144l78.4-62.1l88.3,96.6H267.1L437.6,453.8z" /></g>
                </svg>
							</div>
						</div>
					</div>
					<br>
					<div class="body--resize">
						<div class="col-sm-9">
							<div id="result"></div>
						</div>
						<div class="col-sm-3">
							<div class="img-container">
								<h2 style="margin-top: 0px">Ảnh sau khi resize</h2>
								<div class="img-preview border-preview"></div>
							</div>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
				<br>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Huỷ</button>
					<button id="luu" class="btn btn-success" data-dismiss="modal">Lưu</button>
				</div>
			</div>

		</div>
	</div>

	<div
		style="position: fixed; top: 0; left: 0; right: 0; bottom: 0; perspective: 1000px; background-color: #00000085; z-index: 9998;"
		id="await" class="collapse" title="Đang xử lý ...">
		<div
			style="position: absolute; top: 0; left: 0; right: 0; bottom: 0; transform: scale(.3); background: url(../images/load.gif) center center/contain no-repeat;"></div>
	</div>

	<%@include file="/WEB-INF/views/include/footer.jsp"%>


	<!-- js -->
	<!-- js -->
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<!-- js -->
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="https://chototvanlang.herokuapp.com/socket.io/socket.io.js"></script>
	<script src="/js/lazyload.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>
	<script src="/js/bootstrap-select.js"></script>
	<script src="/js/hiddenporo.js"></script>
	<script src='/js/custom.js'></script>
	<script>
  $(document).ready(function(){$("div.lazy-product, img.lazy-logo, img.lazy-cate, div.lazy-sale, div.lazy-ngung, img.lazy-member, div.lazy-details, div.lazy-lq").lazyload({effect:"fadeIn"});var a=$("#first-disabled2");$("#special").on("click",function(){a.find("option:selected").prop("disabled",!0),a.selectpicker("refresh")}),$("#special2").on("click",function(){a.find("option:disabled").prop("disabled",!1),a.selectpicker("refresh")}),$("#basic2").selectpicker({liveSearch:!0,maxOptions:1}),function(b){b(function(){var c=b("body"),d=b("#menu");d.wrapInner("<div class=\"inner\"></div>"),d._locked=!1,d._lock=function(){return!d._locked&&(d._locked=!0,window.setTimeout(function(){d._locked=!1},350),!0)},d._show=function(){d._lock()&&c.addClass("is-menu-visible")},d._hide=function(){d._lock()&&c.removeClass("is-menu-visible")},d._toggle=function(){d._lock()&&c.toggleClass("is-menu-visible")},d.appendTo(c).on("click",function(e){e.stopPropagation()}).on("click","a",function(e){var f=b(this).attr("href");e.preventDefault(),e.stopPropagation(),d._hide();"#menu"==f||window.setTimeout(function(){window.location.href=f},350)}).append("<a id=\"close--menu\" class=\"close\" href=\"#menu\">Close</a>"),c.on("click","a[href=\"#menu\"]",function(e){e.stopPropagation(),e.preventDefault(),d._toggle()}).on("click",function(){d._hide()}).on("keydown",function(e){27==e.keyCode&&d._hide()})})}(jQuery)});
function GoogleMaps(){var a={lat:16.0773318,lng:108.1462627},b=new google.maps.Map(document.getElementById('map'),{zoom:15,center:a}),c=new google.maps.Marker({position:a,map:b})}
</script>


	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAtTijdOrawSLXkwdTOT1MKXE7Y0-pVcFI&callback=GoogleMaps"></script>

	<script src='/js/cropper.min.js'></script>
	<script type="text/javascript">
  var watai,init_img,find_base,nam=[],files= [],_arrBase=[],numb=[],sl=0,sl_Img=document.querySelector("p#sl-Img span:first-child"),$result=document.querySelector("div#result"),$duration=$("div#danger-duration"),$zooml=$("svg#zooml"),$zoomn=$("svg#zoomn"),$xoayt=$("svg#xoayt"),$xoayp=$("svg#xoayp"),$reset=$("svg#reset"),$save=$("button#luu"),
  uploadImages=async()=>{var e=document.querySelector("#list"),t=document.querySelector("#alert--err"),n=(document.querySelector("div.err-danger"),document.querySelector("div.validate-add"),document.querySelector("#alert-err"),document.querySelector("input[type=file]").files),r=(document.querySelector("#filename"),0),l=0,a=0;function i(r){if(/\.(jpe?g|png|gif)$/i.test(r.name)){var i=new FileReader;i.addEventListener("load",function(i){if(-1!==(find_base=_arrBase.indexOf(i.target.result)))a++,$duration.fadeIn(),setTimeout(function(){$duration.fadeOut("slow")},1500);else{l++,_arrBase.push(this.result);let n=document.createElement("div");n.classList.add("img-relative"),n.title=r.name,n.style.background="url("+this.result+") center center / contain no-repeat",createSvg(n),e.appendChild(n),t.style.display="none"}a+l===n.length&&(sl=_arrBase.length,socket.compress(!0).emit("add",_arrBase),sl_Img.innerHTML=sl,sl_Img.style.color=6===sl?"red":"#01a185",nam.splice(0,nam.length),nam.push(_arrBase.length))},!1),i.readAsDataURL(r),removeSpan()}else{let e='không thể được tải lên. Vui lòng chỉ chọn đúng định dạng ảnh&nbsp;<i class="text-primary">( .JPG |.JPEG |.PNG |.GIF )</i>.';t.style.display="block";let n=t.firstElementChild.textContent;t.firstElementChild.innerHTML=n.replace(n,r.name+"&nbsp;"+e),document.querySelector("input[type=file]").value=""}}if(n){let e=[];await function(e,t){for(;r<e.length;)e[r].size<2011515?t.push(e[r++]):numb.push(e[r++].name);return}(n,e),await function(e,t){if(e.length<7){if(0!==numb.length)return watai=`"${numb.toString()}" không thể được tải lên. <br /> - Kích thước tập tin vượt quá 2.0 MB.`,document.querySelector("input[type=file]").value="",t.splice(0,t.length),numb.splice(0,numb.length),void errorMaxlength(watai);{nam.push(t.length);let e=nam.reduce(n,0);function n(e,t){return e+t}if(!(e<7)){let n="Quá số ảnh (6/6) được tải lên.";return sl_Img.innerHTML=0,sl_Img.style.color="#01a185",document.querySelector("#list").innerHTML="",document.querySelector("input[type=file]").value="",nam.splice(0,nam.length),_arrBase.splice(0,_arrBase.length),t.splice(0,t.length),numb.splice(0,numb.length),e=0,sl=0,addSpan(),void errorMaxlength(n)}t.forEach(e=>{i(e)})}}else{if(0!==numb.length)return watai=`"${numb.toString()}" không thể được tải lên. <br /> - Kích thước tập tin vượt quá 2.0 MB.`,document.querySelector("input[type=file]").value="",sl_Img.innerHTML=0,nam.splice(0,nam.length),_arrBase.splice(0,_arrBase.length),t.splice(0,t.length),numb.splice(0,numb.length),r=0,sl=0,void errorMaxlength(watai);{nam.push(t.length);var r=nam.reduce(n,0);function n(e,t){return e+t}if(!(r<7)){let e="Quá số ảnh (6/6) được tải lên.";
  return sl_Img.innerHTML=0,document.querySelector("#list").innerHTML="",document.querySelector("input[type=file]").value="",nam.splice(0,nam.length),_arrBase.splice(0,_arrBase.length),t.splice(0,t.length),numb.splice(0,numb.length),r=0,sl=0,addSpan(),void errorMaxlength(e)}t.forEach(e=>{i(e)})}}}(n,e)}
  var file = $("#files");
files.push(file.clone());
document.getElementById("imgArr").innerHTML='';
if(files.length >0){
	 for (var i = 0; i < files.length; i++) {
		 var htmlObject = document.createElement('input');
		 htmlObject.setAttribute("type", "file");
		htmlObject.setAttribute("multiple", "multiple");
		htmlObject.files = files[i][0].files;
		 htmlObject.setAttribute("name", "images");	 
			 $("#imgArr").append(htmlObject);	
	}
 }
  }; 

  socket.on("allD",e=>{document.querySelector("#list").innerHTML="",document.querySelector("input[type=file]").value="",nam.splice(0,nam.length),numb.splice(0,numb.length),_arrBase.splice(0,_arrBase.length),sl=0,addSpan(),errorMaxlength(e)});var yErr=document.querySelector("#alert--err"),errorMaxlength=e=>{var t=e;yErr.style.display="block";var n=yErr.firstElementChild.textContent;yErr.firstElementChild.innerHTML=n.replace(n,t)};document.getElementById("save").disabled=!0;var addSpan=()=>{document.getElementById("drop").style.display="flex",document.getElementById("save").disabled=!0},removeSpan=()=>{document.getElementById("drop").style.display="none",document.getElementById("save").disabled=!1};function deleteSvg(e){let t=(e.parentNode.parentNode.parentNode.currentStyle||window.getComputedStyle(e.parentNode.parentNode.parentNode,!1)).backgroundImage.slice(4,-1).replace(/"/g,"");e.parentNode.parentNode.parentNode.remove(e);var n=_arrBase.indexOf(t);sl_Img.innerHTML=sl-=1,6!==sl&&(sl_Img.style.color="#01a185"),n>-1&&(_arrBase.splice(n,1),nam.splice(0,nam.length),socket.emit("delete",_arrBase)),nam.push(_arrBase.length),0==nam&&(document.querySelector("#list").innerHTML="",document.querySelector("input[type=file]").value="",nam.splice(0,nam.length),_arrBase.splice(0,_arrBase.length),addSpan())}function resizrSvg(e){let t=(e.parentNode.parentNode.parentNode.currentStyle||window.getComputedStyle(e.parentNode.parentNode.parentNode,!1)).backgroundImage.slice(4,-1).replace(/"/g,""),n=document.createElement("img");n.id="image",n.src=t,$result.innerHTML="",$result.appendChild(n);init_img(t,{aspectRatio:4/3,preview:".img-preview"},e)}function getUrl(e,t,n){let r=_arrBase.indexOf(n);if(r>-1)return _arrBase[r]=t,e.parentNode.parentNode.parentNode.style.background="",e.parentNode.parentNode.parentNode.style.background="url("+t+") center center / contain no-repeat",void socket.emit("change",_arrBase)}function typle(e){let t=document.querySelector("input#first").value,n=document.querySelector("b#unit");n.innerHTML=e===t?"kg":"Sản phẩm"}function createSvg(e){let t="http://www.w3.org/2000/svg",n=e,r=document.createElement("div");r.classList.add("option_container","pull-right");let l=document.createElement("div");l.classList.add("deleSvg","option_out");let a=document.createElement("div");a.classList.add("resSvg","option_out"),n.appendChild(r),r.appendChild(a),r.appendChild(l);let i=document.createElementNS(t,"svg");i.setAttributeNS(null,"class","resizrSvg opstion"),i.setAttributeNS(null,"onclick","resizrSvg(this)"),i.setAttributeNS(null,"data-toggle","modal"),i.setAttributeNS(null,"data-target","#resizeImg"),i.setAttributeNS(null,"viewBox","0 0 1000 1000"),i.setAttributeNS(null,"enable-background","new 0 0 1000 1000"),i.setAttributeNS(null,"width","16px"),i.setAttributeNS(null,"height","16px"),i.setAttributeNS(null,"fill","#e90b07"),i.setAttributeNS(null,"cursor","pointer"),i.setAttributeNS(null,"stroke","none"),a.appendChild(i);let c=document.createElementNS(t,"g");c.setAttributeNS(null,"transform","translate(0.000000,511.000000) scale(0.100000,-0.100000)"),i.appendChild(c);let o=document.createElementNS(t,"path");o.setAttributeNS(null,"d","M2278.5,4946.2l-63.8-61.3v-998.3v-995.8h-995.8H220.6l-61.3-63.8c-99.6-97-68.9-260.4,56.2-316.6c40.8-17.9,375.3-28.1,1029-28.1h970.2V-40.4v-2525.2l58.7-53.6l58.7-56.2h2520.1h2520.1v-970.2c0-653.6,10.2-988.1,28.1-1029c56.2-125.1,219.6-155.8,316.6-56.2l63.8,61.3v998.3v995.8h995.8h998.3l61.3,63.8c99.6,97,68.9,260.4-56.2,316.6c-40.8,17.9-375.3,28.1-1029,28.1h-970.2V163.9v2433.3l1059.6,1059.6C9803,4621.9,9900,4726.6,9900,4800.6c0,112.4-97,209.4-209.4,209.4c-74,0-178.7-97-1143.8-1059.6L7487.2,2890.8H5053.9H2623.2V3861c0,653.6-10.2,988.1-28.1,1029C2538.9,5015.1,2375.5,5045.7,2278.5,4946.2z M7065.9,2474.6c0-2.6-998.3-1006-2221.4-2226.5L2623.2-1973.2v2229v2226.5h2221.3C6067.5,2482.3,7065.9,2479.7,7065.9,2474.6z M7372.3-45.5v-2221.3H5145.8h-2229L5138.2-45.5c1220.5,1223,2223.9,2221.3,2226.5,2221.3C7369.7,2175.9,7372.3,1177.5,7372.3-45.5z"),c.appendChild(o);let s=document.createElementNS(t,"svg");s.setAttributeNS(null,"class","deleteSvg opstion"),s.setAttributeNS(null,"onclick","deleteSvg(this)"),s.setAttributeNS(null,"viewBox","0 0 1000 1000"),s.setAttributeNS(null,"enable-background","new 0 0 1000 1000"),s.setAttributeNS(null,"width","16px"),s.setAttributeNS(null,"height","16px"),s.setAttributeNS(null,"fill","#01a185"),s.setAttributeNS(null,"cursor","pointer"),s.setAttributeNS(null,"stroke","none"),l.appendChild(s);let u=document.createElementNS(t,"g");s.appendChild(u);for(let e=0;e<=5;e++){let n=document.createElementNS(t,"path");switch(e){case 0:var p=n;p.setAttributeNS(null,"d","M967,182.7H33c-12.7,0-23-10.3-23-23c0-12.7,10.3-23,23-23H967c12.7,0,23,10.3,23,23C990,172.4,979.7,182.7,967,182.7z"),u.appendChild(p);break;case 1:var d=n;d.setAttributeNS(null,"d","M744.6,981.6H249.1c-54.8,0-99.3-44.5-99.3-99.3V159.7c0-12.7,10.3-23,23-23c12.7,0,23,10.3,23,23v722.6c0,29.4,23.8,53.3,53.2,53.3h495.5c29.3,0,53.2-23.9,53.2-53.3V235.9c0-12.7,10.3-23.1,23-23.1c12.7,0,23,10.3,23,23.1v646.4C843.9,937.1,799.3,981.6,744.6,981.6z"),u.appendChild(d);break;case 2:var m=n;m.setAttributeNS(null,"d","M700.2,182.7c-0.3,0-0.6,0-0.9,0H296.7c-8.4,0-16.2-4.6-20.2-12c-4-7.4-3.7-16.4,0.8-23.5l76.2-118.3c4.3-6.6,11.5-10.6,19.4-10.6h254.9c8.1,0,15.6,4.2,19.8,11.1l68.6,113.6c4.4,4.2,7.1,10.1,7.1,16.6C723.3,172.4,713,182.7,700.2,182.7z M339,136.7h319.6l-43.6-72.3H385.5L339,136.7z"),u.appendChild(m);break;case 3:var g=n;g.setAttributeNS(null,"d","M322.9,862.5c-12.7,0-23.1-10.3-23.1-23.1V286.7c0-12.7,10.4-23.1,23.1-23.1c12.7,0,23,10.3,23,23.1v552.7C346,852.2,335.7,862.5,322.9,862.5z"),u.appendChild(g);break;case 4:var h=n;h.setAttributeNS(null,"d","M500,862.5c-12.7,0-23-10.3-23-23.1V286.7c0-12.7,10.3-23.1,23-23.1s23.1,10.3,23.1,23.1v552.7C523.1,852.2,512.7,862.5,500,862.5z"),u.appendChild(h);break;case 5:var v=n;v.setAttributeNS(null,"d","M666,862.5c-12.7,0-23-10.3-23-23.1V286.7c0-12.7,10.3-23.1,23-23.1c12.7,0,23,10.3,23,23.1v552.7C689,852.2,678.7,862.5,666,862.5z"),u.appendChild(v)}}}$(document).ready(()=>{$('[data-price="tooltip"]').tooltip(),$("span#proName").text($("input[name=Product_Name]").val().length),$("span#desDetail").text($("textarea[name=Description]").val().length),$("input[name=Product_Name]").keyup(function(){$("span#proName").text($(this).val().length),120===$(this).val().length?$("span#proName").css("color","red"):$("span#proName").css("color","unset")}),$("textarea[name=Description]").keyup(function(){$("span#desDetail").text($(this).val().length),3e3===$(this).val().length?$("span#desDetail").css("color","red"):$("span#desDetail").css("color","unset")}),init_img=function(e,t,n){let r=$("#image");r.on({"build.cropper":function(e){e.type},"built.cropper":function(e){e.type},"cropstart.cropper":function(e){e.type,e.action},"cropmove.cropper":function(e){e.type,e.action},"cropend.cropper":function(e){e.type,e.action},"crop.cropper":function(e){e.type,e.x,e.y,e.width,e.height,e.rotate,e.scaleX,e.scaleY},"zoom.cropper":function(e){e.type,e.ratio}}).cropper(t);$save.click(function(t){t.preventDefault();let l=r.cropper("getCroppedCanvas",{width:1024}).toDataURL();getUrl(n,l,e)}),$zooml.click(function(e){e.preventDefault(),r.cropper("zoom",.1)}),$zoomn.click(function(e){e.preventDefault(),r.cropper("zoom",-.1)}),$xoayt.click(function(e){e.preventDefault(),r.cropper("rotate",45)}),$xoayp.click(function(e){e.preventDefault(),r.cropper("rotate",-45)}),$reset.click(function(e){e.preventDefault(),r.cropper("reset")})}});
  </script>
  <script type="text/javascript">
  socket.on("allD",e=>{document.querySelector("#list").innerHTML="",document.querySelector("input[type=file]").value="",nam.splice(0,nam.length),numb.splice(0,numb.length),_arrBase.splice(0,_arrBase.length),sl=0,addSpan(),errorMaxlength(e)});var yErr=document.querySelector("#alert--err"),errorMaxlength=e=>{var t=e;yErr.style.display="block";var n=yErr.firstElementChild.textContent;yErr.firstElementChild.innerHTML=n.replace(n,t)};document.getElementById("save").disabled=!0;var addSpan=()=>{document.getElementById("drop").style.display="flex",document.getElementById("save").disabled=!0},removeSpan=()=>{document.getElementById("drop").style.display="none",document.getElementById("save").disabled=!1};function deleteSvg(e){let t=(e.parentNode.parentNode.parentNode.currentStyle||window.getComputedStyle(e.parentNode.parentNode.parentNode,!1)).backgroundImage.slice(4,-1).replace(/"/g,"");e.parentNode.parentNode.parentNode.remove(e);var n=_arrBase.indexOf(t);sl_Img.innerHTML=sl-=1,6!==sl&&(sl_Img.style.color="#01a185"),n>-1&&(_arrBase.splice(n,1),nam.splice(0,nam.length),
		  socket.emit("delete",_arrBase)),nam.push(_arrBase.length),0==nam&&(document.querySelector("#list").innerHTML="",document.querySelector("input[type=file]").value="",nam.splice(0,nam.length),_arrBase.splice(0,_arrBase.length),addSpan())}function resizrSvg(e){let t=(e.parentNode.parentNode.parentNode.currentStyle||window.getComputedStyle(e.parentNode.parentNode.parentNode,!1)).backgroundImage.slice(4,-1).replace(/"/g,""),n=document.createElement("img");n.id="image",n.src=t,$result.innerHTML="",$result.appendChild(n);init_img(t,{aspectRatio:4/3,preview:".img-preview"},e)}function getUrl(e,t,n){let r=_arrBase.indexOf(n);if(r>-1)return _arrBase[r]=t,e.parentNode.parentNode.parentNode.style.background="",e.parentNode.parentNode.parentNode.style.background="url("+t+") center center / contain no-repeat",
		  void socket.emit("change",_arrBase)}function typle(e){let t=document.querySelector("input#first").value,n=document.querySelector("b#unit");n.innerHTML=e===t?"kg":"Sản phẩm"}function createSvg(e){let t="http://www.w3.org/2000/svg",n=e,r=document.createElement("div");r.classList.add("option_container","pull-right");let l=document.createElement("div");l.classList.add("deleSvg","option_out");let a=document.createElement("div");a.classList.add("resSvg","option_out"),n.appendChild(r),r.appendChild(a),r.appendChild(l);let i=document.createElementNS(t,"svg");i.setAttributeNS(null,"class","resizrSvg opstion"),i.setAttributeNS(null,"onclick","resizrSvg(this)"),i.setAttributeNS(null,"data-toggle","modal"),i.setAttributeNS(null,"data-target","#resizeImg"),i.setAttributeNS(null,"viewBox","0 0 1000 1000"),i.setAttributeNS(null,"enable-background","new 0 0 1000 1000"),i.setAttributeNS(null,"width","16px"),i.setAttributeNS(null,"height","16px"),i.setAttributeNS(null,"fill","#e90b07"),i.setAttributeNS(null,"cursor","pointer"),i.setAttributeNS(null,"stroke","none"),a.appendChild(i);let c=document.createElementNS(t,"g");c.setAttributeNS(null,"transform","translate(0.000000,511.000000) scale(0.100000,-0.100000)"),i.appendChild(c);let o=document.createElementNS(t,"path");o.setAttributeNS(null,"d","M2278.5,4946.2l-63.8-61.3v-998.3v-995.8h-995.8H220.6l-61.3-63.8c-99.6-97-68.9-260.4,56.2-316.6c40.8-17.9,375.3-28.1,1029-28.1h970.2V-40.4v-2525.2l58.7-53.6l58.7-56.2h2520.1h2520.1v-970.2c0-653.6,10.2-988.1,28.1-1029c56.2-125.1,219.6-155.8,316.6-56.2l63.8,61.3v998.3v995.8h995.8h998.3l61.3,63.8c99.6,97,68.9,260.4-56.2,316.6c-40.8,17.9-375.3,28.1-1029,28.1h-970.2V163.9v2433.3l1059.6,1059.6C9803,4621.9,9900,4726.6,9900,4800.6c0,112.4-97,209.4-209.4,209.4c-74,0-178.7-97-1143.8-1059.6L7487.2,2890.8H5053.9H2623.2V3861c0,653.6-10.2,988.1-28.1,1029C2538.9,5015.1,2375.5,5045.7,2278.5,4946.2z M7065.9,2474.6c0-2.6-998.3-1006-2221.4-2226.5L2623.2-1973.2v2229v2226.5h2221.3C6067.5,2482.3,7065.9,2479.7,7065.9,2474.6z M7372.3-45.5v-2221.3H5145.8h-2229L5138.2-45.5c1220.5,1223,2223.9,2221.3,2226.5,2221.3C7369.7,2175.9,7372.3,1177.5,7372.3-45.5z"),c.appendChild(o);let s=document.createElementNS(t,"svg");s.setAttributeNS(null,"class","deleteSvg opstion"),s.setAttributeNS(null,"onclick","deleteSvg(this)"),s.setAttributeNS(null,"viewBox","0 0 1000 1000"),s.setAttributeNS(null,"enable-background","new 0 0 1000 1000"),s.setAttributeNS(null,"width","16px"),s.setAttributeNS(null,"height","16px"),s.setAttributeNS(null,"fill","#01a185"),s.setAttributeNS(null,"cursor","pointer"),s.setAttributeNS(null,"stroke","none"),l.appendChild(s);let u=document.createElementNS(t,"g");s.appendChild(u);for(let e=0;e<=5;e++){let n=document.createElementNS(t,"path");switch(e){case 0:var p=n;p.setAttributeNS(null,"d","M967,182.7H33c-12.7,0-23-10.3-23-23c0-12.7,10.3-23,23-23H967c12.7,0,23,10.3,23,23C990,172.4,979.7,182.7,967,182.7z"),u.appendChild(p);break;case 1:var d=n;d.setAttributeNS(null,"d","M744.6,981.6H249.1c-54.8,0-99.3-44.5-99.3-99.3V159.7c0-12.7,10.3-23,23-23c12.7,0,23,10.3,23,23v722.6c0,29.4,23.8,53.3,53.2,53.3h495.5c29.3,0,53.2-23.9,53.2-53.3V235.9c0-12.7,10.3-23.1,23-23.1c12.7,0,23,10.3,23,23.1v646.4C843.9,937.1,799.3,981.6,744.6,981.6z"),u.appendChild(d);break;case 2:var m=n;m.setAttributeNS(null,"d","M700.2,182.7c-0.3,0-0.6,0-0.9,0H296.7c-8.4,0-16.2-4.6-20.2-12c-4-7.4-3.7-16.4,0.8-23.5l76.2-118.3c4.3-6.6,11.5-10.6,19.4-10.6h254.9c8.1,0,15.6,4.2,19.8,11.1l68.6,113.6c4.4,4.2,7.1,10.1,7.1,16.6C723.3,172.4,713,182.7,700.2,182.7z M339,136.7h319.6l-43.6-72.3H385.5L339,136.7z"),u.appendChild(m);break;case 3:var g=n;g.setAttributeNS(null,"d","M322.9,862.5c-12.7,0-23.1-10.3-23.1-23.1V286.7c0-12.7,10.4-23.1,23.1-23.1c12.7,0,23,10.3,23,23.1v552.7C346,852.2,335.7,862.5,322.9,862.5z"),u.appendChild(g);break;case 4:var h=n;h.setAttributeNS(null,"d","M500,862.5c-12.7,0-23-10.3-23-23.1V286.7c0-12.7,10.3-23.1,23-23.1s23.1,10.3,23.1,23.1v552.7C523.1,852.2,512.7,862.5,500,862.5z"),u.appendChild(h);break;case 5:var v=n;v.setAttributeNS(null,"d","M666,862.5c-12.7,0-23-10.3-23-23.1V286.7c0-12.7,10.3-23.1,23-23.1c12.7,0,23,10.3,23,23.1v552.7C689,852.2,678.7,862.5,666,862.5z"),u.appendChild(v)}}}$(document).ready(()=>{$('[data-price="tooltip"]').tooltip(),$("span#proName").text($("input[name=Product_Name]").val().length),$("span#desDetail").text($("textarea[name=Description]").val().length),$("input[name=Product_Name]").keyup(function(){$("span#proName").text($(this).val().length),120===$(this).val().length?$("span#proName").css("color","red"):$("span#proName").css("color","unset")}),$("textarea[name=Description]").keyup(function(){$("span#desDetail").text($(this).val().length),3e3===$(this).val().length?$("span#desDetail").css("color","red"):$("span#desDetail").css("color","unset")}),init_img=function(e,t,n){let r=$("#image");r.on({"build.cropper":function(e){e.type},"built.cropper":function(e){e.type},"cropstart.cropper":function(e){e.type,e.action},"cropmove.cropper":function(e){e.type,e.action},"cropend.cropper":function(e){e.type,e.action},"crop.cropper":function(e){e.type,e.x,e.y,e.width,e.height,e.rotate,e.scaleX,e.scaleY},"zoom.cropper":function(e){e.type,e.ratio}}).cropper(t);$save.click(function(t){t.preventDefault();let l=r.cropper("getCroppedCanvas",{width:1024}).toDataURL();getUrl(n,l,e)}),$zooml.click(function(e){e.preventDefault(),r.cropper("zoom",.1)}),$zoomn.click(function(e){e.preventDefault(),r.cropper("zoom",-.1)}),$xoayt.click(function(e){e.preventDefault(),r.cropper("rotate",45)}),$xoayp.click(function(e){e.preventDefault(),r.cropper("rotate",-45)}),$reset.click(function(e){e.preventDefault(),r.cropper("reset")})}});
  </script>
</body>
</html>
