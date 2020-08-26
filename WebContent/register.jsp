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

<body class="register">
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
                                            <li>
                                                <a href="#"><img src="img/flag/2.jpg" alt="flag" />france</a>
                                            </li>
                                            <li>
                                                <a href="#"><img src="img/flag/3.jpg" alt="flag" />croatia</a>
                                            </li>
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
                                    <li class="active"><a href="index.html">Home<i class="fa fa-angle-down"></i></a>
                                        <div class="sub-menu">
                                            <ul>
                                                <li><a href="index-2.html">Home-2</a></li>
                                                <li><a href="index-3.html">Home-3</a></li>
                                                <li><a href="index-4.html">Home-4</a></li>
                                                <li><a href="index-5.html">Home-5</a></li>
                                                <li><a href="index-6.html">Home-6</a></li>
                                            </ul>
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
                                    <li><a href="#">blog<i class="fa fa-angle-down"></i></a>
                                        <div class="sub-menu sub-menu-2">
                                            <ul>
                                                <li><a href="blog.html">blog</a></li>
                                                <li><a href="blog-details.html">blog-details</a></li>
                                            </ul>
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
                                        <ul>
                                            <li><a href="index-2.html">Home-2</a></li>
                                            <li><a href="index-3.html">Home-3</a></li>
                                            <li><a href="index-4.html">Home-4</a></li>
                                            <li><a href="index-5.html">Home-5</a></li>
                                            <li><a href="index-6.html">Home-6</a></li>
                                        </ul>
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
                                    <li><a href="#">blog</a>
                                        <ul>
                                            <li><a href="blog.html">Blog</a></li>
                                            <li><a href="blog-details.html">blog-details</a></li>
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
                            <li><a href="#">Home</a></li>
                            <li><a href="#" class="active">register</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- breadcrumbs-area-end -->
    <!-- user-login-area-start -->
    <div class="user-login-area mb-70">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="login-title text-center mb-30">
                        <h2>Sign Up</h2>
                        <p>doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo<br>inventore veritatis et quasi architecto beat</p>
                    </div>
                </div>
                <div class="col-lg-offset-2 col-lg-8 col-md-offset-2 col-md-8 col-sm-12 col-xs-12">
                    <div class="billing-fields">
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <div class="single-register">
                                    <form action="#">
                                        <label>First Name<span>*</span></label>
                                        <input type="text" />
                                    </form>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <div class="single-register">
                                    <form action="#">
                                        <label>Last Name<span>*</span></label>
                                        <input type="text" />
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="single-register">
                            <form action="#">
                                <label>Company Name</label>
                                <input type="text" />
                            </form>
                        </div>
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <div class="single-register">
                                    <form action="#">
                                        <label>Email Address<span>*</span></label>
                                        <input type="text" />
                                    </form>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <div class="single-register">
                                    <form action="#">
                                        <label>Phone<span>*</span></label>
                                        <input type="text" />
                                    </form>
                                </div>
                            </div>
                        </div>
                        <!-- <div class="single-register">
								<label>Country<span>*</span></label>
								<select class="chosen-select" tabindex="1" style="width:100%;" data-placeholder="Default Sorting">
									<option value="country">Select a country</option>
									<option value="Islands">Aland Islands</option>
									<option value="Afghanistan">Afghanistan</option>
									<option value="Albania">Albania</option>
									<option value="Samoa">American Samoa</option>
								</select>
							</div> -->
                        <div class="single-register">
                            <form action="#">
                                <label>Address<span>*</span></label>
                                <input type="text" placeholder="Street address" />
                                <input type="text" id="billing_address_2" placeholder="Apartment, suite, unit etc. (optional" />
                            </form>
                        </div>
                        <div class="single-register">
                            <form action="#">
                                <label>Town/City<span>*</span></label>
                                <input type="text" />
                            </form>
                        </div>
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <div class="single-register">
                                    <label>State<span>*</span></label>
                                    <select class="chosen-select" tabindex="1" style="width:100%;" data-placeholder="Default Sorting">
											<option value="Select">Select a State</option>
											<option value="Andhra">Andhra Pradesh</option>
											<option value="Pradesh">Arunachal Pradesh</option>
											<option value="Delhi">Delhi</option>
											<option value="Lakshadeep">Lakshadeep</option>
										</select>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <div class="single-register">
                                    <form action="#">
                                        <label>Postcode/zip<span>*</span></label>
                                        <input type="text" placeholder="Postcode/zip" />
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="single-register">
                            <form action="#">
                                <label>Account password<span>*</span></label>
                                <input type="text" placeholder="Password" />
                            </form>
                        </div>
                        <div class="single-register">
                            <form action="#">
                                <label>Confirm password<span>*</span></label>
                                <input type="text" placeholder="Password" />
                            </form>
                        </div>
                        <div class="single-register single-register-3">
                            <input id="rememberme" type="checkbox" name="rememberme" value="forever">
                            <label class="inline">I agree <a href="#">Terms & Condition</a></label>
                        </div>
                        <div class="single-register">
                            <a href="#">Register</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- user-login-area-end -->
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
                                    <li><a href="#">blog</a></li>
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