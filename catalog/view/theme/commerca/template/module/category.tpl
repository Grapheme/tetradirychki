
<?php $themeSettings =  $this->config->get('themecontrol'); ?>
	<!-- CATEGORIES LIST -->
		<div class="section module-list-items <?php echo $themeSettings['categoryresponsive']; ?> <?php echo $themeSettings['categoryresponsivesm']; ?> <?php echo $themeSettings['categoryresponsivemd']; ?> <?php echo $themeSettings['categoryresponsivelg']; ?>">
			<h4 class="section-title"><?php echo $heading_title; ?></h4>
			<div class="section-body">
				<ul class="unstyled pretty-list cl-effect-1">
					<?php foreach ($categories as $category) { ?>
				<li>
					<?php if ($category['category_id'] == $category_id) { ?>
					<a href="<?php echo $category['href']; ?>" class="active"><?php echo $category['name']; ?></a>
					<?php } else { ?>
					<a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
					<?php } ?>
					<?php if ($category['children']) { ?>
					<ul>
					  <?php foreach ($category['children'] as $child) { ?>
					  <li>
						<?php if ($child['category_id'] == $child_id) { ?>
						<a href="<?php echo $child['href']; ?>" class="active">  <?php echo $child['name']; ?></a>
						<?php } else { ?>
						<a href="<?php echo $child['href']; ?>">  <?php echo $child['name']; ?></a>
						<?php } ?>
					  </li>
					  <?php } ?>
					</ul>
					<?php } ?>
			    </li>
					<?php } ?>
				</ul>
			</div>
		</div>
		
		
	<!-- /CATEGORIES LIST -->
