	<?php echo $header; ?>
	<?php
	$themeSettings =  $this->config->get('themecontrol'); 
	$this->language->load('ninetheme_custom/ninetheme');
	$text_list = 	$this->language->get('text_list');
	$text_grid = 	$this->language->get('text_grid');
	$text_sale = 	$this->language->get('text_sale');
	?>
	<!-- SITE CONTENT
	=========================================================================== -->
	<div id="wrap-container">
		
		<!-- BREADCRUMBS AND DISPLAY MODE -->
		<div class="inner-action-bar">
			<div class="container">
			
				<div class="row">
					<div class="col-xs-12 col-sm-6 center-sm">
						<div class="breadcrumbs">
							<ul class="unstyled">
							<?php foreach ($breadcrumbs as $breadcrumb) { ?>
								<li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
							<?php } ?>
							
							</ul>
						</div>
					</div>
					
					<div class="col-xs-12 col-sm-12 space20 visible-xs"></div>
					
					<div class="col-xs-12 col-sm-6 center-sm">
						<div class="display-mode">
							<ul class="unstyled float-right">
								<?php echo $heading_title; ?>
							</ul>
						</div>
					</div>
				</div>
			
			</div>
		</div>
		
		<!-- /BREADCRUMBS AND DISPLAY MODE -->

		<!-- Content Top Area -->
		<?php echo $content_top; ?>
		<!-- /Content Top Area -->
		
		<!-- SIDEBAR + MAIN CONTENT CONTAINER -->
		
		<div class="main-content">
			<div class="container">
				<div class="row">
				<!-- SIDE BAR -->
					<?php echo $column_left; ?><?php echo $column_right; ?>
				<!-- /SIDE BAR -->
					
					<!-- MAIN CONTENT -->	
				<div class="col-xs-12 col-sm-8 <?php if(isset($themeSettings['catpagelayout']) && $themeSettings['catpagelayout']!=''){ echo $themeSettings['catpagelayout']; } else { echo 'col-lg-9'; }?> main">
						
						<div id="content-search" class="content section">
							<h4><?php echo $text_critea; ?></h4>
							<?php echo $entry_search; ?>
							<?php if ($search) { ?>
							<input type="text" name="search" value="<?php echo $search; ?>" />
							<?php } else { ?>
							<input type="text" name="search" value="<?php echo $search; ?>" onclick="this.value = '';" onkeydown="this.style.color = '000000'" style="color: #999;" />
							<?php } ?>
							<div class="space10 clearfix"></div>
							<select name="category_id">
								<option value="0"><?php echo $text_category; ?></option>
								<?php foreach ($categories as $category_1) { ?>
									<?php if ($category_1['category_id'] == $category_id) { ?>
										<option value="<?php echo $category_1['category_id']; ?>" selected="selected"><?php echo $category_1['name']; ?></option>
										<?php } else { ?>
										<option value="<?php echo $category_1['category_id']; ?>"><?php echo $category_1['name']; ?></option>
										<?php } ?>
										<?php foreach ($category_1['children'] as $category_2) { ?>
										<?php if ($category_2['category_id'] == $category_id) { ?>
										<option value="<?php echo $category_2['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
										<?php } else { ?>
										<option value="<?php echo $category_2['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
										<?php } ?>
										<?php foreach ($category_2['children'] as $category_3) { ?>
										<?php if ($category_3['category_id'] == $category_id) { ?>
										<option value="<?php echo $category_3['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
										<?php } else { ?>
										<option value="<?php echo $category_3['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
										<?php } ?>
									<?php } ?>
									<?php } ?>
								<?php } ?>
							</select>

							<?php if ($sub_category) { ?>
							<input type="checkbox" name="sub_category" value="1" id="sub_category" checked="checked" />
							<?php } else { ?>
							<input type="checkbox" name="sub_category" value="1" id="sub_category" />
							<?php } ?>
							<label for="sub_category"><?php echo $text_sub_category; ?></label>

							<?php if ($description) { ?>
							<input type="checkbox" name="description" value="1" id="description" checked="checked" />
							<?php } else { ?>
							<input type="checkbox" name="description" value="1" id="description" />
							<?php } ?>
							<div class="space10 clearfix"></div>
							<label for="description"><?php echo $entry_description; ?></label>
							<div class="space20 clearfix"></div>

							<div class="right"><input type="button" value="<?php echo $button_search; ?>" id="button-search" class="button" /></div>
							<div class="space20 clearfix"></div>
							<h3><?php echo $text_search; ?></h3>
						</div>
					 
					  
						<?php if ($products) { ?>					  
						<div class="filter-box">
							<div class="container">
								<div class="row">
									<div class="col-xs-12 col-sm-6 center-sm">
										<div class="filtersgroup">
											   <div class="limit"><span><?php echo $text_limit; ?></span>
											  <select onchange="location = this.value;">
												<?php foreach ($limits as $limits) { ?>
												<?php if ($limits['value'] == $limit) { ?>
												<option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
												<?php } else { ?>
												<option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
												<?php } ?>
												<?php } ?>
											  </select>
											</div>
											<div class="sort"><span><?php echo $text_sort; ?></span>
											  <select onchange="location = this.value;">
												<?php foreach ($sorts as $sorts) { ?>
												<?php if ($sorts['value'] == $sort . '-' . $order) { ?>
												<option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
												<?php } else { ?>
												<option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
												<?php } ?>
												<?php } ?>
											  </select>
											</div>
										</div>
									</div>
									
									<div class="col-xs-12 col-sm-12 space20 visible-xs"></div>
									
									<div class="col-xs-12 col-sm-6 center-sm">
										<div class="display-mode">
											<ul class="unstyled float-right">
												<li class="active">
													<a  id="grid-mode">
														<span class="icon-grid-alt"></span>
														<?php echo $this->language->get( 'text_grid' ); ?>
													</a>
												</li>
												<li>
													<a  id="list-mode">
														<span class="icon-list"></span>
														<?php echo $this->language->get( 'text_list' ); ?>
													</a>
												</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
								
								
						<!-- PRODUCT AREA -->
						<div id="product-list-container" class="section offer products-container portrait" data-layout="<?php if(isset($themeSettings['categorylist']) && $themeSettings['categorylist']!=''){ echo $themeSettings['categorylist']; } else { echo 'grid'; }?>">
							<div class="row">
							 <?php foreach ($products as $product) { ?>
								<div class="mix col-xs-12 col-sm-6 <?php if(isset($themeSettings['listingstyle']) && $themeSettings['listingstyle']!=''){ echo $themeSettings['listingstyle']; } else { echo 'col-lg-3'; }?>">
									<div class="product" data-price="110" data-discount="0" data-name="'<?php echo $product['name']; ?>'"   >
										<a href="<?php echo $product['href']; ?>" class="product-link clearfix">
											<?php if($product['special']) { ?>
												<div class="ribbon special"><?php echo $this->language->get( 'text_sale' ); ?></div>
											<?php } ?>
											<div class="product-thumbnail">
											<?php if ($product['thumb']) { ?>
												<img src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" class="cat-resize" alt="<?php echo $product['name']; ?>" />
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
											<div class="listdescription">

					
												<div class="text"><p><?php echo $product['description']; ?> <a href="<?php echo $product['href']; ?>" class="readmore" title="read more">[...] </a></p></div>
												<div class="add-to-cart">
													<a  onclick="addToCart('<?php echo $product['product_id']; ?>');" title="<?php echo $button_cart; ?>" class="btn btn-primary btn-iconed"><i class="icon-cart2"></i><span><?php echo $button_cart; ?></span></a>
												</div>
												<ul class="links">
													<li><a onclick="addToWishList('<?php echo $product['product_id']; ?>');" title="<?php echo $button_wishlist; ?>" ><i class="icon-heart2"></i></a></li>
													<li><a onclick="addToCompare('<?php echo $product['product_id']; ?>');"  title="<?php echo $button_compare; ?>" > <i class="icon-list5"></i> </a></li>
												</ul>
												<div class="ratings-list">
													<p>
														
													</p>
													<p class="by">
														<?php if ($product['rating']) { ?>
															<img src="catalog/view/theme/commerca/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" />
														<?php } ?>
													</p>
												</div>
											</div>
											<div class="details">
													<p>
														
													</p>
													<p class="by">
														<?php if ($product['rating']) { ?>
															<img src="catalog/view/theme/commerca/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" />
														<?php } ?>
													</p>
												</div>
											
											<a onclick="addToCart('<?php echo $product['product_id']; ?>');" title="<?php echo $button_cart; ?>" class="add-to-cart">
												<span class="icon-shopcart"></span>
											</a>

										</div>
										
									</div>
								</div>
								<?php } ?>
								
							</div>

						</div>
						<!-- /PRODUCT AREA -->	
						<!-- PAGINATION -->
						<div class="pagination-container">
							<div class="row">
								<div class="col-xs-12 col-sm-12">
									<ul class="pagination">
										<?php echo $pagination; ?>
									</ul>
								</div>

							</div>
						</div>
						<!-- PAGINATION -->
						<?php } else { ?>
						<div class="col-xs-12 col-sm-12 section">
							<div class="container">
								<div class="row">
									<div class="text-empty">
										<?php echo $text_empty; ?>
									</div>
								</div>
							</div>
						</div>
						<?php }?>
					</div>
				</div>
			</div>
		</div>
		<!-- /MAIN CONTENT -->
		<!-- Content bottom Area -->
		<?php echo $content_bottom; ?>
		<!-- /Content bottom Area -->
	</div>

	<!-- /SITE CONTENT -->

<script type="text/javascript">
<!--
$('#content-search input[name=\'search\']').keydown(function(e) {
	if (e.keyCode == 13) {
		$('#button-search').trigger('click');
	}
});

$('select[name=\'category_id\']').bind('change', function() {
	if (this.value == '0') {
		$('input[name=\'sub_category\']').attr('disabled', 'disabled');
		$('input[name=\'sub_category\']').removeAttr('checked');
	} else {
		$('input[name=\'sub_category\']').removeAttr('disabled');
	}
});

$('select[name=\'category_id\']').trigger('change');

$('#button-search').bind('click', function() {
	url = 'index.php?route=product/search';
	
	var search = $('#content-search input[name=\'search\']').attr('value');
	
	if (search) {
		url += '&search=' + encodeURIComponent(search);
	}

	var category_id = $('#content-search select[name=\'category_id\']').attr('value');
	
	if (category_id > 0) {
		url += '&category_id=' + encodeURIComponent(category_id);
	}
	
	var sub_category = $('#content-search input[name=\'sub_category\']:checked').attr('value');
	
	if (sub_category) {
		url += '&sub_category=true';
	}
		
	var filter_description = $('#content-search input[name=\'description\']:checked').attr('value');
	
	if (filter_description) {
		url += '&description=true';
	}

	location = url;
});


//-->
</script> 
<?php echo $footer; ?>