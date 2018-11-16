<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <!-- meta css info  -->
 <link rel="stylesheet" href="./css/style.css">

</head>
<body>
  <div id="header_all" class="header">
    <div class="container">
      <div class="logo">
        <a href="/"><span><img class="img-responsive image-circle" src="../images/favicon.png" alt="logo" height="64" width="64" style="float: left;">Chợ Tốt</span>&nbsp;Văn Lang</a>
      </div>
      <div class="header-right" style="padding: 20px;">
        <div class="dropdown" style="width: fit-content; margin: 0 auto;">
          <button class="btn btn-success dropdown-toggle" type="button" data-toggle="dropdown">Xin chào&nbsp;&nbsp;^^&nbsp;
          <span class="caret"></span></button>
          <ul class="dropdown-menu">
         
              <li><a class="" href="/thong-tin-ca-nhan">Thông tin tài khoản</a></li>
              <li class="divider"></li>
              <li><a class="" href="/dang-xuat">Thoát</a></li>
           
              <li><a class="" href="/dang-nhap">Đăng nhập</a></li>
              <li class="divider"></li>
              <li><a class="" href="/dang-ky">Đăng ký</a></li>
         
          </ul>
        </div>
      </div>
    </div>
  </div>
  
  <!-- Navbar -->
  
  <nav id="open--menu"><ul><li><a href="#menu">Menu</a></li></ul></nav>
  
  <nav id="menu">
    <h2 id="h2--menu">Menu</h2>
    <ul>
      <li><a href="/">Trang chủ</a></li>
      <li><a href="/danh-muc/5af85f65419cadab24fbc6ad">Danh mục</a></li>
      <li><a href="/kenh-nguoi-ban">Kênh Người Bán</a></li>
      <li><a href="/gioi-thieu">Giới thiệu</a></li>
      <li><a href="/lien-he">Liên hệ</a></li>
    </ul>
  </nav>
  

  <div class="main-banner banner text-center">
    <!-- <div class="container">
      <h1>Chào mừng bạn   <span class="segment-heading">    đến với trang </span> mua sắm online ChoTotVL</h1>
      <p>Olala</p>
    </div> -->
  </div>
  

  <div class="gap-multi"></div>

  <div class="container">
    <div class="row">
      <main>
        <div class="main-breadcrumb col-sm-12">
          <ol class="breadcrumb">
            <li><a href="/">Trang chủ</a></li>
            <li><a href="/danh-muc/<%= all_typeid %>">Danh mục</a></li>
            <li class="active"><a href="/danh-muc/">try</a></li>
            <li class="active">name product/li>
          </ol>
        </div>
        <div class="col-sm-4">
          <div class="vl-detail__imgs box-shadow">
            <!-- Full-width images with number text -->
            
            <div class="mySlides">
              <div id="id_img" style="Background: url('') center center / cover no-repeat;"></div>
              <div class="numbertext">hf</div>
            </div>
           

            <!-- Next and previous buttons -->
            <a class="prev-header" onclick="plusSlides(-1)">&#10094;</a>
            <a class="next-header" onclick="plusSlides(1)">&#10095;</a>

            <!-- Image text -->
            <div class="caption-container">
              <p id="caption" style="word-wrap:break-word;">ten sp</p>
            </div>

            <!-- thumbnail select images -->
            <div class="row-title">
            
            </div>

          </div><br>
          <div class="vl-detail__sharing">
            <div class="vl-detail__sharing--row flex--element box-shadow">
              <div class="vl-detail__sharing--like flex--element">
                <svg class="vl-like__product" x="0px" y="0px" viewBox="0 0 1000 1000" enable-background="new 0 0 1000 1000" width='16px' height='16px' fill='#189eff' cursor='pointer'>
                  <g><path d="M903.1,156.3l-19.4-19.3c-87-86.9-227.9-86.9-314.9,0l-69.6,69.6L427,132.7c-86.1-88-225.7-88-311.8,0l-19.1,19.6c-114.8,117.3-114.8,307.6,0,424.9l301.5,311.1c7.7,7.7,16.3,14,25.2,19.5c52.9,38.4,126.4,33.7,173.8-14.7l306.5-316.9C1019,460.2,1019,272.2,903.1,156.3z M871.1,544.2c-0.2,0.2-0.3,0.4-0.5,0.5L564.2,861.5c0,0,0.1-0.1,0.1-0.1l-0.2,0.2l0.1-0.1c-16.9,17.2-39.2,26.7-62.9,26.7c-18.8,0-36.8-5.9-52.1-17c-0.9-0.7-1.9-1.3-2.9-1.9c-6.8-4.2-12.3-8.4-16.7-12.8c-0.7-0.7-301.2-310.7-301.2-310.7c-47.4-48.5-73.4-112.7-73.4-181c0-68.4,26-132.7,73.2-180.9l19.2-19.6c33-33.8,77-52.4,123.6-52.4c46.6,0,90.5,18.6,123.6,52.4L467,238c8.4,8.6,19.9,13.5,32,13.6c0.1,0,0.2,0,0.2,0c12,0,23.5-4.8,31.9-13.2l69.6-69.6c33.5-33.5,78.1-52,125.6-52c47.4,0,92,18.5,125.6,52l19.4,19.4c47.5,47.5,73.7,110.7,73.7,178C944.9,433.4,918.7,496.6,871.1,544.2z" id="no" visibility='visible' opacity='1'/></g>
                  <path d="M500,923.9l416-414.3l-0.8-0.8c46.2-45.8,74.8-109.4,74.8-179.6c0-139.8-113.3-253-253-253c-69.9,0-133.1,28.3-178.9,74.1l-0.1,1.3L500,209.5l-57.9-57.9l-0.1-1.3c-45.8-45.8-109-74.1-178.9-74.1c-139.7,0-253,113.3-253,253c0,70.2,28.6,133.8,74.8,179.6l-0.8,0.8L500,923.9z" id="yes" width='16px' height='16px' fill="#01a185" cursor='pointer' visibility='hidden' opacity='0'/>
                </svg>
                <div class="vl-detail__sharing--text">
                  &nbsp;thích&nbsp;:&nbsp;<span>7</span>
                </div>
              </div>
              <div class="vl-detail__sharing--share-to flex--element">
                <div class="vl-detail__sharing--share-to-text">
                  chia sẻ &nbsp;
                </div>
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
                <div id="alertHH" class="alert alert-danger" style="display: none;">
                  <strong>Hết hàng</strong>.
                </div>
                <h1><%= product.Product_Name %></h1>
                <div class="vl-detail-product__info--header-brand">
                  <h5 class="text-dark">Thương hiệu:&nbsp;<a href="">re</a></h5>
                </div>
              </div>
              <hr>
              <div class="vl-detail-product__info--body">
                <div class="vl-detail-product__info--body-price&coupon">
                  <div class="vl-detail-product__info--body--price">
                    <h2 style="color: #f3c500;"> ₫</h2>
                    <div class="vl-detail-product__info--body--coupon">
                      <h4>Hello Coupon!!!</h4>
                    </div>
                  </div>
                </div>
              </div>
              <hr>
              <div class="vl-detail-product__info--footer">
                <div class="vl-detail-product__info--footer-quantity">
                  <div class="vl-detail-product__info--footer-quantity-text">
                    số lượng&nbsp;
                  </div>
                  <div class="vl-detail-product__info--footer-quantity-button col-sm-5">
                    <div class="input-group">
                      <div class="input-group-btn">
                        <button id="sub" class="btn btn-default" type="button" name="button">-</button>
                      </div>

                      <input id="vl-detail-product__info--footer-quantity" class="form-control" type="text" name="" value="1">

                      <div class="input-group-btn">
                        <button id="add" class="btn btn-default" type="button" name="button">+</button>
                      </div>
                    </div>
                  </div>

                  <div class="vl-detail-product__info--footer-quantity-text">
                    &nbsp;<span id="soluong">30</span>&nbsp; có sẵn
                  </div>
                </div>
                <div class="vl-detail-product__info--footer-status-seller">
                  <div class="vl-detail-product__info--footer-status-text">
                    Tình trạng:&nbsp;
                  </div>
                  <div class="vl-detail-product__info--footer-status">
                    <h4 style="margin: 0;">gg</h4>
                  </div>
                </div>
                <div class="vl-detail-product__info--footer-contact-seller">
                  <button id="chatnow" class="btn btn-success chat-time" data-toggle="collapse" data-target="#chat" aria-expanded="true" style="display: <%= (user) ? '' : 'none' %>">Chat</button>
                  <a id="liennhe" href="/gui-mail/&1" class="btn btn-success" role="button">Liên hệ ngay</a>
                </div>
              </div>
            </div>
            <div class="vl-detail-product__info-seller col-sm-5">
              <div>

                <div class="media">
                  <div class="media-left media-top">
                    <img src="../images/img.jpg" class="media-object" style="width:60px">
                  </div>
                  <div class="media-body">
                    <h4 class="media-heading text-dark"></h4>
                    <p class="text-dark"></p>
                  </div>
                </div>

                <hr>
                <div class="text-dark">
                    <!-- <ul>
                      <li>Nơi: VPK CNTT</li>
                      <li><abbr title="Call me">Phone:&nbsp;</abbr>097*******</li>
                      <li>Email <a href="mailto:nnam@.gmail.com">VPK</a></li>
                    </ul> -->
                  <input id="user_Sale" type="hidden" value="" size="1" readonly disabled>
                    <table class="table table-bordered table-hover">
                      <caption><h4> xin chào !!! </h4></caption>
                      <thead>
                        <tr class="info">
                          <th colspan="2">Thông tin:</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <th>Nơi:</th>
                          <td>VPK CNTT</td>
                        </tr>
                        <tr>
                          <th>Phone:</th>
                          <td><%= seller.User.Phone %></td>
                        </tr>
                        <tr>
                          <th>Email</th>
                          <td><a href="mailto:></a></td>
                        </tr>
                      </tbody>
                    </table>

                </div>
              </div>
            </div>
          </div>
        </div>
      </main>
    </div><br>
    <div class="vl-detail-product__info--product-details">
      <section class="box-shadow">
        <div class="vl-detail-product__info--product-details-text text-dark">
          <div class="panel  panel-primary">
            <div class="panel-heading lead" style="margin-bottom: 0;">Chi tiết sản phẩm</div>
            <div class="panel-body">
              <p><%= product.Description %></p>
            </div>
          </div>
        </div>
      </section>
    </div><br>
    <div class="vl-detail-product__info-product--same">
      <section>
        <div class="text-dark flex--element flex-align-center">
          <h3>CÁC SẢN PHẨM KHÁC CỦA </h3>
          <!-- <span class="text-primary"><a href="#">Xem tất cả</a></span> -->
        </div>
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
          <!-- Wrapper for slides -->
          <div class="carousel-inner">
        
