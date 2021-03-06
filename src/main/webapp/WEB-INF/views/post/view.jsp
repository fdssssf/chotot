<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@include file="/WEB-INF/views/include/title.jsp" %>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css" integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B"
    crossorigin="anonymous">
<link rel="stylesheet" href="/css/style.css">
<script type="text/javascript" src="/js/custom.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

</head>
<body>
 <%@include file="/WEB-INF/views/include/header.jsp" %>

	<!-- Navbar -->

	<nav id="open--menu">
		<ul>
			<li><a href="#menu">Menu</a></li>
		</ul>
	</nav>
 <%@include file="/WEB-INF/views/include/menu.jsp" %>


	<div class="main-banner banner text-center">
		<!-- <div class="container">
      <h1>ChÃ o má»«ng báº¡n   <span class="segment-heading">    Äáº¿n vá»i trang </span> mua sáº¯m online ChoTotVL</h1>
      <p>Olala</p>
    </div> -->
	</div>


	<div class="gap-multi"></div>

	<div class="container">
		
			<main>
			<div class="row">
			<div class="main-breadcrumb col-sm-12">
				<ol class="breadcrumb">
					<li><a href="/">Trang chủ</a></li>
					<li><a href="/find/">Bài đăng</a></li>
					<li class="active"><a href="/post/view/${POST.id}"></a>< ${POST.title} </li>
				</ol>
			</div>
			</div>
			<div class="row">
			<div class="col-sm-4">
				<div class="vl-detail__imgs box-shadow">
					<!-- Full-width images with number text -->
					<c:set var="NUM" value="1"></c:set>
					<c:forEach var="PHOTO" items="${PHOTOS}">
						<div class="mySlides">
							<div id="id_img"
								style="Background: url('/upload/${PHOTO.name}') center center / cover no-repeat;"></div>
							<div class="numbertext">${NUM}
								/
								${PHOTOS.size()}</div>
						</div>
						<c:set var="NUM" value="${NUM+1}"></c:set>
					</c:forEach>


					<!-- Next and previous buttons -->
					<a class="prev-header" onclick="plusSlides(-1)">&#10094;</a> <a
						class="next-header" onclick="plusSlides(1)">&#10095;</a>

					<!-- Image text -->
					<div class="caption-container">
						<p id="caption" style="word-wrap: break-word;">ten sp</p>
					</div>

					<!-- thumbnail select images -->
					<div class="row-title">

						<div class="lazy-details column demo cursor"
							data-original="/upload/${PHOTOS.get(0).getName()}"
							onclick="currentSlide(${NUM+1})"
							title="${POST.title}"></div>

					</div>

				</div>
				<br>
				<div class="vl-detail__sharing">
					<div class="vl-detail__sharing--row flex--element box-shadow">
						<div class="vl-detail__sharing--like flex--element">
							<svg class="vl-like__product" x="0px" y="0px"
								viewBox="0 0 1000 1000" enable-background="new 0 0 1000 1000"
								width='16px' height='16px' fill='#189eff' cursor='pointer'>
                  <g>
								<path
									d="M903.1,156.3l-19.4-19.3c-87-86.9-227.9-86.9-314.9,0l-69.6,69.6L427,132.7c-86.1-88-225.7-88-311.8,0l-19.1,19.6c-114.8,117.3-114.8,307.6,0,424.9l301.5,311.1c7.7,7.7,16.3,14,25.2,19.5c52.9,38.4,126.4,33.7,173.8-14.7l306.5-316.9C1019,460.2,1019,272.2,903.1,156.3z M871.1,544.2c-0.2,0.2-0.3,0.4-0.5,0.5L564.2,861.5c0,0,0.1-0.1,0.1-0.1l-0.2,0.2l0.1-0.1c-16.9,17.2-39.2,26.7-62.9,26.7c-18.8,0-36.8-5.9-52.1-17c-0.9-0.7-1.9-1.3-2.9-1.9c-6.8-4.2-12.3-8.4-16.7-12.8c-0.7-0.7-301.2-310.7-301.2-310.7c-47.4-48.5-73.4-112.7-73.4-181c0-68.4,26-132.7,73.2-180.9l19.2-19.6c33-33.8,77-52.4,123.6-52.4c46.6,0,90.5,18.6,123.6,52.4L467,238c8.4,8.6,19.9,13.5,32,13.6c0.1,0,0.2,0,0.2,0c12,0,23.5-4.8,31.9-13.2l69.6-69.6c33.5-33.5,78.1-52,125.6-52c47.4,0,92,18.5,125.6,52l19.4,19.4c47.5,47.5,73.7,110.7,73.7,178C944.9,433.4,918.7,496.6,871.1,544.2z"
									id="no" visibility='visible' opacity='1' /></g>
                  <path
									d="M500,923.9l416-414.3l-0.8-0.8c46.2-45.8,74.8-109.4,74.8-179.6c0-139.8-113.3-253-253-253c-69.9,0-133.1,28.3-178.9,74.1l-0.1,1.3L500,209.5l-57.9-57.9l-0.1-1.3c-45.8-45.8-109-74.1-178.9-74.1c-139.7,0-253,113.3-253,253c0,70.2,28.6,133.8,74.8,179.6l-0.8,0.8L500,923.9z"
									id="yes" width='16px' height='16px' fill="#01a185"
									cursor='pointer' visibility='hidden' opacity='0' />
                </svg>
							<div class="vl-detail__sharing--text">
								&nbsp;Thích&nbsp;:&nbsp;<span>7</span>
							</div>
						</div>
						<div class="vl-detail__sharing--share-to flex--element">
							<div class="vl-detail__sharing--share-to-text">chia sẻ
								&nbsp;</div>
							<ul class="list-inline">
								<li><a class="fa fa-leaf" href=""></a></li>
								<li><a class="fa fa-facebook" href=""></a></li>
								<li><a class="fa fa-google-plus" href=""></a></li>
								<li><a class="fa fa-instagram" href=""></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-8">
				<div class="vl-detail-product__info col-sm-12 box-shadow">
					<div class="vl-detail-product__info-product col-sm-7">
						<div class="vl-detail-product__info--header">
							<div id="alertHH" class="alert alert-danger"
								style="display: none;">
								<strong>Hết hàng</strong>.
							</div>
							<h1>${POST.title}</h1>
							<div class="vl-detail-product__info--header-brand">
								<h5 class="text-dark">
									Thương hiệu:&nbsp;<a href="">${POST.info}</a>
								</h5>
							</div>
						</div>
						<hr>
						<div class="vl-detail-product__info--body">
							<div class="vl-detail-product__info--body-price&coupon">
								<div class="vl-detail-product__info--body--price">
									<h2 style="color: #f3c500;">${POST.price}
										VND
									</h2>
								</div>
							</div>
						</div>
						<hr>
						<div class="vl-detail-product__info--footer">
							<div class="vl-detail-product__info--footer-quantity">
								<div class="vl-detail-product__info--footer-quantity-text">
									số lượng&nbsp;</div>
								<div
									class="vl-detail-product__info--footer-quantity-button col-sm-5">
									<div class="input-group">

										<input id="vl-detail-product__info--footer-quantity"
											class="form-control" type="text" name="" value="${POST.quantity}" disabled="disabled">
									</div>
								</div>

								<div class="vl-detail-product__info--footer-quantity-text">
									&nbsp;<span id="soluong">30</span>&nbsp; sản phẩm
								</div>
							</div>
							<div class="vl-detail-product__info--footer-status-seller">
								<div class="vl-detail-product__info--footer-status-text">
									Tình trạng:&nbsp;</div>
								<div class="vl-detail-product__info--footer-status">
									<h4 style="margin: 0;">${POST.status}</h4>
								</div>
							</div>
							<div class="vl-detail-product__info--footer-contact-seller">
								<%-- <button id="chatnow" class="btn btn-success chat-time"
									data-toggle="collapse" data-target="#chat" aria-expanded="true"
									style="display: <%= (user) ? '' : 'none' %>">Chat</button> --%>
							<%-- 	<a id="liennhe" href="/gui-mail/<%= product._id %>&1"
									class="btn btn-success" role="button">LiÃªn há» ngay</a> --%>
							</div>
						</div>
					</div>
					<div class="vl-detail-product__info-seller col-sm-5">
						<div>

							<div class="media">
								<div class="media-left media-top">
									<img src="/upload/user.png" class="media-object" style="width: 40px">
								</div>
								<div class="media-body">
									<h4 class="media-heading text-dark">${POST.getUser().getName()}</h4>
									<p class="text-dark">${POST.getUser().getPhone()}</p>
								</div>
							</div>

							<hr>
							<div class="text-dark">
								<!-- <ul>
                      <li>NÆ¡i: VPK CNTT</li>
                      <li><abbr title="Call me">Phone:&nbsp;</abbr>097*******</li>
                      <li>Email <a href="mailto:nnam@.gmail.com">VPK</a></li>
                    </ul> -->
								<!-- <input id="user_Sale" type="hidden"
									value="${POST.getUser().getName()}" size="1"
									readonly disabled> -->
								<table class="table table-bordered table-hover">
									<caption>
										<h4> ${POST.getUser().getName()}
											xin chào !!!
										</h4>
									</caption>
									<thead>
										<tr class="info">
											<th colspan="2">Thông tin:</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<th>Địa chỉ:</th>
											<td>${POST.getAddress().getAddress()} ${POST.getAddress().getWard().getName()} ${POST.getAddress().getWard().getCity().getName()}</td>
										</tr>
										<tr>
											<th>Phone:</th>
											<td>${POST.getUser().getPhone()}</td>
										</tr>
										<tr>
											<th>Email</th>
											<td><a href="mailto:${POST.getUser().getEmail()}">${POST.getUser().getEmail()}</a></td>
										</tr>
									</tbody>
								</table>

							</div>
						</div>
					</div>
				</div>
			</div>
			</div>
			</main>
		
		<br>
		<div class="vl-detail-product__info--product-details">
			<section class="box-shadow">
				<div class="vl-detail-product__info--product-details-text text-dark">
					<div class="panel  panel-primary">
						<div class="panel-heading lead" style="margin-bottom: 0;">Chi tiết sản phẩm</div>
						<div class="panel-body">
							<p>${POST.description}</p>
						</div>
					</div>
				</div>
			</section>
		</div>
		<br>
	</div>
	<br>
	<hr>

	<!--//single-page-->
