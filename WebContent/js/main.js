(function($) {
	"use strict";

	/*----------------------------
	 Top Menu Stick
	------------------------------ */
	var header = $('#header-sticky');
	var win = $(window);

	win.on('scroll', function() {
		if ($(this).scrollTop() > 120) {
			header.addClass("sticky");
		} else {
			header.removeClass("sticky");
		}
	});

	/*----------------------------
	 Jquery MeanMenu
	------------------------------ */
	jQuery('#mobile-menu-active').meanmenu();

	/*----------------------------
	 Wow js active
	------------------------------ */
	new WOW().init();

	/*----------------------------
	 Slider active
	------------------------------ */
	$('.slider-active').owlCarousel(
			{
				smartSpeed : 1000,
				margin : 0,
				autoplay : false,
				nav : true,
				dots : true,
				loop : true,
				navText : [ '<i class="fa fa-angle-left"></i>',
						'<i class="fa fa-angle-right"></i>' ],
				responsive : {
					0 : {
						items : 1
					},
					768 : {
						items : 1
					},
					1000 : {
						items : 1
					}
				}
			})

	/* Quickview-active active */
	$('.quickview-active').owlCarousel(
			{
				loop : true,
				autoplay : false,
				autoplayTimeout : 5000,
				navText : [ '<i class="fa fa-angle-left"></i>',
						'<i class="fa fa-angle-right"></i>' ],
				nav : true,
				item : 3,
				margin : 12,
			})

	/*--------------------------
	Tab active
	---------------------------- */
	var ProductDetailsSmall = $('.product-details-small a');
	ProductDetailsSmall.on('click', function(e) {
		e.preventDefault();
		var $href = $(this).attr('href');
		ProductDetailsSmall.removeClass('active');
		$(this).addClass('active');
		$('.product-details-large .tab-pane').removeClass('active');
		$('.product-details-large ' + $href).addClass('active');
	})

	/*----------------------------
	 Tab slider active
	------------------------------ */
	$('.tab-active').owlCarousel(
			{
				smartSpeed : 1000,
				nav : true,
				autoplay : false,
				dots : false,
				loop : true,
				margin : 20,
				navText : [ '<i class="fa fa-angle-left"></i>',
						'<i class="fa fa-angle-right"></i>' ],
				responsive : {
					0 : {
						items : 1
					},
					480 : {
						items : 2
					},
					768 : {
						items : 3
					},
					992 : {
						items : 4
					},
					1170 : {
						items : 4
					},
					1300 : {
						items : 5
					}
				}
			})

	/*----------------------------
	 Tab slider active2
	------------------------------ */
	$('.tab-active-2').owlCarousel(
			{
				smartSpeed : 1000,
				nav : false,
				autoplay : true,
				loop : true,
				navText : [ '<i class="fa fa-angle-left"></i>',
						'<i class="fa fa-angle-right"></i>' ],
				responsive : {
					0 : {
						items : 1
					},
					768 : {
						items : 2
					},
					1000 : {
						items : 3
					},
					1170 : {
						items : 3
					},
					1300 : {
						items : 4
					}
				}
			})

	/*----------------------------
	 Tab active 3
	------------------------------ */
	$('.tab-active-3').owlCarousel(
			{
				smartSpeed : 1000,
				nav : true,
				autoplay : true,
				loop : true,
				margin : 20,
				navText : [ '<i class="fa fa-angle-left"></i>',
						'<i class="fa fa-angle-right"></i>' ],
				responsive : {
					0 : {
						items : 1
					},
					768 : {
						items : 2
					},
					992 : {
						items : 3
					},
					1170 : {
						items : 3
					},
					1300 : {
						items : 4
					}
				}
			})

	/*----------------------------
	 Post active
	------------------------------ */
	$('.post-active').owlCarousel(
			{
				smartSpeed : 1000,
				nav : true,
				autoplay : false,
				dots : false,
				items : 3,
				loop : true,
				navText : [ '<i class="fa fa-angle-left"></i>',
						'<i class="fa fa-angle-right"></i>' ],
				responsive : {
					0 : {
						items : 1
					},
					768 : {
						items : 2
					},
					992 : {
						items : 3
					},
					1170 : {
						items : 3
					},
					1300 : {
						items : 3
					}
				}
			})

	/*----------------------------
	 Bestseller active
	------------------------------ */
	$('.bestseller-active').owlCarousel(
			{
				smartSpeed : 1000,
				margin : 0,
				nav : true,
				autoplay : false,
				dots : false,
				margin : 20,
				loop : true,
				navText : [ '<i class="fa fa-angle-left"></i>',
						'<i class="fa fa-angle-right"></i>' ],
				responsive : {
					0 : {
						items : 1
					},
					480 : {
						items : 2
					},
					768 : {
						items : 2
					},
					1000 : {
						items : 2
					}
				}
			})

	/*----------------------------
	 Product active 2
	------------------------------ */
	$('.product-active-2').owlCarousel(
			{
				smartSpeed : 1000,
				margin : 0,
				nav : true,
				autoplay : false,
				dots : false,
				loop : true,
				navText : [ '<i class="fa fa-angle-left"></i>',
						'<i class="fa fa-angle-right"></i>' ],
				responsive : {
					0 : {
						items : 1
					},
					768 : {
						items : 1
					},
					1000 : {
						items : 1
					}
				}
			})
	/*----------------------------
	 Product active 3
	------------------------------ */
	$('.product-active-3').owlCarousel(
			{
				smartSpeed : 1000,
				margin : 0,
				nav : true,
				autoplay : false,
				dots : false,
				loop : true,
				navText : [ '<i class="fa fa-angle-left"></i>',
						'<i class="fa fa-angle-right"></i>' ],
				responsive : {
					0 : {
						items : 1
					},
					768 : {
						items : 2
					},
					992 : {
						items : 1
					},
					1000 : {
						items : 1
					}
				}
			})

	/*----------------------------
	 Testimonial active
	------------------------------ */
	$('.testimonial-active').owlCarousel(
			{
				smartSpeed : 1000,
				margin : 0,
				nav : false,
				autoplay : true,
				dots : true,
				loop : true,
				navText : [ '<i class="fa fa-angle-left"></i>',
						'<i class="fa fa-angle-right"></i>' ],
				responsive : {
					0 : {
						items : 1
					},
					768 : {
						items : 1
					},
					1000 : {
						items : 1
					}
				}
			})

	/*----------------------------
	 Deal active
	------------------------------ */
	$('.deal-active').owlCarousel(
			{
				smartSpeed : 1000,
				margin : 0,
				nav : false,
				autoplay : false,
				dots : false,
				loop : true,
				navText : [ '<i class="fa fa-angle-left"></i>',
						'<i class="fa fa-angle-right"></i>' ],
				responsive : {
					0 : {
						items : 1
					},
					768 : {
						items : 1
					},
					1000 : {
						items : 1
					}
				}
			})

	/*----------------------------
	 Post active 2
	------------------------------ */
	$('.post-active-2').owlCarousel(
			{
				smartSpeed : 1000,
				margin : 0,
				nav : false,
				autoplay : false,
				dots : false,
				loop : true,
				navText : [ '<i class="fa fa-angle-left"></i>',
						'<i class="fa fa-angle-right"></i>' ],
				responsive : {
					0 : {
						items : 1
					},
					768 : {
						items : 1
					},
					1000 : {
						items : 1
					}
				}
			})

	/*----------------------------
	 Hot sell active
	------------------------------ */
	$('.hot-sell-active').owlCarousel(
			{
				smartSpeed : 1000,
				margin : 20,
				nav : true,
				autoplay : false,
				dots : false,
				items : 3,
				loop : true,
				navText : [ '<i class="fa fa-angle-left"></i>',
						'<i class="fa fa-angle-right"></i>' ],
				responsive : {
					0 : {
						items : 1
					},
					768 : {
						items : 2
					},
					992 : {
						items : 3
					}
				}
			})
	/*----------------------------
	

	/*----------------------------
	Parallax active
	------------------------------ */
	$('.bg').parallax("50%", 0.1);

	/*----------------------------
	 Flexslider slider active
	------------------------------ */
	$('.flexslider').flexslider({
		animation : "slide",
		controlNav : "thumbnails"
	});

	/*-------------------------
	  Showlogin toggle function
	--------------------------*/
	$('#showlogin').on('click', function() {
		$('#checkout-login').slideToggle(900);
	});

	/*-------------------------
	  Showcoupon toggle function
	--------------------------*/
	$('#showcoupon').on('click', function() {
		$('#checkout_coupon').slideToggle(900);
	});

	/*-------------------------
	  Create an account toggle function
	--------------------------*/
	$('#cbox').on('click', function() {
		$('#cbox_info').slideToggle(900);
	});

	/*-------------------------
	  Create an account toggle function
	--------------------------*/
	$('#ship-box').on('click', function() {
		$('#ship-box-info').slideToggle(1000);
	});

	/*-------------------------
	  Showlogin toggle function
	--------------------------*/
	$('#showcat').on('click', function() {
		$('#hidecat').slideToggle(900);
	});

	/* Category accordion */
	$('.rx-parent').on('click', function() {
		$('.rx-child').slideToggle();
		$(this).toggleClass('rx-change');
	});

	/*--------------------------
	   Countdown
	---------------------------- */
	$('[data-countdown]')
			.each(
					function() {
						var $this = $(this), finalDate = $(this).data(
								'countdown');
						$this
								.countdown(
										finalDate,
										function(event) {
											$this
													.html(event
															.strftime('<div class="cdown days"><span class="counting counting-2">%-D</span>days</div><div class="cdown hours"><span class="counting counting-2">%-H</span>hrs</div><div class="cdown minutes"><span class="counting counting-2">%M</span>mins</div><div class="cdown seconds"><span class="counting">%S</span>secs</div>'));
										});
					});

	/*---------------------
		Counter
	--------------------- */
	$('.counter').counterUp({
		delay : 10,
		time : 1000
	});

	/*---------------------
		Category menu
	--------------------- */
	$('#cate-toggle li.has-sub>a').on('click', function() {
		$(this).removeAttr('href');
		var element = $(this).parent('li');
		if (element.hasClass('open')) {
			element.removeClass('open');
			element.find('li').removeClass('open');
			element.find('ul').slideUp();
		} else {
			element.addClass('open');
			element.children('ul').slideDown();
			element.siblings('li').children('ul').slideUp();
			element.siblings('li').removeClass('open');
			element.siblings('li').find('li').removeClass('open');
			element.siblings('li').find('ul').slideUp();
		}
	});
	$('#cate-toggle>ul>li.has-sub>a').append('<span class="holder"></span>');

	/*--------------------------
	 ScrollUp
	---------------------------- */
	$.scrollUp({
		scrollText : '<i class="fa fa-angle-up"></i>',
		easingType : 'linear',
		scrollSpeed : 900,
		animation : 'fade'
	});

	/* Category Dropdown Menu */
	if ($(window).width() < 768) {
		function sidemenuDropdown() {
			var $this = $('.category-menu');
			$this.find('nav.menu .cr-dropdown').find('.left-menu').css(
					'display', 'none');
			$this.find('nav.menu .cr-dropdown ul').slideUp();
			$this.find('nav.menu .cr-dropdown a').on('click', function(e) {
				e.preventDefault();
				$(this).parent('.cr-dropdown').children('ul').slideToggle();
			});
			$this.find('nav.menu .cr-dropdown ul .cr-sub-dropdown ul').css(
					'display', 'none');
			$this.find('nav.menu .cr-dropdown ul .cr-sub-dropdown a').on(
					'click',
					function(e) {
						e.preventDefault();
						$(this).parent('.cr-sub-dropdown').children('ul')
								.slideToggle();
					});
		}
		sidemenuDropdown();
	}

})(jQuery);
// category list
var category = document.getElementsByClassName('category_list');
for (i = 0; i < category.length; i++) {

	category[i].onclick = function() {
		this.style.background = "#f07c29 none repeat scroll 0 0"
		this.style.color = 'white';
		for (j = 0; j < category.length; j++) {
			if (category[j] != this) {
				category[j].style.backgroundColor = 'white';
				category[j].style.color = 'black';
			}
		}
	};
};

