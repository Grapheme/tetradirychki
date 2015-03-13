<?php $themeSettings =  $this->config->get('themecontrol'); ?>
			<!-- our clients -->
				<div class="section carousel-container <?php echo $themeSettings['carouselresponsive']; ?> <?php echo $themeSettings['carouselresponsivesm']; ?> <?php echo $themeSettings['carouselresponsivemd']; ?> <?php echo $themeSettings['carouselresponsivelg']; ?>">
					<div class="container">
					
						<div class="row carousel-container clients">
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
									<div class="carousel-wrapper row" data-minitems="1" data-maxitems="4" data-loop="false" data-autoplay="false" data-slideshow-speed="2000" data-speed="300">
										<ul class="clients-list carousel-list landscape animated" data-animation="fadeInUp">
										<?php foreach ($banners as $banner) { ?>
											<li>
												<div class="item">
													
													<a href="<?php echo $banner['link']; ?>" title="<?php echo $banner['title']; ?>">
														<img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" />
													</a>
													  
		
												</div> 
											</li><?php } ?>

										
										</ul>
									</div>
									<!-- /carousel wrapper -->
									
								</div>
							
							</div>
						</div>
						
					</div>
				</div>
				<!-- /our clients -->