<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="en">

	<head>
	    <meta charset="utf-8">
	    <meta http-equiv="x-ua-compatible" content="ie=edge">
	    <title>Koparion – Book Shop Bootstrap 4 Template</title>
	    <meta name="description" content="">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">
		 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	    <!-- Favicon -->
		<link rel="shortcut icon" type="image/x-icon" href="img/favicon.png">
		<!--  -->
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
		<!-- icon -->
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">
		<!-- all css here -->
		<!-- bootstrap v3.3.6 css -->
		<link rel="stylesheet" href="css/bootstrap.min.css">
		<!-- animate css -->
		<link rel="stylesheet" href="css/animate.css">
		<!-- meanmenu css -->
		<link rel="stylesheet" href="css/meanmenu.min.css">
		<!-- owl.carousel css -->
		<link rel="stylesheet" href="css/owl.carousel.css">
		<!-- font-awesome css -->
		<link rel="stylesheet" href="css/font-awesome.min.css">
		<!-- flexslider.css-->
		<link rel="stylesheet" href="css/flexslider.css">
		<!-- chosen.min.css-->
		<link rel="stylesheet" href="css/chosen.min.css">
		<!-- style css -->
		<link rel="stylesheet" href="style.css">
		<!-- responsive css -->
		<link rel="stylesheet" href="css/responsive.css">
		<!-- modernizr css -->
		    <script src="js/vendor/modernizr-2.8.3.min.js"></script>
	</head>

<body class="about">

    <c:if test="${user == null }">
		<c:import url="login.jsp" />
	</c:if>
		<!--  thong bao start -->
		<div class="modal-msg" style="display: none;">
	
	        <div class="msg-header">
	            <h6 class="msg-icon"><i class="fas fa-exclamation-circle"></i></h6>
	            <p  class="text-light text-center msg-text">${msg }</p>
	        </div>
	    </div>
	    <% session.removeAttribute("msg"); %>
		<!-- thong bao end -->
	
   <!-- header-area-start -->
