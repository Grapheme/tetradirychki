			
			<?php echo $header; ?>
			<?php $themeSettings =  $this->config->get('themecontrol');  ?>
			<?php if ($attention) { ?>
			<div class="attention"><?php echo $attention; ?><img src="catalog/view/theme/commerca/image/close.png" alt="" class="close" /></div>
			<?php } ?>
			<?php if ($success) { ?>
			<div class="success"><?php echo $success; ?><img src="catalog/view/theme/commerca/image/close.png" alt="" class="close" /></div>
			<?php } ?>
			<?php if ($error_warning) { ?>
			<div class="warning"><?php echo $error_warning; ?><img src="catalog/view/theme/commerca/image/close.png" alt="" class="close" /></div>
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
		
		<!-- Content Top module Area -->
		
		<?php echo $content_top; ?>
		
		<!-- /Content Top module Area -->
		
		<!-- SIDEBAR + MAIN CONTENT CONTAINER -->
				
		<div class="main-content">
		<div class="container">
		<div class="row">
							
		<!-- SIDE BAR -->
			<?php echo $column_left; ?><?php echo $column_right; ?>
		<!-- /SIDE BAR -->
		
		<!-- MAIN CONTENT -->
		<div class="col-xs-12 col-sm-8  <?php if(isset($themeSettings['cartpagelayout']) && $themeSettings['cartpagelayout']!=''){ echo $themeSettings['cartpagelayout']; } else { echo 'col-lg-9'; }?> main">
							
			<!-- TABLE CONTENT -->
		  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
			<div class="section">
			<div class="cart-info">
			
			  <table class="my-cart">
				<thead>
				  <tr>
					<td class="image"><?php echo $column_image; ?></td>
					<td class="name"><?php echo $column_name; ?></td>
					<td class="model"><?php echo $column_model; ?></td>
					<td class="quantity"><?php echo $column_quantity; ?></td>
					
					<td class="price"><?php echo $column_price; ?></td>
					<td class="total"><?php echo $column_total; ?></td>

				  </tr>
				</thead>
				<tbody>
				  <?php foreach ($products as $product) { ?>
				  <?php if($product['recurring']): ?>
				  <tr>
					  <td colspan="6" style="border:none;"><image src="catalog/view/theme/commerca/image/reorder.png" alt="" title="" style="float:left;" /><span style="float:left;line-height:18px; margin-left:10px;"> 
						  <strong><?php echo $text_recurring_item ?></strong>
						  <?php echo $product['profile_description'] ?>
					  </td>
					</tr>
				<?php endif; ?>
				  <tr>
					<td class="image"><?php if ($product['thumb']) { ?>
					  <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
					  <?php } ?></td>
					<td class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
					  <?php if (!$product['stock']) { ?>
					  <span class="stock">***</span>
					  <?php } ?>
					  <div>
						<?php foreach ($product['option'] as $option) { ?>
						- <small><?php echo $option['name']; ?>: <?php echo $option['value']; ?></small><br />
						<?php } ?>
					
						  <?php if($product['recurring']): ?>
						- <small><?php echo $text_payment_profile ?>: <?php echo $product['profile_name'] ?></small>
						<?php endif; ?>
					  </div>
					  <?php if ($product['reward']) { ?>
					  <small><?php echo $product['reward']; ?></small>
					  <?php } ?></td>
					<td class="model"><?php echo $product['model']; ?></td>
					
					<td class="hidden-xs">
						<div class="qty-btngroup">
							<button type="button" class="minus">-</button>
							<input type="text" name="quantity[<?php echo $product['key']; ?>]" value="<?php echo $product['quantity']; ?>" size="1" />
							<button type="button" class="plus">+</button>
							 <input type="image" style="margin-top: 2px;" src="catalog/view/theme/commerca/image/update.png" alt="<?php echo $button_update; ?>" title="<?php echo $button_update; ?>" />
							 <a href="<?php echo $product['remove']; ?>"><img src="catalog/view/theme/commerca/image/remove.png" style="margin-top: -18px;"  alt="<?php echo $button_remove; ?>" title="<?php echo $button_remove; ?>" /></a>
						</div>
					  </td>
					<td class="price"><span class="price"><?php echo $product['price']; ?></span></td>
					<td class="total"><?php echo $product['total']; ?></td>
				  </tr>
				  <?php } ?>
				  <?php foreach ($vouchers as $vouchers) { ?>
				  <tr>
					<td class="image"></td>
					<td class="name"><?php echo $vouchers['description']; ?></td>
					<td class="model"></td>
					<td class="quantity"><input type="text" name="" value="1" size="1" disabled="disabled" />
					  &nbsp;<a href="<?php echo $vouchers['remove']; ?>"><img src="catalog/view/theme/commerca/image/remove.png" alt="<?php echo $button_remove; ?>" title="<?php echo $button_remove; ?>" /></a></td>
					<td class="price"><?php echo $vouchers['amount']; ?></td>
					<td class="total"><?php echo $vouchers['amount']; ?></td>
				  </tr>
				  <?php } ?>
				</tbody>
			  </table>
			</div>
		  </form>
		   <h3><?php echo $heading_title; ?>
			<?php if ($weight) { ?>
			&nbsp;(<?php echo $weight; ?>)
			<?php } ?>
		  </h3>
		   </div>
		   
		<!-- /TABLE CONTENT -->
		
		<!-- ACCORDION CONTENT -->
		 <?php if ($coupon_status || $voucher_status || $reward_status || $shipping_status) { ?>
		
		<div class="section">
		<h2><?php echo $text_next; ?></h2>
		 <p><?php echo $text_next_choice; ?></p>
			<div id="cart-accordion" class="checkout accordion">
				<?php if ($coupon_status) { ?>
				<!-- 01: ACCORDION GROUP -->
				<div class="accordion-group">
					<div class="accordion-heading">
						<a class="accordion-toggle" data-toggle="collapse" data-parent="#cart-accordion" href="#collapse1">
							<i class="icon-arrow-right"></i> <?php echo $text_use_coupon; ?>
						</a>
					</div>
					<div id="collapse1" class="accordion-body collapse">
					<div class="accordion-inner">
							 <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
								<div class="form-group">
									<label for="discoundInput"><?php echo $entry_coupon; ?></label>
									<div class="row">
										<div class="col-xs-12 col-sm-4">
											
											<input type="text" name="coupon" class="form-control" value="<?php echo $coupon; ?>" />
											<input type="hidden" name="next" value="coupon" />
											
											
										</div>
										<div class="col-xs-12 space20 visible-xs"></div>
										<div class="col-xs-12 col-sm-4">
											<input type="submit" value="<?php echo $button_coupon; ?>" class="btn btn-primary btn-small" />
										</div>
									</div>
								</div>
							</form>
						</div>
						
					</div>
				</div>
				<?php } ?>
				<!-- /01: ACCORDION GROUP -->
			  <?php if ($voucher_status) { ?>
				<!-- 02: ACCORDION GROUP -->
				<div class="accordion-group">
					<div class="accordion-heading">
						<a class="accordion-toggle" data-toggle="collapse" data-parent="#cart-accordion" href="#collapse4">
							<i class="icon-arrow-right"></i> <?php echo $text_use_voucher; ?>
						</a>
					</div>
					<div id="collapse4" class="accordion-body collapse">
						<div class="accordion-inner">
							 <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
								<div class="form-group">
									<label for="discoundInput"> <?php echo $entry_voucher; ?></label>
									<div class="row">
										<div class="col-xs-12 col-sm-4">
											 <input type="text" name="voucher" class="form-control" value="<?php echo $voucher; ?>" />
											<input type="hidden" name="next" value="voucher" />
  
										</div>
										<div class="col-xs-12 space20 visible-xs"></div>
										<div class="col-xs-12 col-sm-4">
											 <input type="submit" value="<?php echo $button_voucher; ?>" class="btn btn-primary btn-small" />
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
				<?php } ?>
				<!-- /02: ACCORDION GROUP -->
				
				<!-- 03: ACCORDION GROUP -->
				 <?php if ($reward_status) { ?>
				<div class="accordion-group">
					<div class="accordion-heading">
						<a class="accordion-toggle" data-toggle="collapse" data-parent="#cart-accordion" href="#collapse2">
							<i class="icon-arrow-right"></i> <?php echo $text_use_reward; ?>
						</a>
					</div>
					<div id="collapse2" class="accordion-body collapse">
						<div class="accordion-inner">
							   <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
								<div class="form-group">
									<label for="discoundInput"><?php echo $entry_reward; ?></label>
									<div class="row">
										<div class="col-xs-12 col-sm-4">
											<input type="text" name="reward" class="form-control" value="<?php echo $reward; ?>" />
											<input type="hidden" name="next" value="reward" />
										</div>
										<div class="col-xs-12 space20 visible-xs"></div>
										<div class="col-xs-12 col-sm-4">
											 <input type="submit" value="<?php echo $button_reward; ?>" class="btn btn-primary btn-small" />
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
				<?php } ?>
				<!-- /03: ACCORDION GROUP -->
				
				<!-- 03: ACCORDION GROUP -->
				<?php if ($shipping_status) { ?>
				<div class="accordion-group">
					<div class="accordion-heading">
						<a class="accordion-toggle" data-toggle="collapse" data-parent="#cart-accordion" href="#collapse3">
							<i class="icon-arrow-right"></i> <?php echo $text_shipping_estimate; ?>
						</a>
					</div>
					<div id="collapse3" class="accordion-body collapse">
						<div class="accordion-inner">
							<p><?php echo $text_shipping_detail; ?></p>
							<form class="form-inline" role="form">
								<div class="row">
									<div class="form-group col-xs-12 col-sm-3">
										<label class="sr-only" for="countrySelect"><?php echo $entry_country; ?></label>
										<select class="form-control max-width"name="country_id">
											
											  <option value=""><?php echo $text_select; ?></option>
											  <?php foreach ($countries as $country) { ?>
											  <?php if ($country['country_id'] == $country_id) { ?>
											  <option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
											  <?php } else { ?>
											  <option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
											  <?php } ?>
											  <?php } ?>
											</select>
									
									</div>
									<div class="form-group col-xs-12 col-sm-3">
										<label class="sr-only" for="statsSelect"> <?php echo $entry_zone; ?></label>
										
											<select name="zone_id" class="form-control max-width" > </select>
										</select>
									</div>
									<div class="form-group col-xs-12 col-sm-3">
										<label class="sr-only" for="zipcodeInput">Zip Code</label>
										<input type="text" class="form-control max-width" id="zipcodeInput" placeholder="Zip code" />
									</div>
								</div>
								<div class="col-xs-12 col-sm-12 space30 clearfix"></div>
								 <input type="button" value="<?php echo $button_quote; ?>" id="button-quote" class="button" />
							</form>
						</div>
					</div>
				</div>
				<?php } ?>
				<!-- /03: ACCORDION GROUP -->
			
				</div>
				</div>
				<?php } ?>
				<!-- /ACCORDION CONTENT -->

				<!-- SHOP SUMMARY -->
				<div class="section">
					<div class="row">
					
						<div class="col-xs-12 col-sm-8 col-lg-6 pull-right center-sm">
							<table class="shop-summary">
							 <?php foreach ($totals as $total) { ?>
								<tr>
									<th><?php echo $total['title']; ?>:</th>
									<td><?php echo $total['text']; ?></td>
								</tr>
								  <?php } ?>
								<tr>
									<th><a href="<?php echo $checkout; ?>" class="btn btn-primary"><?php echo $button_checkout; ?></a></th>
									<td><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_shopping; ?></a></td>
								</tr>
							</table>
						</div>
					
					</div>
				</div>
				<!-- /SHOP SUMMARY -->
				</div>
				</div>
				
				<!-- /MAIN CONTENT -->
				
				<!-- Content Top Area -->
				
				<?php echo $content_bottom; ?>
				
				<!-- /Content Top Area -->
				
			</div>
<script type="text/javascript"><!--
$('input[name=\'next\']').bind('change', function() {
	$('.cart-module > div').hide();
	
	$('#' + this.value).show();
});
//--></script>
<?php if ($shipping_status) { ?>
<script type="text/javascript"><!--
$('#button-quote').live('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/quote',
		type: 'post',
		data: 'country_id=' + $('select[name=\'country_id\']').val() + '&zone_id=' + $('select[name=\'zone_id\']').val() + '&postcode=' + encodeURIComponent($('input[name=\'postcode\']').val()),
		dataType: 'json',		
		beforeSend: function() {
			$('#button-quote').attr('disabled', true);
			$('#button-quote').after('<span class="wait">&nbsp;<img src="catalog/view/theme/commerca/image/loading.gif" alt="" /></span>');
		},
		complete: function() {
			$('#button-quote').attr('disabled', false);
			$('.wait').remove();
		},		
		success: function(json) {
			$('.success, .warning, .attention, .error').remove();			
						
			if (json['error']) {
				if (json['error']['warning']) {
					$('#notification').html('<div class="warning" style="display: none;">' + json['error']['warning'] + '<img src="catalog/view/theme/commerca/image/close.png" alt="" class="close" /></div>');
					
					$('.warning').fadeIn('slow');
					
					$('html, body').animate({ scrollTop: 0 }, 'slow'); 
				}	
							
				if (json['error']['country']) {
					$('select[name=\'country_id\']').after('<span class="error">' + json['error']['country'] + '</span>');
				}	
				
				if (json['error']['zone']) {
					$('select[name=\'zone_id\']').after('<span class="error">' + json['error']['zone'] + '</span>');
				}
				
				if (json['error']['postcode']) {
					$('input[name=\'postcode\']').after('<span class="error">' + json['error']['postcode'] + '</span>');
				}					
			}
			
			if (json['shipping_method']) {
				html  = '<h2><?php echo $text_shipping_method; ?></h2>';
				html += '<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">';
				html += '  <table class="radio">';
				
				for (i in json['shipping_method']) {
					html += '<tr>';
					html += '  <td colspan="3"><b>' + json['shipping_method'][i]['title'] + '</b></td>';
					html += '</tr>';
				
					if (!json['shipping_method'][i]['error']) {
						for (j in json['shipping_method'][i]['quote']) {
							html += '<tr class="highlight">';
							
							if (json['shipping_method'][i]['quote'][j]['code'] == '<?php echo $shipping_method; ?>') {
								html += '<td><input type="radio" name="shipping_method" value="' + json['shipping_method'][i]['quote'][j]['code'] + '" id="' + json['shipping_method'][i]['quote'][j]['code'] + '" checked="checked" /></td>';
							} else {
								html += '<td><input type="radio" name="shipping_method" value="' + json['shipping_method'][i]['quote'][j]['code'] + '" id="' + json['shipping_method'][i]['quote'][j]['code'] + '" /></td>';
							}
								
							html += '  <td><label for="' + json['shipping_method'][i]['quote'][j]['code'] + '">' + json['shipping_method'][i]['quote'][j]['title'] + '</label></td>';
							html += '  <td style="text-align: right;"><label for="' + json['shipping_method'][i]['quote'][j]['code'] + '">' + json['shipping_method'][i]['quote'][j]['text'] + '</label></td>';
							html += '</tr>';
						}		
					} else {
						html += '<tr>';
						html += '  <td colspan="3"><div class="error">' + json['shipping_method'][i]['error'] + '</div></td>';
						html += '</tr>';						
					}
				}
				
				html += '  </table>';
				html += '  <br />';
				html += '  <input type="hidden" name="next" value="shipping" />';
				
				<?php if ($shipping_method) { ?>
				html += '  <input type="submit" value="<?php echo $button_shipping; ?>" id="button-shipping" class="button" />';	
				<?php } else { ?>
				html += '  <input type="submit" value="<?php echo $button_shipping; ?>" id="button-shipping" class="button" disabled="disabled" />';	
				<?php } ?>
							
				html += '</form>';
				
				$.colorbox({
					overlayClose: true,
					opacity: 0.5,
					width: '600px',
					height: '400px',
					href: false,
					html: html
				});
				
				$('input[name=\'shipping_method\']').bind('change', function() {
					$('#button-shipping').attr('disabled', false);
				});
			}
		}
	});
});
//--></script> 
<script type="text/javascript"><!--
$('select[name=\'country_id\']').bind('change', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/country&country_id=' + this.value,
		dataType: 'json',
		beforeSend: function() {
			$('select[name=\'country_id\']').after('<span class="wait">&nbsp;<img src="catalog/view/theme/commerca/image/loading.gif" alt="" /></span>');
		},
		complete: function() {
			$('.wait').remove();
		},			
		success: function(json) {
			if (json['postcode_required'] == '1') {
				$('#postcode-required').show();
			} else {
				$('#postcode-required').hide();
			}
			
			html = '<option value=""><?php echo $text_select; ?></option>';
			
			if (json['zone'] != '') {
				for (i = 0; i < json['zone'].length; i++) {
        			html += '<option value="' + json['zone'][i]['zone_id'] + '"';
	    			
					if (json['zone'][i]['zone_id'] == '<?php echo $zone_id; ?>') {
	      				html += ' selected="selected"';
	    			}
	
	    			html += '>' + json['zone'][i]['name'] + '</option>';
				}
			} else {
				html += '<option value="0" selected="selected"><?php echo $text_none; ?></option>';
			}
			
			$('select[name=\'zone_id\']').html(html);
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
});

$('select[name=\'country_id\']').trigger('change');
//--></script>
<?php } ?>
<?php echo $footer; ?>
