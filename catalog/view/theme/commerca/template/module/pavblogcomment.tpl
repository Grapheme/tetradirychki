  <!-- Block categories module -->
  <?php $themeSettings =  $this->config->get('themecontrol'); ?>

      <div id="categories_block_left" class="section module-list-items block pavblogs-comments-box <?php echo $themeSettings['pavcommentresponsive']; ?> <?php echo $themeSettings['pavcommentresponsivesm']; ?> <?php echo $themeSettings['pavcommentresponsivemd']; ?> <?php echo $themeSettings['pavcommentresponsivelg']; ?>">
        <h4 class="section-title"><?php echo $heading_title; ?></h4>
        <div class="block_content">
		<?php if( !empty($comments) ) { ?>
		<div class="pavblog-comments clearfix">
			 <?php $default=''; foreach( $comments as $comment ) { ?>
				<div class="pav-comment clearfix">
					<a href="<?php echo $comment['link'];?>" title="<?php echo $comment['user'];?>">
					<img src="<?php echo "http://www.gravatar.com/avatar/" . md5( strtolower( trim( $comment['email'] ) ) ) . "?d=" . urlencode( $default ) . "&s=60" ?>" align="left"/>
					</a>
					<div class="comment"><?php echo utf8_substr( $comment['comment'], 50 ); ?></div>
					<span class="comment-author"><?php echo $this->language->get('text_postedby');?> <?php echo $comment['user'];?>...</span>
				</div>
			 <?php } ?>
		</div>
		<?php } ?>
	</div>
 </div>