<header>
    <!-- header-top-area-start -->
  <div class="header-top-area">
      <div class="container">
          <div class="row">             
              <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                  <div class="account-area text-right">
                      <ul>
                          <li><a href="checkout.jsp">Checkout</a></li>
                          <li><a href="userController?action=logout">Đăng xuất</a></li>
                      </ul>
                  </div>
              </div>
          </div>
      </div>
  </div>
  <!-- header-top-area-end -->
  <!-- header-mid-area-start -->
  <div class="header-mid-area ptb-40">
      <div class="container">
          <div class="row">
              <div class="col-lg-3 col-md-3 col-sm-5 col-xs-12">
                  <div class="header-search">
                      <form action="#">
                          <input type="text" placeholder="tìm kiếm sản phẩm trong shop" />
                          <a href="#"><i class="fa fa-search"></i></a>
                      </form>
                  </div>
              </div>
              <div class="col-lg-6 col-md-6 col-sm-4 col-xs-12">
                  <div class="logo-area text-center logo-xs-mrg">
                      <a href="index.html"><img src="img/logo/logo.png" alt="logo" /></a>
                  </div>
              </div>
              <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                  <div class="my-cart">
                      <ul>
                          <li><a href="#"><i class="fa fa-shopping-cart"></i>Giỏ hàng</a>
                              <span>2</span>
                              <div class="mini-cart-sub">
                                  <div class="cart-product">
                                      <div class="single-cart">
                                          <div class="cart-img">
                                              <a href="#"><img src="img/product/1.jpg" alt="book" /></a>
                                          </div>
                                          <div class="cart-info">
                                              <h5><a href="#">Joust Duffle Bag</a></h5>
                                              <p>1 x £60.00</p>
                                          </div>
                                          <div class="cart-icon">
                                              <a href="#"><i class="fa fa-remove"></i></a>
                                          </div>
                                      </div>
                                      <div class="single-cart">
                                          <div class="cart-img">
                                              <a href="#"><img src="img/product/3.jpg" alt="book" /></a>
                                          </div>
                                          <div class="cart-info">
                                              <h5><a href="#">Chaz Kangeroo Hoodie</a></h5>
                                              <p>1 x £52.00</p>
                                          </div>
                                          <div class="cart-icon">
                                              <a href="#"><i class="fa fa-remove"></i></a>
                                          </div>
                                      </div>
                                  </div>
                                  <div class="cart-totals">
                                      <h5>Total <span>£12.00</span></h5>
                                  </div>
                                  <div class="cart-bottom">
                                      <a class="view-cart" href="cart.html">view cart</a>
                                      <a href="checkout.html">Check out</a>
                                  </div>
                              </div>
                          </li>
                      </ul>
                  </div>
              </div>
          </div>
      </div>
  </div>
  <!-- header-mid-area-end -->
  <!-- main-menu-area-start -->
    <div class="main-menu-area hidden-sm hidden-xs sticky-header-1" id="header-sticky">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="menu-area">
                        <nav>
                            <ul>
                                <li class="active"><a href="index.html">Home</a>

                                </li>
                                <li><a href="product-details.html">Book<i class="fa fa-angle-down"></i></a>
                                    <div class="mega-menu">
                                        <span>
										<a href="#" class="title">Jackets</a>
										<a href="shop.html">Tops & Tees</a>
										<a href="shop.html">Polo Short Sleeve</a>
										<a href="shop.html">Graphic T-Shirts</a>
										<a href="shop.html">Jackets & Coats</a>
										<a href="shop.html">Fashion Jackets</a>
									</span>
									                                        <span>
										<a href="#" class="title">weaters</a>
										<a href="shop.html">Crochet</a>
										<a href="shop.html">Sleeveless</a>
										<a href="shop.html">Stripes</a>
										<a href="shop.html">Sweaters</a>
										<a href="shop.html">hoodies</a>
									</span>
									                                        <span>
										<a href="#" class="title">Bottoms</a>
										<a href="shop.html">Heeled sandals</a>
										<a href="shop.html">Polo Short Sleeve</a>
										<a href="shop.html">Flat sandals</a>
										<a href="shop.html">Short Sleeve</a>
										<a href="shop.html">Long Sleeve</a>
									</span>
									                                        <span>
										<a href="#" class="title">Jeans Pants</a>
										<a href="shop.html">Polo Short Sleeve</a>
										<a href="shop.html">Sleeveless</a>
										<a href="shop.html">Graphic T-Shirts</a>
										<a href="shop.html">Hoodies</a>
										<a href="shop.html">Jackets</a>
									</span>
                                    </div>
                                </li>
                                <li><a href="product-details.html">Audio books<i class="fa fa-angle-down"></i></a>
                                    <div class="mega-menu">
                                        <span>
											<a href="#" class="title">Shirts</a>
											<a href="shop.html">Tops & Tees</a>
											<a href="shop.html">Sweaters </a>
											<a href="shop.html">Hoodies</a>
											<a href="shop.html">Jackets & Coats</a>
										</span>
										                                        <span>
											<a href="#" class="title">Tops & Tees</a>
											<a href="shop.html">Long Sleeve </a>
											<a href="shop.html">Short Sleeve</a>
											<a href="shop.html">Polo Short Sleeve</a>
											<a href="shop.html">Sleeveless</a>
										</span>
										                                        <span>
											<a href="#" class="title">Jackets</a>
											<a href="shop.html">Sweaters</a>
											<a href="shop.html">Hoodies</a>
											<a href="shop.html">Wedges</a>
											<a href="shop.html">Vests</a>
										</span>
										                                        <span>
											<a href="#" class="title">Jeans Pants</a>
											<a href="shop.html">Polo Short Sleeve</a>
											<a href="shop.html">Sleeveless</a>
											<a href="shop.html">Graphic T-Shirts</a>
											<a href="shop.html">Hoodies</a>
										</span>
                                    </div>
                                </li>
                                <li><a href="product-details.html">children’s books<i class="fa fa-angle-down"></i></a>
                                    <div class="mega-menu mega-menu-2">
                                        <span>
											<a href="#" class="title">Tops</a>
											<a href="shop.html">Shirts</a>
											<a href="shop.html">Florals</a>
											<a href="shop.html">Crochet</a>
											<a href="shop.html">Stripes</a>
										</span>
										                                        <span>
											<a href="#" class="title">Bottoms</a>
											<a href="shop.html">Shorts</a>
											<a href="shop.html">Dresses</a>
											<a href="shop.html">Trousers</a>
											<a href="shop.html">Jeans</a>
										</span>
										                                        <span>
											<a href="#" class="title">Shoes</a>
											<a href="shop.html">Heeled sandals</a>
											<a href="shop.html">Flat sandals</a>
											<a href="shop.html">Wedges</a>
											<a href="shop.html">Ankle boots</a>
										</span>
                                    </div>
                                </li>

                            </ul>
                        </nav>
                    </div>
                    <div class="safe-area">
                        <a href="product-details.html">sales off</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- main-menu-area-end -->
  <!-- mobile-menu-area-start -->
  <div class="mobile-menu-area hidden-md hidden-lg">
      <div class="container">
          <div class="row">
              <div class="col-lg-12">
                  <div class="mobile-menu">
                      <nav id="mobile-menu-active">
                          <ul id="nav">
                              <li><a href="index.html">Home</a>

                              </li>
                              <li><a href="product-details.html">Book</a>
                                  <ul>
                                      <li><a href="shop.html">Tops & Tees</a></li>
                                      <li><a href="shop.html">Polo Short Sleeve</a></li>
                                      <li><a href="shop.html">Graphic T-Shirts</a></li>
                                      <li><a href="shop.html">Jackets & Coats</a></li>
                                      <li><a href="shop.html">Fashion Jackets</a></li>
                                      <li><a href="shop.html">Crochet</a></li>
                                      <li><a href="shop.html">Sleeveless</a></li>
                                      <li><a href="shop.html">Stripes</a></li>
                                      <li><a href="shop.html">Sweaters</a></li>
                                      <li><a href="shop.html">hoodies</a></li>
                                      <li><a href="shop.html">Heeled sandals</a></li>
                                      <li><a href="shop.html">Polo Short Sleeve</a></li>
                                      <li><a href="shop.html">Flat sandals</a></li>
                                      <li><a href="shop.html">Short Sleeve</a></li>
                                      <li><a href="shop.html">Long Sleeve</a></li>
                                      <li><a href="shop.html">Polo Short Sleeve</a></li>
                                      <li><a href="shop.html">Sleeveless</a></li>
                                      <li><a href="shop.html">Graphic T-Shirts</a></li>
                                      <li><a href="shop.html">Hoodies</a></li>
                                      <li><a href="shop.html">Jackets</a></li>
                                  </ul>
                              </li>
                              <li><a href="product-details.html">Audio books</a>
                                  <ul>
                                      <li><a href="shop.html">Tops & Tees</a></li>
                                      <li><a href="shop.html">Sweaters</a></li>
                                      <li><a href="shop.html">Hoodies</a></li>
                                      <li><a href="shop.html">Jackets & Coats</a></li>
                                      <li><a href="shop.html">Long Sleeve</a></li>
                                      <li><a href="shop.html">Short Sleeve</a></li>
                                      <li><a href="shop.html">Polo Short Sleeve</a></li>
                                      <li><a href="shop.html">Sleeveless</a></li>
                                      <li><a href="shop.html">Sweaters</a></li>
                                      <li><a href="shop.html">Hoodies</a></li>
                                      <li><a href="shop.html">Wedges</a></li>
                                      <li><a href="shop.html">Vests</a></li>
                                      <li><a href="shop.html">Polo Short Sleeve</a></li>
                                      <li><a href="shop.html">Sleeveless</a></li>
                                      <li><a href="shop.html">Graphic T-Shirts</a></li>
                                      <li><a href="shop.html">Hoodies</a></li>
                                  </ul>
                              </li>
                              <li><a href="product-details.html">children’s books</a>
                                  <ul>
                                      <li><a href="shop.html">Shirts</a></li>
                                      <li><a href="shop.html">Florals</a></li>
                                      <li><a href="shop.html">Crochet</a></li>
                                      <li><a href="shop.html">Stripes</a></li>
                                      <li><a href="shop.html">Shorts</a></li>
                                      <li><a href="shop.html">Dresses</a></li>
                                      <li><a href="shop.html">Trousers</a></li>
                                      <li><a href="shop.html">Jeans</a></li>
                                      <li><a href="shop.html">Heeled sandals</a></li>
                                      <li><a href="shop.html">Flat sandals</a></li>
                                      <li><a href="shop.html">Wedges</a></li>
                                      <li><a href="shop.html">Ankle boots</a></li>
                                  </ul>
                              </li>

                          </ul>
                      </nav>
                  </div>
              </div>
          </div>
      </div>
  </div>
  <!-- mobile-menu-area-end -->
