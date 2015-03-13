	<?php echo $header; ?>
	<?php $themeSettings =  $this->config->get('themecontrol');  ?>
	
	<!-- SITE CONTENT -->

	<div id="wrap-container">
	<?php echo $content_top; ?>
	
	<div class="container">
	<div class="row">
	
	<?php echo $column_left; ?><?php echo $column_right; ?>
	<div class="col-xs-12 col-sm-12  <?php if(isset($themeSettings['homepagelayout']) && $themeSettings['homepagelayout']!=''){ echo $themeSettings['homepagelayout']; } else { echo 'col-lg-12'; }?> main">
	
	<?php echo $content_bottom; ?>
	</div>
	</div>
	</div>
	</div>
	
<!-- /SITE CONTENT -->
	<?php echo $footer; ?>