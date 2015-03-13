
			<?php echo $header; ?>
			<?php $themeSettings =  $this->config->get('themecontrol');  ?>
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
							  <?php foreach ($downloads as $download) { ?>
							  <div class="download-list">
								<div class="download-id"><b><?php echo $text_order; ?></b> <?php echo $download['order_id']; ?></div>
								<div class="download-status"><b><?php echo $text_size; ?></b> <?php echo $download['size']; ?></div>
								<div class="download-content">
								  <div><b><?php echo $text_name; ?></b> <?php echo $download['name']; ?><br />
									<b><?php echo $text_date_added; ?></b> <?php echo $download['date_added']; ?></div>
								  <div><b><?php echo $text_remaining; ?></b> <?php echo $download['remaining']; ?></div>
								  <div class="download-info">
									<?php if ($download['remaining'] > 0) { ?>
									<a href="<?php echo $download['href']; ?>"><img src="catalog/view/theme/commerca/image/download.png" alt="<?php echo $button_download; ?>" title="<?php echo $button_download; ?>" /></a>
									<?php } ?>
								  </div>
								</div>
							  </div>
							  <?php } ?>
							  <div class="pagination"><?php echo $pagination; ?></div>
							  <div class="buttons">
								<div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
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