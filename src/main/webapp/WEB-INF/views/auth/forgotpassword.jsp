<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<!-- meta css info  -->
	<link rel="stylesheet" href="/css/style.css">
</head>
<body>
	<section>
				<div id="page-wrapper" class="sign-in-wrapper">
					<div class="graphs">
						<div class="sign-up">
							<h1></h1>
							<p class="creating">Có kinh nghiệm trong việc tạo ra các thiết kế sáng tạo, chúng tôi cung cấp các giải pháp thiết kế.</p>
							<h2>Thông tin cá nhân</h2>
							

						  <div class="modal fade in" onclick="hide(this)" role="dialog" style="display: block;">
						    <div class="modal-dialog modal-sm">
						      <div class="modal-content">
						        <div class="modal-header">
						          <h4 class="modal-title">Đặt lại mật khẩu</h4>
						        </div>
						        <div class="modal-body">
						          <p>Link để thiết lập lại mật khẩu của bạn đã được gửi đến địa chỉ email này., nhấn vào <a style="text-decoration: underline;" href="https://mail.google.com" target="_blank">đây</a> đăng nhập email của bạn để xác minh!.</p>
											<br>
											<p>- Sau 15 phút kể từ khi bạn chọn "Lấy" mà Email vẫn chưa được gửi đến hãy <a style="text-decoration: underline;" href="mailto:nnam1472@gmail.com">liên hệ</a> với chúng tôi để hỗ trợ bạn sớm nhất. Trân trọng!</p>
										</div>
						      </div>
						    </div>
						  </div>
							<div id="backdrop" class="modal-backdrop fade in"></div>
							<p>${errorMessage}</p>
							<p>${successMessage}</p>

							<form action="/auth/forgotPassword" method="post">
								<div class="sign-u">
									<div class="sign-up1">
										<h4>Địa chỉ Email* :</h4>
									</div>
									<div class="sign-up2">
										<input type="text" name="email" placeholder="Email" pattern="[A-Za-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}" required/>
									</div>
									<div class="clearfix"> </div>
								</div>
								<input type="hidden" name="_csrf" value="">
								<div class="sub_home">
									<div class="sub_home_left">
											<input type="submit" value="Lấy">
									</div>
									<div class="sub_home_right">
										<p>Quay lại <a href="/">Trang chủ</a></p>
									</div>
									<div class="clearfix"> </div>
								</div>
						</form>
						</div>
					</div>
				</div>
			<!--footer section start-->
				<footer class="diff">
				   <p class="text-center">© 2018 Chợ tốt Văn Lang. All Rights Reserved | Design by  <a href="mailto:w.a.f-group@gmail.com"> W.A.F Group</a></p>
				</footer>
	        <!--footer section end-->
		</section>

		<!-- js -->
		<!-- js -->
<script type="text/javascript" src="/js/jquery.min.js"></script>
<!-- js -->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://chototvanlang.herokuapp.com/socket.io/socket.io.js"></script>
<script src="/js/lazyload.min.js"></script>
<script src="/js/bootstrap.min.js"></script>
<script src="/js/bootstrap-select.js"></script>
<script src="/js/hiddenporo.js"></script>
<script>
  $(document).ready(function(){$("div.lazy-product, img.lazy-logo, img.lazy-cate, div.lazy-sale, div.lazy-ngung, img.lazy-member, div.lazy-details, div.lazy-lq").lazyload({effect:"fadeIn"});var a=$("#first-disabled2");$("#special").on("click",function(){a.find("option:selected").prop("disabled",!0),a.selectpicker("refresh")}),$("#special2").on("click",function(){a.find("option:disabled").prop("disabled",!1),a.selectpicker("refresh")}),$("#basic2").selectpicker({liveSearch:!0,maxOptions:1}),function(b){b(function(){var c=b("body"),d=b("#menu");d.wrapInner("<div class=\"inner\"></div>"),d._locked=!1,d._lock=function(){return!d._locked&&(d._locked=!0,window.setTimeout(function(){d._locked=!1},350),!0)},d._show=function(){d._lock()&&c.addClass("is-menu-visible")},d._hide=function(){d._lock()&&c.removeClass("is-menu-visible")},d._toggle=function(){d._lock()&&c.toggleClass("is-menu-visible")},d.appendTo(c).on("click",function(e){e.stopPropagation()}).on("click","a",function(e){var f=b(this).attr("href");e.preventDefault(),e.stopPropagation(),d._hide();"#menu"==f||window.setTimeout(function(){window.location.href=f},350)}).append("<a id=\"close--menu\" class=\"close\" href=\"#menu\">Close</a>"),c.on("click","a[href=\"#menu\"]",function(e){e.stopPropagation(),e.preventDefault(),d._toggle()}).on("click",function(){d._hide()}).on("keydown",function(e){27==e.keyCode&&d._hide()})})}(jQuery)});
function GoogleMaps(){var a={lat:10.762936,lng:106.693335},b=new google.maps.Map(document.getElementById('map'),{zoom:15,center:a}),c=new google.maps.Marker({position:a,map:b})}
</script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAtTijdOrawSLXkwdTOT1MKXE7Y0-pVcFI&callback=GoogleMaps"></script>

		<script type="text/javascript">
			function hide(e) {
				document.querySelector('div#backdrop').remove();
				e.classList.remove('in');
				e.style.display = 'none';
			}
		</script>

</body>
</html>
