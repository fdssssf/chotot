<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Admin</title>
<!-- plugins:css -->
<link rel="stylesheet"
	href="/adminv1/vendors/iconfonts/mdi/css/materialdesignicons.min.css">
<link rel="stylesheet"
	href="/adminv1/vendors/css/vendor.bundle.base.css">
<link rel="stylesheet"
	href="adminv1/vendors/css/vendor.bundle.addons.css">
<!-- endinject -->
<!-- plugin css for this page -->
<!-- End plugin css for this page -->
<!-- inject:css -->
<link rel="stylesheet" href="/adminv1/css/style.css">
<!-- endinject -->
<link rel="shortcut icon" href="/adminv1/images/favicon.png" />

<style type="text/css">
.pagination-div{user-select: none;}
.pagination-div span
{
border-radius:3px;
border:1px solid #999;
padding:10px;margin:1px 0px 0px 1px;display:inline-block}
span.selected{background:#ccf;}
</style>
  <script src="/js/custom.js">
    </script>
</head>

<body>
	<div class="container-scroller">
		<!-- partial:partials/_navbar.html -->
		<%@include file="/WEB-INF/views/admin/include/navbar.jsp"%>
		<!-- partial -->
		<div class="container-fluid page-body-wrapper">
			<!-- inclue menu -->
			<%@include file="/WEB-INF/views/admin/include/sidebar.jsp"%>

			<!-- partial -->
			<div class="main-panel">
				<div class="content-wrapper">
					<div class="row purchace-popup">
						<div class="col-12">
							<span class="d-block d-md-flex align-items-center">
								<p>Like what you see? Check out our premium version for
									more.</p> <a class="btn ml-auto download-button d-none d-md-block"
								href="https://github.com/BootstrapDash/Staradminv1-Free-Bootstrap-adminv1-Template"
								target="_blank">Download Free Version</a> <a
								class="btn purchase-button mt-4 mt-md-0"
								href="https://www.bootstrapdash.com/product/star-adminv1-pro/"
								target="_blank">Upgrade To Pro</a> <i
								class="mdi mdi-close popup-dismiss d-none d-md-block"></i>
							</span>
						</div>
					</div>
					<div class="row">
						<div
							class="col-xl-3 col-lg-3 col-md-3 col-sm-6 grid-margin stretch-card">
							<div class="card card-statistics">
								<div class="card-body">
									<div class="clearfix">
										<div class="float-left">
											<i class="mdi mdi-cube text-danger icon-lg"></i>
										</div>
										<div class="float-right">
											<p class="mb-0 text-right">Số thành viên</p>
											<div class="fluid-container">
												<h3 class="font-weight-medium text-right mb-0">${ucount}</h3>
											</div>
										</div>
									</div>
									<p class="text-muted mt-3 mb-0">
										<i class="mdi mdi-alert-octagon mr-1" aria-hidden="true"></i>
										Thành viên
									</p>
								</div>
							</div>
						</div>
						<div
							class="col-xl-3 col-lg-3 col-md-3 col-sm-6 grid-margin stretch-card">
							<div class="card card-statistics">
								<div class="card-body">
									<div class="clearfix">
										<div class="float-left">
											<i class="mdi mdi-receipt text-warning icon-lg"></i>
										</div>
										<div class="float-right">
											<p class="mb-0 text-right">Số bài đăng</p>
											<div class="fluid-container">
												<h3 class="font-weight-medium text-right mb-0">${pcount}</h3>
											</div>
										</div>
									</div>
									<p class="text-muted mt-3 mb-0">
										<i class="mdi mdi-bookmark-outline mr-1" aria-hidden="true"></i>
										Bài viết
									</p>
								</div>
							</div>
						</div>
						<div
							class="col-xl-3 col-lg-3 col-md-3 col-sm-6 grid-margin stretch-card">
							<div class="card card-statistics">
								<div class="card-body">
									<div class="clearfix">
										<div class="float-left">
											<i class="mdi mdi-poll-box text-success icon-lg"></i>
										</div>
										<div class="float-right">
											<p class="mb-0 text-right">Số lượng danh mục</p>
											<div class="fluid-container">
												<h3 class="font-weight-medium text-right mb-0">${ccount}</h3>
											</div>
										</div>
									</div>
									<p class="text-muted mt-3 mb-0">
										<i class="mdi mdi-calendar mr-1" aria-hidden="true"></i>
										Danh mục
									</p>
								</div>
							</div>
						</div>
						<div
							class="col-xl-3 col-lg-3 col-md-3 col-sm-6 grid-margin stretch-card">
							<div class="card card-statistics">
								<div class="card-body">
									<div class="clearfix">
										<div class="float-left">
											<i class="mdi mdi-account-location text-info icon-lg"></i>
										</div>
										<div class="float-right">
											<p class="mb-0 text-right">Số danh mục con</p>
											<div class="fluid-container">
												<h3 class="font-weight-medium text-right mb-0">${scount }</h3>
											</div>
										</div>
									</div>
									<p class="text-muted mt-3 mb-0">
										<i class="mdi mdi-reload mr-1" aria-hidden="true"></i>
										Danh mục
									</p>
								</div>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-md-12 grid-margin">
							<div class="card">
								<div class="card-body">
									<div class="row d-none d-sm-flex mb-4">
										<div class="col-4">
											<h5 class="text-primary">Unique Visitors</h5>
											<p>34657</p>
										</div>
										<div class="col-4">
											<h5 class="text-primary">Bounce Rate</h5>
											<p>45673</p>
										</div>
										<div class="col-4">
											<h5 class="text-primary">Active session</h5>
											<p>45673</p>
										</div>
									</div>
									<div class="chart-container">
										<canvas id="dashboard-area-chart" height="80"></canvas>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-12 grid-margin">
							<div class="card">
								<div class="card-body">
									<h4 class="card-title">Duyệt bài</h4>
									<div class="table-responsive">

										<table class="table table-bordered" id="postactive">
											<thead>
												<tr>
													<th>#</th>
													<th>Người bán</th>
													<th>Danh mục</th>
													<th>Số tiền</th>
													<th>Số lượng</th>
													<th>Ngày đăng</th>
													<th>Tác vụ</th>
												</tr>
											</thead>
											<tbody>
											<c:forEach var="data" varStatus="i" items="${pdata.content}">
												<tr>
													<td class="font-weight-medium">${i.count }</td>
													<td>${data.user.name }</td>
													<td>${data.subCategory.name }</td>
													<td>${data.price }</td>
													<td class="text-danger">
													    ${data.quantity }<i class="mdi mdi-arrow-down"></i>
													</td>
													<td>${data.createdAt }</td>
													<td>
														<div class="btn-group dropdown">
															<button type="button"
																class="btn btn-success dropdown-toggle btn-sm"
																data-toggle="dropdown" aria-haspopup="true"
																aria-expanded="false">Xét duyệt</button>
															<div class="dropdown-menu">
															
																<a class="dropdown-item" href="#"> 
																<i class="fa fa-reply fa-fw"></i>Xem
																</a>
																 <a class="dropdown-item" href="#"  onclick="activePost('${data.id}', this);"> 
																<i class="fa fa-history fa-fw"></i>Duyệt
																</a>
																<div class="dropdown-divider"></div>
																<a class="dropdown-item" href="#"> 
																<i class="fa fa-check text-success fa-fw"></i>Báo cáo															
																</a> 
																<a class="dropdown-item" href="#"> 
																<i class="fa fa-times text-danger fa-fw"></i>Xóa ngay
																</a>
															</div>
														</div>
													</td>
												</tr>
			                             </c:forEach>       
											</tbody>
										</table>
                  <%@include file="/WEB-INF/views/admin/include/page.jsp"%>

									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-12 grid-margin">
							<div class="card">
								<div class="card-body">
									<h5 class="card-title mb-4">Ban Quản trị</h5>
									<div class="fluid-container">
									<c:forEach var="admin" items="${admins}">
										<div class="row ticket-card mt-3 pb-2 border-bottom pb-3 mb-3">
											<div class="col-md-1">
												<img class="img-sm rounded-circle mb-4 mb-md-0"
													src="/adminv1/images/faces/face1.jpg" alt="profile image">
											</div>
											<!--  ban -->
											<div class="ticket-details col-md-9">
												<div class="d-flex">
													<p class="text-dark font-weight-semibold mr-2 mb-0 no-wrap">${admin.name}
														:</p>
													<p class="text-primary mr-1 mb-0">[#23047]</p>
													<p class="mb-0 ellipsis">Ngày gia nhập: ${admin.createdAt}</p>
												</div>
												<p class="text-gray ellipsis mb-2">Admin chính thức trong hệ thống </p>
												<div class="row text-gray d-md-flex d-none">
													<div class="col-4 d-flex">
														<small class="mb-0 mr-2 text-muted text-muted">Liên hệ Email: ${admin.email}</small> <small
															class="Last-responded mr-2 mb-0 text-muted text-muted">24 h
															</small>
													</div>
													<div class="col-4 d-flex">
														<small class="mb-0 mr-2 text-muted text-muted">Liên hệ SDT: ${admin.phone}</small> <small
															class="Last-responded mr-2 mb-0 text-muted text-muted"></small>
													</div>
												</div>
											</div>
											<div class="ticket-actions col-md-2">
												<div class="btn-group dropdown">
													<button type="button"
														class="btn btn-success dropdown-toggle btn-sm"
														data-toggle="dropdown" aria-haspopup="true"
														aria-expanded="false">Xem</button>
													<div class="dropdown-menu">
														<a class="dropdown-item" href="/admin/manage/${admin.id}"> <i
															class="fa fa-reply fa-fw"></i>Xem thông tin
														</a> 
													</div>
												</div>
											</div>
										</div>
						</c:forEach>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- content-wrapper ends -->
				<!-- partial:partials/_footer.html -->
				<%@include file="/WEB-INF/views/admin/include/footer.jsp"%>
				<!-- partial -->
			</div>
			<!-- main-panel ends -->
		</div>
		<!-- page-body-wrapper ends -->
	</div>
	<!-- container-scroller -->

	<!-- plugins:js -->
	<script src="/adminv1/vendors/js/vendor.bundle.base.js"></script>
	<script src="/adminv1/vendors/js/vendor.bundle.addons.js"></script>
	<!-- endinject -->
	<!-- Plugin js for this page-->
	<!-- End plugin js for this page-->
	<!-- inject:js -->
	<script src="/adminv1/js/off-canvas.js"></script>
	<script src="/adminv1/js/misc.js"></script>

	<!-- endinject -->
	<!-- Custom js for this page-->
	<script src="/adminv1/js/dashboard.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<!-- End custom js for this page-->

	
     
</body>

</html>