<!-- 
            <div class="item>">
              <div class="row">


                <div class="col-sm-6 col-md-3">
                  <a href="/chi-tiet-san-pham/<%= pos._id %>">
                    <div class="thumbnail select">
                      <img class="lazy-lq" data-original="" alt="">
                      <div class="caption">
                        <h3></h3>
                      </div>
                    </div>
                  </a>
                </div>

              </div>
            </div> -->
            
                <div class="item">
                  <div class="row">

            
                    <div class="col-sm-6 col-md-3">
                      <a href="/chi-tiet-san-pham/">
                        <div class="thumbnail select">
                          <div class="lazy-lq img-thum" data-original="" alt=""></div>
                          <div class="caption">
                            <h3> sp1</h3>
                          </div>
                        </div>
                      </a>
                    </div>
                 

                  </div>
                </div>
           
          <!-- Left and right controls -->
          <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>
       </div>
      </section>
    </div>
  </div><br><hr>

  <!--//single-page-->
  <footer>
    <div id="footer-all">
      <div>
        <div class="foo-grids">
          <div class="col-md-6 footer-grid footer-top">
            <div class="col-sm-offset-3 col-sm-7">
              <!-- <a href="/"><img class="lazy-logo" style="max-width: 79%;" data-original="../images/chotot.png" alt="Logo"></a> -->
              <h4 class="footer-head">Liên hệ</h4>
              <span class="hq">Trụ sở chính</span>
              <address>
                <ul class="location">
                  <li><span class="glyphicon glyphicon-map-marker"></span></li>
                  <li>LẦU 7 VĂN PHÒNG KHOA CNTT Đại học Văn Lang</li>
                  <div class="clearfix"></div>
                </ul>
                <ul class="location">
                  <li><span class="glyphicon glyphicon-earphone"></span></li>
                  <li>+0 561 111 235</li>
                  <div class="clearfix"></div>
                </ul>
                <ul class="location">
                  <li><span class="glyphicon glyphicon-envelope"></span></li>
                  <li><a href="mailto:chototvlu@example.com">chototvlu@example.com</a></li>
                  <div class="clearfix"></div>
                </ul>
              </address>
            </div>
          </div>
          <div class="col-md-6 footer-grid center">
            <div class="row"><div id="map" style="width:100%;height:45vh;"></div></div>
          </div>
          <div class="clearfix"></div>
        </div>
      </div>
    </div>
    <div class="footer-bottom text-center">
    <div class="container">
      <div class="footer-logo">
        <a href="/"><span>Chợ Tốt</span>&nbsp;Văn Lang</a>
      </div>
      <div class="footer-social-icons">
        <ul>
          <li><a class="facebook" href="#"><span>Facebook</span></a></li>
          <li><a class="twitter" href="#"><span>Twitter</span></a></li>
          <li><a class="flickr" href="#"><span>Flickr</span></a></li>
          <li><a class="googleplus" href="#"><span>Google+</span></a></li>
          <li><a class="dribbble" href="#"><span>Dribbble</span></a></li>
        </ul>
      </div>
      <div class="copyrights">
        <p> © 2018 Chợ tốt Văn Lang. All Rights Reserved |&nbsp;<span id="Id_online"></span>&nbsp;| Design by  <a href="mailto:w.a.f-group@gmail.com"> W.A.F Group</a></p>
      </div>
      <div class="clearfix"></div>
    </div>
  </div>

  <div class="text-center pull-right hello top hidden-xs" title="Lên TOP">
    <span>
        <i class="fa fa-angle-double-up" aria-hidden="true"></i>
    </span>
  </div>


    <div class="text-center pull-right hello caht" data-toggle="collapse" data-target="#chat" aria-expanded="true" title="Tính năng đang được phát triển">
      <span>
        <i class="fa fa-users" aria-hidden="true"></i>
      </span>
    </div>
 
    <div class="text-center pull-right hello caht" data-toggle="collapse" data-target="#chat" aria-expanded="true" title="Tính năng đang được phát triển">
      <span>
        <i class="fa fa-users" aria-hidden="true"></i>
      </span>
    </div>
    
      <div class="text-center pull-right hello">
        <a href="/admin/dashboard">
          <span>
            <i class="fa fa-user-secret" aria-hidden="true"></i>
          </span>
        </a>
      </div>
 
  <div id="chat" class="col-sm-offset-8 col-sm-4 navbar-fixed-bottom collapse">
   
      <input id="userCon" type="hidden" value="" size="1" readonly disabled>
      
      <div class="col-sm-12">
        <!-- <div class="panel panel-success">
          <div class="panel-heading" data-toggle="collapse" data-target="#chat" aria-expanded="false" style="cursor: pointer;">Chat
            <span class="pull-right"><i class="fa fa-angle-down" aria-hidden="true"></i></span>
          </div>
          <div class="panel-body" style="padding-bottom: 0;">
            <div class="col-sm-3" style="height: 30vh; overflow-y: auto;">
              <div class="row" style="padding-right: 7px;">
                <div id="roomschat" class="contact-chat"></div>
              </div>
            </div>
            <div id="scroll-chat" class="col-sm-9" style="height: 30vh;overflow-y: auto;">
              <div id="chat-form">

              </div>
            </div>
          </div>
          <div class="panel-body" style="padding-top: 0;">
            <hr>
            <div id="wait"></div>
            <div class="input-group">
              <input type="text" id="mes--chat" class="form-control" placeholder="Chat ...">
              <div class="input-group-btn">
                <button class="btn btn-default" id="send-mes" type="button">
                  <i class="fa fa-paper-plane-o" aria-hidden="true"></i>
                </button>
              </div>
            </div>
          </div>
        </div> -->
      </div>
      
        <div class="table-responsive well">
          <table class="table table-bordered table-hover">
            <thead>
               <tr>
                 <th colspan="2" class="text-danger">Tài khoản chưa được kích hoạt
                <span style="cursor: pointer;" data-toggle="collapse" data-target="#chat" aria-expanded="false" class="pull-right"><i class="fa fa-times-circle-o" aria-hidden="true"></i></span>
                 </th>
               </tr>
               <tr>
                 <th colspan="2">Vui lòng liên hệ</th>
               </tr>
             </thead>
             <tbody>
               <tr>
                 <td>Email</td>
                 <td><a href="mailto:chototvlu@gmail.com">Chototvl@gmail.com</a></td>
               </tr>
               <tr>
                 <td>Số điện thoại</td>
                 <td>0909090909</td>
               </tr>
               <tr>
                 <td>VPK</td>
                 <td>LẦU 7 VĂN PHÒNG KHOA CNTT Đại học Văn Lang</td>
               </tr>
             </tbody>
          </table>
        </div>
     
      <div class="pull-right col-sm-5 well">
        <a href="/dang-nhap">Vui lòng đăng nhập</a>
      </div>
   

  </div>

</footer>


  <!-- js -->
 <%--  <%- include ../partials(css-js)/foot %> --%>
  <script src="./js/view-detail.js"></script>

</body>
</html>