<%@include file="/WEB-INF/views/include/footer.jsp" %>


	<script src="/js/view-detail.js"></script>
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- js -->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->

<script src="/js/lazyload.min.js"></script>
<script src="/js/bootstrap.min.js"></script>
<script src="/js/bootstrap-select.js"></script>
<script src="/js/hiddenporo.js"></script>
<script>
  $(document).ready(function(){$("div.lazy-product, img.lazy-logo, img.lazy-cate, div.lazy-sale, div.lazy-ngung, img.lazy-member, div.lazy-details, div.lazy-lq").lazyload({effect:"fadeIn"});var a=$("#first-disabled2");$("#special").on("click",function(){a.find("option:selected").prop("disabled",!0),a.selectpicker("refresh")}),$("#special2").on("click",function(){a.find("option:disabled").prop("disabled",!1),a.selectpicker("refresh")}),$("#basic2").selectpicker({liveSearch:!0,maxOptions:1}),function(b){b(function(){var c=b("body"),d=b("#menu");d.wrapInner("<div class=\"inner\"></div>"),d._locked=!1,d._lock=function(){return!d._locked&&(d._locked=!0,window.setTimeout(function(){d._locked=!1},350),!0)},d._show=function(){d._lock()&&c.addClass("is-menu-visible")},d._hide=function(){d._lock()&&c.removeClass("is-menu-visible")},d._toggle=function(){d._lock()&&c.toggleClass("is-menu-visible")},d.appendTo(c).on("click",function(e){e.stopPropagation()}).on("click","a",function(e){var f=b(this).attr("href");e.preventDefault(),e.stopPropagation(),d._hide();"#menu"==f||window.setTimeout(function(){window.location.href=f},350)}).append("<a id=\"close--menu\" class=\"close\" href=\"#menu\">Close</a>"),c.on("click","a[href=\"#menu\"]",function(e){e.stopPropagation(),e.preventDefault(),d._toggle()}).on("click",function(){d._hide()}).on("keydown",function(e){27==e.keyCode&&d._hide()})})}(jQuery)});
function GoogleMaps(){var a={lat:16.0773318,lng:108.1462627},b=new google.maps.Map(document.getElementById('map'),{zoom:15,center:a}),c=new google.maps.Marker({position:a,map:b})}
</script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAtTijdOrawSLXkwdTOT1MKXE7Y0-pVcFI&callback=GoogleMaps"></script>

</body>
</html>

</body>
</html>
