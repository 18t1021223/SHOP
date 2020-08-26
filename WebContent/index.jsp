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
    <link rel="shortcut icon" type="image/x-icon" href="/img/favicon.png">

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

<body>
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
                                            <a class="view-cart" href="cart.jsp">view cart</a>
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
                                    <li class="active"><a href="index.html">trang chủ</a>
                                       
                                    </li>
                                    <li><a href="controller_direction?page=shop&numberPage=1&init=init">sách<i class="fa fa-angle-down"></i></a>
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
    <!-- banner-area-start -->
    <div class="banner-area banner-res-large ptb-35">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-3 col-sm-4 col-xs-12">
                    <div class="single-banner">
                        <div class="banner-img">
                            <a href="#"><img src="img/banner/1.png" alt="banner" /></a>
                        </div>
                        <div class="banner-text">
                            <h4>Free shipping item</h4>
                            <p>For all orders over $500</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-4 col-xs-12">
                    <div class="single-banner">
                        <div class="banner-img">
                            <a href="#"><img src="img/banner/2.png" alt="banner" /></a>
                        </div>
                        <div class="banner-text">
                            <h4>Money back guarantee</h4>
                            <p>100% money back guarante</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 hidden-sm col-xs-12">
                    <div class="single-banner">
                        <div class="banner-img">
                            <a href="#"><img src="img/banner/3.png" alt="banner" /></a>
                        </div>
                        <div class="banner-text">
                            <h4>Cash on delivery</h4>
                            <p>Lorem ipsum dolor consecte</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-4 col-xs-12">
                    <div class="single-banner mrg-none-xs">
                        <div class="banner-img">
                            <a href="#"><img src="img/banner/4.png" alt="banner" /></a>
                        </div>
                        <div class="banner-text">
                            <h4>Help & Support</h4>
                            <p>Call us : + 0123.4567.89</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- banner-area-end -->

    <!-- product-area-start -->
    <div class="product-area pt-95 xs-mb">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title text-center mb-50">
                        <h2>Top interesting</h2>
                        <p>Browse the collection of our best selling and top interresting products. <br /> ll definitely find what you are looking for..</p>
                    </div>
                </div>
                <div class="col-lg-12">
                    <!-- tab-menu-start -->
                    <div class="tab-menu mb-40 text-center">
                        <ul>
                            <li class="active"><a href="#Audiobooks" data-toggle="tab">New Arrival	</a></li>
                            <li><a href="#books" data-toggle="tab">OnSale</a></li>
                            <li><a href="#bussiness" data-toggle="tab">Featured Products</a></li>
                        </ul>
                    </div>
                    <!-- tab-menu-end -->
                </div>
            </div>
            <!-- tab-area-start -->
            <div class="tab-content">
                <div class="tab-pane active" id="Audiobooks">
                    <div class="tab-active owl-carousel">
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
                                        <li><span class="sale">new</span> <br></li>
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
                                        <li><span class="sale">new</span> <br></li>
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
                                        <li>$34.00</li>
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
                                        <li><span class="sale">new</span> <br></li>
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
                        <!-- single-product-start -->
                        <div class="product-wrapper">
                            <div class="product-img">
                                <a href="#">
                                    <img src="img/product/9.jpg" alt="book" class="primary" />
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
                                <h4><a href="#">Wayfarer Messenger Bag</a></h4>
                                <div class="product-price">
                                    <ul>
                                        <li>$35.00</li>
                                        <li class="old-price">40.00</li>
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
                                    <img src="img/product/11.jpg" alt="book" class="primary" />
                                </a>
                                <div class="quick-view">
                                    <a class="action-view" href="#" data-target="#productModal" data-toggle="modal" title="Quick View">
                                        <i class="fa fa-search-plus"></i>
                                    </a>
                                </div>
                                <div class="product-flag">
                                    <ul>
                                        <li><span class="sale">new</span> <br></li>
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
                                <h4><a href="#">Impulse Duffle</a></h4>
                                <div class="product-price">
                                    <ul>
                                        <li>$74.00</li>
                                        <li class="old-price">78.00</li>
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
                <div class="tab-pane fade" id="books">
                    <div class="tab-active owl-carousel">
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
                                        <li><span class="sale">new</span> <br></li>
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
                                    <img src="img/product/9.jpg" alt="book" class="primary" />
                                </a>
                                <div class="quick-view">
                                    <a class="action-view" href="#" data-target="#productModal" data-toggle="modal" title="Quick View">
                                        <i class="fa fa-search-plus"></i>
                                    </a>
                                </div>
                                <div class="product-flag">
                                    <ul>
                                        <li><span class="sale">new</span> <br></li>
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
                                <h4><a href="#">Wayfarer Messenger Bag</a></h4>
                                <div class="product-price">
                                    <ul>
                                        <li>$35.00</li>
                                        <li class="old-price">40.00</li>
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
                                    <img src="img/product/11.jpg" alt="book" class="primary" />
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
                                <h4><a href="#">Impulse Duffle</a></h4>
                                <div class="product-price">
                                    <ul>
                                        <li>$74.00</li>
                                        <li class="old-price">78.00</li>
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
                <div class="tab-pane fade" id="bussiness">
                    <div class="tab-active owl-carousel">
                        <!-- single-product-start -->
                        <div class="product-wrapper">
                            <div class="product-img">
                                <a href="#">
                                    <img src="img/product/9.jpg" alt="book" class="primary" />
                                </a>
                                <div class="quick-view">
                                    <a class="action-view" href="#" data-target="#productModal" data-toggle="modal" title="Quick View">
                                        <i class="fa fa-search-plus"></i>
                                    </a>
                                </div>
                                <div class="product-flag">
                                    <ul>
                                        <li><span class="sale">new</span> <br></li>
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
                                <h4><a href="#">Wayfarer Messenger Bag</a></h4>
                                <div class="product-price">
                                    <ul>
                                        <li>$35.00</li>
                                        <li class="old-price">40.00</li>
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
                                    <img src="img/product/11.jpg" alt="book" class="primary" />
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
                                <h4><a href="#">Impulse Duffle</a></h4>
                                <div class="product-price">
                                    <ul>
                                        <li>$74.00</li>
                                        <li class="old-price">78.00</li>
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
                                    <img src="img/product/1.jpg" alt="book" class="primary" />
                                </a>
                                <div class="quick-view">
                                    <a class="action-view" href="#" data-target="#productModal" data-toggle="modal" title="Quick View">
                                        <i class="fa fa-search-plus"></i>
                                    </a>
                                </div>
                                <div class="product-flag">
                                    <ul>
                                        <li><span class="sale">new</span> <br></li>
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
                                <h4><a href="#">Set of Sprite Yoga Straps</a></h4>
                                <div class="product-price">
                                    <ul>
                                        <li>$34.00</li>
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
            </div>
            <!-- tab-area-end -->
        </div>
    </div>
    <!-- product-area-end -->


    <!-- new-book-area-start -->
    <div class="new-book-area pb-100">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title bt text-center pt-100 mb-30 section-title-res">
                        <h2>Featured Books</h2>
                    </div>
                </div>
            </div>
            <div class="tab-active owl-carousel">
                <div class="tab-total">
                    <!-- single-product-start -->
                    <div class="product-wrapper mb-40">
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
                                    <li><span class="sale">new</span> </li>
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
                                <img src="img/product/18.jpg" alt="book" class="primary" />
                            </a>
                            <div class="quick-view">
                                <a class="action-view" href="#" data-target="#productModal" data-toggle="modal" title="Quick View">
                                    <i class="fa fa-search-plus"></i>
                                </a>
                            </div>
                            <div class="product-flag">
                                <ul>
                                    <li><span class="sale">new</span> <br></li>
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
                            <h4><a href="#">Driven Backpack</a></h4>
                            <div class="product-price">
                                <ul>
                                    <li>$34.00</li>
                                    <li class="old-price">$36.00</li>
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
                <div class="tab-total">
                    <!-- single-product-start -->
                    <div class="product-wrapper mb-40">
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
                                    <li><span class="sale">new</span> <br></li>
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
                                <img src="img/product/10.jpg" alt="book" class="primary" />
                            </a>
                            <div class="quick-view">
                                <a class="action-view" href="#" data-target="#productModal" data-toggle="modal" title="Quick View">
                                    <i class="fa fa-search-plus"></i>
                                </a>
                            </div>
                            <div class="product-flag">
                                <ul>
                                    <li><span class="sale">new</span> </li>
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
                            <h4><a href="#">Fusion Backpack</a></h4>
                            <div class="product-price">
                                <ul>
                                    <li>$59.00</li>
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
                <div class="tab-total">
                    <!-- single-product-start -->
                    <div class="product-wrapper mb-40">
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
                                    <li><span class="sale">new</span> </li>
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
                                    <li>$34.00</li>
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
                                <img src="img/product/19.jpg" alt="book" class="primary" />
                            </a>
                            <div class="quick-view">
                                <a class="action-view" href="#" data-target="#productModal" data-toggle="modal" title="Quick View">
                                    <i class="fa fa-search-plus"></i>
                                </a>
                            </div>
                            <div class="product-flag">
                                <ul>
                                    <li><span class="sale">new</span> </li>
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
                            <h4><a href="#">Compete Track Tote</a></h4>
                            <div class="product-price">
                                <ul>
                                    <li>$32.00</li>
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
                <div class="tab-total">
                    <!-- single-product-start -->
                    <div class="product-wrapper mb-40">
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
                                    <li><span class="sale">new</span> <br></li>
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
                    <!-- single-product-start -->
                    <div class="product-wrapper">
                        <div class="product-img">
                            <a href="#">
                                <img src="img/product/4.jpg" alt="book" class="primary" />
                            </a>
                            <div class="quick-view">
                                <a class="action-view" href="#" data-target="#productModal" data-toggle="modal" title="Quick View">
                                    <i class="fa fa-search-plus"></i>
                                </a>
                            </div>
                            <div class="product-flag">
                                <ul>
                                    <li><span class="sale">new</span> </li>
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
                </div>
                <div class="tab-total">
                    <!-- single-product-start -->
                    <div class="product-wrapper mb-40">
                        <div class="product-img">
                            <a href="#">
                                <img src="img/product/9.jpg" alt="book" class="primary" />
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
                            <h4><a href="#">Wayfarer Messenger Bag</a></h4>
                            <div class="product-price">
                                <ul>
                                    <li>$35.00</li>
                                    <li class="old-price">$40.00</li>
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
                                <img src="img/product/8.jpg" alt="book" class="primary" />
                            </a>
                            <div class="quick-view">
                                <a class="action-view" href="#" data-target="#productModal" data-toggle="modal" title="Quick View">
                                    <i class="fa fa-search-plus"></i>
                                </a>
                            </div>
                            <div class="product-flag">
                                <ul>
                                    <li><span class="sale">new</span> </li>
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
                            <h4><a href="#">Rival  Messenger</a></h4>
                            <div class="product-price">
                                <ul>
                                    <li>$35.00</li>
                                    <li class="old-price">$40.00</li>
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
                <div class="tab-total">
                    <!-- single-product-start -->
                    <div class="product-wrapper mb-40">
                        <div class="product-img">
                            <a href="#">
                                <img src="img/product/11.jpg" alt="book" class="primary" />
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
                            <h4><a href="#">Impulse Duffle</a></h4>
                            <div class="product-price">
                                <ul>
                                    <li>$74.00</li>
                                    <li class="old-price">$78.00</li>
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
                                    <li><span class="sale">new</span> </li>
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
                            <h4><a href="#">Crown Summit</a></h4>
                            <div class="product-price">
                                <ul>
                                    <li>$36.00</li>
                                    <li class="old-price">$38.00</li>
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
        </div>
    </div>
    <!-- new-book-area-start -->

    <!-- most-product-area-start -->
    <div class="most-product-area pt-90 pb-100">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-3 col-sm-4 col-xs-12 xs-mb">
                    <div class="section-title-2 mb-30">
                        <h3>Book</h3>
                    </div>
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
                <div class="col-lg-3 col-md-3 col-sm-4 col-xs-12 xs-mb">
                    <div class="section-title-2 mb-30">
                        <h3>Audio books </h3>
                    </div>
                    <div class="product-active-2 owl-carousel">
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
                                    <a href="#"><img src="img/product/26.jpg" alt="book" /></a>
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
                                    <h4><a href="#">Driven Backpack1</a></h4>
                                    <div class="product-price">
                                        <ul>
                                            <li>$40.00</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
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
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-4 col-xs-12">
                    <div class="section-title-2 mb-30">
                        <h3>children’s books</h3>
                    </div>
                    <div class="product-active-2 owl-carousel">
                        <div class="product-total-2">
                            <div class="single-most-product bd mb-18">
                                <div class="most-product-img">
                                    <a href="#"><img src="img/product/27.jpg" alt="book" /></a>
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
                                    <h4><a href="#">Crown Summit</a></h4>
                                    <div class="product-price">
                                        <ul>
                                            <li>$36.00</li>
                                            <li class="old-price">$38.00</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="single-most-product bd mb-18">
                                <div class="most-product-img">
                                    <a href="#"><img src="img/product/28.jpg" alt="book" /></a>
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
                                    <h4><a href="#">Driven Backpack</a></h4>
                                    <div class="product-price">
                                        <ul>
                                            <li>$34.00</li>
                                            <li class="old-price">$36.00</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="single-most-product">
                                <div class="most-product-img">
                                    <a href="#"><img src="img/product/29.jpg" alt="book" /></a>
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
                <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                    <div class="block-newsletter">
                        <h2>Sign up for send newsletter</h2>
                        <p>You can be always up to date with our company new!</p>
                        <form action="#">
                            <input type="text" placeholder="Enter your email address" />
                        </form>
                        <a href="#">Send Email</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- most-product-area-end -->


    <!-- social-group-area-start -->
    <div class="social-group-area ptb-60">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                    <div class="section-title-3">
                        <h3>Latest Tweets</h3>
                    </div>
                    <div class="twitter-content">
                        <div class="twitter-icon">
                            <a href="#"><i class="fa fa-twitter"></i></a>
                        </div>
                        <div class="twitter-text">
                            <p>
                                Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum notare quam
                            </p>
                            <a href="#">posthemes</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                    <div class="section-title-3">
                        <h3>Stay Connected</h3>
                    </div>
                    <div class="link-follow">
                        <ul>
                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa fa-youtube"></i></a></li>
                            <li><a href="#"><i class="fa fa-flickr"></i></a></li>
                            <li class="hidden-sm"><a href="#"><i class="fa fa-vimeo"></i></a></li>
                            <li class="hidden-sm"><a href="#"><i class="fa fa-instagram"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- social-group-area-end -->
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
                               
                                <form action="#">
                                    <input type="number" value="1" min='1' />
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