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
							<div class="col-xs-12 col-sm-8 <?php if(isset($themeSettings['blogpagelayout']) && $themeSettings['blogpagelayout']!=''){ echo $themeSettings['blogpagelayout']; } else { echo 'col-lg-9'; }?> main section">
	<div class="pav-header">
	
		<a class="rss-wrapper" href="<?php echo $category_rss;?>"><span class="icon-rss">Rss</span></a>	
	</div>  
  <div class="pav-category">
		<?php if( !empty($children) ) { ?>
		<div class="pav-children clearfix">
			<h3><?php echo $this->language->get('text_children');?></h3>
			<div class="children-wrap">
				
				<?php 
				$cols = (int)$config->get('children_columns');
				foreach( $children as $key => $sub )  { $key = $key + 1;?>
					<div class="pavcol<?php echo $cols;?>">
						<div class="children-inner">
							<h4>
							<a href="<?php echo $sub['link']; ?>" title="<?php echo $sub['title']; ?>"><?php echo $sub['title']; ?> (<?php echo $sub['count_blogs']; ?>)</a> 
							
							</h4>
							<?php if( $sub['thumb'] ) { ?>
								<img src="<?php echo $sub['thumb'];?>"/>
							<?php } ?>
							<div class="sub-description">
							<?php echo $sub['description']; ?>
							</div>
						</div>
					</div>
					<?php if( ( $key%$cols==0 || $cols == count($leading_blogs)) ){ ?>
						<div class="clearfix"></div>
					<?php } ?>
				<?php } ?>
			</div>
		</div>
		<?php } ?>
		<div class="pav-blogs">
			<?php
			$cols = $config->get('cat_columns_leading_blog');
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
			<?php if( $total ) { ?>	
			<div class="pav-pagination pagination"><?php echo $pagination;?></div>
			<?php } ?>
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