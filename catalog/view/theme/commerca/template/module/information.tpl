
<?php $themeSettings =  $this->config->get('themecontrol'); ?>
	<!-- INFORMATION LIST -->
	<div class="section module-list-items <?php echo $themeSettings['informationresponsive']; ?> <?php echo $themeSettings['informationresponsivesm']; ?> <?php echo $themeSettings['informationresponsivemd']; ?> <?php echo $themeSettings['informationresponsivelg']; ?>">
	<h4 class="section-title"><?php echo $heading_title; ?></h4>
		<div class="section-body">
				<ul class="unstyled pretty-list cl-effect-1">
				<?php foreach ($informations as $information) { ?>
				<li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
				<?php } ?>
				<li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
				<li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
			</ul>
		</div>
	</div>