// producer
var producer = document.getElementsByClassName('producer_list');
for (i = 0; i < producer.length; i++) {

	producer[i].onclick = function() {
		this.style.background = '#f07c29 none repeat scroll 0 0'
		this.style.color = 'white';
		for (j = 0; j < producer.length; j++) {
			if (producer[j] != this) {
				producer[j].style.backgroundColor = 'white';
				producer[j].style.color = 'black';
			}
		}
	};
};
// <<----->>
$(function() {
	// lấy dc vị trí của layout do server tra ve
	var index = $('#index-layout').attr('index');
	$('.layout:eq(' + index + ')').show();
	
	$('.card-li').on('click', function(){
		var n = $('.card-li').index(this);
		layout_click(n)
	} )
})

function layout_click(n){
	
	// lấy ra layout cuối cùng
	var count = $('.layout').length-1;
	
	$('.layout').hide()
	$('.layout:eq(' + n + ')').fadeIn(300);
	
	// nếu như vị trí click lớn hơn layout cuối cùng thì show layout cuôi cùng
	// lên
	if( n > count ){
		$('.layout:eq(' + count + ')').fadeIn(300);
	}	
}
//<<----->>
// <<----------ĐĂNG KÝ START------>>
$('#btn-register').click(function(){
	$('#msg-apw').text("")
	var pw = $('#password').val();
	var apw = $('#again-password').val();

	if (pw != apw || pw=="" ||pw.length<8) {
		$('#again-password').focus();
		document.getElementById('msg-apw').innerHTML = 'Chứng thực mật khẩu không khớp.'	
	}else{
	
		$('#f1').submit(function(e){
			e.preventDefault()
			var form = $('#f1');
			console.log(form.serialize())
			$('#btn-register').attr('disabled','true')
			$('#btn-register').html('<i class="fa fa-spinner fa-pulse "></i> Vui lòng đợi...')
			$.ajax({
				url: form.attr('action'),
				type: form.attr('method'),
				dataType: 'html',
				data: form.serialize()
			}).done(function(result){
				console.log(result)
				if(result == '4'){				
					$('.login-false').css('display','block')
					$('.alert-text').text('Email đã tồn tại , vui lòng thử lại.')
				}else{				
					window.location = result
				}
				$('#btn-register').removeAttr('disabled')
				$('#btn-register').html('Xác nhận')
			})
		})		
	}
})

