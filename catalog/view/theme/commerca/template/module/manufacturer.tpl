<?php $themeSettings =  $this->config->get('themecontrol'); ?>


	<!-- MANUFACTURER LIST -->
	<div class="section module-list-items <?php echo $themeSettings['manufacturerresponsive']; ?> <?php echo $themeSettings['manufacturerresponsivesm']; ?> <?php echo $themeSettings['manufacturerresponsivemd']; ?> <?php echo $themeSettings['manufacturerresponsivelg']; ?>">
		<h4 class="section-title"><?php echo $heading_title; ?></h4>
		<div class="section-body">
				<ul class="unstyled pretty-list cl-effect-1">
			 <?php foreach ($manufacturers as $manufacturer) { ?>
				<li>
					<a href="<?php echo $manufacturer['href']; ?>"><?php echo $manufacturer['name']; ?></a>
				</li>
			<?php } ?>
			</ul>
		</div>
	</div>
	<!-- /CATEGORIES LIST -->


