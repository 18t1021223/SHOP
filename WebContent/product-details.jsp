﻿<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    <body class="product-details">
        <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

        <!-- Add your site or application content here -->
		<!-- header-area-start -->
        <header>
			<!-- header-top-area-start -->
			<div class="header-top-area">
				<div class="container">
					<div class="row">
						<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
							<div class="language-area">
								<ul>
									<li><img src="img/flag/1.jpg" alt="flag" /><a href="#">English<i class="fa fa-angle-down"></i></a>
										<div class="header-sub">
											<ul>
												<li><a href="#"><img src="img/flag/2.jpg" alt="flag" />france</a></li>
												<li><a href="#"><img src="img/flag/3.jpg" alt="flag" />croatia</a></li>
											</ul>
										</div>
									</li>
									<li><a href="#">USD $<i class="fa fa-angle-down"></i></a>
										<div class="header-sub dolor">
											<ul>
												<li><a href="#">EUR €</a></li>
												<li><a href="#">USD $</a></li>
											</ul>
										</div>
									</li>
								</ul>
							</div>
						</div>
						<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
							<div class="account-area text-right">
								<ul>
									<li><a href="register.html">My Account</a></li>
									<li><a href="checkout.html">Checkout</a></li>
									<li><a href="login.html">Sign in</a></li>
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
									<input type="text" placeholder="Search entire store here..." />
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
									<li><a href="#"><i class="fa fa-shopping-cart"></i>My Cart</a>
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
											<div class="sub-menu">
												
											</div>
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
		<!-- header-area-end -->
		<!-- breadcrumbs-area-start -->
		<div class="breadcrumbs-area mb-70">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="breadcrumbs-menu">
							<ul>
								<li><a href="#">Home</a></li>
								<li><a href="#" class="active">product-details</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- breadcrumbs-area-end -->
		<!-- product-main-area-start -->
		<div class="product-main-area mb-70">
			<div class="container">
				<div class="row">
					<div class="col-lg-9 col-md-9 col-sm-8 col-xs-12">
						<!-- product-main-area-start -->
						<div class="product-main-area">
							<div class="row">
								<div class="col-lg-5 col-md-5 col-sm-6 col-xs-12">
									<div class="flexslider">
										<ul class="slides">
											
											<c:forEach var="index" items="${productImageAll }">
												<li data-thumb="img/product/${index.getImage_url() }">
												  <img src="img/product/${index.getImage_url() }" alt="image" />
												</li>
											</c:forEach>
										
										</ul>
									</div>
								</div>
								<div class="col-lg-7 col-md-7 col-sm-6 col-xs-12">
									<div class="product-info-main">
										<div class="page-title">
											<h1>${product.getProduct_name() }</h1>
										</div>
										<div class="product-info-stock-sku">
											<span>In stock</span>
											<div class="product-attribute">
												<span>SKU</span>
												<span class="value">24-WB05</span>
											</div>
										</div>
										<div class="product-reviews-summary">
											<div class="rating-summary">
												<a href="#"><i class="fa fa-star"></i></a>
												<a href="#"><i class="fa fa-star"></i></a>
												<a href="#"><i class="fa fa-star"></i></a>
												<a href="#"><i class="fa fa-star"></i></a>
												<a href="#"><i class="fa fa-star"></i></a>
											</div>
											<div class="reviews-actions">
												<a href="#">3 Reviews</a>
												<a href="#" class="view">Add Your Review</a>
											</div>
										</div>
										<c:if test="${product.getProduct_sale()>0}">
											 <div class="product-sale">
                                    	 	   <p class="product-sale-number">Giảm ${product.getProduct_sale()}%</p>
                                 		   </div>
										</c:if>
										<div class="product-info-price">
											<div class="price-final">
												<span>${product.checkProductSale()}đ</span>
												
												<c:if test="${product.getProduct_price() != product.checkProductSale()}">                                                	
                                                    	<span class="old-price">${product.getProduct_price() }đ</span>
                                                    </c:if>
											</div>
										</div>
										<div class="product-add-form">
											<form action="#">
												<div class="quality-button">
													<input class="qty" type="number" value="1" min="1">
												</div>
												<a href="#">Add to cart</a>
											</form>
										</div>
										<div class="product-social-links">
											<div class="product-addto-links">
												<a href="#"><i class="fa fa-heart"></i></a>
												<a href="#"><i class="fa fa-pie-chart"></i></a>
												<a href="#"><i class="fa fa-envelope-o"></i></a>
											</div>
											<div class="product-addto-links-text">
												<p>${product.getProduct_content() }</p>
											</div>
										</div>
									</div>
								</div>
							</div>	
						</div>
						<!-- product-main-area-end -->
						<!-- product-info-area-start -->
						<div class="product-info-area mt-80">
							<!-- Nav tabs -->
							<ul class="nav nav-tabs" role="tablist">
								<li class="active"><a href="#Details" data-toggle="tab">chi tiết</a></li>
								<li><a href="#Reviews" data-toggle="tab">đánh giá 3</a></li>
							</ul>
							<div class="tab-content">
                                <div class="tab-pane active" id="Details">
                                    <div class="valu">
                                    <!-- <p>The sporty Joust Duffle Bag can't be beat - not in the gym, not on the luggage carousel, not anywhere. Big enough to haul a basketball or soccer ball and some sneakers with plenty of room to spare, it's ideal for athletes with places to go.</p>
                                      <ul>
                                        <li><i class="fa fa-circle"></i>Dual top handles.</li>
                                        <li><i class="fa fa-circle"></i>Adjustable shoulder strap.</li>
                                        <li><i class="fa fa-circle"></i>Full-length zipper.</li>
                                        <li><i class="fa fa-circle"></i>L 29" x W 13" x H 11".</li>
                                      </ul>  -->  
                                     
                                      <textarea name="" id="" cols="1" rows="30" style="border: 0; background-color: white;width: 100%; resize: none;" disabled>
                                     	${ product.getProduct_description() }
                                      </textarea>	
                                    </div>
                                </div>
                                <div class="tab-pane" id="Reviews">
                                    <div class="valu valu-2">
                                        <div class="section-title mb-60 mt-60">
                                            <h2>Customer Reviews</h2>
                                        </div>
                                        <ul>
                                            <li>
                                                <div class="review-title">
                                                    <h3>themes</h3>
                                                </div>
                                                <div class="review-left">
                                                    <div class="review-rating">
                                                        <span>Price</span>
                                                        <div class="rating-result">
                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                        </div>
                                                    </div>
                                                    <div class="review-rating">
                                                        <span>Value</span>
                                                        <div class="rating-result">
                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                        </div>
                                                    </div>
                                                    <div class="review-rating">
                                                        <span>Quality</span>
                                                        <div class="rating-result">
                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="review-right">
                                                    <div class="review-content">
                                                        <h4>themes </h4>
                                                    </div>
                                                    <div class="review-details">
                                                        <p class="review-author">Review by<a href="#">plaza</a></p>
                                                        <p class="review-date">Posted on <span>12/9/16</span></p>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                        <div class="review-add">
                                            <h3>You're reviewing:</h3>
                                            <h4>Joust Duffle Bag</h4>
                                        </div>
                                        <div class="review-field-ratings">
                                            <span>Your Rating <sup>*</sup></span>
                                            <div class="control">
                                                <div class="single-control">
                                                    <span>Value</span>
                                                    <div class="review-control-vote">
                                                        <a href="#"><i class="fa fa-star"></i></a>
                                                        <a href="#"><i class="fa fa-star"></i></a>
                                                        <a href="#"><i class="fa fa-star"></i></a>
                                                        <a href="#"><i class="fa fa-star"></i></a>
                                                        <a href="#"><i class="fa fa-star"></i></a>
                                                    </div>
                                                </div>
                                                <div class="single-control">
                                                    <span>Quality</span>
                                                    <div class="review-control-vote">
                                                        <a href="#"><i class="fa fa-star"></i></a>
                                                        <a href="#"><i class="fa fa-star"></i></a>
                                                        <a href="#"><i class="fa fa-star"></i></a>
                                                        <a href="#"><i class="fa fa-star"></i></a>
                                                        <a href="#"><i class="fa fa-star"></i></a>
                                                    </div>
                                                </div>
                                                <div class="single-control">
                                                    <span>Price</span>
                                                    <div class="review-control-vote">
                                                        <a href="#"><i class="fa fa-star"></i></a>
                                                        <a href="#"><i class="fa fa-star"></i></a>
                                                        <a href="#"><i class="fa fa-star"></i></a>
                                                        <a href="#"><i class="fa fa-star"></i></a>
                                                        <a href="#"><i class="fa fa-star"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="review-form">
                                            <div class="single-form">
                                                <label>Nickname <sup>*</sup></label>
                                                <form action="#">
                                                    <input type="text" />
                                                </form>
                                            </div>
                                            <div class="single-form single-form-2">
                                                <label>Summary <sup>*</sup></label>
                                                <form action="#">
                                                    <input type="text" />
                                                </form>
                                            </div>
                                            <div class="single-form">
                                                <label>Review <sup>*</sup></label>
                                                <form action="#">
                                                    <textarea name="massage" cols="10" rows="4"></textarea>
                                                </form>
                                            </div>
                                        </div>
                                        <div class="review-form-button">
                                            <a href="#">Submit Review</a>
                                        </div>
                                    </div>
                                </div>
                            </div>	
						</div>
						<!-- product-info-area-end -->
						<!-- new-book-area-start -->
						<div class="new-book-area mt-60">
							<div class="section-title text-center mb-30">
								<h3>upsell products</h3>
							</div>
							<div class="tab-active-2 owl-carousel">
								<!-- single-product-start -->
								<div class="product-wrapper">
									<div class="product-img">
										<a href="#">
											<img src="img/product/1.jpg" alt="book" class="primary" />
										</a>
										<div class="quick-view">
                                            <a class="action-view" href="#" data-target="#productModal" data-toggle="modal" title="Quick View">
                                                <i class="fa fa-search-plus"></i>
                                            </a>
                                        </div>
                                        <div class="product-flag">
                                            <ul>
                                                <li><span class="sale">new</span></li>
                                                <li><span class="discount-percentage">-5%</span></li>
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
										<h4><a href="#">Joust Duffle Bag</a></h4>
										<div class="product-price">
											<ul>
												<li>$60.00</li>
											</ul>
										</div>
									</div>
									<div class="product-link">
										<div class="product-button">
											<a href="#" title="Add to cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
										</div>
										<div class="add-to-link">
                                            <ul>
                                                <li><a href="product-details.html" title="Details"><i class="fa fa-external-link"></i></a></li>
                                            </ul>
                                        </div>
									</div>	
								</div>
								<!-- single-product-end -->
								<!-- single-product-start -->
								<div class="product-wrapper">
									<div class="product-img">
										<a href="#">
											<img src="img/product/3.jpg" alt="book" class="primary" />
										</a>
										<div class="quick-view">
                                            <a class="action-view" href="#" data-target="#productModal" data-toggle="modal" title="Quick View">
                                                <i class="fa fa-search-plus"></i>
                                            </a>
                                        </div>
                                        <div class="product-flag">
                                            <ul>
                                                <li><span class="sale">new</span></li>
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
										<h4><a href="#">Chaz Kangeroo Hoodie</a></h4>
										<div class="product-price">
											<ul>
												<li>$52.00</li>
											</ul>
										</div>
									</div>
									<div class="product-link">
										<div class="product-button">
											<a href="#" title="Add to cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
										</div>
										<div class="add-to-link">
                                            <ul>
                                                <li><a href="product-details.html" title="Details"><i class="fa fa-external-link"></i></a></li>
                                            </ul>
                                        </div>
									</div>	
								</div>
								<!-- single-product-end -->
								<!-- single-product-start -->
								<div class="product-wrapper">
									<div class="product-img">
										<a href="#">
											<img src="img/product/5.jpg" alt="book" class="primary" />
										</a>
										<div class="quick-view">
                                            <a class="action-view" href="#" data-target="#productModal" data-toggle="modal" title="Quick View">
                                                <i class="fa fa-search-plus"></i>
                                            </a>
                                        </div>
                                        <div class="product-flag">
                                            <ul>
                                                <li><span class="discount-percentage">-5%</span></li>
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
										<h4><a href="#">Set of Sprite Yoga Straps</a></h4>
										<div class="product-price">
											<ul>
												<li> <span>Starting at</span>$34.00</li>
											</ul>
										</div>
									</div>
									<div class="product-link">
										<div class="product-button">
											<a href="#" title="Add to cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
										</div>
										<div class="add-to-link">
                                            <ul>
                                                <li><a href="product-details.html" title="Details"><i class="fa fa-external-link"></i></a></li>
                                            </ul>
                                        </div>
									</div>	
								</div>
								<!-- single-product-end -->
								<!-- single-product-start -->
								<div class="product-wrapper">
									<div class="product-img">
										<a href="#">
											<img src="img/product/7.jpg" alt="book" class="primary" />
										</a>
										<div class="quick-view">
                                            <a class="action-view" href="#" data-target="#productModal" data-toggle="modal" title="Quick View">
                                                <i class="fa fa-search-plus"></i>
                                            </a>
                                        </div>
                                        <div class="product-flag">
                                            <ul>
                                                <li><span class="sale">new</span></li>
                                                <li><span class="discount-percentage">-5%</span></li>
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
										<h4><a href="#">Strive Shoulder Pack</a></h4>
										<div class="product-price">
											<ul>
												<li>$30.00</li>
												<li class="old-price">$32.00</li>
											</ul>
										</div>
									</div>
									<div class="product-link">
										<div class="product-button">
											<a href="#" title="Add to cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
										</div>
										<div class="add-to-link">
                                            <ul>
                                                <li><a href="product-details.html" title="Details"><i class="fa fa-external-link"></i></a></li>
                                            </ul>
                                        </div>
									</div>	
								</div>
								<!-- single-product-end -->	
							</div>
						</div>
						<!-- new-book-area-start -->
					</div>
					<div class="col-lg-3 col-md-3 col-sm-4 col-xs-12">
						<div class="shop-left">
							<div class="left-title mb-20">
								<h4>Related Products</h4>
							</div>
							<div class="random-area mb-30">
								<div class="product-active-2 owl-carousel">
									<div class="product-total-2">
										<div class="single-most-product bd mb-18">
											<div class="most-product-img">
												<a href="#"><img src="img/product/20.jpg" alt="book" /></a>
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
							<div class="banner-area mb-30">
								<div class="banner-img-2">
									<a href="#"><img src="img/banner/33.jpg" alt="banner" /></a>
								</div>
							</div>
							
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- product-main-area-end -->
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
		<!-- Modal -->
        <div class="modal fade" id="productModal" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">x</span></button>
                    </div>
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-md-5 col-sm-5 col-xs-12">
                                <div class="modal-tab">
                                    <div class="product-details-large tab-content">
                                        <div class="tab-pane active" id="image-1">
                                            <img src="img/product/quickview-l4.jpg" alt="" />
                                        </div>
                                        <div class="tab-pane" id="image-2">
                                            <img src="img/product/quickview-l2.jpg" alt="" />
                                        </div>
                                        <div class="tab-pane" id="image-3">
                                            <img src="img/product/quickview-l3.jpg" alt="" />
                                        </div>
                                        <div class="tab-pane" id="image-4">
                                            <img src="img/product/quickview-l5.jpg" alt="" />
                                        </div>
                                    </div>
                                    <div class="product-details-small quickview-active owl-carousel">
                                        <a class="active" href="#image-1"><img src="img/product/quickview-s4.jpg" alt="" /></a>
                                        <a href="#image-2"><img src="img/product/quickview-s2.jpg" alt="" /></a>
                                        <a href="#image-3"><img src="img/product/quickview-s3.jpg" alt="" /></a>
                                        <a href="#image-4"><img src="img/product/quickview-s5.jpg" alt="" /></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-7 col-sm-7 col-xs-12">
                                <div class="modal-pro-content">
                                    <h3>Chaz Kangeroo Hoodie3</h3>
                                    <div class="price">
                                        <span>$70.00</span>
                                    </div>
                                    <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet.</p>	
                                    <div class="quick-view-select">
                                        <div class="select-option-part">
                                            <label>Size*</label>
                                            <select class="select">
                                                <option value="">S</option>
                                                <option value="">M</option>
                                                <option value="">L</option>
                                            </select>
                                        </div>
                                        <div class="quickview-color-wrap">
                                            <label>Color*</label>
                                            <div class="quickview-color">
                                                <ul>
                                                    <li class="blue">b</li>
                                                    <li class="red">r</li>
                                                    <li class="pink">p</li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <form action="#">
                                        <input type="number" value="1" />
                                        <button>Add to cart</button>
                                    </form>
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

