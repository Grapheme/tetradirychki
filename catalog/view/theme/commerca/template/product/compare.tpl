
			<?php echo $header; ?>
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
					

							<!-- MAIN CONTENT -->
							<div class="col-xs-12 col-sm-812 col-lg-12 main">
							<div class="section">
								  <?php if ($products) { ?>
								  <table class="compare-info">
									<thead>
									  <tr>
										<td class="compare-product" colspan="<?php echo count($products) + 1; ?>"><?php echo $text_product; ?></td>
									  </tr>
									</thead>
									<tbody>
									  <tr>
										<td><?php echo $text_name; ?></td>
										<?php foreach ($products as $product) { ?>
										<td class="name"><a href="<?php echo $products[$product['product_id']]['href']; ?>"><?php echo $products[$product['product_id']]['name']; ?></a></td>
										<?php } ?>
									  </tr>
									  <tr>
										<td><?php echo $text_image; ?></td>
										<?php foreach ($products as $product) { ?>
										<td><?php if ($products[$product['product_id']]['thumb']) { ?>
										  <img src="<?php echo $products[$product['product_id']]['thumb']; ?>" alt="<?php echo $products[$product['product_id']]['name']; ?>" />
										  <?php } ?></td>
										<?php } ?>
									  </tr>
									  <tr>
										<td><?php echo $text_price; ?></td>
										<?php foreach ($products as $product) { ?>
										<td><?php if ($products[$product['product_id']]['price']) { ?>
										  <?php if (!$products[$product['product_id']]['special']) { ?>
										  <?php echo $products[$product['product_id']]['price']; ?>
										  <?php } else { ?>
										  <span class="price-old"><?php echo $products[$product['product_id']]['price']; ?></span> <span class="price-new"><?php echo $products[$product['product_id']]['special']; ?></span>
										  <?php } ?>
										  <?php } ?></td>
										<?php } ?>
									  </tr>
									  <tr>
										<td><?php echo $text_model; ?></td>
										<?php foreach ($products as $product) { ?>
										<td><?php echo $products[$product['product_id']]['model']; ?></td>
										<?php } ?>
									  </tr>
									  <tr>
										<td><?php echo $text_manufacturer; ?></td>
										<?php foreach ($products as $product) { ?>
										<td><?php echo $products[$product['product_id']]['manufacturer']; ?></td>
										<?php } ?>
									  </tr>
									  <tr>
										<td><?php echo $text_availability; ?></td>
										<?php foreach ($products as $product) { ?>
										<td><?php echo $products[$product['product_id']]['availability']; ?></td>
										<?php } ?>
									  </tr>
									  <?php if ($review_status) { ?>
									  <tr>
										<td><?php echo $text_rating; ?></td>
										<?php foreach ($products as $product) { ?>
										<td><img src="catalog/view/theme/commerca/image/stars-<?php echo $products[$product['product_id']]['rating']; ?>.png" alt="<?php echo $products[$product['product_id']]['reviews']; ?>" /><br />
										  <?php echo $products[$product['product_id']]['reviews']; ?></td>
										<?php } ?>
									  </tr>
									  <?php } ?>
									  <tr>
										<td><?php echo $text_summary; ?></td>
										<?php foreach ($products as $product) { ?>
										<td class="description"><?php echo $products[$product['product_id']]['description']; ?></td>
										<?php } ?>
									  </tr>
									  <tr>
										<td><?php echo $text_weight; ?></td>
										<?php foreach ($products as $product) { ?>
										<td><?php echo $products[$product['product_id']]['weight']; ?></td>
										<?php } ?>
									  </tr>
									  <tr>
										<td><?php echo $text_dimension; ?></td>
										<?php foreach ($products as $product) { ?>
										<td><?php echo $products[$product['product_id']]['length']; ?> x <?php echo $products[$product['product_id']]['width']; ?> x <?php echo $products[$product['product_id']]['height']; ?></td>
										<?php } ?>
									  </tr>
									</tbody>
									<?php foreach ($attribute_groups as $attribute_group) { ?>
									<thead>
									  <tr>
										<td class="compare-attribute" colspan="<?php echo count($products) + 1; ?>"><?php echo $attribute_group['name']; ?></td>
									  </tr>
									</thead>
									<?php foreach ($attribute_group['attribute'] as $key => $attribute) { ?>
									<tbody>
									  <tr>
										<td><?php echo $attribute['name']; ?></td>
										<?php foreach ($products as $product) { ?>
										<?php if (isset($products[$product['product_id']]['attribute'][$key])) { ?>
										<td><?php echo $products[$product['product_id']]['attribute'][$key]; ?></td>
										<?php } else { ?>
										<td></td>
										<?php } ?>
										<?php } ?>
									  </tr>
									</tbody>
									<?php } ?>
									<?php } ?>
									<tr>
									  <td></td>
									  <?php foreach ($products as $product) { ?>
									  <td><input type="button" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button" /></td>
									  <?php } ?>
									</tr>
									<tr>
									  <td></td>
									  <?php foreach ($products as $product) { ?>
									  <td class="remove"><a href="<?php echo $product['remove']; ?>" class="button"><?php echo $button_remove; ?></a></td>
									  <?php } ?>
									</tr>
								  </table>
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