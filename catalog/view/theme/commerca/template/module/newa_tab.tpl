		
		<?php
		$themeSettings =  $this->config->get('themecontrol'); 
		$newa_tab =  $this->config->get('newa_tab');
		$this->language->load('ninetheme_custom/ninetheme');
		 $this->language->load('module/newa_tab'); 
		$text_view = 	$this->language->get('text_view');
		$text_sale = 	$this->language->get('text_sale');
		$text_hot = 	$this->language->get('text_hot');
		$text_new = 	$this->language->get('text_new');
		?>
		<div class="home-container <?php echo $themeSettings['tabresponsive']; ?> <?php echo $themeSettings['tabresponsivesm']; ?> <?php echo $themeSettings['tabresponsivemd']; ?> <?php echo $themeSettings['tabresponsivelg']; ?>">
		<div class="container">
		<div class="row">
		
			<!-- BUTTON NAVIGATION -->
			<div class="btn-group" id="myTab">
			
				<?php if(isset($newa_tab['latest']) && $newa_tab['latest']=='enable'){ ?>
						<?php if($latest_products){ ?>
						<!-- LATEST WORK TAB -->
							
						<button class="btn theme" href="#top"><?php echo $this->language->get('heading_titlel'); ?></button>
						<!-- LATEST WORK TAB -->
						<?php } ?>
					<?php } ?>
		
					<?php if(isset($newa_tab['featured']) && $newa_tab['featured']=='enable'){ ?>
						<?php if($featured_products){ ?>
						<!-- FEATURED WORK TAB -->
							
						<button class="btn theme" href="#feat"><?php echo $this->language->get('heading_titlef'); ?></button>
						<!-- FEATURED WORK TAB -->
						<?php } ?>
					<?php } ?>
						
					<?php if(isset($newa_tab['bestseller']) && $newa_tab['bestseller']=='enable'){ ?>
						<?php if($bestseller_products){ ?>
						<!-- BESTSELLER WORK TAB -->
							
						<button class="btn theme" href="#best"><?php echo $this->language->get('heading_titleb'); ?></button>
						<!-- BESTSELLER WORK TAB -->
						<?php } ?>
					<?php } ?>
					
					<?php if(isset($newa_tab['special']) && $newa_tab['special']=='enable'){ ?>
						<?php if($special_products){ ?>
						<!-- SPECIAL WORK TAB -->
						
						<button class="btn theme" href="#sales"><?php echo $this->language->get('heading_titles'); ?></button>
						<!-- SPECIAL WORK TAB -->
						<?php } ?>
				<?php } ?>

			</div>
			
			<!-- / BUTTON NAVIGATION -->
			
			
			
			<div class="tab-content row">
			
				<?php if(isset($newa_tab['latest']) && $newa_tab['latest']=='enable'){ ?>
					<?php if($latest_products){ ?>
					<!-- LATEST PRODUCTS -->

						<div class="tab-pane active animated" data-animation="rollIn" id="top">
						 <?php foreach ($latest_products as $product) { ?>
						  		<div class="col-xs-12 col-sm-4 col-lg-3 products-container">
									<div class="product">
										<a href="<?php echo $product['href']; ?>" class="product-link clearfix">
											<?php if($product['special']) { ?>
											<div class="ribbon special"><?php echo $this->language->get( 'text_sale' ); ?></div>
											<?php } else { ?>
											<?php if(isset($themeSettings['tabslatestribbon'])){ if($themeSettings['tabslatestribbon'] == 'hot') { ?>
											<div class="ribbon special"><?php echo $this->language->get( 'text_hot' ); ?></div>
											<?php } elseif(isset($themeSettings['tabslatestribbon'])){ if($themeSettings['tabslatestribbon'] == 'new') { ?>
											<div class="ribbon special"><?php echo $this->language->get( 'text_new' ); ?></div>
											<?php } elseif(isset($themeSettings['tabslatestribbon'])){ if($themeSettings['tabslatestribbon'] == 'disable') { ?>
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
							</div>
							 <?php } ?>
						</div>
					
					<!-- / LATEST PRODUCTS -->
					<?php } ?>
				<?php } ?>
				
				<?php if(isset($newa_tab['featured']) && $newa_tab['featured']=='enable'){ ?>
					<?php if($featured_products){ ?>
					<!-- FEATURED PRODUCTS -->
						<div class="tab-pane animated" data-animation="rollIn" id="feat">
						 <?php foreach ($featured_products as $product) { ?>
						  	<div class="col-xs-12 col-sm-4 col-lg-3 products-container">
									<div class="product">
										<a href="<?php echo $product['href']; ?>" class="product-link clearfix">
											<?php if($product['special']) { ?>
											<div class="ribbon special"><?php echo $this->language->get( 'text_sale' ); ?></div>
											<?php } else { ?>
											<?php if(isset($themeSettings['tabsfeaturedribbon'])){ if($themeSettings['tabsfeaturedribbon'] == 'hot') { ?>
											<div class="ribbon special"><?php echo $this->language->get( 'text_hot' ); ?></div>
											<?php } elseif(isset($themeSettings['tabsfeaturedribbon'])){ if($themeSettings['tabsfeaturedribbon'] == 'new') { ?>
											<div class="ribbon special"><?php echo $this->language->get( 'text_new' ); ?></div>
											<?php } elseif(isset($themeSettings['tabsfeaturedribbon'])){ if($themeSettings['tabsfeaturedribbon'] == 'disable') { ?>
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
							</div>
							 <?php } ?>
						</div>
					<!-- / FEATURED PRODUCTS -->
					<?php } ?>
				<?php } ?>
				
				<?php if(isset($newa_tab['bestseller']) && $newa_tab['bestseller']=='enable'){ ?>
					<?php if($bestseller_products){ ?>
					<!-- BESTSELLER PRODUCTS -->
						<div class="tab-pane animated" data-animation="rollIn" id="best">
							<?php foreach ($bestseller_products as $product) { ?>
						  		<div class="col-xs-12 col-sm-4 col-lg-3 products-container">
									<div class="product">
										<a href="<?php echo $product['href']; ?>" class="product-link clearfix">
											<?php if($product['special']) { ?>
											<div class="ribbon special"><?php echo $this->language->get( 'text_sale' ); ?></div>
											<?php } else { ?>
											<?php if(isset($themeSettings['tabsbestribbon'])){ if($themeSettings['tabsbestribbon'] == 'hot') { ?>
											<div class="ribbon special"><?php echo $this->language->get( 'text_hot' ); ?></div>
											<?php } elseif(isset($themeSettings['tabsbestribbon'])){ if($themeSettings['tabsbestribbon'] == 'new') { ?>
											<div class="ribbon special"><?php echo $this->language->get( 'text_new' ); ?></div>
											<?php } elseif(isset($themeSettings['tabsbestribbon'])){ if($themeSettings['tabsbestribbon'] == 'disable') { ?>
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
							</div>
							 <?php } ?>
						</div>
					<!-- / BESTSELLER PRODUCTS -->
					<?php } ?>
				<?php } ?>
				
				<?php if(isset($newa_tab['special']) && $newa_tab['special']=='enable'){ ?>
					<?php if($special_products){ ?>
					<!-- SPECIAL PRODUCTS -->
						<div class="tab-pane animated" data-animation="rollIn" id="sales">
							<?php foreach ($special_products as $product) { ?>
						  	<div class="col-xs-12 col-sm-4 col-lg-3 products-container">
								<div class="product">
										<a href="<?php echo $product['href']; ?>" class="product-link clearfix">
											<?php if($product['special']) { ?>
											<div class="ribbon special"><?php echo $this->language->get( 'text_sale' ); ?></div>
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
							</div>
							 <?php } ?>
						</div>
					<!-- / SPECIAL PRODUCTS -->
					<?php } ?>
				<?php } ?>
				
			</div>
	</div>

	</div>
	</div>