//<<----------ĐĂNG KÝ END------>>

// select
function select(number) {
	var ds = document.querySelectorAll('.form-control.mb-4');
	for (i = number + 1; i < ds.length; i++) {
		ds[i].selectedIndex = 0;
	}
};

//<<--Quên mật khẩu START-->>
$('.confirm').click(function(){
	$(".forget-password").submit(function(e){
		var form = $('.forget-password')
		e.preventDefault()
		var dataform = form.serialize()
		
		$('.confirm').html('<i class="fa fa-spinner fa-pulse "></i> Vui lòng đợi...')
		$('.confirm').attr('disabled','true')
		$.ajax({
			url: form.attr('action'),
			type: form.attr('method'),
			dataType:'html',
			data: dataform
		}).done(function(result){
			$('.login-false').css('display','block')
			if(result =='2'){		
				$('.alert-text').text('Email chưa được đăng ký , vui lòng nhập lại Email.')
				
			}else{
				$('.alert-text').text('Yêu cầu cấp mật khẩu thành công, kiểm tra Email của bạn.')				
			}
			$('#modelId').modal('hide')
			$('.confirm').html('Xác nhận')
			$('.confirm').removeAttr('disabled')		
		})
	})	
})


//<<_- QUÊN MẬT KHẨU END-->>
//<<-- thong tin tai khoan start-->>
$('#submit-thongtin-taikhoan').click(function(e){
	
	var form = $('#form-thongtin-taikhoan');
	form.submit(function(e){
		e.preventDefault();
		$.ajax({
			url: form.attr('action'),
			type: form.attr('method'),
			dataType:'html',
			data: form.serialize()
		}).done(function(){
			 location.reload()
		})
	})	
})
//<<-- thong tin tai khoan end -->>
//<<-- thay doi mat khau  start-->>
$("#recovery-form").submit(function(e){
	e.preventDefault();
	var current = document.getElementById('pass-current');
	var pw = $('#password');
	var apw = $('#again-password');
	if (pw.val() != apw.val() ) {
		apw.focus();
		document.getElementById('msg-apw').innerHTML = 'Chứng thực mật khẩu không khớp'

	} else {
		$.ajax({
			url: $(this).attr('action'),
			type: $(this).attr('method'),
			dataTpye:'html',
			data: $(this).serialize()
			
		}).done(function(result){
			if( result == 'fail'){
				current.focus();
				document.getElementById('msg-pass-current').innerHTML = 'Sai mật khẩu'		
			}else{
				location.reload()
			}
		})
	}
	
});
//<<-- RHAY ĐỔI MẬT KHẨU END -->
//<<--THÔNG TIN ĐỊA CHỈ START -->>
$('#form-thongtin-diachi').submit(function(e){
	e.preventDefault()
	$.ajax({
		url: $(this).attr('action'),
		type: $(this).attr('method'),
		dataType: 'html',
		data: $(this).serialize()
	}).done(function(result){
		location.reload()
	})
})
// <<---- THEM DIA CHỈ Ở PAGE CHECKOUT START --->>
$('#checkout-form-add-address').submit(function(e){
	e.preventDefault()
	$.ajax({
		url: $(this).attr('action'),
		type: $(this).attr('method'),
		dataType: 'html',
		data: $(this).serialize()
	}).done(function(result){
		location.reload()
	})
})
//<<--THÔNG TIN ĐỊA CHỈ END -->>

