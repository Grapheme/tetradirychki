
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
									<td class="left" colspan="2"><?php echo $text_order_detail; ?></td>
								  </tr>
								</thead>
								<tbody>
								  <tr>
									<td class="left" style="width: 50%;"><?php if ($invoice_no) { ?>
									  <b><?php echo $text_invoice_no; ?></b> <?php echo $invoice_no; ?><br />
									  <?php } ?>
									  <b><?php echo $text_order_id; ?></b> #<?php echo $order_id; ?><br />
									  <b><?php echo $text_date_added; ?></b> <?php echo $date_added; ?></td>
									<td class="left" style="width: 50%;"><?php if ($payment_method) { ?>
									  <b><?php echo $text_payment_method; ?></b> <?php echo $payment_method; ?><br />
									  <?php } ?>
									  <?php if ($shipping_method) { ?>
									  <b><?php echo $text_shipping_method; ?></b> <?php echo $shipping_method; ?>
									  <?php } ?></td>
								  </tr>
								</tbody>
							  </table>
							  <table class="list">
								<thead>
								  <tr>
									<td class="left"><?php echo $text_payment_address; ?></td>
									<?php if ($shipping_address) { ?>
									<td class="left"><?php echo $text_shipping_address; ?></td>
									<?php } ?>
								  </tr>
								</thead>
								<tbody>
								  <tr>
									<td class="left"><?php echo $payment_address; ?></td>
									<?php if ($shipping_address) { ?>
									<td class="left"><?php echo $shipping_address; ?></td>
									<?php } ?>
								  </tr>
								</tbody>
							  </table>
							  <table class="list">
								<thead>
								  <tr>
									<td class="left"><?php echo $column_name; ?></td>
									<td class="left"><?php echo $column_model; ?></td>
									<td class="right"><?php echo $column_quantity; ?></td>
									<td class="right"><?php echo $column_price; ?></td>
									<td class="right"><?php echo $column_total; ?></td>
									<?php if ($products) { ?>
									<td style="width: 1px;"></td>
									<?php } ?>
								  </tr>
								</thead>
								<tbody>
								  <?php foreach ($products as $product) { ?>
								  <tr>
									<td class="left"><?php echo $product['name']; ?>
									  <?php foreach ($product['option'] as $option) { ?>
									  <br />
									  &nbsp;<small> - <?php echo $option['name']; ?>: <?php echo $option['value']; ?></small>
									  <?php } ?></td>
									<td class="left"><?php echo $product['model']; ?></td>
									<td class="right"><?php echo $product['quantity']; ?></td>
									<td class="right"><?php echo $product['price']; ?></td>
									<td class="right"><?php echo $product['total']; ?></td>
									<td class="right"><a href="<?php echo $product['return']; ?>"><img src="catalog/view/theme/commerca/image/return.png" alt="<?php echo $button_return; ?>" title="<?php echo $button_return; ?>" /></a></td>
								  </tr>
								  <?php } ?>
								  <?php foreach ($vouchers as $voucher) { ?>
								  <tr>
									<td class="left"><?php echo $voucher['description']; ?></td>
									<td class="left"></td>
									<td class="right">1</td>
									<td class="right"><?php echo $voucher['amount']; ?></td>
									<td class="right"><?php echo $voucher['amount']; ?></td>
									<?php if ($products) { ?>
									<td></td>
									<?php } ?>
								  </tr>
								  <?php } ?>
								</tbody>
								<tfoot>
								  <?php foreach ($totals as $total) { ?>
								  <tr>
									<td colspan="3"></td>
									<td class="right"><b><?php echo $total['title']; ?>:</b></td>
									<td class="right"><?php echo $total['text']; ?></td>
									<?php if ($products) { ?>
									<td></td>
									<?php } ?>
								  </tr>
								  <?php } ?>
								</tfoot>
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
									<td class="left"><?php echo $column_date_added; ?></td>
									<td class="left"><?php echo $column_status; ?></td>
									<td class="left"><?php echo $column_comment; ?></td>
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