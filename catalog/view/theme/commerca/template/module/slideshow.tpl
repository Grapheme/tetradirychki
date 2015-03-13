<?php $themeSettings =  $this->config->get('themecontrol');  ?>

				<!-- FLEXSLIDER CONTAINER -->
				<div id="top-slider" class="flexslider-container container <?php echo $themeSettings['slideshowresponsive']; ?> <?php echo $themeSettings['slideshowresponsivesm']; ?> <?php echo $themeSettings['slideshowresponsivemd']; ?> <?php echo $themeSettings['slideshowresponsivelg']; ?>">
					<div class="flexslider">
						<!-- BEGIN SLIDES -->
						<ul class="slides">
						 <?php foreach ($banners as $banner) { ?>
							<li>
							<?php if ($banner['link']) { ?>
							<a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" /></a>
							<?php } else { ?>
							<img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" />
							<?php } ?>
							
							<?php if(isset($themeSettings['slideshowcaption']) && ($themeSettings['slideshowcaption'] == 'enable')){ ?>


								<!-- SLIDE CAPTION -->
								<div class="flex-caption slider-caption animated" data-animation="fadeInUp">
									<div class="container">
									
										<div class="row">
											<div class="col-xs-12 col-sm-8 col-lg-4 caption-body hidden-xs">
												<h1 class="title animated" data-animation="fadeInDown"><?php echo $banner['title']; ?></h1>
												<div class="clearfix"></div>
												<?php if ($banner['link']) { ?>
												<a href="<?php echo $banner['link']; ?>" class="btn btn-primary btn-iconed animated" data-animation="fadeIn">
													<i class="icon-cart3"></i>
													<span>Shop now</span>
												</a>
												<?php } else { ?>
												<?php } ?>
											</div>
										</div>
										
									</div>
								</div>
								<!-- /SLIDE CAPTION -->
								<?php } ?>
								
							</li>
						<?php } ?>
						</ul>
						<!-- #END SLIDES -->
					</div>
				</div>
				<!-- /FLEXSLIDER CONTAINER -->

				<!-- INITIALIZE SLIDESHOW -->
				<script>
					jQuery(function($) {
						var $slider = $('#top-slider > .flexslider');
						$slider.imagesLoaded(function() {
							$slider.flexslider({
								animation: '<?php if(isset($themeSettings['slideshowtype']) && $themeSettings['slideshowtype']!=''){ echo $themeSettings['slideshowtype']; } else { echo 'slide'; }?>',
								easing: 'easeInBack',
								useCSS: false,
								animationSpeed: <?php if(isset($themeSettings['slideshowanispeed']) && $themeSettings['slideshowanispeed']!=''){ echo $themeSettings['slideshowanispeed']; } else { echo '1000'; }?>,
								slideshowSpeed: <?php if(isset($themeSettings['slideshowSpeed']) && $themeSettings['slideshowSpeed']!=''){ echo $themeSettings['slideshowSpeed']; } else { echo '5000'; }?>,  //Integer: Set the speed of the slideshow cycling, in milliseconds
								slideshow: <?php if(isset($themeSettings['slideshowtrue']) && $themeSettings['slideshowtrue']!=''){ echo $themeSettings['slideshowtrue']; } else { echo 'true'; }?>,
								smoothHeight: true,
								direction: "<?php if(isset($themeSettings['slideshowdirect']) && $themeSettings['slideshowdirect']!=''){ echo $themeSettings['slideshowdirect']; } else { echo 'horizontal'; }?>",        //String: Select the sliding direction, "horizontal" or "vertical"
								
								
								start: function(slider) {
									// wrap control nav inside container
									var $controlNav = $slider.find('.flex-control-nav');					
									$controlNav.wrap('<div class="flex-pagination-container" />').wrap('<div class="container" />').wrap('<div class="col-xs-12 col-sm-12" />');
									$controlNav.fadeIn();
									
									center_caption(slider);
								},
								before: function(slider) {
									// initial caption animation for next show
									$slider.find('.slides li .animation-done').each(function() {
										$(this).removeClass('animation-done');
										var animation = $(this).attr('data-animation');
										$(this).removeClass(animation);
									});
									
									center_caption(slider)
									$(window).trigger('resize');
								},
								after: function() {
									// run caption animation
									$slider.find('.flex-active-slide .animated').each(function() {
										var animation = $(this).attr('data-animation');
										$(this).addClass('animation-done').addClass(animation);
									});
									$(window).trigger('resize');
								}
							});
						});
						
						// vertical align center caption
						function center_caption(slider)
						{
							$slider.find('li:eq(' + (slider.animatingTo + 1) + ') .caption-body').each(function() {
								var $caption = $(this),
									captionH = $caption.outerHeight(),
									// sliderH = $slider.height(),
									// let's hardcode it
									sliderH = 480,
									top = (sliderH - captionH) / 2;
							
								$caption.css( 'top', top + 'px' );
							});
						}
						
						$(window).on('throttledresize', function() {
							$slider.find('.flex-active-slide .caption-body').each(function() {
								var $caption = $(this),
									captionH = $caption.outerHeight(),
									sliderH = $slider.height(),
									top = (sliderH - captionH) / 2;
							
								$caption.css( 'top', top + 'px' );
							});
						});
					});
				</script>
				<!-- /TOP SLIDER -->