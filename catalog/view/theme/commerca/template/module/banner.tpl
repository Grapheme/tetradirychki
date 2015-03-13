<?php $themeSettings =  $this->config->get('themecontrol'); ?>
				
				<!-- featured products -->
				<div class="section carousel-container <?php echo $themeSettings['bannerresponsive']; ?> <?php echo $themeSettings['bannerresponsivesm']; ?> <?php echo $themeSettings['bannerresponsivemd']; ?> <?php echo $themeSettings['bannerresponsivelg']; ?>">
					<div class="container">
					
						<div class="row carousel-container featured">
							<div class="col-xs-12 col-sm-12">
						<h4 class="section-title">carousel title</h4>
								
								<div class="section-body">
								
									<!-- carousel control nav direction -->
									<div class="carousel-control-arrows">
										<ul class="direction-nav carousel-direction">
											<li>
												<a class="carousel-prev btn" href="#">
													<span class="icon-arrow-left10"></span>
												</a>
											</li>
											<li>
												<a class="carousel-next btn" href="#">
													<span class="icon-arrow-right9"></span>
												</a>
											</li>
										</ul>
									</div>
									<!-- /carousel control nav direction -->
									
									<!-- carousel wrapper -->
									<div class="carousel-wrapper row" data-minitems="1" data-maxitems="3" data-loop="true" data-autoplay="false" data-slideshow-speed="3000" data-speed="300">
										<ul class="products-container product-grid carousel-list landscape ">
										<?php foreach ($banners as $banner) { ?>
											<li>
												<div class="product">
													<a href="<?php echo $banner['link']; ?>" class="product-link clearfix">
														
														<?php $themeSettings =  $this->config->get('themecontrol');  ?>
														<?php if(isset($themeSettings['bannerribbon'])){ if($themeSettings['bannerribbon'] != 'disable') { ?>
														<div class="ribbon <?php echo $themeSettings['bannerribbon']; ?>"></div>
														<?php } } ?>
													
														<div class="product-thumbnail">
															<img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" />
															
														</div>
														<div class="product-info clearfix">
															<h3 class="title"><?php echo $banner['title']; ?></h3>
														</div>
													</a>
												</div>
											</li>
										<?php } ?>
										
										</ul>
									</div>
									<!-- /carousel wrapper -->
								</div>
								
							</div>
						</div>
					
					</div>
				</div>
				<!-- /featured products -->