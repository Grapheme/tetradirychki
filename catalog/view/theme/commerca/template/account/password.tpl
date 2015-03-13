
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
							  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
								<h2><?php echo $text_password; ?></h2>
								<div class="content">
								  <table class="form">
									<tr>
									  <td><span class="required">*</span> <?php echo $entry_password; ?></td>
									  <td><input type="password" name="password" value="<?php echo $password; ?>" />
										<?php if ($error_password) { ?>
										<span class="error"><?php echo $error_password; ?></span>
										<?php } ?></td>
									</tr>
									<tr>
									  <td><span class="required">*</span> <?php echo $entry_confirm; ?></td>
									  <td><input type="password" name="confirm" value="<?php echo $confirm; ?>" />
										<?php if ($error_confirm) { ?>
										<span class="error"><?php echo $error_confirm; ?></span>
										<?php } ?></td>
									</tr>
								  </table>
								</div>
								<div class="buttons">
								  <div class="left"><a href="<?php echo $back; ?>" class="button"><?php echo $button_back; ?></a></div>
								  <div class="right"><input type="submit" value="<?php echo $button_continue; ?>" class="button" /></div>
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