//---ajax cap nhat dia chi nguoi dung
$('.province').change( function(event) {
	var temp = this.value;

	$.ajax({
		url : 'userController',
		type : 'post',
		dataType : 'html',
		data : {
			province : temp,
			action : 'address'
		}
	}).done(function(ketqua) {

		$('.district').html(ketqua);
		$('.ward').val('');
	});
});

$('.district').change( function() {
	var temp = this.value;

	$.ajax({
		url : 'userController',
		type : 'post',
		dataType : 'html',
		data : {
			district : temp,
			action : 'address'
		}
	}).done(function(ketqua) {
		if (ketqua == "") {
			$('.ward').html(ketqua);
			$('.ward').attr('disabled', 'true')
		} else {
			$('.ward').removeAttr('disabled')
			$('.ward').html(ketqua);
		}
	});
});

// ---------------------------------
// khi click thêm địa chỉ thì sẽ load tỉnh-thanh pho
var add = function() {
	$.ajax({
		url : 'userController',
		type : 'post',
		dataType : 'html',
		data : {
			mission : 'add',
			action : 'address'
		}
	}).done(function(ketqua) {

		$('.province').html(ketqua);
		$('.district').val('')
		$('.ward').val('');
		$('.address_user').val('');
		$('.address_telephone').val('');
		$('.address_description').val('');
		$('#action').val('addAddress');
	});
}

