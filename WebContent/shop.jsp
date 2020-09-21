<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    
    <title>Koparion – Book Shop Bootstrap 4 Template</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="img/favicon.png">
	<!--  -->
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

<body class="shop">
	<c:if test="${product_list == null|| category_list == null ||producer_list==null  }">
		<c:import url="run"/>
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
                               	<c:choose>
                               		<c:when test="${user !=null }">
                               			<li><a href="userController?action=account">tài khoản</a></li>
		                                <li><a href="checkout.jsp">Checkout</a></li>
		                                <li><a href="userController?action=logout">Đăng xuất</a></li>
                               		</c:when>
                               		
                               		<c:when test="${user == null }">
                               			<li><a href="register.jsp">đăng ký</a></li>
		                                <li><a href="checkout.jsp">Checkout</a></li>
		                                <li><a href="login.jsp">Đăng nhập</a></li>
                               		</c:when>
                               	</c:choose>
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
                                <a href="#"><i class="fa fa-search" style=" transform: translateY(50%);"></i></a>
                            </form>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-4 col-xs-12">
                        <div class="logo-area text-center logo-xs-mrg">
                            <a href="shop.jsp"><img src="img/logo/logo.png" alt="logo" /></a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                        <div class="my-cart">
                            <ul>
                                <li class='my-cart-item'><a href="#"><i class="fa fa-shopping-cart"></i>Giỏ hàng</a>
                                
                                	<c:set var="number_cart" value="${user.getCartTotal() }"/> <%-- lấy số sản phẩm trong giỏ hàng --%>
                                	<c:if test="${number_cart>0 }">					
                                		 <span class='cart_quantify-product'>${ number_cart }</span>
                                	</c:if>
                                   
                                    <div class="mini-cart-sub">
                                       <c:choose>
                                       	<c:when test="${user !=null }">
                                       	                                  		
	                                       	<div class="cart-product">
	                                       		
	                                       		<c:forEach var="cart" items="${cart_model}" begin="0" end="2">
	                                       			
	                                       			<div class="single-cart">
		                                                <div class="cart-img">
		                                                    <a  href="productController?page=shop&product_id=${ cart.value.getProd().getProduct_id()}">
		                                             
		                                                    	<img src="img/product/${cart.value.getProd().getProduct_image() }" alt="book" />
		                                                    </a>
		                                                </div>
		                                                <div class="cart-info">
		                                                    <h5><a href="productController?page=shop&product_id=${ cart.value.getProd().getProduct_id()}">${cart.value.getProd().getProduct_name() }</a></h5>
		                                                    <p class='cart-info-price'> ${cart.value.getCart_quantify() } * ${  cart.value.getProd().getProductSaleFormat() } đ</p>
		                                                                                                      		
		                                                </div>
		                                                <div class="cart-icon">
		                                                    <a href="" product-id='${cart.value.getProd().getProduct_id() }'><i class="fa fa-remove"></i></a>
		                                                </div>
	                                           		 </div>                                            	
	                                       		</c:forEach>                                         
	                                          	
	                                        </div>
	                                        
                                        <div class="cart-totals">                 
                                     	   <c:set var='total' value="${cart_model.getPriceTotal() }"/>                       
                                            <h5 style="font-family: Arial, Helvetica, sans-serif;">Tổng <span>${ total } đ</span></h5>
                                        </div>
                                        <div class="cart-bottom">
                                            <a class="view-cart" href="cart.jsp">xem giỏ hàng</a>
                                            <a href="checkout.jsp">Thanh toán</a>
                                        </div>
                                       	</c:when>
                                       	
                                       	<c:when test="${user == null }">
                                       	   <h4>bạn chưa đăng nhập</h4>
                                     	   <div class="cart-bottom">
                                          	  <a class="view-cart" href="login.jsp">đăng nhập</a>
                                         	   <a href="register.jsp">đăng ký</a>
                                     	   </div>
                                       	</c:when>
                                       </c:choose>                            
                                        
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
                                    <li><a href="index.html">Trang chủ</a>
                                        
                                    </li>
                                    <li class="active"><a href="product-details.html">Sách<i class="fa fa-angle-down"></i></a>
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
                                    <li><a href="product-details.html">Audio<i class="fa fa-angle-down"></i></a>
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
                                    <li><a href="product-details.html">Sách trẻ em<i class="fa fa-angle-down"></i></a>
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
                            <a href="product-details.html">Giảm giá</a>
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
                                    <li><a href="index.html">Home</a></li>
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
    <!-- header-area-end -->
    
    <!-- breadcrumbs-area-start -->
    <div class="breadcrumbs-area mb-70">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumbs-menu">
                        <ul>                         
                            <li><a href="shop.jsp" class="active">shop</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- breadcrumbs-area-end -->
    <!-- shop-main-area-start -->
    <div class="shop-main-area mb-70">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-3 col-sm-4 col-xs-12">
                    <div class="shop-left">
                        <div class="section-title-5 mb-30">
                            <h2>Danh mục</h2>
                        </div>
                        <div class="left-title mb-20">
                            <h4>Thể loại</h4>
                        </div>
                        <div class="left-menu mb-30">
                            <ul>
                            	<c:forEach var="index" items="${ category_list }">
                                	<li><a href="controller_direction?page=shop&category_id=${index.getCategory_id() }" class="category_list">${index.getCategory_name() }</a></li>
                                </c:forEach>
                               
                            </ul>
                        </div>

                        <div class="left-title mb-20">
                            <h4>Nhà xuất bản</h4>
                        </div>
                        <div class="left-menu mb-30">
                            <ul>
                         	   <c:forEach var="index" items="${producer_list }">
                       	  	 	  <li><a href="controller_direction?page=shop&producer_id=${index.getProducer_id() }" class="producer_list">${index.getProducer_name() }</a></li>
                        	   </c:forEach>           
                            </ul>
                        </div>
                        <div class="left-title mb-20">
                            <h4>Giá</h4>
                        </div>
                        <div class="left-menu mb-30">
                            <ul>
                                <li><a href="controller_direction?page=shop&product_price=thap">0 - 100000đ</a></li>
                                <li><a href="controller_direction?page=shop&product_price=trungbinh">100000 - 200000đ</a></li>
                                <li><a href="controller_direction?page=shop&product_price=vua">200000 - 400000đ</a></li>                               
                                <li><a href="controller_direction?page=shop&product_price=cao">trên 400000đ</a></li>
                            </ul>
                        </div>
                        
                        <div class="left-title mb-20">
                            <input type="submit" class="btn-filter" value="lọc" />
                        </div>
    <%-- end form filter --%>                    
                        <div class="left-title mb-20">
                            <h4>Xem thêm</h4>
                        </div>
                        <div class="random-area mb-30">
                            <div class="product-active-2 owl-carousel">
                                <div class="product-total-2">
                                    <div class="single-most-product bd mb-18">
                                        <div class="most-product-img">
                                            <a href="#">
                                          	  <img src="img/product/21.jpg" alt="book" />
                                            </a>
                                        </div>
                                        <div class="most-product-content">
                                            <div class="product-rating">
                                                <ul>
                                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                </ul>
                                            </div>
                                            <h4><a href="#">Endeavor Daytrip</a></h4>
                                            <div class="product-price">
                                                <ul>
                                                    <li>$30.00</li>
                                                    <li class="old-price">$33.00</li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-most-product bd mb-18">
                                        <div class="most-product-img">
                                            <a href="#"><img src="img/product/21.jpg" alt="book" /></a>
                                        </div>
                                        <div class="most-product-content">
                                            <div class="product-rating">
                                                <ul>
                                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                </ul>
                                            </div>
                                            <h4><a href="#">Savvy Shoulder Tote</a></h4>
                                            <div class="product-price">
                                                <ul>
                                                    <li>$30.00</li>
                                                    <li class="old-price">$35.00</li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-most-product">
                                        <div class="most-product-img">
                                            <a href="#"><img src="img/product/22.jpg" alt="book" /></a>
                                        </div>
                                        <div class="most-product-content">
                                            <div class="product-rating">
                                                <ul>
                                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                </ul>
                                            </div>
                                            <h4><a href="#">Compete Track Tote</a></h4>
                                            <div class="product-price">
                                                <ul>
                                                    <li>$35.00</li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-total-2">
                                    <div class="single-most-product bd mb-18">
                                        <div class="most-product-img">
                                            <a href="#"><img src="img/product/23.jpg" alt="book" /></a>
                                        </div>
                                        <div class="most-product-content">
                                            <div class="product-rating">
                                                <ul>
                                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                </ul>
                                            </div>
                                            <h4><a href="#">Voyage Yoga Bag</a></h4>
                                            <div class="product-price">
                                                <ul>
                                                    <li>$30.00</li>
                                                    <li class="old-price">$33.00</li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-most-product bd mb-18">
                                        <div class="most-product-img">
                                            <a href="#"><img src="img/product/24.jpg" alt="book" /></a>
                                        </div>
                                        <div class="most-product-content">
                                            <div class="product-rating">
                                                <ul>
                                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                </ul>
                                            </div>
                                            <h4><a href="#">Impulse Duffle</a></h4>
                                            <div class="product-price">
                                                <ul>
                                                    <li>$70.00</li>
                                                    <li class="old-price">$74.00</li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-most-product">
                                        <div class="most-product-img">
                                            <a href="#"><img src="img/product/22.jpg" alt="book" /></a>
                                        </div>
                                        <div class="most-product-content">
                                            <div class="product-rating">
                                                <ul>
                                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                </ul>
                                            </div>
                                            <h4><a href="#">Fusion Backpack</a></h4>
                                            <div class="product-price">
                                                <ul>
                                                    <li>$59.00</li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                                         
                    </div>
                </div>
                <div class="col-lg-9 col-md-9 col-sm-8 col-xs-12">
                    <div class="category-image mb-30">
                        <a href="#"><img src="img/banner/32.jpg" alt="banner" /></a>
                    </div>
                    <div class="section-title-5 mb-30">
                        <h2>Sách</h2>
                    </div>
                    <div class="toolbar mb-30">
                        
                        <div class="field-limiter">
                            <div class="control">
                                <span>hiển thị</span>
                                <!-- chosen-start -->
                                <select data-placeholder="Default Sorting" style="width:50px;" class="chosen-select" tabindex="1">
										 <option value="Sorting">1</option>
										 <option value="popularity">2</option>
										 <option value="rating">3</option>
										
									</select>
                                <!-- chosen-end -->
                            </div>
                        </div>
                        <div class="toolbar-sorter">
                            <span>sắp xếp</span>
                            <select id="sorter" class="sorter-options" data-role="sorter">
									<option selected="selected" value="position"> Position </option>
									<option value="name"> Product Name </option>
									<option value="price"> Price </option>
								</select>
                            <a href="#"><i class="fa fa-arrow-up"></i></a>
                        </div>
                    </div>
                    <!-- tab-area-start -->
                    <div class="tab-content">
                        <div class="tab-pane active" id="th">
                            <div class="row">
          
          <%-- hien thị sản phẩm --%>             
                              <c:forEach var="index" items="${product_list }">
                              	<div class="col-lg-3 col-md-4 col-sm-6">
                                    <!-- single-product-start -->
                                    <div class="product-wrapper mb-40">
                                        <div class="product-img">
                                            <a href="productController?page=shop&product_id=${ index.getProduct_id()}">
                                            
                                                <img src="img/product/${index.getProduct_image() }" alt="book" class="primary" />
                                            </a>
                                            <div class="quick-view">
                                                <a class="action-view" href="#" data-target="#productModal" data-toggle="modal" title="Xem nhanh" product-id='${ index.getProduct_id()}'>
                                                    <i class="fa fa-search-plus quick-view-icon"></i>
                                                </a>
                                            </div>
                                            <div class="product-flag">
                                                <ul>
                                                  
                                                   	<c:if test="${index.checkProductNew()==true }">
                                                   		  <li><span class="sale">new</span></li>
                                                   	</c:if>
                                                 
                                                    <c:if test="${index.getProduct_sale()>0  }">
                                                    	<li><span class="discount-percentage">-${index.getProduct_sale() }%</span></li>
                                                    </c:if>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-details text-center">
                                            <div class="product-rating">
                                                <ul>
                                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                </ul>
                                            </div>
                                            <h4><a href="productController?page=shop&product_id=${ index.getProduct_id()}">${index.getProduct_name() }</a></h4>
                                            <div class="product-price">
                                                <ul>
                                                    <li>${index.getProductSaleFormat() }đ</li>
                                                    <c:if test="${index.getProduct_price() != index.checkProductSale()}">
                                                    	<li class="old-price">${index.getProductPriceFormat() }đ</li>
                                                    </c:if>
                                                    
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-link">
                                            <div class="product-button">
                                                <a href="" title="Thêm vào giỏ" product-id='${index.getProduct_id()}'><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
                                            </div>
                                            <div class="add-to-link">
                                                <ul>
                                                    <li><a href="productController?page=shop&product_id=${ index.getProduct_id()}" title="Xem chi tiết"><i class="fa fa-external-link"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- single-product-end -->
                                </div>
                              </c:forEach>
                            </div>
                        </div>
                      
                    </div>
                    <!-- tab-area-end -->
                    <!-- pagination-area-start -->
 <%-- Phân trang --%>          
                    <c:set var="limit" value="5"/>
                    <c:set var="numberPage" value="${sessionScope.numberPage}"/>            
					<c:set var="totalPage" value="${sessionScope.totalPage }"/>
					<c:choose>
						<c:when test="${ numberPage - 2 < 1 }">
							<c:set var="N_start" value="1" />
							<c:set var="N_end" value="${limit }"/>
						</c:when>
						<c:when test="${ numberPage + 2 > totalPage }">
							<c:set var="N_start" value="${numberPage-2 }" />
							<c:set var="N_end" value="${ totalPage }"/>
						</c:when>
						<c:when test="${ (numberPage + 2) <= totalPage && (numberPage-2) >= 1 }">
                			<c:set var="N_start" value="${ numberPage-2 }"/>
                			<c:set var="N_end" value="${ numberPage +2}"/>
                		</c:when>
					</c:choose>
					
					  <c:if test="${ totalPage < limit }">
	         			 <c:set var="N_start" value="${ 1 }"/>
	         			 <c:set var="N_end" value="${ totalPage}"/>
	         		 </c:if>
	         	
                    <div class="pagination-area mt-50">
                        <div class="list-page-2">
                            <p>trang ${numberPage }/${totalPage }</p>
                        </div>
                        <div class="page-number">
                            <ul>                         	
                            	<li><a href="controller_direction?page=shop&numberPage=${ numberPage-1}" class="angle"><i class="fa fa-angle-left"></i></a></li>
                            	
	                            <c:forEach var="i" begin="${N_start }" end="${N_end }">
	                            	<%-- active để thay đổi màu --%>
	                            	<li><a href="controller_direction?page=shop&numberPage=${i}" class="active">${ i }</a></li>
	                            </c:forEach>
								
								<c:choose>            	
				             	  	<c:when  test="${totalPage == N_end }">             			
				               		</c:when>
				               		<c:when test="${totalPage > limit }">
				               			<li>...</li>
				               		</c:when>              		
			        	       	</c:choose>			               	
                                <li><a href="controller_direction?page=shop&numberPage=${ numberPage+1}" class="angle"><i class="fa fa-angle-right"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <!-- pagination-area-end -->
                </div>
            </div>
        </div>
    </div>
    <!-- shop-main-area-end -->
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
                                            <li><a href="">My account </a></li>
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
    <!-- Modal -->
    <div class="modal fade" id="productModal" tabindex="-1" role="dialog">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    	<span aria-hidden="true">x</span>
                    </button>
                </div>
                
      <%-- quick view --%>            
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-5 col-sm-5 col-xs-12">
                            <div class="modal-tab">                             
                                <img src="" alt="" />
                            </div>
                        </div>
                        <div class="col-md-7 col-sm-7 col-xs-12">
                            <div class="modal-pro-content">
         
                                <h3 id='quick-view-name'></h3>
                                <div class="price">
                                    <span id='quick-view-sale'></span>
                                </div>
                                <p id='quick-view-content'></p>                  
                             
                               <div>
                            		<input id='quick-view-quantify' type="number" value="1" min='1' />
                           		 	<button id='quick-view-id' product_id=''>Thêm vào giỏ</button>
                               </div>
                              
                                <span><i class="fa fa-check"></i> In stock</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Modal end -->

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