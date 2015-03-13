	<!-- SITE FOOTER  -->
	<?php $themeSettings =  $this->config->get('themecontrol'); ?>
	<?php if(isset($themeSettings['footerboxes']) && ($themeSettings['footerboxes'] == 'enable')){ ?>
	<div id="footer-annonce" class="footer-annonce">
		<div class="container">
			<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 annonce">
				<div class="annonce-inner">
					<div class="iconic icon-support"></div>
					<h3><?php echo $themeSettings['footer_boxes_1']; ?></h3>
					<p><?php echo $themeSettings['footer_boxes_1a']; ?></p>
				</div>
			</div>
			<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 annonce">
				<div class=" annonce-inner">
					<div class="iconic icon-gift"></div>
					<h3><?php echo $themeSettings['footer_boxes_2']; ?></h3>
					<p><?php echo $themeSettings['footer_boxes_2a']; ?></p>
				</div>
			</div>
			<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 annonce">
				<div class="annonce-inner">
					<div class="iconic icon-headphones"></div>
					<h3><?php echo $themeSettings['footer_boxes_3']; ?></h3>
					<p><?php echo $themeSettings['footer_boxes_3a']; ?></p>
				</div>
			</div>
			<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 annonce">
				<div class=" annonce-inner">
					<div class="iconic icon-truck"></div>
					<h3><?php echo $themeSettings['footer_boxes_4']; ?></h3>
					<p><?php echo $themeSettings['footer_boxes_4a']; ?></p>
				</div>
			</div>
		</div>
	</div>
	<?php } ?>	
	<div id="notification"></div>

			<div id="footer-container" class="footer-container">
				
				<div class="footer-inner alt">
					<div class="container">
					
						<div class="row">
							
							<!-- WIDGET: ABOUT US -->
							<?php if(isset($themeSettings['infoEnable']) && ($themeSettings['infoEnable'] == 'enable')){ ?>
							<div class="col-xs-12 col-sm-6 col-lg-3 <?php echo $themeSettings['footershopinforesponsive']; ?> <?php echo $themeSettings['footershopinforesponsivesm']; ?> <?php echo $themeSettings['footershopinforesponsivemd']; ?> <?php echo $themeSettings['footershopinforesponsivelg']; ?>">
								
								<div class="widget widget-text">
									<h4 class="widget-title"><?php echo $themeSettings['aboutTitle']; ?></h4>
									<div class="widget-body">
										<?php echo html_entity_decode($themeSettings['footer_information']); ?>
									</div>
								</div>
								
								<div class="space40 hidden-lg"></div>
							</div>
							<?php } ?>
							
							<!-- /WIDGET: ABOUT US -->
							
							
							
							<div class="col-xs-12 col-sm-12 hidden-lg"></div>
							
							<!-- WIDGET: TWITTER FEED -->
							<?php if(isset($themeSettings['twitterEnable']) && ($themeSettings['twitterEnable'] == 'enable')){ ?>
							<div class="col-xs-12 col-sm-6 col-lg-3 <?php echo $themeSettings['footertwitresponsive']; ?> <?php echo $themeSettings['footertwitresponsivesm']; ?> <?php echo $themeSettings['footertwitresponsivemd']; ?> <?php echo $themeSettings['footertwitresponsivelg']; ?>">
							
								<div class="widget widget-twitter">
									<h4 class="widget-title"><?php echo $themeSettings['twitterTitle']; ?></h4>
									<div class="widget-body twitterfeed iconlist">
										<div class="media">
											<div class="pull-left">
												<i class="icon-tweet"></i>
											</div>
											<div class="media-body">
												<p>Briza 1.5 has been quickly releas edto fix some bugs from the pre More on <a href="http://t.co/MqacjST" target="_blank">http://t.co/MqacjST</a></p>
												<p><i>12 minutes ago</i></p>
											</div>
										</div>
										<div class="media">
											<div class="pull-left">
												<i class="icon-tweet"></i>
											</div>
											<div class="media-body">
												<p>@shop fast template please, use the <a href="http://t.co/zRmkywea" target="_blank">http://t.co/zRmkywea</a> to ask support questions [...]</p>
												<p><i>25 minutes ago</i></p>
											</div>
										</div>
									</div>
								</div>
								<script>
								/*
								| ----------------------------------------------------------------------------------
								| Twitter feed
								| ----------------------------------------------------------------------------------
								*/
								$('.twitterfeed').tweet({
									modpath: 'catalog/view/theme/commerca/twitter/index.php',
									username: '<?php echo $themeSettings['twitterAccount']; ?>',
									page: 1,
									count: <?php echo $themeSettings['twitterCount']; ?>,
									loading_text: 'Loading Tweets...'
								});
								$('.tweet_time').each(function() {
									$(this).insertAfter( $(this).siblings('.tweet_text') );
								});
								
								</script>
								
								<div class="space40 hidden-lg"></div>
							</div>
							<!-- /WIDGET: TWITTER FEED -->
							<?php } ?>
							<!-- WIDGET: FACEBOOK FEED -->
							<?php if(isset($themeSettings['facebookEnable']) && ($themeSettings['facebookEnable'] == 'enable')){ ?>
							<div class="col-xs-12 col-sm-6 col-lg-3 <?php echo $themeSettings['footerfaceresponsive']; ?> <?php echo $themeSettings['footerfaceresponsivesm']; ?> <?php echo $themeSettings['footerfaceresponsivemd']; ?> <?php echo $themeSettings['footerfaceresponsivelg']; ?>">
						
								<div class="widget widget-facebook">
									<h4 class="widget-title"><?php echo $themeSettings['facebookTitle']; ?></h4>
									<div class="widget-body">
									
										<!-- facebook social plugin SDK -->
										<div id="fb-root"></div>
										<script>
										(function(d, s, id) {
										var js, fjs = d.getElementsByTagName(s)[0];
										if (d.getElementById(id)) return;
										js = d.createElement(s); js.id = id;
										js.src = "//connect.facebook.net/en_US/all.js#xfbml=1&status=0";
										fjs.parentNode.insertBefore(js, fjs);
										}(document, 'script', 'facebook-jssdk'));
										</script>
										<!-- /facebook social plugin SDK -->
										<div class="fb-like-box" data-href="<?php echo $themeSettings['facebookAccount']; ?>" data-width="270" data-height="200" data-show-faces="true" data-header="true" data-stream="false" data-show-border="false"></div>

									</div>
								</div>
									
								<div class="space40 hidden-lg"></div>
							</div>
							<!-- /WIDGET: FACEBOOK FEED -->
							<?php } ?>
							
							<!-- WIDGET: CONTACT US -->
							<?php if(isset($themeSettings['customEnable']) && ($themeSettings['customEnable'] == 'enable')){ ?>
							<div class="col-xs-12 col-sm-6 col-lg-3 <?php echo $themeSettings['footercontactresponsive']; ?> <?php echo $themeSettings['footercontactresponsivesm']; ?> <?php echo $themeSettings['footercontactresponsivemd']; ?> <?php echo $themeSettings['footercontactresponsivelg']; ?>">
							
								<div class="widget widget-contact">
									<h4 class="widget-title"><?php echo $this->config->get('config_name')?></h4>
									<div class="widget-body iconlist">
									
										<div class="media">
											<div class="pull-left">
												<i class="icon-location"></i>
											</div>
											<div class="media-body">
												<p><?php echo $this->config->get('config_address'); ?></p>
											</div>
										</div>
										<div class="media">
											<div class="pull-left">
												<i class="icon-phone"></i>
											</div>
											<div class="media-body">
												<p><?php echo $this->config->get('config_telephone'); ?><br/>
												<?php if(isset($themeSettings['telephone']) && ($themeSettings['telephone'] != '')){ ?>
												<?php echo $themeSettings['telephone']; ?>
												<?php } ?>
												</p>
											</div>
										</div>
										<div class="media">
											<div class="pull-left">
												<i class="icon-mail6"></i>
											</div>
											<div class="media-body">
												<p><a href="mailto:<?php echo $this->config->get('config_email'); ?>"><?php echo $this->config->get('config_email'); ?></a><br/>
												<?php if(isset($themeSettings['email']) && ($themeSettings['email'] != '')){ ?>
												<a href="mailto:<?php echo $themeSettings['email']; ?>"><?php echo $themeSettings['email']; ?></a>
												<?php } ?>
												</p>
											</div>
										</div>
										<div class="media">
											<div class="pull-left">
												<i class="icon-skype2"></i>
											</div>
											<div class="media-body">
												<p><?php echo $themeSettings['skypename']; ?></p>
											</div>
										</div>
										
									</div>
								</div>
								<div class="space40 hidden-lg"></div>
								
							</div>
							<?php } ?>
							<!-- /WIDGET: CONTACT US -->
						</div>
					
					</div>
				</div>
				
				<div class="footer-inner main">
					<div class="container">
					
						<div class="row">
							
							
							<!-- WIDGET LINKS -->
							 <?php if ($informations) { ?>
							<div class="col-xs-6 col-sm-3 col-lg-2">
								<div class="widget widget-linklist">
									<div class="widget-body">
										<h4 class="widget-title"> <?php echo $text_information; ?></h4>
										<ul class="cl-effect-1">
										  <?php foreach ($informations as $information) { ?>
										  <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
										  <?php } ?>
										</ul>
									</div>
								</div>
							</div>
							<?php } ?> 
							
							<div class="col-xs-6 col-sm-3 col-lg-2">
								<div class="widget widget-linklist">
									<div class="widget-body">
										<h4 class="widget-title"><?php echo $text_service; ?></h4>
										<ul class="cl-effect-1">
											 <ul>
											  <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
											  <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
											  <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
											</ul>
										</ul>
									</div>
								</div>
							</div>
							
							<div class="space40 col-xs-12 col-sm-12 visible-xs"></div>
							
							<div class="col-xs-6 col-sm-3 col-lg-2">
								<div class="widget widget-linklist">
									<div class="widget-body">
										<h4 class="widget-title"><?php echo $text_extra; ?></h4>
										<ul class="cl-effect-1">
											 <ul>
											  <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
											  <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
											  <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
											  <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
											</ul>
										</ul>
									</div>
								</div>
							</div>
							
							<div class="col-xs-6 col-sm-3 col-lg-2">
								<div class="widget widget-linklist">
									<div class="widget-body">
										<h4 class="widget-title"><?php echo $text_account; ?></h4>
										<ul class="cl-effect-1">
											<li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
											<li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
											<li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
											<li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
										</ul>
									</div>
								</div>
							</div>
							<!-- /SITE LINKS -->
							<!-- SHORT -->
							<div class="col-xs-12 col-sm-12 col-lg-4">
								<div class="widget widget-subscribe">
									<div class="widget-body">
										<p><?php echo html_entity_decode($themeSettings['footer_informationbottom']); ?></p>
										<div class="clearfix"></div>
										
										<ul class="credit-cards">
											<?php if(isset($themeSettings['visa']) && ($themeSettings['visa'] == 'enable')){ ?>
											<li><a  title="visa card"><img src="catalog/view/theme/commerca/img/payment_visa.png" alt="Visa Card" /></a></li>
											<?php } ?>
											<?php if(isset($themeSettings['master']) && ($themeSettings['master'] == 'enable')){ ?>
											<li><a  title="master card"><img src="catalog/view/theme/commerca/img/payment_mastercard.png" alt="Master Card" /></a></li>
											<?php } ?>
											<?php if(isset($themeSettings['jcb']) && ($themeSettings['jcb'] == 'enable')){ ?>
											<li><a  title="JCB"><img src="catalog/view/theme/commerca/img/jcb.png" alt="JCB" /></a></li>
											<?php } ?>
											<?php if(isset($themeSettings['diner']) && ($themeSettings['diner'] == 'enable')){ ?>
											<li><a  title="diner's club"><img src="catalog/view/theme/commerca/img/dinerclub.png" alt="Diner's Club" /></a></li>
											<?php } ?>
											<?php if(isset($themeSettings['paypalicon']) && ($themeSettings['paypalicon'] == 'enable')){ ?>
											<li><a  title="paypal"><img src="catalog/view/theme/commerca/img/payment_paypal.png" alt="PayPal" /></a></li>
											<?php } ?>
											<?php if(isset($themeSettings['payment_western_union']) && ($themeSettings['payment_western_union'] == 'enable')){ ?>
											<li><a  title="paypal"><img src="catalog/view/theme/commerca/img/payment_western_union.png" alt="PayPal" /></a></li>
											<?php } ?>
											<?php if(isset($themeSettings['payment_switch']) && ($themeSettings['payment_switch'] == 'enable')){ ?>
											<li><a  title="paypal"><img src="catalog/view/theme/commerca/img/payment_switch.png" alt="PayPal" /></a></li>
											<?php } ?>
											<?php if(isset($themeSettings['payment_solo']) && ($themeSettings['payment_solo'] == 'enable')){ ?>
											<li><a  title="paypal"><img src="catalog/view/theme/commerca/img/payment_solo.png" alt="PayPal" /></a></li>
											<?php } ?>
											<?php if(isset($themeSettings['payment_sagepay']) && ($themeSettings['payment_sagepay'] == 'enable')){ ?>
											<li><a  title="paypal"><img src="catalog/view/theme/commerca/img/payment_sagepay.png" alt="PayPal" /></a></li>
											<?php } ?>
											<?php if(isset($themeSettings['payment_moneybookers']) && ($themeSettings['payment_moneybookers'] == 'enable')){ ?>
											<li><a  title="paypal"><img src="catalog/view/theme/commerca/img/payment_moneybookers.png" alt="PayPal" /></a></li>
											<?php } ?>
											<?php if(isset($themeSettings['payment_maestro']) && ($themeSettings['payment_maestro'] == 'enable')){ ?>
											<li><a  title="paypal"><img src="catalog/view/theme/commerca/img/payment_maestro.png" alt="PayPal" /></a></li>
											<?php } ?>
											<?php if(isset($themeSettings['payment_google']) && ($themeSettings['payment_google'] == 'enable')){ ?>
											<li><a  title="paypal"><img src="catalog/view/theme/commerca/img/payment_google.png" alt="PayPal" /></a></li>
											<?php } ?>
											<?php if(isset($themeSettings['payment_ebay']) && ($themeSettings['payment_ebay'] == 'enable')){ ?>
											<li><a  title="paypal"><img src="catalog/view/theme/commerca/img/payment_ebay.png" alt="PayPal" /></a></li>
											<?php } ?>
											<?php if(isset($themeSettings['payment_discover']) && ($themeSettings['payment_discover'] == 'enable')){ ?>
											<li><a  title="paypal"><img src="catalog/view/theme/commerca/img/payment_discover.png" alt="PayPal" /></a></li>
											<?php } ?>
											<?php if(isset($themeSettings['payment_direct']) && ($themeSettings['payment_direct'] == 'enable')){ ?>
											<li><a  title="paypal"><img src="catalog/view/theme/commerca/img/payment_direct.png" alt="PayPal" /></a></li>
											<?php } ?>
											<?php if(isset($themeSettings['payment_delta']) && ($themeSettings['payment_delta'] == 'enable')){ ?>
											<li><a  title="paypal"><img src="catalog/view/theme/commerca/img/payment_delta.png" alt="PayPal" /></a></li>
											<?php } ?>
											<?php if(isset($themeSettings['payment_cirrus']) && ($themeSettings['payment_cirrus'] == 'enable')){ ?>
											<li><a  title="paypal"><img src="catalog/view/theme/commerca/img/payment_cirrus.png" alt="PayPal" /></a></li>
											<?php } ?>
											<?php if(isset($themeSettings['payment_american']) && ($themeSettings['payment_american'] == 'enable')){ ?>
											<li><a  title="paypal"><img src="catalog/view/theme/commerca/img/payment_american.png" alt="PayPal" /></a></li>
											<?php } ?>
											<?php if(isset($themeSettings['payment_2checkout']) && ($themeSettings['payment_2checkout'] == 'enable')){ ?>
											<li><a  title="paypal"><img src="catalog/view/theme/commerca/img/payment_2checkout.png" alt="PayPal" /></a></li>
											<?php } ?>
										</ul>
									</div>
								</div>
								<div class="space40 hidden-lg"></div>
							</div>
							<!-- /SHORT -->
						</div>
					
					</div>
				</div>
				
				<div class="footer-powered">
					<div class="container">
						<div class="row">
							<div class="col-xs-12 col-sm-6 copyright center-sm">
								<?php if(isset($themeSettings['footer_copyright']) && ($themeSettings['footer_copyright'] != '')){ ?>
									<?php echo html_entity_decode($themeSettings['footer_copyright']); ?>
								<?php } else { ?>
									<?php echo $powered; ?>
								<?php } ?>
							</div>
							<div class="col-xs-12 space10 visible-xs"></div>
							<div class="col-xs-12 col-sm-6 text-right center-sm">
								<div class="widget-footer-body">
										
										<ul>
										
											<li><a href="<?php if(isset($themeSettings['short1'])){ echo $themeSettings['short1']; } ?>" ><?php if(isset($themeSettings['shortname1'])){ echo $themeSettings['shortname1']; } ?></a></li>
											<li><a href="<?php if(isset($themeSettings['short2'])){ echo $themeSettings['short2']; } ?>" ><?php if(isset($themeSettings['shortname2'])){ echo $themeSettings['shortname2']; } ?></a></li>
											<li><a href="<?php if(isset($themeSettings['short3'])){ echo $themeSettings['short3']; } ?>" ><?php if(isset($themeSettings['shortname3'])){ echo $themeSettings['shortname3']; } ?></a></li>
											<li><a href="<?php if(isset($themeSettings['short4'])){ echo $themeSettings['short4']; } ?>" ><?php if(isset($themeSettings['shortname4'])){ echo $themeSettings['shortname4']; } ?></a></li>
										</ul>
							</div>
							</div>
						</div>
					</div>
				</div>
				
			</div>
			<!-- /SITE FOOTER -->
						
		</div>
		<!-- /PAGE WRAPPER -->
	
	</body>
</html>