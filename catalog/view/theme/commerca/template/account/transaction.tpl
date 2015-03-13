
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
							  <p><?php echo $text_total; ?><b> <?php echo $total; ?></b>.</p>
							  <table class="list">
								<thead>
								  <tr>
									<td class="left"><?php echo $column_date_added; ?></td>
									<td class="left"><?php echo $column_description; ?></td>
									<td class="right"><?php echo $column_amount; ?></td>
								  </tr>
								</thead>
								<tbody>
								  <?php if ($transactions) { ?>
								  <?php foreach ($transactions  as $transaction) { ?>
								  <tr>
									<td class="left"><?php echo $transaction['date_added']; ?></td>
									<td class="left"><?php echo $transaction['description']; ?></td>
									<td class="right"><?php echo $transaction['amount']; ?></td>
								  </tr>
								  <?php } ?>
								  <?php } else { ?>
								  <tr>
									<td class="center" colspan="5"><?php echo $text_empty; ?></td>
								  </tr>
								  <?php } ?>
								</tbody>
							  </table>
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