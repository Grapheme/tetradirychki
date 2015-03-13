
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
					<div class="col-xs-12 col-sm-8  <?php if(isset($themeSettings['inforpagelayout']) && $themeSettings['inforpagelayout']!=''){ echo $themeSettings['inforpagelayout']; } else { echo 'col-lg-9'; }?> main">
					<!-- GOOGLE MAP -->
					<div class="<?php if(isset($themeSettings['Show']) && $themeSettings['Show']!=''){ echo $themeSettings['Show']; } else { echo 'section'; }?>">
						<div id="contact-map" class="google-map" data-lat="<?php if(isset($themeSettings['mapsltd'])){ echo $themeSettings['mapsltd']; } else { echo '-37.817186'; } ?>" data-lng="<?php if(isset($themeSettings['mapslng'])){ echo $themeSettings['mapslng']; } else { echo '144.964986'; } ?>" data-mlat="-37.817186" data-mlng="144.964986"></div>
					</div>
					<!-- /GOOGLE MAP -->
					<script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
					
					
					<div class="section">
					<h3><?php echo $heading_title; ?></h3>
					<?php echo html_entity_decode($themeSettings['contactinfo']); ?>	
					</div>

					<!-- CONTACT FORM -->
					<div class="section">
						<h4 class="section-title"><?php echo $text_location; ?></h4>
						<div class="section-body">
							<div class="contact-info">
							  <div class="content">
							  <div class="left"><b><?php echo $text_address; ?></b><br />
								<?php echo $store; ?><br />
								<?php echo $address; ?></div>
							  <div class="right">
								<?php if ($telephone) { ?>
								<b><?php echo $text_telephone; ?></b><br />
								<?php echo $telephone; ?><br />
								<br />
								<?php } ?>
								<?php if ($fax) { ?>
								<b><?php echo $text_fax; ?></b><br />
								<?php echo $fax; ?>
								<?php } ?>
							  </div>
							</div>
							</div>
							
							<div class="space20"></div>

							<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal contact">
								<div class="form-group">
									<div class="col-xs-12 col-sm-12 col-md-9">
										 <input type="text" name="name" class="form-control" id="inputName" value="<?php echo $name; ?>" />
										 <?php if ($error_name) { ?>
											<span class="error"><?php echo $error_name; ?></span>
										<?php } ?>
									</div>
									<label for="inputName" class="col-xs-12 col-sm-3 required" ><?php echo $entry_name; ?></label>
								</div>
								<div class="form-group">
									<div class="col-xs-12 col-sm-12 col-md-9">
										 <input type="text" name="email" value="<?php echo $email; ?>" class="form-control" id="inputEmail" />
										 <?php if ($error_email) { ?>
											<span class="error"><?php echo $error_email; ?></span>
										<?php } ?>
									</div>
									<label for="inputEmail" class="col-xs-12 col-sm-3 required"><?php echo $entry_email; ?></label>
								</div>
							
								<div class="form-group">
									<div class="col-xs-12 col-sm-12">
										<label for="textarea" class="col-xs-12 col-sm-3 required"><?php echo $entry_enquiry; ?></label>
										 <textarea name="enquiry" class="form-control"><?php echo $enquiry; ?></textarea>
										 <?php if ($error_enquiry) { ?>
											<span class="error"><?php echo $error_enquiry; ?></span>
										<?php } ?>
										
									</div>
								</div>
								<b><?php echo $entry_captcha; ?></b><br />
								<input type="text" name="captcha" value="<?php echo $captcha; ?>" />
								<br />
								<img src="index.php?route=information/contact/captcha" alt="" />
								<?php if ($error_captcha) { ?>
								<span class="error"><?php echo $error_captcha; ?></span>
								<?php } ?>
								<div class="form-group">
									<div class="col-xs-12 col-sm-12">
										
										   
										  <div class="right"><input type="submit" value="<?php echo $button_continue; ?>" class="btn btn-primary" /></div>
										
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
	</div>
	<?php echo $footer; ?>