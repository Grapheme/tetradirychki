  <!-- Block categories module -->
      <?php $themeSettings =  $this->config->get('themecontrol'); ?>
		<div class="section module-list-items hidden-xs <?php echo $themeSettings['pavlatestresponsive']; ?> <?php echo $themeSettings['pavlatestresponsivesm']; ?> <?php echo $themeSettings['pavlatestresponsivemd']; ?> <?php echo $themeSettings['pavlatestresponsivelg']; ?>">
			<h4 class="section-title"><?php echo $heading_title; ?></h4>
			<div class="section-body">
		<?php if( !empty($blogs) ) { ?>
		<div class="pavblog-latest clearfix">
			<?php foreach( $blogs as $key => $blog ) { $key = $key + 1;?>
			<div class="pavcol<?php echo $cols;?>">
					<div class="blog-item">
							<div class="blog-header clearfix">
							<h4 class="blog-title">
								<a href="<?php echo $blog['link'];?>" title="<?php echo $blog['title'];?>"><?php echo $blog['title'];?></a>
							</h4>
							</div>
							<div class="blog-body">

								<div class="description">
								<?php if( $blog['thumb']  )  { ?>
                <a href="<?php echo $blog['link'];?>" title="<?php echo $blog['title'];?>"><img class="ani-image" src="<?php echo $blog['thumb'];?>" title="<?php echo $blog['title'];?>" align="left"></a>
				  <?php } ?>
										<?php echo utf8_substr( $blog['description'],0, 200 );?>...
								</div>
								<a href="<?php echo $blog['link'];?>" class="readmore"><?php echo $this->language->get('text_readmore');?></a>
							</div>	
						</div>
			</div>
			<?php if( ( $key%$cols==0 || $key == count($blogs)) ){  ?>
				<div class="clearfix"></div>
			<?php } ?>
			<?php } ?>
		</div>
		<?php } ?>
	</div>
 </div>
