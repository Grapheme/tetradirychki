<!--[if IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/commerca/mcatmod/ie7.css" />
<![endif]-->
<!--[if lt IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/commerca/mcatmod/ie7.css" />
<![endif]-->
<script type="text/javascript"> 
 $(document).ready(function(){ 
  if ($.browser.msie) {
		if ($.browser.version <= 7) {
			$('.box-mcatmod ul li.catfirst').bind('mouseover', function() {
				$(this).addClass('act');
			});
				
			$('.box-mcatmod ul li.catfirst').bind('mouseout', 500, function() {
				$(this).removeClass('act');
			});	
		}
	}
 });
</script>
<script type="text/javascript"> 
$(document).ready(function(){ 

$(".box-mcatmod").hoverIntent(function() {
        $(this).addClass('act');
	
	} , function() {
		$(this).removeClass('act');
});

});
</script>
<div class="outbox-mcatmod section hidden-xs hidden-sm">
 <div class="box-heading-mcatmod"><?php echo $heading_title; ?></div>
  <div class="box-mcatmod">
   <ul>
    <?php foreach ($categories as $category) { ?>
     <li class="catfirst <?php if (!$category['children']) { echo 'kids'; } ?>">
      <?php if ($category['id'] == $category_id) { ?>
       <a href="<?php echo $category['href']; ?>" class="lfirst active"><?php echo $category['name']; ?></a>
      <?php } else { ?>
       <a href="<?php echo $category['href']; ?>" class="lfirst"><?php echo $category['name']; ?></a>
      <?php } ?>
      <?php if ($category['children']) { ?>
		 <div class="catright">
		 <h2><?php echo $category['name']; ?></h2>
		 <?php if ($category['description'] && $desc_show == 'yes') { ?>
           <div class="mega-desc"style="<?php if ($category['image']) { ?> min-height: 150px;<?php } ?>">
            <?php if ($category['image']) { ?>
             <div class="image" ><img src="<?php echo $category['image']; ?>" alt="<?php echo $category['name']; ?>" /></div>
            <?php } ?>
            <?php if ($category['description']) { ?>
			 <div class="mega-descinner">
             <?php echo $category['description']; ?>
			 </div>
            <?php } ?>
           </div>
          <?php } ?>
		   <?php if ($category['add']) { ?>
		    <div class="menu-add">
		     <a <?php if ($category['addurl']) { ?>href="<?php echo $category['addurl']; ?>"<?php } ?>><img src="image/<?php echo $category['add']; ?>" alt="<?php echo $category['name']; ?>" /></a>
		    </div>
		   <?php } ?>
		   <div class="inner-catright">
		     <?php if (!$category['view']) { ?>
		      <div class="nochild">
		       <?php foreach ($category['children'] as $child) { ?>
		        <?php if (!$child['gchildren']) { ?>
                 <a href="<?php echo $child['href']; ?>" class="ndfirst"><?php echo $child['name']; ?></a>
                <?php } ?>
		       <?php } ?>
		      </div>	
		    <ul>
            <?php foreach ($category['children'] as $child) { ?>
			 <?php if ($child['gchildren']) { ?>
              <li class="ndlevel">
                <a href="<?php echo $child['href']; ?>" class="ndfirst"><?php echo $child['name']; ?></a>
                  <ul class="rdlevel">
                   <?php foreach ($child['gchildren'] as $gchild) { ?>
                    <li>
                     <a href="<?php echo $gchild['href']; ?>"><?php echo $gchild['name']; ?></a>
                    </li>
                   <?php } ?>
                  </ul>
              </li>
             <?php } ?>
            <?php } ?>
            </ul>
		    <?php } else { ?>
			 <?php foreach ($category['children'] as $child) { ?>
			  <div class="gridel">
			   <div class="image"><a href="<?php echo $child['href']; ?>"><img src="<?php echo $child['thumb']; ?>" alt="<?php echo $child['name']; ?>" title="<?php echo $child['name']; ?>" /></a></div>
			   <div class="name"><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></div>
			   <?php if ($child['gchildren']) { ?>
			    <?php foreach ($child['gchildren'] as $gchild) { ?>
                  <a href="<?php echo $gchild['href']; ?>" class="gridel-child"><?php echo $gchild['name']; ?></a>
                <?php } ?>
			   <?php } ?>
			  </div>
			 <?php } ?>
		    <?php } ?>
		  </div>
		 </div>
        <?php } ?>
       </li>
      <?php } ?>
    </ul>
 </div>
</div>