</header>

     <!-- breadcrumbs-area-start -->
   <div class="breadcrumbs-area mb-70">
       <div class="container">
           <div class="row">
               <div class="col-lg-12">
                   <div class="breadcrumbs-menu">
                       <ul>
                           <li><a href="shop.jsp">Trang chủ</a></li>
                           <li><a href="#" class="active">Tài khoản của tôi</a></li>
                       </ul>
                   </div>
               </div>
           </div>
       </div>
   </div>
   <!-- breadcrumbs-area-end -->
   <!-- my account start -->
   <div class="container min-vh-100">
       <div class="row">
       	
       		<div class="col-lg-2 col-md-3 col-sm-2">
               <div class="">
                   <h4 id='index-layout' index='${layout }'>tài khoản</h4>
                   <ul class="nav justify-content-left mt-5">

                       <li class="nav-item w-100 bg-light mb-2 py-1 card-li" >
                           <span style="cursor: pointer;" class="py-3 nav-link text-dark"><i class="fas fa-user mr-3"></i>Thông tin cá nhân</span>
                        </li>
                        <li class="nav-item w-100 bg-light mb-2 py-1 card-li" >
                            <span style="cursor: pointer;" class="py-3 nav-link text-dark "><i class="far fa-edit mr-3"></i>Địa chỉ giao hàng</span>
                        </li>
                         <li class="nav-item w-100 bg-light mb-2 py-1 card-li" >
                             <span style="cursor: pointer;" class="py-3 nav-link text-dark "><i class="fas fa-shopping-cart mr-3"></i>Đơn hàng</span>
                         </li>
                     </ul>                           
                 </div>
            </div>
            
           <div class="col-lg-10 col-md-9 col-sm-10">
               <h3 class="display-4">Xin chào, ${user.getUser_name() }</h3>
               <p class="mt-4">Từ Trang tổng quan tài khoản,<br> bạn có thể xem lịch sử về hoạt động của tài khoản gần đây và cập nhật thông tin tài khoản của mình.</p>

               <!-- info -->
               <div class="layout" style="display: none;">
                   <h3 class="font-weight-normal py-5">Thông tin tài khoản</h3>
                   <div class="row">
                       <div class="col-lg-6 col-md-12 col-sm-12">
                           <form action="userController" method="get"  id='form-thongtin-taikhoan'>

                               <div class="form-group">
                                   <label for="user_name">Họ tên</label>
                                   <input type="text" class="form-control" name="user_name" id="user_name" aria-describedby="helpId" required="required" value="${user.getUser_name() }">
                                   <small id="helpId" class="form-text text-muted"></small>
                               </div>
                               <div class="form-group">
                                   <label for="user_email">Email</label>
                                   <input type="email" class="form-control" name="user_email" id="user_email" aria-describedby="emailHelpId" required="required" value="${user.getUser_email()}" readonly="readonly" />
                                   <small id="emailHelpId" class="form-text text-muted"></small>
                               </div>

                               <div class="form-group">
                                   <label for="user_telephone">Số điện thoại</label>
                                   <input type="text" class="form-control" name="user_telephone" id="user_telephone" pattern="(\+84|0)\d{9,10}"  aria-describedby="helpId" value="${user.getUser_telephone() }" minlength="9" >
                                   <small id="helpId" class="form-text text-muted"></small>
                               </div>

                               <c:choose>
                                   <c:when test="${user.getUser_gender() eq '1' }">
                                       <div>
                                           <input type="radio" name="user_gender" id="user_gender" value="1" checked="checked"> Nam
                                       </div>
                                       <div>
                                           <input type="radio" name="user_gender" id="user_gender" value="0"> Nữ
                                       </div>
                                   </c:when>
                                   <c:when test="${user.getUser_gender() eq '0' }">
                                       <div>
                                           <input type="radio" name="user_gender" id="user_gender" value="1"> Nam
                                       </div>
                                       <div>
                                           <input type="radio" name="user_gender" id="user_gender" value="0" checked="checked"> Nữ
                                       </div>
                                   </c:when>

                                   <c:otherwise>
                                       <div>
                                           <input type="radio" name="user_gender" id="user_gender" value="1"> Nam
                                       </div>
                                       <div>
                                           <input type="radio" name="user_gender" id="user_gender" value="0"> Nữ
                                       </div>
                                   </c:otherwise>
                               </c:choose>

                               <div class="my-3">
                                   <label for="user_birthday">Ngày sinh</label>
                                   <input type="text" class="form-control" name="user_birthday" id="user_birthday" min="1930-01-01" placeholder="2020/01/01" value="${user.getUser_birthday() }" onfocus="(this.type='date')">
                                   <!--onblur="(this.type='text')"-->
                               </div>
                               <input type="hidden" name="action" value="update">
                               <input type="submit" value="lưu" class="btn btn-warning w-25 my-5" id='submit-thongtin-taikhoan'>
                               <a href="#recovery-pass" data-toggle="modal" class="ml-5">Thay đổi mật khẩu</a>
                           </form>
                       </div>

                   </div>
               </div>

               <!-- dia chi -->
               <div class="row mb-5 layout" style="display: none;">

                   <div class="col-lg-12 col-md-12 col-sm-12">
                       <h3 class="font-weight-normal py-5">Địa chỉ giao hàng</h3>
                       <span data-target="#modelId" data-toggle="modal" class="btn btn-danger add-address" >Thêm địa chỉ</span>
                   
                       <c:forEach var="i" items="${address_list }" varStatus="x">
	
                       <div class="row  border-bottom my-5">
							
							<div class='col-lg-9 col-md-9 col-sm-12'>
							
								<div class='col-lg-4 col-md-4 col-sm-3'>
									<p>Họ tên</p>
								</div>
								 <div class='col-lg-8 col-md-8 col-sm-9'>
								 	 <p id='_name'>${i.getAddress_user() }</p>
								 </div>
								 
								 <div class='col-lg-4 col-md-4 col-sm-3'>
									 <p>Sđt</p>
								</div>
								 <div class='col-lg-8 col-md-8 col-sm-9'>
								 	<p id='_number'> ${i.getAddress_telephone()}</p>
								 </div>
								 
								 <div class='col-lg-4 col-md-4 col-sm-3'>
									 <p>Đia chi</p>
								</div>
								 <div class="col-lg-8 col-md-8 col-sm-8 col-xs-9">
	                                <c:forTokens items="${i.getAddress_description() }" delims="|" var='arr'>
	                                    <span class='_description'>${arr },</span>
	                                </c:forTokens>
                          		  </div>
							</div>
							<div class='col-lg-3 col-md-3 col-sm-12'>
									
								<span data-target="#modelId" class="white-primary d-block mb-3 btn btn-primary w-50 edit" data-toggle="modal" id='edit-address' address_id='${i.getAddress_id()}'>Sửa</span>  
                                
                                <c:if test="${x.index > 0 }">
                              	  <span data-target="#modelConfirm" class="white-primary d-block mb-3 btn btn-danger w-50 remove" data-toggle="modal" address_id='${i.getAddress_id()}'>Xóa</span>                             	                       
                              	  <span class="white-primary d-block mb-3 btn btn-light w-50 default" address_id='${i.getAddress_id()}'>Mặc định</span>                             	
                                </c:if>                
							</div>                       		                         
                       </div>
                          
                      </c:forEach>
                   </div>
               </div>

               <!-- start table -->
               <div class="layout" style="display: none;">
                   <h3 class="font-weight-normal py-5">Đơn hàng gần đây</h3>
                    <table class="table table-hover">
                        <thead>
                            <tr>                     
                                <th>Sản phẩm</th>
                                <th>Ngày</th>                               
                                <th>tổng</th>
                                <th>trạng thái</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody class="">
                        
                        	<c:forEach var="i" items="${bill_list }" varStatus="x">
                        		<tr>                               
	                                <td>
	                                	<span>${i.getProductFirstName() }</span>
	                                	<c:set var="sl" value="${i.getProductQuantify() }"/>
	                                	<c:if test="${ (sl - 1) > 0 }">
	                                		<p>... và ${ sl-1 } sản phẩm khác</p>
	                                	</c:if>
	                                	
	                                </td>
	                                <td>${i.getBill_date() }</td>
	                                 <td>${ i.getBill_total() }đ</td>
	                                <td>${ i.getStatus_name() }</td>
	                                                            
	                                <td>
	                                    <div class="">
	                                        <a href="billController" class="btn btn-danger" title="Mua lần nữa"><i class="fas fa-cart-plus"></i></a>
	                                        <span  class="btn btn-info bill-detail card-li" bill-id='${i.getBill_id() }' title="Chi tiết"><i class="fas fa-info-circle"></i></span>
	                                        
	                                        <%--<a href="#" class="btn btn-light" title="Đánh giá"><i class="fas fa-comments"></i></a> --%>
	                                    </div>
	                                </td>
                         	   </tr>
                        		
                        	</c:forEach>                  
                        </tbody>
                    </table>
               </div>
               <!-- end table -->
				<!-- chi tiet đơn hàng start -->
                <div class="row mb-5 mt-5 border-top layout" style="display: none;">
                    <div class=" col-lg-8 pt-5">
                        <span  class="detail-back text-dark btn btn-light">
                        	<i class="fas fa-chevron-left "></i> 
                        	Quay lại</span>
                    </div>

                    <div class="col-lg-4 pt-5 ">
                        <h4 id='detail-bill_id' class="text-danger">ID Đơn hàng: </h4>
                        <p id='detail-bill_date'>Ngày đặt hàng: </p>                
                        
                        <div>                         
                            <h3 id='detail-bill_status' class="d-inline-block text-danger"></h3>
                        </div>
                    </div>

                    <div class="card bg-light col-lg-12 col-md-12 col-sm-12 col-xs-12 mt-5 ">
                        <div class="card-body ">
                            <h4 class="text-dark mb-5 ">Địa chỉ nhận hàng</h4>
                            <h5 class="card-title" id='detail-bill_name'></h5>
                            <p class="card-text" id='detail-bill_number'></p>
                            <p class="card-text" id='detail-bill_description'></p>
                        </div>
                    </div>

                    <table class="table mt-5 ">
                        <thead>
                            <tr>
                                <th>Sản phẩm</th>
                                <th></th>
                                <th>Giá</th>
                                <th>Giảm</th>
                                <th>Tạm tính</th>
                            </tr>
                        </thead>
                        <tbody id='table-body'>
                            
                        </tbody>
                    </table>
                    <div class="col-lg-12 col-md-12 col-sm-12 text-right mb-5">
                        <a href='' id='detail-product-buy' class="btn btn-danger w-25">Mua lại</a>
                    </div>
                    <div class="col-lg-8 col-md-8 col-sm-6 col-xs-6 text-right border-top">
                        <p>Tạm tính</p>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-6 col-xs-6 text-right border-top">
                        <p id='detail-bill-temp'>đ</p>
                    </div>
                    <div class="col-lg-8 col-md-8 col-sm-6 col-xs-6 text-right ">
                        <p>Phí vận chuyển</p>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-6 col-xs-6 text-right ">
                        <p id='detail-bill-costs'>đ</p>
                    </div>
                    <div class="col-lg-8 col-md-8 col-sm-6 col-xs-6 text-right ">
                        <p>Giảm phí vận chuyển</p>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-6 col-xs-6 text-right ">
                        <p id='detail-bill-costsSale'>đ</p>
                    </div>
                    <div class="col-lg-8 col-md-8 col-sm-6 col-xs-6 text-right ">
                        <p>Tổng tiền</p>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-6 col-xs-6 text-right ">
                        <h3 class="text-danger" id='detail-bill-total'>đ</h3>
                    </div>
                    <div class="col-lg-8 col-md-8 col-sm-6 col-xs-6 text-right mt-5 ">
                        <h4>Phương thức thanh toán</h4>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-6 col-xs-6 text-right mt-5 ">
                        <h4 id='detail-bill-payment'></h4>
                    </div>
                </div>
                <!-- chi tiet đơn hàng end -->
           </div>
           
         </div>
      </div>
               <!-- my account end -->
               <!-- modal edit and add address start -->
               <div class="modal fade" id="modelId" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
                   <div class="modal-dialog" role="document">
                       <div class="modal-content">
                           <div class="modal-header">
                               <h5 class="modal-title">Thông tin địa chỉ</h5>
                               <button type="button" class="close" data-dismiss="modal" aria-label="Close">
             				      <span aria-hidden="true">&times;</span>
          				     </button>
                           </div>
                           <div class="modal-body">
                               <form action="userController" method="GET" id='form-thongtin-diachi'>
                                   <div class="form-group">
                                       <input type="text" class="form-control address_user" name="address_user" placeholder="Họ tên" required>
                                       <small id="nameHelpId" class="form-text text-muted"></small>
                                   </div>
                                   <div class="form-group">
                                       <input type="text" class="form-control address_telephone" name='address_telephone' placeholder="Số điện thoại" pattern="(\+84|0)\d{9,10}" required minlength="9">
                                       <small id="telephoneHelpId" class="form-text text-muted"></small>
                                   </div>

                                   <select class="form-control mb-4 province"  name="province" required> 
               					       <option hidden value=''>Tỉnh/thành phố</option>
								     		          
         						     </select>

				                  <select class="form-control mb-4 district"  name='district' required>
				                      <option hidden  value="">Quận/huyện</option>     	            	        
				           	     </select>
				
				                  <select class="form-control mb-4 ward" name='ward' required>   
				                     <option hidden  value="">Phường/xã</option>                                 
				                 
				            	   </select>

                                   <textarea name="address_description" placeholder="Địa chỉ" class="w-100 address_description" wrap="soft" rows="5" required="required"></textarea>

                                   <div class="modal-footer">
                                       <input type='hidden' id='address_id' name= 'address_id' value=''>
                                       <input type='hidden' id='action' name='action' value="editAddress" />
                                       <input type="submit" class="btn btn-primary" value="Lưu">
                                   </div>
                               </form>
                           </div>
                       </div>
                   </div>
               </div>
               <!-- modal edit and add address end -->
               <!-- modal xac nhan start -->
               <div class="modal fade" id="modelConfirm" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
                   <div class="modal-dialog modal-sm" role="document">
                       <div class="modal-content">
                           <div class="modal-body">
                               Xác nhận xóa địa chỉ này
                           </div>
                           <div class="modal-footer">
                               <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
                               <span id='address-remove' type="button" class="btn btn-danger">xác nhận </span>
                           </div>
                       </div>
                   </div>
               </div>
               <!--  modal xac nhan end-->

               <!-- modal thay đổi mat khau start -->
               <!-- Modal -->
               <div class="modal fade" id="recovery-pass" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
                   <div class="modal-dialog" role="document">
                       <div class="modal-content">
                           <div class="modal-body">
                               <div class="form-group">

                                   <label for="pass-current">Mật khẩu hiện tại</label>
                                   <input type="password" name="pass-current" id="pass-current" class="form-control" aria-describedby="helpId" form="recovery-form" required>
                                   <small id="msg-pass-current" class="text-muted"></small>
                               </div>
                               <div class="form-group">
                                   <label for="password">Mật khẩu mới</label>
                                   <input type="password" name="password" id="password" class="form-control" aria-describedby="helpId" form="recovery-form"  required>
                                   <small id="helpId" class="text-muted"></small>
                               </div>
                               <div class="form-group">
                                   <label for="again-password">Xác minh mật khẩu</label>
                                   <input type="password" name="again-password" id="again-password" class="form-control" aria-describedby="helpId">
                                   <small id="msg-apw" class="text-muted"></small>
                               </div>
                           </div>
                           <div class="modal-footer">
                               <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
                               <form action="userController" method="get" id="recovery-form">                                 
                                   <input type='hidden' name="action" value="editPassword">
                                   <input type="submit" class="btn btn-primary" value='Xác nhận' />
                               </form>
                           </div>
                       </div>
                   </div>
               </div>
               <!-- modal thay đổi mat khau end -->

               <!-- footer-area-start -->
		<footer>
		    <!-- footer-top-start -->
		<div class="footer-top">
		    <div class="container">
		        <div class="row">
		            <div class="col-lg-12">
		                <div class="footer-top-menu bb-2">
		                    <nav>
		                        <ul>
		                            <li><a href="#">home</a></li>
		                            <li><a href="#">Enable Cookies</a></li>
		                            <li><a href="#">Privacy and Cookie Policy</a></li>
		                            <li><a href="#">contact us</a></li>
		                        </ul>
		                    </nav>
		                </div>
		            </div>
		        </div>
		    </div>
		</div>
		<!-- footer-top-start -->
		<!-- footer-mid-start -->
		<div class="footer-mid ptb-50">
		    <div class="container">
		        <div class="row">
		            <div class="col-lg-8 col-md-8 col-sm-12">
		                <div class="row">
		                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
		                        <div class="single-footer br-2 xs-mb">
		                            <div class="footer-title mb-20">
		                                <h3>Products</h3>
		                            </div>
		                            <div class="footer-mid-menu">
		                                <ul>
		                                    <li><a href="about.html">About us</a></li>
		                                    <li><a href="#">Prices drop </a></li>
		                                    <li><a href="#">New products</a></li>
		                                    <li><a href="#">Best sales</a></li>
		                                </ul>
		                            </div>
		                        </div>
		                    </div>
		                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
		                        <div class="single-footer br-2 xs-mb">
		                            <div class="footer-title mb-20">
		                                <h3>Our company</h3>
		                            </div>
		                            <div class="footer-mid-menu">
		                                <ul>
		                                    <li><a href="contact.html">Contact us</a></li>
		                                    <li><a href="#">Sitemap</a></li>
		                                    <li><a href="#">Stores</a></li>
		                                    <li><a href="register.html">My account </a></li>
		                                </ul>
		                            </div>
		                        </div>
		                    </div>
		                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
		                        <div class="single-footer br-2 xs-mb">
		                            <div class="footer-title mb-20">
		                                <h3>Your account</h3>
		                            </div>
		                            <div class="footer-mid-menu">
		                                <ul>
		                                    <li><a href="contact.html">Addresses</a></li>
		                                    <li><a href="#">Credit slips </a></li>
		                                    <li><a href="#"> Orders</a></li>
		                                    <li><a href="#">Personal info</a></li>
		                                </ul>
		                            </div>
		                        </div>
		                    </div>
		                </div>
		            </div>
		            <div class="col-lg-4 col-md-4 col-sm-12">
		                <div class="single-footer mrg-sm">
		                    <div class="footer-title mb-20">
		                        <h3>STORE INFORMATION</h3>
		                    </div>
		                    <div class="footer-contact">
		                        <p class="adress">
		                            <span>My Company</span> 42 avenue des Champs Elysées 75000 Paris France
		                        </p>
		                        <p><span>Call us now:</span> (+1)866-540-3229</p>
		                        <p><span>Email:</span> support@hastech.com</p>
		                    </div>
		                </div>
		            </div>
		        </div>
		    </div>
		</div>
		<!-- footer-mid-end -->
		<!-- footer-bottom-start -->
		<div class="footer-bottom">
		    <div class="container">
		        <div class="row bt-2">
		            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
		                <div class="copy-right-area">
		                    <p>Copyright ©<a href="#">Koparion</a>. All Right Reserved.</p>
		                </div>
		            </div>
		            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
		                <div class="payment-img text-right">
		                    <a href="#"><img src="img/1.png" alt="payment" /></a>
		                </div>
		            </div>
		        </div>
		    </div>
		</div>
		<!-- footer-bottom-end -->
		</footer>
		<!-- footer-area-end -->
		
		
		<!-- all js here -->
		<!-- jquery latest version -->
		<script src="js/vendor/jquery-1.12.0.min.js"></script>
		<!-- bootstrap js -->
		<script src="js/bootstrap.min.js"></script>
		<!-- owl.carousel js -->
		<script src="js/owl.carousel.min.js"></script>
		<!-- meanmenu js -->
		<script src="js/jquery.meanmenu.js"></script>
		<!-- wow js -->
		<script src="js/wow.min.js"></script>
		<!-- jquery.parallax-1.1.3.js -->
		<script src="js/jquery.parallax-1.1.3.js"></script>
		<!-- jquery.countdown.min.js -->
		<script src="js/jquery.countdown.min.js"></script>
		<!-- jquery.flexslider.js -->
		<script src="js/jquery.flexslider.js"></script>
		<!-- chosen.jquery.min.js -->
		<script src="js/chosen.jquery.min.js"></script>
		<!-- jquery.counterup.min.js -->
		<script src="js/jquery.counterup.min.js"></script>
		<!-- waypoints.min.js -->
		<script src="js/waypoints.min.js"></script>
		<!-- plugins js -->
		<script src="js/plugins.js"></script>
		<!-- main js -->
		    <script src="js/main.js"></script>
		</body>

</html>