$(document).on('click', '.add-address', add);

// ------------------------------------
// khi click vào sửa địa chỉ thì load tỉnh thành
//<<-- SỬA ĐỊA CHỈ START-->>
$(document).on('click', 'span.edit', function() {

	var id = $(this).attr('address_id');
	$("input[type='hidden']#address_id").val(id)
	$.ajax({
		url : 'userController',
		type : 'post',
		dataType : 'html',
		data : {
			address_id : id,
			mission : 'edit',
			action : 'address'
		}
	}).done(function(addressBEAN) {
		console.log(addressBEAN)
		var info = JSON.parse(addressBEAN);
		var code_string = info.address_code;
		var code = code_string.split(' ');
		var temp = info.address_description;
		var arr = temp.split('|')
		$('.address_description').val(arr[0]);
	
		// ----------------------------------------------
		$.ajax({
			url : 'userController',
			type : 'post',
			dataType : 'html',
			data : {
				mission : 'add',
				action : 'address'
			}
		}).done(function(ketqua) {
			$('.province').html(ketqua);
			$('.province').val(code[2])
			$('.province').change()
			$('.district').val(code[1])
			$('.district').change()
			$('.ward').val(code[0]);
		});
		$('.address_user').val(info.address_user);
		$('.address_telephone').val(info.address_telephone);
		$('#action').val('editAddress');
	})
});
//<<-- SỬA ĐỊA CHỈ END -->>
// <<-- XÓA ĐỊA CHỈ  START-->
var id = '';
$('#address-remove').click(function(){		 
	 $.ajax({
			url: 'userController',
			type: 'get' ,
			dataType : 'html',
			data:{
				address_id : id ,
				action: 'addressRemove'
			}
		}).done(function(){
			location.reload()
		})		
	})	

