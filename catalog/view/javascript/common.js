
	jQuery(function($) {
/*
	| ----------------------------------------------------------------------------------
	| Main menu & Mega menu
	| ----------------------------------------------------------------------------------
	*/
	
	// add class submenu to submenu's that are not megamenu
	$('.main-menu ul').each(function() {
		if ( $(this).closest('.mega-menu').length == 0 )
		{
			$(this).addClass('sub-menu');
		}
	});
	// add class has-child to each menu item that has child
	$('.main-menu li').each(function() {
		if ( $(this).find('ul').length ) 
			$(this).addClass('has-child');
	});
	
	$('.main-menu li').hoverIntent({
		// on menu mouse hover function handler
		over: function() {
			var $this = $(this),
				$mm = $this.children('.mega-menu'),
				$parent = $this.closest('.inner');
			
			// we need to setup megamenu position and width
			$mm.css({ 
				'left': ($parent.offset().left - $this.offset().left - 1) + 'px', 
				'width': $parent.outerWidth() + 'px', 
				'visibility': 'visible'
			});
			
			// now we are good and we can show the megamenu
			$this.addClass('active').children('ul, .mega-menu').animate({ 'height': 'toggle' }, 200, function() { $(this).css('overflow', 'visible'); } );
		}, 
		// mouse out handler
		out: function() {
			$(this).removeClass('active').children('ul, .mega-menu').animate({ 'height': 'toggle' }, 200, function() { $(this).css('overflow', 'visible'); } );
		},
		// A simple delay, in milliseconds, before the "out" function is called
		timeout: 200
	});
	
		
	/*
	| ----------------------------------------------------------------------------------
	| Shopping cart drop down
	| ----------------------------------------------------------------------------------
	*/
	$('.header-cart .relative').hoverIntent({
		over: function() {
			$(this).children('.cart-items').slideDown(200);
		},
		out: function() {
			$(this).children('.cart-items').slideUp(200);
		}
	});
	
		/* Ajax Cart */
	$('.inner').live('hover', function() {
		
		
		$('.cart-items').load('index.php?route=module/cart .cart-items > *');

		
	});

	
	
	/*
	| ----------------------------------------------------------------------------------
	| Responsive multi level menu
	| Credits goes to: https://github.com/codrops/ResponsiveMultiLevelMenu
	| Licensed under the MIT License
	| ----------------------------------------------------------------------------------
	*/
	$( '#dl-menu' ).dlmenu({
		animationClasses : { classin : 'dl-animate-in-5', classout : 'dl-animate-out-5' }
	});
	$(window).on('resize', function() {
		fix_mobile_menu_width();
	});
	fix_mobile_menu_width();
	function fix_mobile_menu_width() {
		var menu_width = $('#menu-container .inner').width();
		$('.dl-menuwrapper .dl-menu, .dl-menuwrapper .dl-submenu').css( 'width', menu_width );
	}
	
	$('.dropdown-toggle').dropdown()
	/*
	| ----------------------------------------------------------------------------------
	| Initialize carousel
	| ----------------------------------------------------------------------------------
	*/
	$('.carousel-wrapper').each(function() {
		var $this = $(this), new_max;
		var configs = new Array();
		configs['autoplay'] = $this.data('autoplay') == true;
		configs['loop'] = $this.data('loop') == true;
		configs['width'] = $this.data('width');
		configs['minItems'] = $this.data('minitems');
		configs['maxItems'] = $this.data('maxitems');
		configs['slideshowspeed'] = $this.data('slideshow-speed');
		configs['speed'] = $this.data('speed');
		
		new_max = configs['maxItems'];
		var sliderW = $this.width();
		if ( sliderW >= 980 )
		{
			if ( configs['maxItems'] > 4 ) new_max = 4;
		}
		else if ( sliderW < 980 && sliderW >= 768 )
		{
			if ( configs['maxItems'] > 3 ) new_max = 3;
		}
		else if ( sliderW < 768 && sliderW >= 640 )
		{
			if ( configs['maxItems'] > 2 ) new_max = 2;
		}
		else if ( sliderW < 640 && sliderW >= 480 )
		{
			if ( configs['maxItems'] > 2 ) new_max = 2;
		}
		else
		{
			new_max = 1;
		}
		
		configs['minWidth'] = ( isNaN(configs['width']) || configs['width'] == 'undefined' ) ? sliderW / new_max : configs['width'];

		$this.children('ul').carouFredSel({
			circular: true,
			infinite: true,
			responsive: true,
			width: '100%',
			height: 'auto',
			items: {
				visible: {
					min: configs['minItems'],
					max: configs['maxItems'],
				},
				width: configs['minWidth']
			},
			scroll: {
				easing: 'easeOutQuart'
			},
			auto: false,
			prev: {
				button: function() { return $this.closest('.carousel-container').find('.carousel-control-arrows .carousel-prev'); },
				key: "left",
				duration: configs['speed']
			},
			next: {
				button: function() { return $this.closest('.carousel-container').find('.carousel-control-arrows .carousel-next'); },
				key: "right",
				duration: configs['speed']
			},
			swipe: {
				onMouse: true,
				onTouch: true
			},
			onCreate: function () {
				carousel_height( $this );
				$(window).on('resize', function() {
					carousel_height( $this );
				});
			}
		});
			
	});
	
	function carousel_height( $this )
	{
		$this.imagesLoaded(function() {
			var max = 0;
			$this.find('li').each(function() {
				if ( $(this).outerHeight() > max )
				{
					max = $(this).outerHeight();
				}
			});
			$this.find('.carousel-list, .caroufredsel_wrapper').css( 'height', max + 'px' );
		});
	}
	
	
	
	/*
	| ----------------------------------------------------------------------------------
	| animate elements when they are in viewport
	| ----------------------------------------------------------------------------------
	*/
	$('.noIE .animated').waypoint(function() {
		var animation = $(this).data('animation');
		$(this).addClass('animation-done').addClass(animation);
	}, { 
		triggerOnce: true,
		offset: '60%' 
	});
	
	
	
	/*
	| ----------------------------------------------------------------------------------
	| Tab module 
	| ----------------------------------------------------------------------------------
	*/
	
	
	$('#myTab button').click(function (e) {
		e.preventDefault()
		$(this).tab('show')
	})



	/*
	| ----------------------------------------------------------------------------------
	| Animated filtering and sorting products
	| ----------------------------------------------------------------------------------
	*/
	var $products = $('#product-list-container'),
		layout_mode = $products.data('layout');
	
	if ( typeof layout_mode == 'undefined' || typeof layout_mode === undefined )
	{
		layout_mode = 'grid';
	}
	
	$('.display-mode li > a').on('click', function(e) {
		if ( $('.noIE').length )
		{
			e.preventDefault();
		}
		var $this = $(this);
		
		$this.parent().siblings('.active').removeClass('active');
		$this.parent().addClass('active');
		
		if ( $this[0].id == 'list-mode' )
		{
			$products.mixitup('toList');
		}
		else
		{
			$products.mixitup('toGrid');
		}
		
	});
	
	if ( typeof $.fn.mixitup !== undefined && typeof $.fn.mixitup != 'undefined' )
	{
		$products.mixitup({
			targetSelector: '.mix',
			/*
			filterSelector: '.filter',
			sortSelector: '.sort',
			buttonEvent: 'click',
			*/
			effects: ['fade','scale'],
			listEffects: null,
			easing: 'snap',
			layoutMode: layout_mode,
			targetDisplayGrid: 'inline-block',
			targetDisplayList: 'block',
			gridClass: 'product-grid',
			listClass: 'product-list',
			transitionSpeed: 450,
			showOnLoad: 'all',
			sortOnLoad: false,
			multiFilter: false,
			filterLogic: 'or',
			resizeContainer: true,
			minHeight: 0,
			failClass: 'fail',
			perspectiveDistance: '3000',
			perspectiveOrigin: '50% 50%',
			animateGridList: true,
			onMixLoad: null,
			onMixStart: null,
			onMixEnd: null
		});
	}


	/*
	| ----------------------------------------------------------------------------------
	| Product album functions - used in single product page
	| ----------------------------------------------------------------------------------
	*/
	if ( typeof $.fn.zoom !== undefined && typeof $.fn.zoom != 'undefined' )
	{
		$('.jq-zoom').zoom();
	}
	$('.product-single .product-image-additional > ul > li > a').on('click', function() {
		var $this = $(this),
			$cur = $this.closest('.product-image-additional').find('> a'),
			$to_move = $this.children();
			
		$to_move.hide();
		$cur.children(':not(.zoomImg)').hide().appendTo( $this );
		$cur.empty();
		$to_move.appendTo( $cur );
		$this.children().hide().show();
		$cur.children().fadeIn(300);
		$cur.zoom();
	});
	
	
	/*
	| ----------------------------------------------------------------------------------
	| Pretty checkboxs and radio buttons
	| ----------------------------------------------------------------------------------
	*/
	$('.checkable').prettyCheckable();
	
	
	/*
	| ----------------------------------------------------------------------------------
	| Quantity increment/decrement button set
	| ----------------------------------------------------------------------------------
	*/
	$('.qty-btngroup').each(function() {
		var $this = $(this),
			$input = $this.children('input[type="text"]'),
			val = $input.val();
		$this.children('.plus').on('click', function() {
			$input.val( ++val );
		});
		$this.children('.minus').on('click', function() {
			if ( val == 0 ) return;
			$input.val( --val );
		});
	});
	
	$('.my-cart .remove-item').on('click', function(e) {
		e.preventDefault();
		$(this).closest('tr').fadeOut(400, function() {
			$(this).remove();
		});
	});
	
	
	/*
	| ----------------------------------------------------------------------------------
	| Setup Google map
	| ----------------------------------------------------------------------------------
	*/
	init_gmap();
	function init_gmap() {
		if ( typeof google == 'undefined' ) return;
		$('.google-map').each(function() {
			var $this = $(this),
				map_id = $this.attr('id'),
				lat = parseFloat($this.attr('data-lat')),
				lng = parseFloat($this.attr('data-lng')),
				zoom = parseFloat($this.attr('data-zoom')),
				icon = $this.attr('data-icon');
			
			if ( isNaN(lat) ) lat = -37.817186;
			if ( isNaN(lng) ) lng = 144.964986;
			if ( isNaN(zoom) ) zoom = 15;
			var latLng = new google.maps.LatLng(lat,lng);
			
			var mlat = $this.data('mlat'),
				mlng = $this.data('mlng');
				
			var mapOptions = {
				center: latLng,
				zoom: zoom,
				mapTypeId: google.maps.MapTypeId.ROADMAP,
				scrollwheel: false,
				mapTypeControl: false,
				scaleControl: false,
				streetViewControl: false
			};
			
			var map = new google.maps.Map(document.getElementById(map_id), mapOptions);
			
			if ( ! (typeof mlat == 'undefined' || typeof mlng == 'undefined') )
			{
				var mlat_parts = mlat.toString().split(','),
					mlng_parts = mlng.toString().split(','), marker;
				
				for ( var i = 0; i <= mlat_parts.length; i++ )
				{
					if ( typeof mlng_parts[i] != 'undefined' )
					{
						var this_mlat = parseFloat($.trim(mlat_parts[i]));
							this_mlng = parseFloat($.trim(mlng_parts[i]));
						
						marker = new google.maps.Marker({
							position: new google.maps.LatLng(this_mlat, this_mlng),
							map: map,
							icon: icon
						});
						
						google.maps.event.addListener(map, "zoom_changed", function() { 
							var zoom = map.getZoom();
						});
						
						/*
						google.maps.event.addListener(marker, 'click', (function(marker, i) {
							return function() {
								infowindow.setContent(markers[i][0]);
								infowindow.open(map, marker);
							}
						})(marker, i));
						*/
					}
				}
			}
		});
	}

	

	
	function validate_contact(e) {
		var $form = $(e.target);
		var rule, val, bad_fields = new Array();
		$form.find('input, textarea').each(function() {
			rule = $(this).data('validate');
			if ( ! rule ) return;
			
			val = $(this).val();
			if ( ! val.match(rule) )
			{
				bad_fields.push(this);
			}
		});
		return bad_fields;
	}
	

var $slider = $('#slider');
	$slider.imagesLoaded(function() {
		$slider.nivoSlider({
			effect: 'slideInLeft,slideInRight',
			slices: 6,
			boxCols: 8, // For box animations
			boxRows: 4, // For box animations
			animSpeed: 500, // Slide transition speed
			pauseTime: 3000, // How long each slide will show
			startSlide: 0, // Set starting Slide (0 index)
			directionNav: true, // Next & Prev navigation
			controlNav: true, // 1,2,3... navigation
			controlNavThumbs: true, // Use thumbnails for Control Nav
			pauseOnHover: true, // Stop animation while hovering
			manualAdvance: true, // Force manual transitions
			prevText: 'Prev', // Prev directionNav text
			nextText: 'Next', // Next directionNav text
			randomStart: false, // Start on a random slide
			beforeChange: function(){}, // Triggers before a slide transition
			afterChange: function() {
				center_caption();
			}, // Triggers after a slide transition
			slideshowEnd: function(){}, // Triggers after all slides have been shown
			lastSlide: function(){}, // Triggers when last slide is shown
			afterLoad: function() {
				center_caption();
				
				// wrap control nav inside container
				var $controlNav = $slider.siblings('.nivo-controlNav');					
				$controlNav.wrapInner('<div class="container" />');
				$controlNav.show();
			} // Triggers when slider has loaded
		});
	});
	
	// vertical align center caption
	function center_caption()
	{
		var $caption = $slider.find('.slider-caption'),
			captionH = $caption.outerHeight(),
			// sliderH = $slider.height(),
			// let's hardcode it
			sliderH = 500,
			top = (sliderH - captionH) / 2;
		
		// console.log($caption[0], slider.animatingTo, captionH, sliderH, top);
		$caption.css({ 'top': top + 'px', 'visibility': 'visible' });
	}
						
						




	/* Search */
	$('.icon-search').bind('click', function() {
		url = $('base').attr('href') + 'index.php?route=product/search';
				 
		var search = $('input[name=\'search\']').attr('value');
		
		if (search) {
			url += '&search=' + encodeURIComponent(search);
		}
		
		location = url;
	});
	
	$('.search-cont input[name=\'search\']').bind('keydown', function(e) {
		if (e.keyCode == 13) {
			url = $('base').attr('href') + 'index.php?route=product/search';
			 
			var search = $('input[name=\'search\']').attr('value');
			
			if (search) {
				url += '&search=' + encodeURIComponent(search);
			}
			
			location = url;
		}
	});
	
	/* Ajax Cart */
	$('#cart li a').live('click', function() {
		$('#cart').addClass('active');
		
		$('#cart').load('index.php?route=module/cart #cart > *');
		
		$('#cart').live('mouseleave', function() {
			$(this).removeClass('active');
		});
	});



	
	$('.success img, .warning img, .attention img, .information img').live('click', function() {
		$(this).parent().fadeOut('slow', function() {
			$(this).remove();
		});
	});	
});

