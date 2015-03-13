<div class="container wrapper-ecslideshow <?php echo $themeSettings['contentsliderresponsive']; ?> <?php echo $themeSettings['contentsliderresponsivesm']; ?> <?php echo $themeSettings['contentsliderresponsivemd']; ?> <?php echo $themeSettings['contentsliderresponsivelg']; ?>" style="width:<?php echo $module_width;?>;height:<?php echo $module_height;?>">
<div class="ecslideshow <?php echo (isset($support_rtl) && $support_rtl)?'rtl':'';?>" style="width:<?php echo $module_width;?>;height:<?php echo $module_height;?>">
	<div class="camera_wrap <?php echo $skin;?>" id="ecslideshow<?php echo $module;?>">
		<?php
		if(isset($slides) && !empty($slides)){
			foreach($slides as $slide){
				$params = isset($slide['params'])?$slide['params']:array();
				$caption_effect = (isset($params['caption_alignment']) && $params['caption_alignment'] !='3')?$params['caption_alignment']:$caption_effect;
				$image_alignment = (isset($params['image_alignment']) && $params['image_alignment'] !='3')?' data-alignment="'.$params['image_alignment'].'"':"";
				$slider_easing = (isset($params['easing']) && $params['easing'] !='3')?' data-easing="'.$params['easing'].'"':"";
				$effect = (isset($params['effect']) && $params['effect'] !='3')?' data-fx="'.$params['effect'].'"':"";
				$portrait = (isset($params['portrait']) && $params['portrait'])?' data-portrait="'.$params['portrait'].'"':"";
				$show_caption = (isset($params['show_caption']) && $params['show_caption'] !='3')?(bool)$params['show_caption']:$show_caption;
				$show_link = (isset($params['show_link']) && $params['show_link'])?' data-link="'.$slide["link"].'"':"";
				?>
 				<div data-thumb="<?php echo $slide["thumb"] ?>" data-src="<?php echo $slide["image"] ?>"<?php echo $image_alignment.$slider_easing.$effect.$portrait.$show_link;?>>
 					<!--
 					<div class="fadeIn camera_effected" style="position:absolute;">The text of your html element</div>-->
 					<?php if($show_caption){ ?>
	                <div class="camera_caption <?php echo $caption_effect;?>">
	                    <div class="caption">
	                    	<h2><a href="<?php echo $slide["link"]; ?>"><span><?php echo $slide["caption"]; ?></span></a></h2>
	                    </div>
	                    <div class="description">
	                    	<?php echo $slide["description"]; ?>
	                    	<?php
	                    	if(isset($show_custom_code) && $show_custom_code && $slide['custom_code']){
	                    		echo $slide['custom_code'];
	                    	}
	                    	?>
	                    </div>
	                    <?php if(!empty($slide["product_id"]) && $show_product_info): ?>
	                    <div class="cartinfo">
	                    	<?php if ($slide['price']) { ?>
								<div class="price">
								  <?php if (!$slide['special']) { ?>
								  <?php echo $slide['price']; ?>
								  <?php } else { ?>
								  <span class="price-old"><?php echo $slide['price']; ?></span> <span class="price-new"><?php echo $slide['special']; ?></span>
								  <?php } ?>
								</div>
							<?php } ?>
							<?php if ($slide['rating']) { ?>
							<div class="rating"><img src="catalog/view/theme/default/image/stars-<?php echo $slide['rating']; ?>.png" alt="<?php echo $slide['reviews']; ?>" /></div>
							<?php } ?>
							<div class="cart"><input type="button" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $slide['product_id']; ?>');" class="button" /></div>
	                    </div>
	                	<?php endif; ?>
	                </div>
	                <?php } ?>
	            </div>
				<?php
			}
		}
		?>

	</div>
</div>
</div>
 <script type="text/javascript">
function loadSlideshow(){
			
			jQuery('#ecslideshow<?php echo $module;?>').camera({
				thumbnails: <?php echo $thumbnails==1?'true':'false';?>,
				alignment: '<?php echo $alignment;?>',
				autoAdvance: <?php echo $auto_advance==1?'true':'false';?>,
				mobileAutoAdvance: <?php echo $mobile_auto_advance==1?'true':'false';?>,
				barDirection: '<?php echo $bar_direction;?>',
				barPosition: '<?php echo $bar_position;?>',
				cols: <?php echo $cols;?>,
				easing: '<?php echo $easing;?>',
				fx: '<?php echo $fx;?>',
				gridDifference: <?php echo $grid_difference;?>,
				height: '<?php echo $height;?>',
				hover: <?php echo $hover==1?'true':'false';?>,
				loader: '<?php echo $loader;?>',
				loaderColor: '<?php echo $loader_color;?>',
				loaderBgColor: '<?php echo $loader_bg_color;?>',
				loaderOpacity: <?php echo $loader_opacity;?>,
				minHeight: '<?php echo $min_height;?>',
				navigation: <?php echo $navigation==1?'true':'false';?>,
				navigationHover: <?php echo $navigation_hover==1?'true':'false';?>,
				overlayer: <?php echo $overlayer==1?'true':'false';?>,
				pagination: <?php echo $pagination==1?'true':'false';?>,
				playPause: <?php echo $play_pause==1?'true':'false';?>,
				pieDiameter: <?php echo $pie_diameter;?>,
				piePosition: '<?php echo $pie_position;?>',
				rows: <?php echo $rows;?>,
				slicedCols: <?php echo $sliced_cols;?>,
				slicedRows: <?php echo $sliced_rows?>,
				slideOn: '<?php echo $slide_on;?>',
				thumbnails: <?php echo $thumbnails==1?'true':'false';?>,
				time: <?php echo $time;?>,
				transPeriod: <?php echo $trans_period;?>
			});
};
</script>
<script type="text/javascript">
<?php if($enable_async){ ?>
//this function will work cross-browser for loading scripts asynchronously
	function loadScript(src, callback)
	{
	  var s,
	      r,
	      t;
	  r = false;
	  s = document.createElement('script');
	  s.type = 'text/javascript';
	  s.src = src;
	  s.onload = s.onreadystatechange = function() {
	    //console.log( this.readyState ); //uncomment this line to see which ready states are called.
	    if ( !r && (!this.readyState || this.readyState == 'complete') )
	    {
	      r = true;
	      callback();
	    }
	  };
	  t = document.getElementsByTagName('script')[0];
	  t.parent.insertBefore(s, t);
	}
	jQuery(function(){
		$.getScript("<?php echo isset($script)?$script:""; ?>", loadSlideshow)
	});
<?php }else{ ?>
	jQuery(function(){
		loadSlideshow();
	});
<?php } ?>
</script>