
			<?php echo $header; ?>
			<?php $themeSettings =  $this->config->get('themecontrol');  ?>
			<?php if ($success) { ?>
				<div class="success"><?php echo $success; ?><img src="catalog/view/theme/commerca/image/close.png" alt="" class="close" /></div>
			<?php } ?>
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
							<div class="col-xs-12 col-sm-8  <?php if(isset($themeSettings['affipagelayout']) && $themeSettings['affipagelayout']!=''){ echo $themeSettings['affipagelayout']; } else { echo 'col-lg-9'; }?> main">
							<div class="section">
							  <?php echo $text_description; ?>
							  <div class="login-content">
								<div class="left">
								  <h2><?php echo $text_new_affiliate; ?></h2>
								  <div class="content"><?php echo $text_register_account; ?> <a href="<?php echo $register; ?>" class="button"><?php echo $button_continue; ?></a></div>
								</div>
								<div class="right">
								  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
									<h2><?php echo $text_returning_affiliate; ?></h2>
									<div class="content">
									  <p><?php echo $text_i_am_returning_affiliate; ?></p>
									  <b><?php echo $entry_email; ?></b><br />
									  <input type="text" name="email" value="<?php echo $email; ?>" />
									  <br />
									  <br />
									  <b><?php echo $entry_password; ?></b><br />
									  <input type="password" name="password" value="<?php echo $password; ?>" />
									  <br />
									  <a href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?></a><br />
									  <br />
									  <input type="submit" value="<?php echo $button_login; ?>" class="button" />
									  <?php if ($redirect) { ?>
									  <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
									  <?php } ?>
									</div>
								  </form>
								</div>
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