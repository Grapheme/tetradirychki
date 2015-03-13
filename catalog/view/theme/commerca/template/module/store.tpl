	<!-- sTORE LIST -->
	<div class="section module-list-items">
		<h4 class="section-title"><?php echo $heading_title; ?></h4>
		<div class="section-body">
			<p style="text-align: center;"><?php echo $text_store; ?></p>
			<?php foreach ($stores as $store) { ?>
			<?php if ($store['store_id'] == $store_id) { ?>
				<a href="<?php echo $store['url']; ?>"><b><?php echo $store['name']; ?></b></a><br />
			<?php } else { ?>
				<a href="<?php echo $store['url']; ?>"><?php echo $store['name']; ?></a><br />
			<?php } ?>
			<?php } ?>
			<br />
		</div>
	</div>
