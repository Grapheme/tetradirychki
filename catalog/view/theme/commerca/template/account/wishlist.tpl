
			<?php echo $header; ?>
			<?php $themeSettings =  $this->config->get('themecontrol');  ?>
			<?php if ($success) { ?>
				<div class="success"><?php echo $success; ?><img src="catalog/view/theme/commerca/image/close.png" alt="" class="close" /></div>
			<?php } ?>
		
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
							<div class="col-xs-12 col-sm-8 <?php if(isset($themeSettings['accpagelayout']) && $themeSettings['accpagelayout']!=''){ echo $themeSettings['accpagelayout']; } else { echo 'col-lg-9'; }?> main">
							<div class="section">
							  <?php if ($products) { ?>
							  <div class="wishlist-info">
								<table>
								  <thead>
									<tr>
									  <td class="image"><?php echo $column_image; ?></td>
									  <td class="name"><?php echo $column_name; ?></td>
									  <td class="model"><?php echo $column_model; ?></td>
									  <td class="stock"><?php echo $column_stock; ?></td>
									  <td class="price"><?php echo $column_price; ?></td>
									  <td class="action"><?php echo $column_action; ?></td>
									</tr>
								  </thead>
								  <?php foreach ($products as $product) { ?>
								  <tbody id="wishlist-row<?php echo $product['product_id']; ?>">
									<tr>
									  <td class="image"><?php if ($product['thumb']) { ?>
										<a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
										<?php } ?></td>
									  <td class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></td>
									  <td class="model"><?php echo $product['model']; ?></td>
									  <td class="stock"><?php echo $product['stock']; ?></td>
									  <td class="price"><?php if ($product['price']) { ?>
										<div class="price">
										  <?php if (!$product['special']) { ?>
										  <?php echo $product['price']; ?>
										  <?php } else { ?>
										  <s><?php echo $product['price']; ?></s> <b><?php echo $product['special']; ?></b>
										  <?php } ?>
										</div>
										<?php } ?></td>
									  <td class="action"><img src="catalog/view/theme/commerca/image/cart-add.png" alt="<?php echo $button_cart; ?>" title="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" />&nbsp;&nbsp;<a href="<?php echo $product['remove']; ?>"><img src="catalog/view/theme/commerca/image/remove.png" alt="<?php echo $button_remove; ?>" title="<?php echo $button_remove; ?>" /></a></td>
									</tr>
								  </tbody>
								  <?php } ?>
								</table>
							  </div>
							  <div class="buttons">
								<div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
							  </div>
							  <?php } else { ?>
							  <div class="content"><?php echo $text_empty; ?></div>
							  <div class="buttons">
								<div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
							  </div>
							  <?php } ?>
						</div>
						</div>

			<!-- MAIN CONTENT -->

			</div>
			</div>
			</div>
			<?php echo $content_bottom; ?>
			</div>
			<?php echo $footer; ?>