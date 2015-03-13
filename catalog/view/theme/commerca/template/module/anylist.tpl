<?php
$themeSettings =  $this->config->get('themecontrol'); 
$this->language->load('ninetheme_custom/ninetheme');
$text_view = 	$this->language->get('text_view');
$text_sale = 	$this->language->get('text_sale');
$text_hot = 	$this->language->get('text_hot');
$text_new = 	$this->language->get('text_new');
?>
	<!-- Anylist products -->
	<?php if (count($products)>0) { ?>
	<div class="section carousel-container <?php echo $themeSettings['anylistresponsive']; ?> <?php echo $themeSettings['anylistresponsivesm']; ?> <?php echo $themeSettings['anylistresponsivemd']; ?> <?php echo $themeSettings['anylistresponsivelg']; ?>">
		<div class="container">
			<div class="row carousel-container offer">
				<div class="col-xs-12 col-sm-12">
				<?php echo ($titlelink) ? '<a href="'.$titlelink.'">' : ''; ?>
					<h4 class="section-title"><?php echo $heading_title; ?></h4>
					<?php echo ($titlelink) ? '</a>' : ''; ?>
					<div class="section-body">
					
						<!-- carousel control nav direction -->
						<div class="carousel-control-arrows">
							<ul class="direction-nav carousel-direction">
								<li>
									<a class="carousel-prev btn" href="#">
										<span class="icon-arrow-left10"></span>
									</a>
								</li>
								<li>
									<a class="carousel-next btn" href="#">
										<span class="icon-arrow-right9"></span>
									</a>
								</li>
							</ul>
						</div>
						<!-- /carousel control nav direction -->
						
						<!-- carousel wrapper -->
						<div class="carousel-wrapper row" data-minitems="1" data-maxitems="4" data-loop="true" data-autoplay="false" data-slideshow-speed="3000" data-speed="300">
							<ul class="products-container product-grid carousel-list portrait ">
							 <?php foreach ($products as $product) { ?>
								<li>
									<div class="product">
										<a href="<?php echo $product['href']; ?>" class="product-link clearfix">
											<?php if($product['special']) { ?>
											<div class="ribbon special"><?php echo $this->language->get( 'text_sale' ); ?></div>
											<?php } else { ?>
											<?php if(isset($themeSettings['anylistribbon'])){ if($themeSettings['anylistribbon'] == 'hot') { ?>
											<div class="ribbon special"><?php echo $this->language->get( 'text_hot' ); ?></div>
											<?php } elseif(isset($themeSettings['anylistribbon'])){ if($themeSettings['anylistribbon'] == 'new') { ?>
											<div class="ribbon special"><?php echo $this->language->get( 'text_new' ); ?></div>
											<?php } elseif(isset($themeSettings['anylistribbon'])){ if($themeSettings['anylistribbon'] == 'disable') { ?>
											<div class="emptyf"></div>
											<?php } } ?>
											<?php } ?>
											<?php } ?>
											<?php } ?>
											<div class="product-thumbnail">
												<?php if ($product['thumb']) { ?>
												<img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" />
												<?php } ?>
											</div>
										</a>
										<div class="button-add">
										<div class="button-add-inner">
											<a onclick="addToWishList('<?php echo $product['product_id']; ?>');" class="wishlist-hover" 			title="<?php echo $this->language->get('button_wishlist'); ?>"> <?php echo $this->language->get('button_wishlist'); ?></a>
											<a onclick="addToCompare('<?php echo $product['product_id']; ?>');" class="compare-hover"   			title="<?php echo $this->language->get('button_compare'); ?>">  <?php echo $this->language->get('button_compare'); ?></a>
											<a onclick="addToCart('<?php echo $product['product_id']; ?>');"    class="add-to-cart cart-hover"      title="<?php echo $button_cart; ?>" >                           <?php echo $button_cart; ?></a>
										</div>
										</div>
										
										<div class="product-info clearfix">
											<h4 class="title">
												<a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
											</h4>
											<div class="details">
											
													<?php if ($product['price']) { ?>
													  <div class="product-price"> 
													   <?php if (!$product['special']) { ?>
															 <span class="price-org"><?php echo $product['price']; ?></span>
														 <?php } else { ?>
														 <span class="price-old"><?php echo $product['price']; ?></span> 
														 <span class="price-new"><?php echo $product['special']; ?></span> 
														<?php } ?>
													  </div>
														<?php } ?>
												
												<p class="by">
													<?php if ($product['rating']) { ?>
														<img src="catalog/view/theme/commerca/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" />
													<?php } ?>
												</p>
											</div>
										</div>
									</div>
								</li>
								<?php } ?>
							</ul>
						</div>
						<!-- /carousel wrapper -->
						
					</div>
				
				</div>
			</div>
		
		</div>
	</div>
	<?php } ?>