function addToCart(product_id, quantity) {
	quantity = typeof(quantity) != 'undefined' ? quantity : 1;

	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: 'product_id=' + product_id + '&quantity=' + quantity,
		dataType: 'json',
		success: function(json) {
			$('.success, .warning, .attention, .information, .error').remove();
			
			if (json['redirect']) {
				location = json['redirect'];
			}
			
			if (json['success']) {
				$('#notification').html('<div class="success" style="display: none;">' + json['success'] + '<img src="catalog/view/theme/commerca/image/close.png" alt="" class="close" /></div>');
				
				$('.success').fadeIn('slow');
				
				$('#cart-total').html(json['total']);
				
				$('html, body').animate({ scrollTop: 0 }, 'slow'); 
			}	
		}
	});
}
function addToWishList(product_id) {
	$.ajax({
		url: 'index.php?route=account/wishlist/add',
		type: 'post',
		data: 'product_id=' + product_id,
		dataType: 'json',
		success: function(json) {
			$('.success, .warning, .attention, .information').remove();
						
			if (json['success']) {
				$('#notification').after('<div class="success" style="display: none;">' + json['success'] + '<img src="catalog/view/theme/commerca/image/close.png" alt="" class="close" /></div>');
				
				$('.success').fadeIn('slow');
				
				$('#wishlist-total').html(json['total']);
				
				$('html, body').animate({ scrollTop: 0 }, 'slow');
			}	
		}
	});
}

function addToCompare(product_id) { 
	$.ajax({
		url: 'index.php?route=product/compare/add',
		type: 'post',
		data: 'product_id=' + product_id,
		dataType: 'json',
		success: function(json) {
			$('.success, .warning, .attention, .information').remove();
						
			if (json['success']) {
				$('#notification').html('<div class="success" style="display: none;">' + json['success'] + '<img src="catalog/view/theme/commerca/image/close.png" alt="" class="close" /></div>');
				
				$('.success').fadeIn('slow');
				
				$('#compare-total').html(json['total']);
				
				$('html, body').animate({ scrollTop: 0 }, 'slow'); 
			}	
		}
	});
}

