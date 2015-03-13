
			<?php echo $header; ?>
			<?php $themeSettings =  $this->config->get('themecontrol');  ?>
			<?php if ($error_warning) { ?>
				<div class="warning"><?php echo $error_warning; ?></div>
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
				  <p><?php echo $text_description; ?></p>
				  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
					<table class="form">
					  <tr>
						<td><span class="required">*</span> <?php echo $entry_to_name; ?></td>
						<td><input type="text" name="to_name" value="<?php echo $to_name; ?>" />
						  <?php if ($error_to_name) { ?>
						  <span class="error"><?php echo $error_to_name; ?></span>
						  <?php } ?></td>
					  </tr>
					  <tr>
						<td><span class="required">*</span> <?php echo $entry_to_email; ?></td>
						<td><input type="text" name="to_email" value="<?php echo $to_email; ?>" />
						  <?php if ($error_to_email) { ?>
						  <span class="error"><?php echo $error_to_email; ?></span>
						  <?php } ?></td>
					  </tr>
					  <tr>
						<td><span class="required">*</span> <?php echo $entry_from_name; ?></td>
						<td><input type="text" name="from_name" value="<?php echo $from_name; ?>" />
						  <?php if ($error_from_name) { ?>
						  <span class="error"><?php echo $error_from_name; ?></span>
						  <?php } ?></td>
					  </tr>
					  <tr>
						<td><span class="required">*</span> <?php echo $entry_from_email; ?></td>
						<td><input type="text" name="from_email" value="<?php echo $from_email; ?>" />
						  <?php if ($error_from_email) { ?>
						  <span class="error"><?php echo $error_from_email; ?></span>
						  <?php } ?></td>
					  </tr>
					  <tr>
						<td><span class="required">*</span> <?php echo $entry_theme; ?></td>
						<td><?php foreach ($voucher_themes as $voucher_theme) { ?>
						  <?php if ($voucher_theme['voucher_theme_id'] == $voucher_theme_id) { ?>
						  <input type="radio" name="voucher_theme_id" value="<?php echo $voucher_theme['voucher_theme_id']; ?>" id="voucher-<?php echo $voucher_theme['voucher_theme_id']; ?>" checked="checked" />
						  <label for="voucher-<?php echo $voucher_theme['voucher_theme_id']; ?>"><?php echo $voucher_theme['name']; ?></label>
						  <?php } else { ?>
						  <input type="radio" name="voucher_theme_id" value="<?php echo $voucher_theme['voucher_theme_id']; ?>" id="voucher-<?php echo $voucher_theme['voucher_theme_id']; ?>" />
						  <label for="voucher-<?php echo $voucher_theme['voucher_theme_id']; ?>"><?php echo $voucher_theme['name']; ?></label>
						  <?php } ?>
						  <br />
						  <?php } ?>
						  <?php if ($error_theme) { ?>
						  <span class="error"><?php echo $error_theme; ?></span>
						  <?php } ?></td>
					  </tr>
					  <tr>
						<td><?php echo $entry_message; ?></td>
						<td><textarea name="message" cols="40" rows="5"><?php echo $message; ?></textarea></td>
					  </tr>
					  <tr>
						<td><span class="required">*</span> <?php echo $entry_amount; ?></td>
						<td><input type="text" name="amount" value="<?php echo $amount; ?>" size="5" />
						  <?php if ($error_amount) { ?>
						  <span class="error"><?php echo $error_amount; ?></span>
						  <?php } ?></td>
					  </tr>
					</table>
					<div class="buttons">
					  <div class="right"><?php echo $text_agree; ?>
						<?php if ($agree) { ?>
						<input type="checkbox" name="agree" value="1" checked="checked" />
						<?php } else { ?>
						<input type="checkbox" name="agree" value="1" />
						<?php } ?>
						<input type="submit" value="<?php echo $button_continue; ?>" class="button" />
					  </div>
					</div>
				  </form>
				</div>
				</div>

			<!-- MAIN CONTENT -->

			</div>
			</div>
			</div>
			<?php echo $content_bottom; ?>
			</div>
			<?php echo $footer; ?>