$('.remove').click(function() {
	 id = $(this).attr('address_id');	
})
// <<-- XÓA ĐỊA CHỈ  END-->
//<<-- MẶC ĐỊNH ĐỊA CHỈ START-->>
$('.default').click(function(){
	var id = $(this).attr('address_id');
	$.ajax({
		url: 'userController',
		type: 'get' ,
		dataType : 'html',
		data:{
			address_id : id ,
			action: 'addressDefault'
		}
	}).done(function(){
		location.reload()
	})
})
//<<-- MẶC ĐỊNH ĐỊA CHỈ END-->>

// ---------------------------------------
// đơn hàng
$('span.bill-detail').click(function(){
	var id = $(this).attr('bill-id')
	
	$.ajax({
		url: 'billController',
		type: 'get' ,
		dataType : 'html',
		data:{
			bill_id : id ,
			action: 'showDetail'
		}
	}).done(function(result){
		
		var temp = result.split('&&')
		
		var a = JSON.parse( temp[0]);
		$('#detail-bill_id').text( 'ID Đơn hàng: '+a.bill_id)
		$('#detail-bill_date').text('Ngày đặt hàng: '+a.bill_date)
		$('#detail-bill_status').text(a.status_name)
		var address = (a.bill_address).split('&&')
		$('#detail-bill_name').text(address[0])
		$('#detail-bill_number').text(address[1])
		$('#detail-bill_description').text(address[2])
		$('#detail-bill-payment').text(a.payment_name)
		$('#detail-bill-temp').text(a.bill_temp+' ₫')
		$('#detail-bill-costs').text(a.bill_costs+' ₫')
		$('#detail-bill-costsSale').text(a.bill_costsSale+' ₫')
		$('#detail-bill-total').text(a.bill_total+' ₫')
// $('#detail-product-buy').attr('href'
// ,'productController?'+b[index].product_id )
		var b = JSON.parse(temp[1]);
		
		var string = '';
		for(i=0;i<b.length;i++){
			string+=
			'<tr><td class="table_img px-0 pr-5 "> <a class="detail-product-id" href="" ><img class="detail-img" src="" alt="anh"></a> </td>'			
			string+= 
			'<td>  <div> <p class="detail-name"></p> </div> <p class="detail-quantify">x</p> </td> '
			string+=    ' <td class="detail-price">₫</td> '
			string+=    '<td class="detail-sale">₫</td>'
			string+=    '<td class="detail-total">₫</td> </tr>'
		}
		$('#table-body').html(string)
		
		$('.detail-product-id').each(function(index,value){			
			$(value).attr("href", 'productController?'+b[index].product_id )
		})
		
		$('.detail-img').each(function(index,value){
			var img = 'img/product/'+b[index].billdetail_image
			$(value).attr("src", img  )
		})
		
		$('.detail-name').each(function(index,value){
		     $(value).text( b[index].billdetail_name )	     
		})
		
		$('.detail-quantify').each(function(index,value){
		     $(value).text( 'x '+ b[index].billdetail_quantify )		     
		})
		
		$('.detail-price').each(function(index,value){
		     $(value).text(  b[index].billdetail_price+' ₫' )		     
		})
		
		$('.detail-sale').each(function(index,value){
		     $(value).text(  b[index].billdetail_sale +' ₫')	     
		})
		
		$('.detail-total').each(function(index,value){
		     $(value).text(  b[index].billdetail_total+' ₫' )		     
		})
	})
	
})

// ấn nút quay lại trong chi tiết đơn hàng
$('.detail-back').click(function(){
	layout_click(2)
})


// ----------------------------chi tiet don hang
$('input[value="thêm vào giỏ"]').click(function(e){
	e.preventDefault();
	var form = $('#form-details');
	
	var formData = $(form).serialize();
	$.ajax({
		url: form.attr('action'),
		type: 'get',
		dataType: 'html',
		data: formData
		
	}).done(function(object){
		setcart(object)	
	})
})

