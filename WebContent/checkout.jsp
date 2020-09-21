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

        <!-- Favicon -->
		<link rel="shortcut icon" type="image/x-icon" href="img/favicon.png">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">
	 	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
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
    <body class="checkout">
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
		<!-- header-area-start -->
        <header>
			<!-- header-top-area-start -->
			<div class="header-top-area">
				<div class="container">
					<div class="row">						
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="account-area text-right">
								<ul>
									<c:choose>
										<c:when test="${user ==null }">
											<li><a href="register.jsp">Đăng ký</a></li>																						
											<li><a href="userController?action=logout">Đăng nhập</a></li>
										</c:when>
									
										<c:otherwise>
											<li><a href="userController?action=account">Tài khoản</a></li>
											<li><a href="userController?action=logout">Đăng xuất</a></li>
										</c:otherwise>
									</c:choose>
									
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- header-top-area-end -->
		
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
										
										<li><a href="#">pages<i class="fa fa-angle-down"></i></a>
											<div class="sub-menu sub-menu-2">
												<ul>
													<li><a href="shop.html">shop</a></li>
													<li><a href="product-details.html">product-details</a></li>
													<li><a href="blog.html">blog</a></li>
													<li><a href="blog-details.html">blog-details</a></li>
													<li><a href="contact.html">contact</a></li>
													<li><a href="about.html">about</a></li>
													<li><a href="login.html">login</a></li>
													<li><a href="register.html">register</a></li>
													<li><a href="cart.html">cart</a></li>
													<li><a href="checkout.html">checkout</a></li>
													<li><a href="wishlist.html">wishlist</a></li>
													<li><a href="404.html">404 Page</a></li>
												</ul>
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
										<li><a href="product-details.html">Page</a>
											<ul>
												<li><a href="shop.html">Shop</a></li>
												<li><a href="product-details.html">product-details</a></li>
												<li><a href="blog.html">Blog</a></li>
												<li><a href="blog-details.html">blog-details</a></li>
												<li><a href="about.html">About</a></li>
												<li><a href="contact.html">Contact</a></li>
												<li><a href="checkout.html">Checkout</a></li>
												<li><a href="cart.html">Cart</a></li>
												<li><a href="login.html">Login</a></li>
												<li><a href="register.html">Register</a></li>
												<li><a href="wishlist.html">Wishlist</a></li>
												<li><a href="404.html">404 Page</a></li>
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
		<!-- header-area-end -->
		<!-- breadcrumbs-area-start -->
		<div class="breadcrumbs-area mb-70">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="breadcrumbs-menu">
							<ul>
								<li><a href="shop.jsp">Trang chủ</a></li>
								<li><a href="" class="active">Thanh toán</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- breadcrumbs-area-end -->
		<!-- entry-header-area-start -->
		<div class="entry-header-area">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="entry-header-title">
							<h2>Thanh toán</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- entry-header-area-end -->
		<!-- coupon-area-area-start -->
		<div class="coupon-area mb-70">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="coupon-accordion">
							<c:if test="${ user == null }">
								<h3>Bạn chưa đăng nhập?
									<span id="showlogin">Ấn vào đây để đăng nhập</span>
								</h3>
							</c:if>
							
							<div class="coupon-content" id="checkout-login">
								
								<div class="coupon-info">
									<p class="coupon-text">Nếu bạn chưa có tài khoản. Vui lòng <a href='register.jsp'>đăng ký</a> tài khoản</p>
									<form action="loginController"  method="post" class='form-login'>
										<p class="form-row-first">
											<label>email<span class="required">*</span></label>
											<input type="text" name='username' autocomplete="on">
										</p>
										<p class="form-row-last">
											<label>Mật khẩu  <span class="required">*</span></label>
											<input type="password" name='password' required="required" >
										</p>
										<p class="checkout-coupon">
											<input type="submit" value="Đăng nhập">											
										</p>
										<div class="mt-20 alert alert-success alert-dismissible login-false" >	
																		 
										 	 <strong class='alert-text'></strong>
										</div>
										
										<p class="lost-password">											
											<a href="#modelId-address" data-toggle="modal">Quên mật khẩu?</a>
										</p>
									</form>
								</div>
							</div>
							<c:if test="${user !=null }">
								<h3>Bạn có mã ưu đãi? <span id="showcoupon">Ấn vào đây để nhập mã.</span></h3>
							</c:if>
							
							<div class="coupon-checkout-content" id="checkout_coupon">
								<div class="coupon-info">
									<form action="#">
										<p class="checkout-coupon">
											<input type="text" placeholder="Mã ưu đãi">
											<input type="submit" value="Áp dụng">
										</p>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- coupon-area-area-end -->
		<c:if test="${user!=null }">
		<!-- checkout-area-start -->
		<div class="checkout-area mb-70">
			<div class="container">
				<div class="row">
					<form action="billController" method="post" id='form-add-bill'>
						<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
							<div class="checkbox-form">						
								<h3>Thông tin thanh toán</h3>
								<div class="row">
									
									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
											<a href='#address' data-toggle="collapse" id='option-address'>Thay đổi địa chỉ</a>
											<div id="address" class="collapse option-address-div">
												<div class='btn-add-address'>
													<span class='btn btn-default add-address' data-target="#modelId" data-toggle="modal" >Thêm địa chỉ mới</span>
												</div>
											   <div class='option-address-chooser'>	
											   
												  <c:forEach var="i" items="${ user.getAddressAll() }" begin="0" varStatus="first">
												   		<label>
												   			<c:choose>
												   			<c:when test="${ first.index == 0 }">
												   				<input type="radio" checked="checked" name="address_description" class='address-radio' value='${i.getAddress_id()}'>
												   			</c:when>
												   				
											   				 <c:otherwise>
											   					 <input type="radio" name="address_description" class='address-radio'  value='${i.getAddress_id() }'>
											   				 </c:otherwise>
												   			</c:choose>								
											   				
											   				<span class="getAddress_user">${i.getAddress_user() }</span> 
											   				<p class="to getAddress_telephone">${ i.getAddress_telephone() }</p> 
											   				<p class="to font-address getAddress_description">${i.getAddress_description() }</p> 
											   			</label>	
												   </c:forEach>									   		
										   												   			
											   </div>
											   <div class='btn-confirm-address'>
													<span class='btn btn-danger' id='btn-confirm-address-next'>Xác nhận</span>
													<span class='btn btn-default' id='btn-confirm-address-close'>Đóng</span>
												</div>
										  </div>
				
									</div>
									
									<c:forEach var="index" items="${ user.getAddressAll() }" begin="0" end="0">
										<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">	
											<div class="checkout-form-list">
												<label>Họ tên *</label>											
												<input type="text" readonly="readonly" id='checkout-address_user' value='${index.getAddress_user() }'>
											</div>
										</div>
										<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
											<div class="checkout-form-list">
												<label>Số điện thoại<span class="required">*</span></label>										
												<input type="text" readonly="readonly" id='checkout-address_telephone' value='${index.getAddress_telephone() }'/>
											</div>
										</div>																	
										<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
											<div class="checkout-form-list">									
												<input type="text"  readonly="readonly" id='checkout-address_description' value='${index.getAddress_description() }'>
											</div>
										</div>
									</c:forEach>
																																					
								</div>
																	
								<div class="order-notes">
									<div class="checkout-form-list">
										<label>Ghi chú về đơn hàng </label>
										<textarea rows="10" cols="30" id="checkout-mess" style="resize: none"></textarea>
									</div>									
								</div>
																				
							</div>
						</div>
						<div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
							<div class="your-order">
								<h3>Đơn hàng của bạn</h3>
								<div class="your-order-table table-responsive">
									<table>
										<thead>
											<tr>											
												<th class="product-name" >Sản phẩm</th>
												<th></th>
												<th class="product-total">Tổng</th>
											</tr>							
										</thead>
										<tbody>
											<c:forEach var="cart_model" items="${cart_model }">
												<c:set var="sp" value="${cart_model.value.getProd() }"/>
												<tr class="cart_item">
													<td class="product-thumbnail">
														<a href="productController?page=cart&product_id=${ sp.getProduct_id()}">
															<img src="img/product/${sp.getProduct_image() }" alt="san pham" />
														</a>
													</td>
													<td class="product-name">
														${sp.getProduct_name() } 
														<strong class="product-quantity"> × ${cart_model.value.getCart_quantify() }</strong>
													</td>
													<td class="product-total">
														<span class="amount">${cart_model.value.getPriceTotalFormat() } ₫</span>
													</td>
												</tr>
											</c:forEach>
																				
										</tbody>
										<tfoot >
											<tr class="cart-subtotal" >
												<th></th>
												<th >Tạm tính</th>
												<td><span class="amount">${ cart_model.getPriceTotal()} ₫</span></td>
											</tr>
											<tr class="cart-subtotal">
												<th></th>
												<th >Phí vận chuyển</th>
												<td><span class="amount">0 ₫</span></td>
											</tr>
											<tr class="order-total">
												<th></th>
												<th >Tổng</th>
												<td><strong><span class="amount">${cart_model.getPriceTotal() } ₫</span></strong>
												</td>
											</tr>								
										</tfoot>
									</table>
								</div>
								
								 <div class="order-payment">
	                                <h4>Phương thức thanh toán</h4>
	                                <input type="radio" name="" id="onl" class="payment-onl" checked><label for="onl">Thanh toán khi nhận hàng</label>
                           		 </div>
                            
								<div class="order-button-payment">
									<input type="submit" value="Đặt hàng">
								</div>
								
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
		<!-- checkout-area-end -->
		</c:if>
		<!--  modal quen mat khau start -->
		<div class="modal fade" id="modelId-address" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true" style="padding:50px">
	        <div class="modal-dialog" role="document">
	            <div class="modal-content">
	                <div class="modal-body">
	                   	 <form action="userController" method="get" class="forget-password">
		                     <div class="form-group">                          
		                        <label for="forget">Email</label>
		                        <input type="email" name="user_email" id="forget" class="form-control" aria-describedby="helpId" required>
		                        <small id="helpId" class="text-muted"></small>
		                    </div>                    	                      
	                       	<input type="hidden" name="action" value="forget">                                      
	                   		<button class="btn btn-primary confirm">Xác nhận</button>         			  
	                    </form>
	                </div>           
	            </div>
	        </div>
    	</div>
    <!--  modal quen mat khau end -->
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
                               <form action="userController" method="GET" id='checkout-form-add-address'>
                                   <div class="form-group">
                                       <input type="text" class="form-control address_user"  name="address_user" placeholder="Họ tên" required>                                    
                                   </div>
                                   <div class="form-group">
                                       <input type="text" class="form-control address_telephone"  name='address_telephone' placeholder="Số điện thoại" pattern="(\+84|0)\d{9,10}" required minlength="9">                                      
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
                                       <input type='hidden' id='action' name='action' value="addAddress" />
                                       <input type="submit" class="btn btn-primary" value="Lưu">
                                   </div>
                               </form>
                           </div>
                       </div>
                   </div>
               </div>
               <!-- modal edit and add address end -->
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
                                        <span>My Company</span>
                                        42 avenue des Champs Elysées 75000 Paris France
                                    </p>
                                    <p><span>Call us now:</span> (+1)866-540-3229</p>
                                    <p><span>Email:</span>  support@hastech.com</p>
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

