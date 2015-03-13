
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
						<div class="section">
						  <div class="sitemap-info">
							<div class="left">
							  <ul>
								<?php foreach ($categories as $category_1) { ?>
								<li><a href="<?php echo $category_1['href']; ?>"><?php echo $category_1['name']; ?></a>
								  <?php if ($category_1['children']) { ?>
								  <ul>
									<?php foreach ($category_1['children'] as $category_2) { ?>
									<li><a href="<?php echo $category_2['href']; ?>"><?php echo $category_2['name']; ?></a>
									  <?php if ($category_2['children']) { ?>
									  <ul>
										<?php foreach ($category_2['children'] as $category_3) { ?>
										<li><a href="<?php echo $category_3['href']; ?>"><?php echo $category_3['name']; ?></a></li>
										<?php } ?>
									  </ul>
									  <?php } ?>
									</li>
									<?php } ?>
								  </ul>
								  <?php } ?>
								</li>
								<?php } ?>
							  </ul>
							</div>
							<div class="right">
							  <ul>
								<li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
								<li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a>
								  <ul>
									<li><a href="<?php echo $edit; ?>"><?php echo $text_edit; ?></a></li>
									<li><a href="<?php echo $password; ?>"><?php echo $text_password; ?></a></li>
									<li><a href="<?php echo $address; ?>"><?php echo $text_address; ?></a></li>
									<li><a href="<?php echo $history; ?>"><?php echo $text_history; ?></a></li>
									<li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
								  </ul>
								</li>
								<li><a href="<?php echo $cart; ?>"><?php echo $text_cart; ?></a></li>
								<li><a href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a></li>
								<li><a href="<?php echo $search; ?>"><?php echo $text_search; ?></a></li>
								<li><?php echo $text_information; ?>
								  <ul>
									<?php foreach ($informations as $information) { ?>
									<li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
									<?php } ?>
									<li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
								  </ul>
								</li>
							  </ul>
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