// <<-- QUICK VIEW START-->>
$('.quick-view .action-view').click(function(){
	$('#quick-view-quantify').val(1);
	var id = $(this).attr('product-id');
	$.ajax({
		url : 'productController',
		type: 'post',
		dataType: 'html',
		data:{
			product_id : id,
			action : 'quickView'
		}
	}).done(function(object){
		var prod = JSON.parse(object);
		// quick-view-image
		$('#quick-view-name').text(prod.product_name);
		$("#quick-view-sale").text(prod.product_sale+" ₫");
		$('#quick-view-content').text(prod.product_content)
		$('#quick-view-id').attr('product_id',prod.product_id)
		$('.modal-tab img').attr('src', 'img/product/'+prod.product_image[0])
	})
})
// <<-- QUICK VIEW END---->>
// <<---------------THANH THOONG BAO START----------->>
$(function(){
	showmsg()
})
	
function showmsg(){
	var msg = $('.msg-text').text()

	if(msg != ''){
		$('.modal-msg').fadeIn(200)
	    setTimeout(() => {    
	        $('.modal-msg').fadeOut()
	       location.reload()
	    }, 1500);
	}	
}
//<<---------------THANH THOONG BAO END------------------->>

// <<-- THÊM SẢN PHẨM TRONG QUICK VIEW START ---->>
$('#quick-view-id').click(function(e){
	var id = $(this).attr('product_id');
	var sl = $('#quick-view-quantify').val()
	e.preventDefault();

	$.ajax({
		url : 'cartController',
		type: 'get',
		dataType: 'html',
		data:{		
			quantify:sl,
			product_id : id,
			action : 'add'
		}
	}).done(function(object){	
		setcart(object)	
	})
})
// <<---- THÊM SẢN PHẨM TRONG QUICK VIEW END ---->>
// <<------ THÊM SẢN PHẨM Ở SHOP  START-->>
$('.product-button a').click(function(e){
	e.preventDefault()
	var id = $(this).attr('product-id');
	$.ajax({
		url : 'cartController',
		type: 'get',
		dataType: 'html',
		data:{
			quantify : 1,
			product_id : id,
			action : 'add'
		}
	}).done(function(object){
		setcart(object)	
	})

})
//<<-- THÊM SẢN PHẨM Ở SHOP END -->>
// ------- XÓA SẢN PHẨM TRÊN ICON START -->>
$('.cart-icon a').click(function(e){
	e.preventDefault();
	$.ajax({
		url : 'cartController',
		type: 'get',
		dataType: 'html',
		data:{				
			product_id : $('.cart-icon a').attr('product-id'),
			action : 'remove'
		}
		}).done(function(object){			
			setcart(object)		
		})
})
// ------- XÓA SẢN PHẨM TRÊN ICON END -->>
// <<---------- SET CART START --------->>
function setcart(object){
	try{
		var map = JSON.parse(object);

		// kiểm tra số lượng có = 0 không
		var sl = Object.keys(map).length;
		var find = $(".my-cart-item").find('.cart_quantify-product')
		if(find.length == 0 || find.text()== ''){
			$('.my-cart-item').prepend('<span class="cart_quantify-product">'+sl+'</span>')
		}else{
			$('.cart_quantify-product').text(sl)
		}
		// cập nhật giỏ hàng **
		var index =0 ;
		var layout = ''
		var total = 0 ;
		for (const [key, value] of Object.entries(map)) {			
			if(index >2 )
				break;
			var cart = JSON.parse(value);
		
			var prod = JSON.parse(cart.prod)
			// ---->>
			layout += 
				'<div class="single-cart">'
				+'	<div class="cart-img">'
				+'	<a  href="productController?page=shop&product_id='+key+'"> '
			
				+'		<img src="img/product/'+prod.product_image[0]+'" alt="book" />'
				+'	</a>'
				+'</div>'
				+'<div class="cart-info">'
					+'<h5><a href="productController?page=shop&product_id='+key+'">'+prod.product_name+'</a></h5>'
					+'<p class="cart-info-price">'+cart.cart_quantify+" * "+prod.product_sale +" ₫"+'</p>'
																			
				+'</div>'
				+'<div class="cart-icon">'
					+'<a href="cartController?page=shop&action=remove&product_id='+key+'"><i class="fa fa-remove"></i></a>'
				+'</div>'
			 +'</div>';
			 total += cart.cart_total;
			 index++;		
		}		
			 $('.cart-product').html(layout)
	
			$('.cart-totals h5 span').text( nf.format(total) )	
			location.reload();	
	}catch(e){
		window.location = object
	}
	
}
//<<--------------------- SET CART END ------------------>>
var nf = new Intl.NumberFormat('vi-VN', { style: 'currency', currency: 'VND' })

