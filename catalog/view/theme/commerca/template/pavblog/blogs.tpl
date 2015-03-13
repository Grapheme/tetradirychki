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
				<div class="col-xs-12 col-sm-8 <?php if(isset($themeSettings['blogpagelayout']) && $themeSettings['blogpagelayout']!=''){ echo $themeSettings['blogpagelayout']; } else { echo 'col-lg-9'; }?> main">
				<div class="row">
				  <div class="pav-filter-blogs section">

						<div class="pav-blogs">
							<?php
							$cols = $config->get('cat_columns_leading_blogs');
							if( count($leading_blogs) ) { ?>
								<div class="leading-blogs clearfix">
									<?php foreach( $leading_blogs as $key => $blog ) { $key = $key + 1;?>
									<div class="pavcol<?php echo $cols;?>">
									<?php require( '_item.tpl' ); ?>
									</div>
									<?php if( ( $key%$cols==0 || $cols == count($leading_blogs)) ){ ?>
										<div class="clearfix"></div>
									<?php } ?>
									<?php } ?>
								</div>
							<?php } ?>

							<?php
								$cols = $config->get('cat_columns_secondary_blogs');
								$cols = !empty($cols)?$cols:1;
								if ( count($secondary_blogs) ) { ?>
								<div class="secondary clearfix">
									
									<?php foreach( $secondary_blogs as $key => $blog ) {  $key = $key+1; ?>
									<div class="pavcol<?php echo $cols;?>">
									<?php require( '_item.tpl' ); ?>
									</div>
									<?php if( ( $key%$cols==0 || $cols == count($leading_blogs)) ){ ?>
										<div class="clearfix"></div>
									<?php } ?>
									<?php } ?>
								</div>
							<?php } ?>
								
							<div class="pav-pagination pagination"><?php echo $pagination;?></div>
						</div>
					</div>

				</div>
				</div>
			</div>
		</div>
	<!-- /MAIN CONTENT -->

	<!-- Content bottom Area -->
	<?php echo $content_bottom; ?>
	<!-- /Content bottom Area -->

	</div>
	</div>


	<?php echo $footer; ?>