
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
							  <h2><?php echo $text_my_account; ?></h2>
							  <div class="content">
								<ul>
								  <li><a href="<?php echo $edit; ?>"><?php echo $text_edit; ?></a></li>
								  <li><a href="<?php echo $password; ?>"><?php echo $text_password; ?></a></li>
								  <li><a href="<?php echo $address; ?>"><?php echo $text_address; ?></a></li>
								  <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
								</ul>
							  </div>
							  <h2><?php echo $text_my_orders; ?></h2>
							  <div class="content">
								<ul>
								  <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
								  <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
								  <?php if ($reward) { ?>
								  <li><a href="<?php echo $reward; ?>"><?php echo $text_reward; ?></a></li>
								  <?php } ?>
								  <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
								  <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
								  <li><a href="<?php echo $recurring; ?>"><?php echo $text_recurring; ?></a></li>
								</ul>
							  </div>
							  <h2><?php echo $text_my_newsletter; ?></h2>
							  <div class="content">
								<ul>
								  <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
								</ul>
							  </div>
							</div>
							</div>

			<!-- MAIN CONTENT -->

			</div>
			</div>
			</div>
			<?php echo $content_bottom; ?>
			</div>
			<?php echo $footer; ?>