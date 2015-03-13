
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
							<div class="col-xs-12 col-sm-8  <?php if(isset($themeSettings['affipagelayout']) && $themeSettings['affipagelayout']!=''){ echo $themeSettings['affipagelayout']; } else { echo 'col-lg-9'; }?> main">
							<div class="section">
							  <h2><?php echo $text_my_account; ?></h2>
							  <div class="content">
								<ul>
								  <li><a href="<?php echo $edit; ?>"><?php echo $text_edit; ?></a></li>
								  <li><a href="<?php echo $password; ?>"><?php echo $text_password; ?></a></li>
								  <li><a href="<?php echo $payment; ?>"><?php echo $text_payment; ?></a></li>
								</ul>
							  </div>
							  <h2><?php echo $text_my_tracking; ?></h2>
							  <div class="content">
								<ul>
								  <li><a href="<?php echo $tracking; ?>"><?php echo $text_tracking; ?></a></li>
								</ul>
							  </div>
							  <h2><?php echo $text_my_transactions; ?></h2>
							  <div class="content">
								<ul>
								  <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
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