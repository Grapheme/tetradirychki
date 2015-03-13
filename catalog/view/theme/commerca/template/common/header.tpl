	<!DOCTYPE html>
	<!--[if IE 7 ]><html class="ie ie7 lte9 lte8 lte7" lang="<?php echo $lang; ?>"><![endif]-->
	<!--[if IE 8]><html class="ie ie8 lte9 lte8" lang="<?php echo $lang; ?>">	<![endif]-->
	<!--[if IE 9]><html class="ie ie9 lte9" lang="<?php echo $lang; ?>"><![endif]-->
	<!--[if (gt IE 9)|!(IE)]><!-->
	<html dir="<?php echo $direction; ?>" class="noIE" lang="<?php echo $lang; ?>"><!--<![endif]-->
	<head>
	<meta charset="UTF-8" />
	<title><?php echo $title; ?></title>
	<base href="<?php echo $base; ?>" />
	<?php if ($description) { ?>
	<meta name="description" content="<?php echo $description; ?>" />
	<?php } ?>
	<?php if ($keywords) { ?>
	<meta name="keywords" content="<?php echo $keywords; ?>" />
	<?php } ?>
	<?php if ($icon) { ?>
	<link href="<?php echo $icon; ?>" rel="icon" />
	<?php } ?>

	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
			
	<!-- Favorite Icons
	============================================================================== -->
	<link rel="icon" href="images/favicon/favicon.ico" type="image/x-icon" />
	<link rel="apple-touch-icon-precomposed" sizes="144x144" href="catalog/view/theme/commerca/images/favicon/apple-touch-icon-144x144-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="72x72"   href="catalog/view/theme/commerca/images/favicon/apple-touch-icon-72x72-precomposed.png">
	<link rel="apple-touch-icon-precomposed"				 href="catalog/view/theme/commerca/images/favicon/apple-touch- icon-precomposed.png">

	<?php foreach ($links as $link) { ?>
	<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
	<?php } ?>
	
	<!-- CSS styles
	============================================================================== -->
	<?php 
		$themeSettings =  $this->config->get('themecontrol');
		$s_links = array(
			'facebook' 				=> 'Facebook',
			'twitter' 				=> 'Twitter',
			'googleplus' 			=> 'Google+',
			'deviantart' 			=> 'deviantart',
			'rss' 					=> 'RSS',
			'linkedin' 				=> 'Linkedin',
			'skype' 				=> 'Skype',
		);
		$count = 0;
		foreach ($s_links as $sv => $sc) {
		if(isset($themeSettings[$sv])){ 
				if($themeSettings[$sv] != '') { 
					$count++;
				}
			}
		}
	?>	
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="catalog/view/theme/commerca/fonts/open-sans/stylesheet.css" type="text/css">
	<link rel="stylesheet" href="catalog/view/theme/commerca/fonts/icomoon/style.css" type="text/css" media="screen" />
	<link rel="stylesheet" href="catalog/view/theme/commerca/css/bootstrap.min.css" type="text/css" media="screen" />
	<link rel="stylesheet" href="catalog/view/theme/commerca/css/style.css" type="text/css" media="screen" />
	<link rel="stylesheet" href="catalog/view/theme/commerca/css/responsive.css" type="text/css" media="screen" />
	<link rel="stylesheet" href="catalog/view/theme/commerca/css/<?php if(isset($themeSettings['animate']) && $themeSettings['animate']!=''){ echo $themeSettings['animate']; } else { echo 'noanimate'; }?>.css" type="text/css" media="screen" />
	<link rel="stylesheet" type="text/css" href="catalog/view/theme/commerca/css/<?php if(isset($themeSettings['colorStyle']) && $themeSettings['colorStyle']!=''){ echo $themeSettings['colorStyle']; } else { echo 'customs-style'; }?>.css" />
	<link rel="stylesheet" href="catalog/view/theme/commerca/stylesheet/stylesheet.css" type="text/css" />
	<link rel="stylesheet" href="catalog/view/theme/commerca/css/flexslider/flexslider.css" type="text/css" media="screen" />
	<link rel="stylesheet" href="catalog/view/theme/commerca/css/flexslider/default.css" type="text/css" media="screen" />
	<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />

	<?php foreach ($styles as $style) { ?>
	<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
	<?php } ?>
	
	<?php if(isset($themeSettings['customCss']) && ($themeSettings['customCss'] != '')){ ?>
	<style type="text/css">
	<?php echo $themeSettings['customCss']; ?>
	</style>
	<?php } ?>
	
	<?php if(isset($themeSettings['customjs']) && ($themeSettings['customjs'] != '')){ ?>
	<style type="text/css">
	<?php echo $themeSettings['customjs']; ?>
	</style>
	<?php } ?>
	
		 <!-- Font Settings -->
	<?php if(isset($themeSettings['fonts'])){ if($themeSettings['fonts'] != 'null') { ?>
		<link href="<?php echo $themeSettings['fonts']; ?>" rel='stylesheet' type='text/css' />
	<?php } } ?>
	<?php if(isset($themeSettings['fontstitle'])){ if($themeSettings['fontstitle'] != 'null') { ?>
		<link href="<?php echo $themeSettings['fontstitle']; ?>" rel='stylesheet' type='text/css' />
	<?php } } ?>
	
	 <style type="text/css">
	 
	body{
	<?php if(isset($themeSettings['fontsfamily'])){ if($themeSettings['fontsfamily'] != '') { ?>
	 font-family:<?php echo $themeSettings['fontsfamily']; ?>;
	<?php } } ?>	
	}
		<?php if(isset($themeSettings['custom_background_pattern'])){ if($themeSettings['custom_background_pattern'] != '') { ?>
			body { 
			background: url(<?php echo HTTP_IMAGE . $themeSettings['custom_background_pattern']; ?>) !important;
			 }
			 <?php } } ?>

	h1, h2, h3, h4, h5, h6, button  {
	<?php if(isset($themeSettings['fontsfamilytitle'])){ if($themeSettings['fontsfamilytitle'] != '') { ?>
	 font-family:<?php echo $themeSettings['fontsfamilytitle']; ?> !important;
	<?php } } ?>	
	}


	<?php if(isset($themeSettings['categorylistborder'])){ if($themeSettings['categorylistborder'] != '') { ?>
		.section.module-list-items, .outbox-mcatmod { border-color:#<?php echo $themeSettings['categorylistborder']; ?> !important;}
	<?php } } ?>
	<?php if(isset($themeSettings['categorylistbg'])){ if($themeSettings['categorylistbg'] != '') { ?>
		.section.module-list-items, .outbox-mcatmod { background-color:#<?php echo $themeSettings['categorylistbg']; ?> !important;}
	<?php } } ?>
	<?php if(isset($themeSettings['categorylistlink'])){ if($themeSettings['categorylistlink'] != '') { ?>
		.section.module-list-items ul li a, .box-mcatmod ul li.catfirst a.lfirst, ul.box-filter span , ul.box-filter label, .section-body  { color:#<?php echo $themeSettings['categorylistlink']; ?> !important;}
	<?php } } ?>
	<?php if(isset($themeSettings['categorylisth3border'])){ if($themeSettings['categorylisth3border'] != '') { ?>
		.section.module-list-items .section-title , .box-heading-mcatmod{ border-bottom-color:#<?php echo $themeSettings['categorylisth3border']; ?> !important;}
	<?php } } ?>
	<?php if(isset($themeSettings['categorylisth3before'])){ if($themeSettings['categorylisth3before'] != '') { ?>
		.section.module-list-items .section-title:after, .box-heading-mcatmod:after{ background-color:#<?php echo $themeSettings['categorylisth3before']; ?> !important;}
	<?php } } ?>
	

	
	<?php if(isset($themeSettings['carouselarrowsbg'])){ if($themeSettings['carouselarrowsbg'] != '') { ?>
		.section.carousel-container .direction-nav .btn { background-color:#<?php echo $themeSettings['carouselarrowsbg']; ?> !important;}
	<?php } } ?>
	<?php if(isset($themeSettings['carouselarrowsborder'])){ if($themeSettings['carouselarrowsborder'] != '') { ?>
		.section.carousel-container .direction-nav .btn, .direction-nav .btn > span { border-color:#<?php echo $themeSettings['carouselarrowsborder']; ?> !important; color:#<?php echo $themeSettings['carouselarrowsborder']; ?> !important;}
	<?php } } ?>
	<?php if(isset($themeSettings['carouselproafter'])){ if($themeSettings['carouselproafter'] != '') { ?>
		.section.carousel-container .products-container .product:before, .section.carousel-container .products-container .product:after, .products-container .product:before, .products-container .product:after {  background-color:#<?php echo $themeSettings['carouselproafter']; ?> !important;}
	<?php } } ?>
	<?php if(isset($themeSettings['carouselproafter'])){ if($themeSettings['carouselproafter'] != '') { ?>
		.products-container .product .ribbon {  border-top-color:#<?php echo $themeSettings['carouselproafter']; ?> !important; border-right-color:#<?php echo $themeSettings['carouselproafter']; ?> !important;}
	<?php } } ?>
	<?php if(isset($themeSettings['carouselh3border'])){ if($themeSettings['carouselh3border'] != '') { ?>
		.section.carousel-container h4.section-title { border-bottom-color:#<?php echo $themeSettings['carouselh3border']; ?> !important;}
	<?php } } ?>
	<?php if(isset($themeSettings['carouselh3after'])){ if($themeSettings['carouselh3after'] != '') { ?>
		.section.carousel-container .section-title:after{ background-color:#<?php echo $themeSettings['carouselh3after']; ?> !important;}
	<?php } } ?>
	<?php if(isset($themeSettings['carouselbuttonbg'])){ if($themeSettings['carouselbuttonbg'] != '') { ?>
	.home-container .tab-content .products-container .product .button-add a, .carousel-container .products-container .button-add a, #product-list-container.product-grid .mix_all .product .button-add a{ background-color:#<?php echo $themeSettings['carouselbuttonbg']; ?> !important;}
	<?php } } ?>
	<?php if(isset($themeSettings['carouselbuttonhover'])){ if($themeSettings['carouselbuttonhover'] != '') { ?>
	.home-container .tab-content .products-container .product .button-add a:hover, .carousel-container .products-container .button-add a:hover, #product-list-container.product-grid .mix_all .product .button-add a:hover{ background-color:#<?php echo $themeSettings['carouselbuttonhover']; ?> !important;}
	<?php } } ?>
	<?php if(isset($themeSettings['carouselbuttonborder'])){ if($themeSettings['carouselbuttonborder'] != '') { ?>
	.home-container .tab-content .products-container .product .button-add a, .carousel-container .products-container .button-add a, #product-list-container.product-grid .mix_all .product .button-add a{ border-color:#<?php echo $themeSettings['carouselbuttonborder']; ?> !important;}
	<?php } } ?>
	

	<?php if(isset($themeSettings['headertopbg'])){ if($themeSettings['headertopbg'] != '') { ?>
	#header-container-inner .headtop{ background-color:#<?php echo $themeSettings['headertopbg']; ?> !important;}
	<?php } } ?>
	<?php if(isset($themeSettings['headertoplink'])){ if($themeSettings['headertoplink'] != '') { ?>
	.top-links .link-menu li > a{ color:#<?php echo $themeSettings['headertoplink']; ?> !important;}
	<?php } } ?>
	<?php if(isset($themeSettings['headercartbg'])){ if($themeSettings['headercartbg'] != '') { ?>
	.relative .btn, .cart-items{ background-color:#<?php echo $themeSettings['headercartbg']; ?> !important;}
	<?php } } ?>
	<?php if(isset($themeSettings['headercartborder'])){ if($themeSettings['headercartborder'] != '') { ?>
	.relative .btn, .cart-items{ border-color:#<?php echo $themeSettings['headercartborder']; ?> !important;}
	<?php } } ?>
	<?php if(isset($themeSettings['headercartlink'])){ if($themeSettings['headercartlink'] != '') { ?>
	.relative .btn, .cart-items, .cart-items .items .item-name, .cart-items .items .item-price, .cart-items .header{ color:#<?php echo $themeSettings['headercartlink']; ?> !important;}
	<?php } } ?>
	<?php if(isset($themeSettings['headermenubg'])){ if($themeSettings['headermenubg'] != '') { ?>
	#menu-container .inner{ background-color:#<?php echo $themeSettings['headermenubg']; ?> !important;}
	<?php } } ?>
	<?php if(isset($themeSettings['headermenuborder'])){ if($themeSettings['headermenuborder'] != '') { ?>
	#menu-container .inner{ border-color:#<?php echo $themeSettings['headermenuborder']; ?> !important;}
	<?php } } ?>
	<?php if(isset($themeSettings['headermenuhover'])){ if($themeSettings['headermenuhover'] != '') { ?>
	.main-menu > li.active > a:before, .main-menu > li > a:hover:before, .main-menu > li.active > a:after, .main-menu > li > a:hover:after{ background-color:#<?php echo $themeSettings['headermenuhover']; ?> !important;}
	<?php } } ?>
	<?php if(isset($themeSettings['headermenulink'])){ if($themeSettings['headermenulink'] != '') { ?>
	.main-menu > li > a{ color:#<?php echo $themeSettings['headermenulink']; ?> !important;}
	<?php } } ?>
	<?php if(isset($themeSettings['headersearchbg'])){ if($themeSettings['headersearchbg'] != '') { ?>
	.search-cont{ background-color:#<?php echo $themeSettings['headersearchbg']; ?> !important;}
	<?php } } ?>
	<?php if(isset($themeSettings['headermenudropbg'])){ if($themeSettings['headermenudropbg'] != '') { ?>
	.main-menu li > ul, .main-menu .mega-menu, .main-menu li > ul > li > a{ background-color:#<?php echo $themeSettings['headermenudropbg']; ?> !important; border-color:#<?php echo $themeSettings['headermenudropbg']; ?> !important;}
	<?php } } ?>
	<?php if(isset($themeSettings['headermenudropborder'])){ if($themeSettings['headermenudropborder'] != '') { ?>
	.main-menu li > ul, .main-menu .mega-menu{ border-color:#<?php echo $themeSettings['headermenudropborder']; ?> !important;}
	<?php } } ?>
	<?php if(isset($themeSettings['headermenudroplink'])){ if($themeSettings['headermenudroplink'] != '') { ?>
	.mega-menu ul > li > a, .main-menu li > ul > li > a{ color:#<?php echo $themeSettings['headermenudroplink']; ?> !important;}
	<?php } } ?>
	<?php if(isset($themeSettings['breadcrumbslink'])){ if($themeSettings['breadcrumbslink'] != '') { ?>
	.inner-action-bar .container, .breadcrumbs ul > li > a{ color:#<?php echo $themeSettings['breadcrumbslink']; ?> !important;}
	<?php } } ?>
	<?php if(isset($themeSettings['breadcrumbsbg'])){ if($themeSettings['breadcrumbsbg'] != '') { ?>
	.inner-action-bar .container{ background-color:#<?php echo $themeSettings['breadcrumbsbg']; ?> !important;}
	<?php } } ?>

	
	<?php if(isset($themeSettings['footerallbg'])){ if($themeSettings['footerallbg'] != '') { ?>
	#footer-container { background-color:#<?php echo $themeSettings['footerallbg']; ?> !important;}
	<?php } } ?>
	<?php if(isset($themeSettings['footertopbg'])){ if($themeSettings['footertopbg'] != '') { ?>
	 .footer-inner.alt{ background-color :#<?php echo $themeSettings['footertopbg']; ?> !important;}
	<?php } } ?>
	<?php if(isset($themeSettings['footertoplink'])){ if($themeSettings['footertoplink'] != '') { ?>
	 .footer-inner.alt .container,  .footer-inner.alt .container a, .iconlist .media-body a{ color :#<?php echo $themeSettings['footertoplink']; ?> !important;}
	<?php } } ?>
	<?php if(isset($themeSettings['footertopborder'])){ if($themeSettings['footertopborder'] != '') { ?>
	.footer-inner.alt .container { border-color:#<?php echo $themeSettings['footertopborder']; ?> !important;}
	<?php } } ?>
	<?php if(isset($themeSettings['footertopbefore'])){ if($themeSettings['footertopbefore'] != '') { ?>
	.footer-inner.alt:before, .footer-inner.alt:after { background-color:#<?php echo $themeSettings['footertopbefore']; ?> !important;}
	<?php } } ?>
	<?php if(isset($themeSettings['footerbottombg'])){ if($themeSettings['footerbottombg'] != '') { ?>
	 .footer-inner.main{ background-color :#<?php echo $themeSettings['footerbottombg']; ?> !important;}
	<?php } } ?>
	<?php if(isset($themeSettings['footerbottomlink'])){ if($themeSettings['footerbottomlink'] != '') { ?>
	 .footer-inner.main .container,  .footer-inner.alt .container a, .iconlist .media-body a, .widget-linklist ul > li > a{ color :#<?php echo $themeSettings['footerbottomlink']; ?> !important;}
	<?php } } ?>
	<?php if(isset($themeSettings['footerbottomborder'])){ if($themeSettings['footerbottomborder'] != '') { ?>
	.footer-inner.main .container { border-color:#<?php echo $themeSettings['footerbottomborder']; ?> !important;}
	<?php } } ?>
	<?php if(isset($themeSettings['footerbottombefore'])){ if($themeSettings['footerbottombefore'] != '') { ?>
	.footer-inner.main:before, .footer-inner.main:after { background-color:#<?php echo $themeSettings['footerbottombefore']; ?> !important;}
	<?php } } ?>
	<?php if(isset($themeSettings['footerpowered'])){ if($themeSettings['footerpowered'] != '') { ?>
	.footer-powered .container { background-color:#<?php echo $themeSettings['footerpowered']; ?> !important;}
	<?php } } ?>
	<?php if(isset($themeSettings['footerpoweredlink'])){ if($themeSettings['footerpoweredlink'] != '') { ?>
	.footer-powered .container, .footer-powered .container ul li a  { color:#<?php echo $themeSettings['footerpoweredlink']; ?> !important;}
	<?php } } ?>
	</style>

	<!-- Javascripts -->
	
	<!--[if IE 8]><script src="catalog/view/theme/commerca/js/respond.min.js"></script><![endif]-->
	
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
	<script>window.jQuery || document.write('<script src="catalog/view/theme/commerca/js/jquery.min.js"><\/script>');</script>
	<script src="catalog/view/theme/commerca/js/flexslider.js"></script>
	<script src="catalog/view/theme/commerca/js/carousel.js"></script>
	<script src="catalog/view/theme/commerca/js/mixitup.js"></script>
	<script src="catalog/view/theme/commerca/js/nouislider.js"></script>
	<script src="catalog/view/theme/commerca/js/zoom.js"></script>
	<script src="catalog/view/theme/commerca/js/modernizr.js"></script>
	<script src="catalog/view/theme/commerca/js/bootstrap.js"></script>
	<script src="catalog/view/theme/commerca/js/package.js"></script>
	<script src="catalog/view/theme/commerca/js/tweet.js"></script>
	<script src="//code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
	<script type="text/javascript" src="catalog/view/javascript/common.js"></script>
	
	<?php foreach ($scripts as $script) { ?>
	<script type="text/javascript" src="<?php echo $script; ?>"></script>
	<?php } ?>

	<?php if ($stores) { ?>
	<script type="text/javascript"><!--
	$(document).ready(function() {
	<?php foreach ($stores as $store) { ?>
	$('body').prepend('<iframe src="<?php echo $store; ?>" style="display: none;"></iframe>');
	<?php } ?>
	});
	//--></script>
	<?php } ?>
	
	<?php echo $google_analytics; ?>
	
	</head>

	<body>
	<!-- PAGE WRAPPER -->
		<div id="site-wrapper" class="<?php if(isset($themeSettings['layoutStyle']) && $themeSettings['layoutStyle']!=''){ echo $themeSettings['layoutStyle']; } else { echo 'wide'; }?>">
			<!-- SITE HEADER -->
			<div id="header-container">
				
				<!-- top header bar -->
				<div id="header-container-inner">
					<div class="container headtop">
						<div class="row">
							<!-- top header links -->
							<div class="col-xs-12 col-sm-6 top-links center-sm">
										
								<ul class="link-menu cl-effect-21">
									<li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
									<li><a href="<?php echo $wishlist; ?>" id="wishlist-total"><?php echo $text_wishlist; ?></a></li>
									<li><a href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a></li>
									<li><a href="<?php echo $shopping_cart; ?>"><?php echo $text_shopping_cart; ?></a></li>
									<!-- currency -->
									<?php echo $currency; ?>
									<!-- language -->
									<?php echo $language; ?>
									<?php foreach ($modules as $module) { ?>
										<?php echo $module; ?>
									<?php } ?>
								</ul>
								
							</div>
							<!-- /top header links -->
							<!-- social icons -->
							<?php if($count) { ?>	
								<div class="col-xs-12 col-sm-6 header-social-icons multicolor center-sm">
									<ul>
										<?php 
											foreach ($s_links as $sv => $sc) {
												if(isset($themeSettings[$sv])){ 
													if($themeSettings[$sv] != '') { 
														echo '<li><a href="' . $themeSettings[$sv] . '" class="' . $sv . '" title="' . $sc . '" target="_blank"></a></li>';
													}
												}
											}
										?>
									</ul>
								</div>
								<!-- /social icons -->
							<?php } ?>
						</div>
					
					</div>
				</div>
				<!-- /top header bar -->
				
				<!-- main header -->
				<div id="header-center">
					<div class="container">
						
						<div class="row">
						
							<!-- logo -->
							<div class="col-xs-6 col-sm-6 col-lg-10 logo-container">
							  <?php if ($logo) { ?>
								<strong class="logo animated fadeInRight">
								<a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a>

								</strong>
								<?php } ?>
							</div>
							<!-- /logo -->

							<!-- cart -->
							<div class="col-xs-6 col-lg-2  col-sm-6 cart-container">
								<div class="header-cart animated fadeInLeft">
								  
								  <?php echo $cart; ?>
									
								</div>
							</div>
							<!-- /cart -->
							
						</div>					
					</div>
				</div>
				<!-- /main header -->
				
				<!-- Navigation menu -->
				<div id="menu-container">
					<div class="container">
						
						<div class="inner">
						
							<!-- main menu -->
						
							<ul class="main-menu menu visible-lg">
								<li class="active">
									<a href="<?php echo $home; ?>"><i class="icon-home"></i></a>
								</li>
								<?php if ($categories) { ?>
                                <?php foreach ($categories as $category) { ?>
								 <?php if($category['column'] > 1)  { ?>
								<li>
									<a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
									 <?php if ($category['children']) { ?>
									<div class="mega-menu">
										<div class="row">
										 <?php for ($i = 0; $i < count($category['children']);) { ?>
											<div class="col-lg-3 mm-col">

												<div class="row">
													<div class="mm-row">
													
														<div class="col-xs-6 col-sm-6">
														 <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
															<ul>
																  <?php for (; $i < $j; $i++) { ?>
																  <?php if (isset($category['children'][$i])) { ?>
																  <li><a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a></li>
																  <?php } ?>
																  <?php } ?>
															</ul>
														</div>
													</div>
												</div>
											</div>	 
											<?php } ?>
										</div>
									</div>
									<?php } ?>
								</li>

								<?php } else { ?>
								<li>
								<a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
								<?php for ($i = 0; $i < count($category['children']);) { ?>
									<?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
										<ul>
											<?php for (; $i < $j; $i++) { ?>
												<?php if (isset($category['children'][$i])) { ?>
													<li><a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a></li>
												<?php } ?>
											<?php } ?>
										</ul>
									<?php } ?>
								</li>
								<?php } ?>
								<?php } ?>
								<?php } ?>
							</ul>
							<!-- /main menu -->

							<!-- mobile main menu -->
							<div class="mobile-menu hidden-lg">
								<div id="dl-menu" class="dl-menuwrapper">
									<button class="dl-trigger"><i class="icon-list5"></i></button>
									<ul class="dl-menu">
										<?php foreach ($categories as $category) { ?>
										<a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
										<li>
											<?php if ($category['children']) { ?>
											<?php for ($i = 0; $i < count($category['children']);) { ?>
												<ul class="dl-submenu">
													<?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
													<?php for (; $i < $j; $i++) { ?>
													<?php if (isset($category['children'][$i])) { ?>
														<li><a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a></li>
													<?php } ?>
													<?php } ?>
												</ul>
											<?php } ?>
											<?php } ?>
										</li>
										<?php } ?>
									</ul>
								</div>
								<!-- /dl-menuwrapper -->
							</div>
							<!-- /mobile main menu -->
							
							<!-- search box -->
							<div class="search-cont">
								
									<input type="text" name="search" class="query" placeholder="<?php echo $text_search; ?>" value="<?php echo $search; ?>"/>
									<button class="btn-search"><i class="icon-search"></i></button>
								
							</div>
							<?php if(isset($themeSettings['autocompleteEnable']) && ($themeSettings['autocompleteEnable'] == 'enable')){ ?>
							<script type="text/javascript">
							<!--
								$('input[name=\'search\']').autocomplete({
									delay: 0,
									source: function(request, response) {
										$.ajax({
											url: 'index.php?route=affiliate/tracking/autocomplete&filter_name=' +  encodeURIComponent(request.term),
											dataType: 'json',
											success: function(json) {		
												response($.map(json, function(item) {
													return {
														label: item.name,
														value: item.link
													}
												}));
											}
										});
									},
									select: function(event, ui) {
										$('input[name=\'search\']').val(ui.item.label);
										location.href = ui.item.value;
										return false;
									},
									focus: function(event, ui) {
										return false;
									}
								});
								//-->
							</script> 
							<?php } ?>
							<!-- /search box -->
						</div>
					</div>
				</div>
				<!-- /Navigation menu -->
			</div>
			<!-- /SITE HEADER -->
			<?php if(isset($themeSettings['headericonic']) && ($themeSettings['headericonic'] == 'enable')){ ?>
			<!-- START ANNONCE -->
			<div id="header-annonce" class="header-annonce">
				<div class="container">
					<div class="col-lg-1 col-md-1 col-sm-2 col-xs-2 annonce">
						<div class="annonce-inner">
							<a href="<?php echo $themeSettings['icon_box_link_1']; ?>"><i class="icon-<?php echo $themeSettings['icon_box_1']; ?>"></i></a>
						</div>
					</div>
					<div class="col-lg-1 col-md-1 col-sm-2 col-xs-2 annonce">
						<div class="annonce-inner">
							<a href="<?php echo $themeSettings['icon_box_link_2']; ?>"><i class="icon-<?php echo $themeSettings['icon_box_2']; ?>"></i></a>
						</div>
					</div>
					<div class="col-lg-1 col-md-1 col-sm-2 col-xs-2 annonce">
						<div class="annonce-inner">
							<a href="<?php echo $themeSettings['icon_box_link_3']; ?>"><i class="icon-<?php echo $themeSettings['icon_box_3']; ?>"></i></a>
						</div>
					</div>
					<div class="col-lg-1 col-md-1 col-sm-2 col-xs-2 annonce">
						<div class="annonce-inner">
							<a href="<?php echo $themeSettings['icon_box_link_4']; ?>"><i class="icon-<?php echo $themeSettings['icon_box_4']; ?>"></i></a>
						</div>
					</div>
					<div class="col-lg-1 col-md-1 col-sm-2 col-xs-2 annonce">
						<div class="annonce-inner">
							<a href="<?php echo $themeSettings['icon_box_link_5']; ?>"><i class="icon-<?php echo $themeSettings['icon_box_5']; ?>"></i></a>
						</div>
					</div>
					<div class="col-lg-1 col-md-1 col-sm-2 col-xs-2 annonce">
						<div class="annonce-inner">
							<a href="<?php echo $themeSettings['icon_box_link_6']; ?>"><i class="icon-<?php echo $themeSettings['icon_box_6']; ?>"></i></a>
						</div>
					</div>
					<div class="col-lg-1 col-md-1 col-sm-2 col-xs-2 annonce">
						<div class="annonce-inner">
							<a href="<?php echo $themeSettings['icon_box_link_7']; ?>"><i class="icon-<?php echo $themeSettings['icon_box_7']; ?>"></i></a>
						</div>
					</div>
					<div class="col-lg-1 col-md-1 col-sm-2 col-xs-2 annonce">
						<div class="annonce-inner">
							<a href="<?php echo $themeSettings['icon_box_link_8']; ?>"><i class="icon-<?php echo $themeSettings['icon_box_8']; ?>"></i></a>
						</div>
					</div>
					<div class="col-lg-1 col-md-1 col-sm-2 col-xs-2 annonce">
						<div class="annonce-inner">
							<a href="<?php echo $themeSettings['icon_box_link_9']; ?>"><i class="icon-<?php echo $themeSettings['icon_box_9']; ?>"></i></a>
						</div>
					</div>
					<div class="col-lg-1 col-md-1 col-sm-2 col-xs-2 annonce">
						<div class="annonce-inner">
							<a href="<?php echo $themeSettings['icon_box_link_10']; ?>"><i class="icon-<?php echo $themeSettings['icon_box_10']; ?>"></i></a>
						</div>
					</div>
					<div class="col-lg-1 col-md-1 col-sm-2 col-xs-2 annonce">
						<div class="annonce-inner">
							<a href="<?php echo $themeSettings['icon_box_link_11']; ?>"><i class="icon-<?php echo $themeSettings['icon_box_11']; ?>"></i></a>
						</div>
					</div>
					<div class="col-lg-1 col-md-1 col-sm-2 col-xs-2 annonce">
						<div class="annonce-inner">
							<a href="<?php echo $themeSettings['icon_box_link_12']; ?>"><i class="icon-<?php echo $themeSettings['icon_box_12']; ?>"></i></a>
						</div>
					</div>
				</div>
			</div>
			<!-- END ANNONCE -->
			<?php } ?>	
			<?php if ($error) { ?>
				<div class="warning"><?php echo $error ?><img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>
			<?php } ?>
			<div id="notification"></div>
