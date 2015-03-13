	<!-- CART START -->
	<div class="inner">
		<div class="relative">
			<a class="btn btn-iconed">
				<i class="icon-cart3"></i>
				<span id="cart-total"><?php echo $text_items; ?></span>
			</a>
			
			<!-- CART ITEMS -->
			<div class="cart-items">
				<div class="header"><?php echo $heading_title; ?></div>
				<?php if ($products || $vouchers) { ?>
				<ul class="items clearfix">
					 <?php foreach ($products as $product) { ?>
					<li>
					<?php if ($product['thumb']) { ?>
						<div class="item-thumbnail">
							<a href="<?php echo $product['href']; ?>" title="<?php echo $product['name']; ?>">
								<img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" />
							</a>
						</div>
						 <?php } ?>
						<a href="<?php echo $product['href']; ?>" class="item-name" ><?php echo $product['name']; ?></a>
						<span class="item-price"><?php echo $product['total']; ?></span>
						<div class="clearfix"></div>
					</li>
					
					<?php foreach ($vouchers as $voucher) { ?>
					<li>
						<div class="item-thumbnail">
						
						</div>
						<a  class="item-name"><?php echo $voucher['description']; ?></a>
						<span class="item-price"><?php echo $voucher['amount']; ?></span>
						<div class="clearfix"></div>
					</li>
					<?php } ?><?php } ?>
				</ul>
				
				  <div class="mini-cart-total">
					  <table>
						<?php foreach ($totals as $total) { ?>
						<tr>
						  <td class="right"><b><?php echo $total['title']; ?>:</b></td>
						  <td class="right"><?php echo $total['text']; ?></td>
						</tr>
						<?php } ?>
					  </table>
				</div>
				 <div class="footer"><a href="<?php echo $cart; ?>"><?php echo $text_cart; ?></a>  <a href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a></div>
				<?php } else { ?>
					<div class="empty"><?php echo $text_empty; ?></div>
				<?php } ?>
			</div>
			<!-- /CART ITEMS -->
		</div>
	</div>
	<!-- /CART END -->