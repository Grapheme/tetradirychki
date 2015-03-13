<?php $themeSettings =  $this->config->get('themecontrol'); ?>

		<div class="section module-list-items <?php echo $themeSettings['pavcategoryresponsive']; ?> <?php echo $themeSettings['pavcategoryresponsivesm']; ?> <?php echo $themeSettings['pavcategoryresponsivemd']; ?> <?php echo $themeSettings['pavcategoryresponsivelg']; ?>">
			<h4 class="section-title"><?php echo $heading_title; ?></h4>
			<div class="section-body">

	<div class="box-content" id="pav-categorymenu" >

		 <?php echo $tree;?>
		 
	</div>
 </div>
 </div>
<script>
$(document).ready(function(){
		// applying the settings
		$("#pav-categorymenu li.active span.head").addClass("selected");
			$('#pav-categorymenu ul').Accordion({
				active: 'span.selected',
				header: 'span.head',
				alwaysOpen: false,
				animated: true,
				showSpeed: 400,
				hideSpeed: 800,
				event: 'click'
			});
});

</script>