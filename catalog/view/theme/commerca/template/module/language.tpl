
		<?php if (count($languages) > 1) { ?>

		<li class="dropdown hidden-xs"><a class="dropdown-toggle " data-toggle="dropdown"><?php echo $text_language; ?><i class="icon-arrow-down"></i> </a>
			<ul class="dropdown-menu" role="menu">
			<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
			 <?php foreach ($languages as $language) { ?>
			<li><a onclick="$('input[name=\'language_code\']').attr('value', '<?php echo $language['code']; ?>'); $(this).parent().parent().submit();" alt="<?php echo $language['name']; ?>" title="<?php echo $language['name']; ?>"><?php echo $language['name']; ?></a></li>
			  <?php } ?>
			<input type="hidden" name="language_code" value="" />
			<input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
			</form>
			</ul>
		</li>

		<?php } ?>
			
