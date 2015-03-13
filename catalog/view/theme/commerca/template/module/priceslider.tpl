
	<?php
	if (!function_exists('curPageURL')) {
	function curPageURL() {
	$pageURL = 'http';
	if (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] == 'on') {$pageURL .= "s";}
	$pageURL .= "://";
	if ($_SERVER["SERVER_PORT"] != "80") {
	$pageURL .= $_SERVER["SERVER_NAME"].":".$_SERVER["SERVER_PORT"].$_SERVER["REQUEST_URI"];
	} else {
	$pageURL .= $_SERVER["SERVER_NAME"].$_SERVER["REQUEST_URI"];
	}
	return $pageURL;
	}
	}
	?>

	<!-- PRICE RANGE -->
			


 <?php $themeSettings =  $this->config->get('themecontrol'); ?>
	<div class="section <?php echo $themeSettings['pricesliderresponsive']; ?> <?php echo $themeSettings['pricesliderresponsivesm']; ?> <?php echo $themeSettings['pricesliderresponsivemd']; ?> <?php echo $themeSettings['pricesliderresponsivelg']; ?>">
		<h4 class="section-title"><?php echo $text_filter_price; ?></h4>
		<div class="section-body">

		<div id="refinebyprice" class="box-content">
			<label for="amount"></label>
			<span class="help-txt-heading">Min - Max:</span>
			<span class="help-txt">
				<?php
				if (isset($this->session->data['lower'])&&isset($this->session->data['higher']))
				{
				$datalowercategory=$this->session->data['lower'];
				$datahighercategory=$this->session->data['higher'];
				}
				else
				{ 
				$datalowercategory=$lowerlimit;
				$datahighercategory=$upperlimit;

				}?>
				<?php echo $this->currency->format($datalowercategory );?> - <?php echo $this->currency->format($datahighercategory);?></span><br>
			<div id="slider-range"></div>
			<input type="text" id="amount" readonly="" maxlength="20"/>

			<script>
				var target;
			  $(function() {
				
				var queryString = window.location.search;
				if  (queryString.indexOf("route") != -1)
				 {
				  target='index.php?route=product/category&path='+'<?php if(isset($_GET['path'])){ echo $_GET['path']; }?>';
				  } else {
				  target='<?php echo curPageURL();?>';
				  }  
				  
				$( "#slider-range" ).slider({
				  range: true,
				  min: <?php echo $lowerlimit ?> ,
				  max: <?php echo $upperlimit ?>,
				  values: [ "<?php echo $datalowercategory;?>", "<?php echo $datahighercategory;?>" ],
				  slide: function( event, ui ) { $("#amount").css("opacity","1"); $( "#amount" ).val(  + ui.values[ 0 ] + " - " + ui.values[ 1 ] ); },
				  change : function (event, ui) {
									   $.ajax({
							url: target,
							dataType:'html',
							type: 'get',
							data:{ lower:ui.values[ 0 ], higher:ui.values[ 1 ]},
							success: function(html) {
							   location.reload();
													}
											
											}); 
										
											}
										 
											});
									   
				
				$( "#amount" ).val(  + $( "#slider-range" ).slider( "values", 0 ) +
				  " - " + $( "#slider-range" ).slider( "values", 1 ) );
							});



			function resetslider() {
			  var $slider = $("#slider-range");
			  $( "#slider-range" ).slider({
				  change : function (event, ui) {
							$.ajax({
							url: target,
							dataType:'html',
							type: 'get',
							data:{ lower:"<?php echo $lowerlimit; ?>", higher:"<?php echo $upperlimit; ?>"}				                           
							});			
			}
				});
				$slider.slider("values", 0, "15");
				 location.reload();
			}

			 </script>

			</div>
			</div>
			</div>