// <<-----  XEM GIỎ HÀNG START -------- >>
$().click(function(){
	
})
//<<--------XEM GIỎ HÀNG END ---------->>
// cập nhật tiền khi thay đổi số lượng trong gio hang
$('.product-quantity .product-quantity-input').bind('change blur',function(e){
	id =  $(this).attr('product-id') ;
	var location = $('.product-quantity .product-quantity-input').index(this)
	var sl = $(this).val();
	if( sl <=0 || isNaN(sl) ){
	    $(this).val(1)
	  }
	$.ajax({
		url:'cartController',
		type:'get',
		dataType:'html',
		data:{
			product_id : id,
			quantify:  sl,
			action: 'update'
		}
	}).done(function(result){
		
		try{
			var map = JSON.parse(result)
			var total = 0 ;
			for( [key,value] of Object.entries(map)){
				var cart = JSON.parse(value);
				var prod = JSON.parse(cart.prod);
				if( key ==  id ){			
					$('.product-subtotal.product-text').eq(location).text( nf.format(cart.cart_total) )
				}
				 total += cart.cart_total;
			}		 
			$('.cart-temp').text( nf.format(total) )				
		}catch(e){
			// NẾU TÀI KHOẢN HẾT PHIÊN LÀM VIỆC THÌ QUAY LẠI LOGIN
			window.location = result ;
		}
		location.reload(true);
	})
})

// XÓA SẢN PHẨM TRONG TRANG GIỎ HÀNG
$('.product-remove a').click(function(e){
	e.preventDefault();
	$.ajax({
		url : 'cartController',
		type: 'get',
		dataType: 'html',
		data:{				
			product_id : $('.product-remove a').attr('product-id'),
			action : 'remove'
		}
		}).done(function(object){	
			try{
				JSON.parse(object)
				location.reload()	
			}catch(e){
				window.location = object ;				
			}		
		})
})

//----- ĐĂNG NHẬP START --->>
$('.form-login').submit(function(e){
	e.preventDefault();
	
	$.ajax({
		url: $(this).attr('action'),
		type: $(this).attr('method'),
		dataType: 'html',
		data: $(this).serialize()
	}).done(function(result){	
		$('.login-false').css('display','block')
		if( result == '3'){	
			$('.alert-text').text('Sai thông tin tài khoản hoặc mật khẩu.')		
		}else if(result== '1'){
			$('.alert-text').text('Yêu cầu cấp mật khẩu thành công ,Hãy kiểm tra Email của bạn.')
		}else{
			window.location = result
		}
	})
})
//----- ĐĂNG NHẬP END --->>
// <<----THAY DỔI ĐỊA CHỈ START-->>
$('#btn-confirm-address-next').click(function(){
	$('.address-radio').each(function(index,value){
		if( $(value).is(':checked')){
			$.ajax({
				url : 'billController',
				type: 'get',
				dataType:'html',
				data:{
					address_id : $(value).val(),
					action : 'getAddress'
				}
			}).done(function(result){
				try{
					var address =JSON.parse(result)
					$("#checkout-address_user").val( address.address_user )
					$('#checkout-address_telephone').val( address.address_telephone )
					$("#checkout-address_description").val( address.address_description.replaceAll('|',',') )
					
				}catch(e){	
					window.location = result
				}			
			})
		}
	})
	$('#btn-confirm-address-close').click()
})
// <<----THAY DỔI ĐỊA CHỈ END-->>
// ĐÓNG
$('#btn-confirm-address-close').click(function(){
	$('#option-address').click()
})

// <<-- THÊM ĐƠN HÀNG START-->>
$('#form-add-bill').submit(function(e){
	e.preventDefault();
	$.ajax({
		url: 'billController',
		type: 'get',
		dataType: 'html',
		data:{
			action: 'addBill'
		}
	}).done(function(){
		
	})
})

