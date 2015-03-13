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
							<div class="col-xs-12 col-sm-8 <?php if(isset($themeSettings['catpagelayout']) && $themeSettings['catpagelayout']!=''){ echo $themeSettings['catpagelayout']; } else { echo 'col-lg-9'; }?> main">
							<div class="section">
								  <?php if ($categories) { ?>
								  <p><b><?php echo $text_index; ?></b>
									<?php foreach ($categories as $category) { ?>
									&nbsp;&nbsp;&nbsp;<a href="index.php?route=product/manufacturer#<?php echo $category['name']; ?>"><b><?php echo $category['name']; ?></b></a>
									<?php } ?>
								  </p>
								  <?php foreach ($categories as $category) { ?>
								  <div class="manufacturer-list">
									<div class="manufacturer-heading"><?php echo $category['name']; ?><a id="<?php echo $category['name']; ?>"></a></div>
									<div class="manufacturer-content">
									  <?php if ($category['manufacturer']) { ?>
									  <?php for ($i = 0; $i < count($category['manufacturer']);) { ?>
									  <ul>
										<?php $j = $i + ceil(count($category['manufacturer']) / 4); ?>
										<?php for (; $i < $j; $i++) { ?>
										<?php if (isset($category['manufacturer'][$i])) { ?>
										<li><a href="<?php echo $category['manufacturer'][$i]['href']; ?>"><?php echo $category['manufacturer'][$i]['name']; ?></a></li>
										<?php } ?>
										<?php } ?>
									  </ul>
									  <?php } ?>
									  <?php } ?>
									</div>
								  </div>
								  <?php } ?>
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