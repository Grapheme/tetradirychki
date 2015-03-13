
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
								  <table class="list">
									<thead>
									  <tr>
										<td class="left" colspan="2"><?php echo $text_return_detail; ?></td>
									  </tr>
									</thead>
									<tbody>
									  <tr>
										<td class="left" style="width: 50%;"><b><?php echo $text_return_id; ?></b> #<?php echo $return_id; ?><br />
										  <b><?php echo $text_date_added; ?></b> <?php echo $date_added; ?></td>
										<td class="left" style="width: 50%;"><b><?php echo $text_order_id; ?></b> #<?php echo $order_id; ?><br />
										  <b><?php echo $text_date_ordered; ?></b> <?php echo $date_ordered; ?></td>
									  </tr>
									</tbody>
								  </table>
								  <h2><?php echo $text_product; ?></h2>
								  <table class="list">
									<thead>
									  <tr>
										<td class="left" style="width: 33.3%;"><?php echo $column_product; ?></td>
										<td class="left" style="width: 33.3%;"><?php echo $column_model; ?></td>
										<td class="right" style="width: 33.3%;"><?php echo $column_quantity; ?></td>
									  </tr>
									</thead>
									<tbody>
									  <tr>
										<td class="left"><?php echo $product; ?></td>
										<td class="left"><?php echo $model; ?></td>
										<td class="right"><?php echo $quantity; ?></td>
									  </tr>
									</tbody>
								  </table>
								  <table class="list">
									<thead>
									  <tr>
										<td class="left" style="width: 33.3%;"><?php echo $column_reason; ?></td>
										<td class="left" style="width: 33.3%;"><?php echo $column_opened; ?></td>
										<td class="left" style="width: 33.3%;"><?php echo $column_action; ?></td>
									  </tr>
									</thead>
									<tbody>
									  <tr>
										<td class="left"><?php echo $reason; ?></td>
										<td class="left"><?php echo $opened; ?></td>
										<td class="left"><?php echo $action; ?></td>
									  </tr>
									</tbody>
								  </table>
								  <?php if ($comment) { ?>
								  <table class="list">
									<thead>
									  <tr>
										<td class="left"><?php echo $text_comment; ?></td>
									  </tr>
									</thead>
									<tbody>
									  <tr>
										<td class="left"><?php echo $comment; ?></td>
									  </tr>
									</tbody>
								  </table>
								  <?php } ?>
								  <?php if ($histories) { ?>
								  <h2><?php echo $text_history; ?></h2>
								  <table class="list">
									<thead>
									  <tr>
										<td class="left" style="width: 33.3%;"><?php echo $column_date_added; ?></td>
										<td class="left" style="width: 33.3%;"><?php echo $column_status; ?></td>
										<td class="left" style="width: 33.3%;"><?php echo $column_comment; ?></td>
									  </tr>
									</thead>
									<tbody>
									  <?php foreach ($histories as $history) { ?>
									  <tr>
										<td class="left"><?php echo $history['date_added']; ?></td>
										<td class="left"><?php echo $history['status']; ?></td>
										<td class="left"><?php echo $history['comment']; ?></td>
									  </tr>
									  <?php } ?>
									</tbody>
								  </table>
								  <?php } ?>
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