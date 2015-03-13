<?php echo $header; ?>

<?php 

	$s_links = array(
		'facebook' 				=> 'Facebook',
		'twitter' 				=> 'Twitter',
		'googleplus' 			=> 'Google+',

		'deviantart' 			=> 'deviantart',
		'rss' 					=> 'RSS',
		'linkedin' 				=> 'Linkedin',
		'skype' 				=> 'Skype',



	);
?>

<style type="text/css">
	.pclass { color: #666; font-size:0.9em;width: 100%;display: inline; }
	.backgrouns {width:32px; display: inline-block; text-align: center;}
</style>
<style type="text/css">
	.pclass { color: #666; font-size:0.9em;width: 100%;display: inline; }
	.backgrouns {width:32px; display: inline-block; text-align: center;}
	.htabs { height: 40px; line-height: 20px; border-bottom: 1px solid #DDD; margin-bottom: 15px; }
	.htabs a.selected { padding-bottom: 15px; background: #00744A; }
.htabs a { background: #333; border: 0; padding: 10px; color: #fff;  }
.vtabs a.selected { padding-right: 15px; background: #00881B; }
.vtabs a, .vtabs span { border:0; background: #009C9C; padding: 10px 15px; color: #fff; }
</style>
<div id="content">
	<div class="breadcrumb">
		<?php foreach ($breadcrumbs as $breadcrumb) { ?>
		<?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
		<?php } ?>
	</div>
	<?php if ($error_warning) { ?>
	<div class="warning"><?php echo $error_warning; ?></div>
	<?php } ?>

<div class="box">

	<div class="heading">
		<h1><img src="view/image/module.png" alt="" /> <?php echo $heading_title; ?></h1>
		<div class="buttons"><a onclick="$('#form').submit();" class="button"><?php echo $button_save; ?></a><a onclick="location = '<?php echo $cancel; ?>';" class="button"><?php echo $button_cancel; ?></a></div>
	</div>

	<div class="content">

		<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">

			<div id="tabs" class="htabs clearfix">
				<a href="#general_settings">General</a>
				<a href="#footer_settings">Footer</a>
				<a href="#social_links">Header Options</a>
				<a href="#module_settings">Module Options</a>
				<a href="#contact_settings">Contact Page</a>
				<a href="#custom_css_settings">Custom CSS / JS</a>
			</div>
			
			<div id="general_settings" class="divtab">
			
				<div id="general_settings_tabs" class="vtabs">
					<a href="#options" class="selected">General Options</a>
					<a href="#functions" style="">Page Width Functions</a>
					<a href="#moduleribbon" style="">Module Ribbons</a>
					<a href="#responsive" style="">Modules : Responsive Options</a>
					<a href="#responsive_footer" style="">Footer : Responsive Options</a>
				</div>
				
				<div id="options" class="vtabs-content" style="">
					<table class="form">
						<h2>Options</h2>	
			<tr>
				<td>Layout Style:</td>
				<td>
					<select name="themecontrol[layoutStyle]">
						<option value="boxed" <?php if(isset($themecontrol['layoutStyle']) && $themecontrol['layoutStyle']=='boxed'){ echo 'selected=""'; }?>>Boxed Style</option>
						<option value="wide" <?php if(isset($themecontrol['layoutStyle']) && $themecontrol['layoutStyle']=='wide'){ echo 'selected="selected"'; }?>>Full width style</option>
					</select>
				</td>
			</tr>	
			<tr>
				<td>Color Scheme Style:</td>
				<td>
					<select name="themecontrol[colorStyle]">
						<option value="custom-style" <?php if(isset($themecontrol['colorStyle']) && $themecontrol['colorStyle']=='custom-style'){ echo 'selected="selected"'; }?>> Yellow Color</option>
						<option value="custom-style1" <?php if(isset($themecontrol['colorStyle']) && $themecontrol['colorStyle']=='custom-style1'){ echo 'selected=""'; }?>>Green Color</option>
						<option value="custom-style2" <?php if(isset($themecontrol['colorStyle']) && $themecontrol['colorStyle']=='custom-style2'){ echo 'selected=""'; }?>>Blue Color</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>Select Animation disabled or enable:</td>
				<td>
					<select name="themecontrol[animate]">
						<option value="animate" <?php if(isset($themecontrol['animate']) && $themecontrol['animate']=='animate'){ echo 'selected="selected"'; }?>>Enabled Animation</option>
						<option value="noanimate" <?php if(isset($themecontrol['animate']) && $themecontrol['animate']=='noanimate'){ echo 'selected=""'; }?>>Disabled Animation</option>

					</select>
				</td>
			</tr>
			
			<tr>
						
							<td>
								Custom Pattern (Upload your pattern/image) 
							</td>
							<td>
								<input type="hidden" name="themecontrol[custom_background_pattern]" value="<?php echo $themecontrol['custom_background_pattern']; ?>" id="custom_background_pattern" />
								<img src="<?php if(isset($themecontrol['custom_background_pattern']) && $themecontrol['custom_background_pattern']!=''){ echo HTTP_IMAGE . $themecontrol['custom_background_pattern']; } else {  echo $no_image; }?>" alt="" id="themecontrol_image_preview" width="70" height="70" />
								<br /><a onclick="image_upload('custom_background_pattern', 'themecontrol_image_preview');"><?php echo $text_browse; ?></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="$('#themecontrol_image_preview').attr('src', '<?php echo $no_image; ?>'); $('#custom_background_pattern').attr('value', '');"><?php echo $button_remove; ?></a>
							</td>
					   </tr>
				<tr style = "height: 117px;">
					<td>Top Header Search Autocomplete:</td>
					<td>
						<select name="themecontrol[autocompleteEnable]">
							<option value="disable" <?php if(isset($themecontrol['autocompleteEnable']) && $themecontrol['autocompleteEnable']=='disable'){ echo 'selected=""'; }?>><?php echo $text_disabled; ?></option>
							<option value="enable" <?php if(isset($themecontrol['autocompleteEnable']) && $themecontrol['autocompleteEnable']=='enable'){ echo 'selected="selected"'; }?>><?php echo $text_enabled; ?></option>
						</select>
					</td>
				</tr>
				
				
				<tr>
				<td> Product listing : How many do you want per line ?</td>
				<td>
					<select name="themecontrol[listingstyle]">
						<option value="col-lg-3" <?php if(isset($themecontrol['listingstyle']) && $themecontrol['listingstyle']=='col-lg-3'){ echo 'selected="selected"'; }?>>4 Products</option>
						<option value="col-lg-4" <?php if(isset($themecontrol['listingstyle']) && $themecontrol['listingstyle']=='col-lg-4'){ echo 'selected=""'; }?>>3 Products</option>
						<option value="col-lg-6" <?php if(isset($themecontrol['listingstyle']) && $themecontrol['listingstyle']=='col-lg-6'){ echo 'selected=""'; }?>>2 Products</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>Category page Grid / List Style products (For Full Width Layout):</td>
				<td>
					<select name="themecontrol[categorylist]">
						<option value="grid" <?php if(isset($themecontrol['categorylist']) && $themecontrol['categorylist']=='grid'){ echo 'selected="selected"'; }?>>Grid Style</option>
						<option value="list" <?php if(isset($themecontrol['categorylist']) && $themecontrol['categorylist']=='list'){ echo 'selected=""'; }?>>List style</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>Category page : Refine / Sub category option:</td>
				<td>
					<select name="themecontrol[refineEnable]">
						<option value="disable" <?php if(isset($themecontrol['refineEnable']) && $themecontrol['refineEnable']=='disable'){ echo 'selected="selected"'; }?>><?php echo $text_disabled; ?></option>
						<option value="enable" <?php if(isset($themecontrol['refineEnable']) && $themecontrol['refineEnable']=='enable'){ echo 'selected="selected"'; }?>><?php echo $text_enabled; ?></option>
					</select>
				</td>
			</tr>
			<tr>
				<td>Specials page Grid / List Style products (For Full Width Layout):</td>
				<td>
					<select name="themecontrol[specialcategorylist]">
					<option value="grid" <?php if(isset($themecontrol['specialcategorylist']) && $themecontrol['specialcategorylist']=='grid'){ echo 'selected="selected"'; }?>>Grid Style</option>
					<option value="list" <?php if(isset($themecontrol['specialcategorylist']) && $themecontrol['specialcategorylist']=='disable'){ echo 'selected=""'; }?>>List Style</option>
						
					</select>
				</td>
			</tr>
			<tr>
				<td>Manufacturer page Grid / List Style products (For Full Width Layout):</td>
				<td>
					<select name="themecontrol[manufaclist]">
					<option value="grid" <?php if(isset($themecontrol['manufaclist']) && $themecontrol['manufaclist']=='grid'){ echo 'selected="selected"'; }?>>Grid Style</option>
					<option value="list" <?php if(isset($themecontrol['manufaclist']) && $themecontrol['manufaclist']=='list'){ echo 'selected=""'; }?>>List Style</option>
						
					</select>
				</td>
			</tr>
			<tr>
				<td>Search page Grid / List Style products (For Full Width Layout):</td>
				<td>
					<select name="themecontrol[searchcategorylist]">
					<option value="grid" <?php if(isset($themecontrol['searchcategorylist']) && $themecontrol['searchcategorylist']=='grid'){ echo 'selected="selected"'; }?>>Grid Style</option>
					<option value="list" <?php if(isset($themecontrol['searchcategorylist']) && $themecontrol['searchcategorylist']=='list'){ echo 'selected=""'; }?>>List Style</option>
						
					</select>
				</td>
			</tr>
					</table>
					     <table class="form">
        <tr>
          <td>Body / General Custom Font:</td>
		   
           <td> <input type="text" name="themecontrol[fonts]" value="<?php if(isset($themecontrol['fonts'])){ echo $themecontrol['fonts']; } ?>" /></td>
		    <td style="background:#333; color: #fff;"> example: https://fonts.googleapis.com/css?family=Ubuntu+Condensed | <a href="http://www.google.com/fonts/" style="color:#ff2600;" target="_blank">Click here All fonts</a></td>
         
        </tr>
        <tr>
          <td>Body / General Font Family:</td>
          <td><input type="text" name="themecontrol[fontsfamily]" value="<?php if(isset($themecontrol['fontsfamily'])){ echo $themecontrol['fontsfamily']; } ?>" /></td>
         <td style="background:#333; color: #fff;"> example:'Berkshire Swash', cursive</td>
        </tr>
       </table>
	    <table class="form">
        <tr>
          <td>Title (h1,h2 etc) Custom Font:</td>
		   
           <td> <input type="text" name="themecontrol[fontstitle]" value="<?php if(isset($themecontrol['fontstitle'])){ echo $themecontrol['fontstitle']; } ?>" /></td>
		    <td style="background:#333; color: #fff;"> example: https://fonts.googleapis.com/css?family=Ubuntu+Condensed | <a href="http://www.google.com/fonts/" style="color:#ff2600;" target="_blank">Click here All fonts</a></td>
         
        </tr>
        <tr>
          <td>Title (h1,h2 etc) Font Family:</td>
          <td><input type="text" name="themecontrol[fontsfamilytitle]" value="<?php if(isset($themecontrol['fontsfamilytitle'])){ echo $themecontrol['fontsfamilytitle']; } ?>" /></td>
         <td style="background:#333; color: #fff;"> example:  'Berkshire Swash', cursive</td>
        </tr>



       </table>
	   
				</div>

				
				<div id="functions" class="vtabs-content" style="">
					<table class="form">
					<tr style = "height: 60px;">
							<td>Home Page options:<br /><span class="help">Full width or left / right column select. </span></td>
							<td>
								<select name="themecontrol[homepagelayout]">
									<option value="col-lg-9" <?php if(isset($themecontrol['homepagelayout']) && $themecontrol['homepagelayout']=='col-lg-9'){ echo 'selected="selected"'; }?>>Left or Right Column Page</option>
									<option value="col-lg-12" <?php if(isset($themecontrol['homepagelayout']) && $themecontrol['homepagelayout']=='col-lg-12'){ echo 'selected=""'; }?>>Full Width Page</option>
									<option value="col-lg-6" <?php if(isset($themecontrol['homepagelayout']) && $themecontrol['homepagelayout']=='col-lg-6'){ echo 'selected="selected"'; }?>>Left + Right Column + Content Page</option>
								</select>
							</td>
					</tr>
					<tr style = "height: 60px;">
							<td>Blog Pages options:<br /><span class="help">Full width or left / right column select. </span></td>
							<td>
								<select name="themecontrol[blogpagelayout]">
								<option value="col-lg-9" <?php if(isset($themecontrol['blogpagelayout']) && $themecontrol['blogpagelayout']=='col-lg-9'){ echo 'selected="selected"'; }?>>Left or Right Column Page</option>
									<option value="col-lg-12" <?php if(isset($themecontrol['blogpagelayout']) && $themecontrol['blogpagelayout']=='col-lg-12'){ echo 'selected=""'; }?>>Full Width Page</option>
									<option value="col-lg-6" <?php if(isset($themecontrol['blogpagelayout']) && $themecontrol['blogpagelayout']=='col-lg-6'){ echo 'selected="selected"'; }?>>Left + Right Column + Content Page</option>
								</select>
							</td>
					</tr>
						<tr style = "height: 117px;">
							<td>Category Pages options:<br /><span class="help">Full width or left / right column select. (Search - brands - category - special page )</span></td>
							<td>
								<select name="themecontrol[catpagelayout]">
								<option value="col-lg-9" <?php if(isset($themecontrol['catpagelayout']) && $themecontrol['catpagelayout']=='col-lg-9'){ echo 'selected="selected"'; }?>>Left or Right Column Page</option>
									<option value="col-lg-12" <?php if(isset($themecontrol['catpagelayout']) && $themecontrol['catpagelayout']=='col-lg-12'){ echo 'selected=""'; }?>>Full Width Page</option>
									
									<option value="col-lg-6" <?php if(isset($themecontrol['catpagelayout']) && $themecontrol['catpagelayout']=='col-lg-6'){ echo 'selected=""'; }?>>Left + Right + Content Products ( not recommended )</option>
								</select>
							</td>
						</tr>
						<tr style = "height: 60px;">
							<td>Product Pages options:<br /><span class="help">Full width or left / right column select. </span></td>
							<td>
								<select name="themecontrol[propagelayout]">
								<option value="col-lg-9" <?php if(isset($themecontrol['propagelayout']) && $themecontrol['propagelayout']=='col-lg-9'){ echo 'selected="selected"'; }?>>Left or Right Column Page</option>
									<option value="col-lg-12" <?php if(isset($themecontrol['propagelayout']) && $themecontrol['propagelayout']=='col-lg-12'){ echo 'selected="selected"'; }?>>Full Width Page</option>
									
								</select>
							</td>
						</tr>
						<tr style = "height: 60px;">
							<td>Account Pages options:<br /><span class="help">Full width or left / right column select. </span></td>
							<td>
								<select name="themecontrol[accpagelayout]">
									<option value="col-lg-9" <?php if(isset($themecontrol['accpagelayout']) && $themecontrol['accpagelayout']=='col-lg-9'){ echo 'selected="selected"'; }?>>Left or Right Column Page</option>
									<option value="col-lg-12" <?php if(isset($themecontrol['accpagelayout']) && $themecontrol['accpagelayout']=='col-lg-12'){ echo 'selected="selected"'; }?>>Full Width Page</option>
								
								</select>
							</td>
						</tr>
						
						<tr style = "height: 60px;">
							<td>Affiliate Pages options:<br /><span class="help">Full width or left / right column select. </span></td>
							<td>
								<select name="themecontrol[affipagelayout]">
									<option value="col-lg-12" <?php if(isset($themecontrol['affipagelayout']) && $themecontrol['affipagelayout']=='col-lg-12'){ echo 'selected="selected"'; }?>>Full Width Page</option>
									<option value="col-lg-9" <?php if(isset($themecontrol['affipagelayout']) && $themecontrol['affipagelayout']=='col-lg-9'){ echo 'selected="selected"'; }?>>Left or Right Column Page</option>
								</select>
							</td>
						</tr>
						<tr style = "height: 60px;">
							<td>Cart/Checkout Pages options:<br /><span class="help">Full width or left / right column select. </span></td>
							<td>
								<select name="themecontrol[cartipagelayout]">
								<option value="col-lg-9" <?php if(isset($themecontrol['cartipagelayout']) && $themecontrol['cartipagelayout']=='col-lg-9'){ echo 'selected="selected"'; }?>>Left or Right Column Page</option>
									<option value="col-lg-12" <?php if(isset($themecontrol['cartipagelayout']) && $themecontrol['cartipagelayout']=='col-lg-12'){ echo 'selected="selected"'; }?>>Full Width Page</option>
									
								</select>
							</td>
						</tr>
						<tr style = "height: 60px;">
							<td>Information/Contact Pages options:<br /><span class="help">Full width or left / right column select. </span></td>
							<td>
								<select name="themecontrol[inforpagelayout]">
								<option value="col-lg-9" <?php if(isset($themecontrol['inforpagelayout']) && $themecontrol['inforpagelayout']=='col-lg-9'){ echo 'selected="selected"'; }?>>Left or Right Column Page</option>
									<option value="col-lg-12" <?php if(isset($themecontrol['inforpagelayout']) && $themecontrol['inforpagelayout']=='col-lg-12'){ echo 'selected="selected"'; }?>>Full Width Page</option>
									
								</select>
							</td>
						</tr>

					</table>
				</div>
				<div id="moduleribbon" class="vtabs-content" style="">
				
					<table class="form">
					<tr>
						<td>Bestseller module ribbon options :</td>
						<td>
							<select name="themecontrol[bestribbon]">
								<option value="new" <?php if(isset($themecontrol['bestribbon']) && $themecontrol['bestribbon']=='new')        { echo 'selected="selected"'; }?>>New Ribbon</option>
								<option value="hot" <?php if(isset($themecontrol['bestribbon']) && $themecontrol['bestribbon']=='hot')	      { echo 'selected=""'; }?>>Hot Ribbon</option>
								<option value="disable" <?php if(isset($themecontrol['bestribbon']) && $themecontrol['bestribbon']=='disable'){ echo 'selected=""'; }?>>Disable</option>
							</select>

						</td>
					</tr>
					<tr>
						<td>Featured module ribbon options :</td>
						<td>
							<select name="themecontrol[featuredribbon]">
								<option value="new" <?php if(isset($themecontrol['featuredribbon']) && $themecontrol['featuredribbon']=='new')        { echo 'selected="selected"'; }?>>New Ribbon</option>
								<option value="hot" <?php if(isset($themecontrol['featuredribbon']) && $themecontrol['featuredribbon']=='hot')	      { echo 'selected=""'; }?>>Hot Ribbon</option>
								<option value="disable" <?php if(isset($themecontrol['featuredribbon']) && $themecontrol['featuredribbon']=='disable'){ echo 'selected=""'; }?>>Disable</option>
							</select>
						</td>
					</tr>
					<tr>
						<td>Latest module ribbon options :</td>
						<td>
							<select name="themecontrol[latestribbon]">
								<option value="new" <?php if(isset($themecontrol['latestribbon']) && $themecontrol['latestribbon']=='new')        { echo 'selected="selected"'; }?>>New Ribbon</option>
								<option value="hot" <?php if(isset($themecontrol['latestribbon']) && $themecontrol['latestribbon']=='hot')	      { echo 'selected=""'; }?>>Hot Ribbon</option>
								<option value="disable" <?php if(isset($themecontrol['latestribbon']) && $themecontrol['latestribbon']=='disable'){ echo 'selected=""'; }?>>Disable</option>
							</select>
						</td>
					</tr>
					<tr>
						<td>Tabs module :  Latest ribbon options : </td>
						<td>
							<select name="themecontrol[tabslatestribbon]">
								<option value="new" <?php if(isset($themecontrol['tabslatestribbon']) && $themecontrol['tabslatestribbon']=='new')        { echo 'selected="selected"'; }?>>New Ribbon</option>
								<option value="hot" <?php if(isset($themecontrol['tabslatestribbon']) && $themecontrol['tabslatestribbon']=='hot')	      { echo 'selected=""'; }?>>Hot Ribbon</option>
								<option value="disable" <?php if(isset($themecontrol['tabslatestribbon']) && $themecontrol['tabslatestribbon']=='disable'){ echo 'selected=""'; }?>>Disable</option>
							</select>
						</td>
					</tr>
						<tr>
						<td>Tabs module :  Bestseller ribbon options : </td>
						<td>
							<select name="themecontrol[tabsbestribbon]">
								<option value="new" <?php if(isset($themecontrol['tabsbestribbon']) && $themecontrol['tabsbestribbon']=='new')        { echo 'selected="selected"'; }?>>New Ribbon</option>
								<option value="hot" <?php if(isset($themecontrol['tabsbestribbon']) && $themecontrol['tabsbestribbon']=='hot')	      { echo 'selected=""'; }?>>Hot Ribbon</option>
								<option value="disable" <?php if(isset($themecontrol['tabsbestribbon']) && $themecontrol['tabsbestribbon']=='disable'){ echo 'selected=""'; }?>>Disable</option>
							</select>
						</td>
					</tr>
						<tr>
						<td>Tabs module :  Featured ribbon options : </td>
						<td>
							<select name="themecontrol[tabsfeaturedribbon]">
								<option value="new" <?php if(isset($themecontrol['tabsfeaturedribbon']) && $themecontrol['tabsfeaturedribbon']=='new')        { echo 'selected="selected"'; }?>>New Ribbon</option>
								<option value="hot" <?php if(isset($themecontrol['tabsfeaturedribbon']) && $themecontrol['tabsfeaturedribbon']=='hot')	      { echo 'selected=""'; }?>>Hot Ribbon</option>
								<option value="disable" <?php if(isset($themecontrol['tabsfeaturedribbon']) && $themecontrol['tabsfeaturedribbon']=='disable'){ echo 'selected=""'; }?>>Disable</option>
							</select>
						</td>
					</tr>
					<tr>
						<td>Banner module ribbon options :</td>
						<td>
							<select name="themecontrol[bannerribbon]">
								<option value="new" <?php if(isset($themecontrol['bannerribbon']) && $themecontrol['bannerribbon']=='new')        { echo 'selected="selected"'; }?>>New Ribbon</option>
								<option value="hot" <?php if(isset($themecontrol['bannerribbon']) && $themecontrol['bannerribbon']=='hot')	      { echo 'selected=""'; }?>>Hot Ribbon</option>
								<option value="disable" <?php if(isset($themecontrol['bannerribbon']) && $themecontrol['bannerribbon']=='disable'){ echo 'selected=""'; }?>>Disable</option>
							</select>
						</td>
					</tr>
					<tr>
						<td>Any List module ribbon options :</td>
						<td>
							<select name="themecontrol[anylistribbon]">
								<option value="new" <?php if(isset($themecontrol['anylistribbon']) && $themecontrol['anylistribbon']=='new')        { echo 'selected="selected"'; }?>>New Ribbon</option>
								<option value="hot" <?php if(isset($themecontrol['anylistribbon']) && $themecontrol['anylistribbon']=='hot')	      { echo 'selected=""'; }?>>Hot Ribbon</option>
								<option value="disable" <?php if(isset($themecontrol['anylistribbon']) && $themecontrol['anylistribbon']=='disable'){ echo 'selected=""'; }?>>Disable</option>
							</select>
						</td>
					</tr>
				</table>
			</div>
			<div id="responsive" class="vtabs-content" style="">
				
				<table class="form">
					<tr>
						<td>Bestseller Module options :</td>
						<td>
							<select name="themecontrol[bestresponsive]">
								<option value="" <?php if(isset($themecontrol['bestresponsive']) && $themecontrol['bestresponsive']=='')                                     { echo 'selected="selected"'; }?>>Phone Options</option>
								<option value="hidden-xs" <?php if(isset($themecontrol['bestresponsive']) && $themecontrol['bestresponsive']=='hidden-xs')	                 { echo 'selected="selected"'; }?>>Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['bestresponsive']) && $themecontrol['bestresponsive']=='responsiveclass')       { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[bestresponsivesm]">
								<option value="" <?php if(isset($themecontrol['bestresponsivesm']) && $themecontrol['bestresponsivesm']=='')                         					 { echo 'selected="selected"'; }?>> Tablet Options</option>
								<option value="hidden-sm" <?php if(isset($themecontrol['bestresponsivesm']) && $themecontrol['bestresponsivesm']=='hidden-sm')	      					 { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['bestresponsivesm']) && $themecontrol['bestresponsivesm']=='responsiveclass')				 { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[bestresponsivemd]">
								<option value="" <?php if(isset($themecontrol['bestresponsivemd']) && $themecontrol['bestresponsivemd']=='')                         { echo 'selected="selected"'; }?>> Notebook Options</option>
								<option value="hidden-md" <?php if(isset($themecontrol['bestresponsivemd']) && $themecontrol['bestresponsivemd']=='hidden-md')	      					 { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['bestresponsivemd']) && $themecontrol['bestresponsivemd']=='responsiveclass')	 { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[bestresponsivelg]">
								<option value="" <?php if(isset($themecontrol['bestresponsivelg']) && $themecontrol['bestresponsivelg']=='')      					  { echo 'selected="selected"'; }?>> Desktop Options</option>
								<option value="hidden-lg" <?php if(isset($themecontrol['bestresponsivelg']) && $themecontrol['bestresponsivelg']=='hidden-lg')	      					  { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['bestresponsivelg']) && $themecontrol['bestresponsivelg']=='responsiveclass')	  { echo 'selected="selected"'; }?>>   Show</option>
							</select>
						</td>
					</tr>
					<tr>
						<td>Featured Module options :</td>
						<td>
							<select name="themecontrol[featuredresponsive]">
								<option value="" <?php if(isset($themecontrol['featuredresponsive']) && $themecontrol['featuredresponsive']=='')                                     { echo 'selected="selected"'; }?>>Phone Options</option>
								<option value="hidden-xs" <?php if(isset($themecontrol['featuredresponsive']) && $themecontrol['featuredresponsive']=='hidden-xs')	                 { echo 'selected="selected"'; }?>>Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['featuredresponsive']) && $themecontrol['featuredresponsive']=='responsiveclass')       { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[featuredresponsivesm]">
								<option value="" <?php if(isset($themecontrol['featuredresponsivesm']) && $themecontrol['featuredresponsivesm']=='')                         					 { echo 'selected="selected"'; }?>> Tablet Options</option>
								<option value="hidden-sm" <?php if(isset($themecontrol['featuredresponsivesm']) && $themecontrol['featuredresponsivesm']=='hidden-sm')	      					 { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['featuredresponsivesm']) && $themecontrol['featuredresponsivesm']=='responsiveclass')				 { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[featuredresponsivemd]">
								<option value="" <?php if(isset($themecontrol['featuredresponsivemd']) && $themecontrol['featuredresponsivemd']=='')                         { echo 'selected="selected"'; }?>> Notebook Options</option>
								<option value="hidden-md" <?php if(isset($themecontrol['featuredresponsivemd']) && $themecontrol['featuredresponsivemd']=='hidden-md')	      					 { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['featuredresponsivemd']) && $themecontrol['featuredresponsivemd']=='responsiveclass')	 { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[featuredresponsivelg]">
								<option value="" <?php if(isset($themecontrol['featuredresponsivelg']) && $themecontrol['featuredresponsivelg']=='')      					  { echo 'selected="selected"'; }?>> Desktop Options</option>
								<option value="hidden-lg" <?php if(isset($themecontrol['featuredresponsivelg']) && $themecontrol['featuredresponsivelg']=='hidden-lg')	      					  { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['featuredresponsivelg']) && $themecontrol['bestresponsivelg']=='responsiveclass')	  { echo 'selected="selected"'; }?>>   Show</option>
							</select>
						</td>
					</tr>
					<tr>
						<td>Latest Module options :</td>
						<td>
							<select name="themecontrol[latestresponsive]">
								<option value="" <?php if(isset($themecontrol['latestresponsive']) && $themecontrol['latestresponsive']=='')                                     { echo 'selected="selected"'; }?>>Phone Options</option>
								<option value="hidden-xs" <?php if(isset($themecontrol['latestresponsive']) && $themecontrol['latestresponsive']=='hidden-xs')	                 { echo 'selected="selected"'; }?>>Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['latestresponsive']) && $themecontrol['latestresponsive']=='responsiveclass')       { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[latestresponsivesm]">
								<option value="" <?php if(isset($themecontrol['latestresponsivesm']) && $themecontrol['latestresponsivesm']=='')                         					 { echo 'selected="selected"'; }?>> Tablet Options</option>
								<option value="hidden-sm" <?php if(isset($themecontrol['latestresponsivesm']) && $themecontrol['latestresponsivesm']=='hidden-sm')	      					 { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['latestresponsivesm']) && $themecontrol['latestresponsivesm']=='responsiveclass')				 { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[latestresponsivemd]">
								<option value="" <?php if(isset($themecontrol['latestresponsivemd']) && $themecontrol['latestresponsivemd']=='')                         { echo 'selected="selected"'; }?>> Notebook Options</option>
								<option value="hidden-md" <?php if(isset($themecontrol['latestresponsivemd']) && $themecontrol['latestresponsivemd']=='hidden-md')	      					 { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['latestresponsivemd']) && $themecontrol['latestresponsivemd']=='responsiveclass')	 { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[latestresponsivelg]">
								<option value="" <?php if(isset($themecontrol['latestresponsivelg']) && $themecontrol['latestresponsivelg']=='')      					  { echo 'selected="selected"'; }?>> Desktop Options</option>
								<option value="hidden-lg" <?php if(isset($themecontrol['latestresponsivelg']) && $themecontrol['latestresponsivelg']=='hidden-lg')	      					  { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['latestresponsivelg']) && $themecontrol['latestresponsivelg']=='responsiveclass')	  { echo 'selected="selected"'; }?>>   Show</option>
							</select>
						</td>
					</tr>
						<tr>
						<td>SpecialModule options :</td>
						<td>
							<select name="themecontrol[specialresponsive]">
								<option value="" <?php if(isset($themecontrol['specialresponsive']) && $themecontrol['specialresponsive']=='')                                     { echo 'selected="selected"'; }?>>Phone Options</option>
								<option value="hidden-xs" <?php if(isset($themecontrol['specialresponsive']) && $themecontrol['specialresponsive']=='hidden-xs')	                 { echo 'selected="selected"'; }?>>Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['specialresponsive']) && $themecontrol['specialresponsive']=='responsiveclass')       { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[specialresponsivesm]">
								<option value="" <?php if(isset($themecontrol['specialresponsivesm']) && $themecontrol['specialresponsivesm']=='')                         					 { echo 'selected="selected"'; }?>> Tablet Options</option>
								<option value="hidden-sm" <?php if(isset($themecontrol['specialresponsivesm']) && $themecontrol['specialresponsivesm']=='hidden-sm')	      					 { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['specialresponsivesm']) && $themecontrol['specialresponsivesm']=='responsiveclass')				 { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[specialresponsivemd]">
								<option value="" <?php if(isset($themecontrol['specialresponsivemd']) && $themecontrol['specialresponsivemd']=='')                         { echo 'selected="selected"'; }?>> Notebook Options</option>
								<option value="hidden-md" <?php if(isset($themecontrol['specialresponsivemd']) && $themecontrol['specialresponsivemd']=='hidden-md')	      					 { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['specialresponsivemd']) && $themecontrol['specialresponsivemd']=='responsiveclass')	 { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[specialresponsivelg]">
								<option value="" <?php if(isset($themecontrol['specialresponsivelg']) && $themecontrol['specialresponsivelg']=='')      					  { echo 'selected="selected"'; }?>> Desktop Options</option>
								<option value="hidden-lg" <?php if(isset($themecontrol['specialresponsivelg']) && $themecontrol['specialresponsivelg']=='hidden-lg')	      					  { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['specialresponsivelg']) && $themecontrol['specialresponsivelg']=='responsiveclass')	  { echo 'selected="selected"'; }?>>   Show</option>
							</select>
						</td>
					</tr>
						<tr>
						<td>anylist Module options :</td>
						<td>
							<select name="themecontrol[anylistresponsive]">
								<option value="" <?php if(isset($themecontrol['anylistresponsive']) && $themecontrol['anylistresponsive']=='')                                     { echo 'selected="selected"'; }?>>Phone Options</option>
								<option value="hidden-xs" <?php if(isset($themecontrol['anylistresponsive']) && $themecontrol['anylistresponsive']=='hidden-xs')	                 { echo 'selected="selected"'; }?>>Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['anylistresponsive']) && $themecontrol['anylistresponsive']=='responsiveclass')       { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[anylistresponsivesm]">
								<option value="" <?php if(isset($themecontrol['anylistresponsivesm']) && $themecontrol['anylistresponsivesm']=='')                         					 { echo 'selected="selected"'; }?>> Tablet Options</option>
								<option value="hidden-sm" <?php if(isset($themecontrol['anylistresponsivesm']) && $themecontrol['anylistresponsivesm']=='hidden-sm')	      					 { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['anylistresponsivesm']) && $themecontrol['anylistresponsivesm']=='responsiveclass')				 { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[anylistresponsivemd]">
								<option value="" <?php if(isset($themecontrol['anylistresponsivemd']) && $themecontrol['anylistresponsivemd']=='')                         { echo 'selected="selected"'; }?>> Notebook Options</option>
								<option value="hidden-md" <?php if(isset($themecontrol['anylistresponsivemd']) && $themecontrol['anylistresponsivemd']=='hidden-md')	      					 { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['anylistresponsivemd']) && $themecontrol['anylistresponsivemd']=='responsiveclass')	 { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[anylistresponsivelg]">
								<option value="" <?php if(isset($themecontrol['anylistresponsivelg']) && $themecontrol['anylistresponsivelg']=='')      					  { echo 'selected="selected"'; }?>> Desktop Options</option>
								<option value="hidden-lg" <?php if(isset($themecontrol['anylistresponsivelg']) && $themecontrol['anylistresponsivelg']=='hidden-lg')	      					  { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['anylistresponsivelg']) && $themecontrol['anylistresponsivelg']=='responsiveclass')	  { echo 'selected="selected"'; }?>>   Show</option>
							</select>
						</td>
					</tr>
						<tr>
						<td>Nine Theme: Tabs  Module options :</td>
						<td>
							<select name="themecontrol[tabsresponsive]">
								<option value="" <?php if(isset($themecontrol['tabsresponsive']) && $themecontrol['tabsresponsive']=='')                                     { echo 'selected="selected"'; }?>>Phone Options</option>
								<option value="hidden-xs" <?php if(isset($themecontrol['tabsresponsive']) && $themecontrol['tabsresponsive']=='hidden-xs')	                 { echo 'selected="selected"'; }?>>Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['tabsresponsive']) && $themecontrol['tabsresponsive']=='responsiveclass')       { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[tabsresponsivesm]">
								<option value="" <?php if(isset($themecontrol['tabsresponsivesm']) && $themecontrol['tabsresponsivesm']=='')                         					 { echo 'selected="selected"'; }?>> Tablet Options</option>
								<option value="hidden-sm" <?php if(isset($themecontrol['tabsresponsivesm']) && $themecontrol['tabsresponsivesm']=='hidden-sm')	      					 { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['tabsresponsivesm']) && $themecontrol['tabsresponsivesm']=='responsiveclass')				 { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[tabsresponsivemd]">
								<option value="" <?php if(isset($themecontrol['tabsresponsivemd']) && $themecontrol['tabsresponsivemd']=='')                         { echo 'selected="selected"'; }?>> Notebook Options</option>
								<option value="hidden-md" <?php if(isset($themecontrol['tabsresponsivemd']) && $themecontrol['tabsresponsivemd']=='hidden-md')	      					 { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['tabsresponsivemd']) && $themecontrol['tabsresponsivemd']=='responsiveclass')	 { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[tabsresponsivelg]">
								<option value="" <?php if(isset($themecontrol['tabsresponsivelg']) && $themecontrol['tabsresponsivelg']=='')      					  { echo 'selected="selected"'; }?>> Desktop Options</option>
								<option value="hidden-lg" <?php if(isset($themecontrol['tabsresponsivelg']) && $themecontrol['tabsresponsivelg']=='hidden-lg')	      					  { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['tabsresponsivelg']) && $themecontrol['tabsresponsivelg']=='responsiveclass')	  { echo 'selected="selected"'; }?>>   Show</option>
							</select>
						</td>
					</tr>
					<tr>
						<td>Nine Theme : HTML Module options :</td>
						<td>
							<select name="themecontrol[cr2htmlresponsive]">
								<option value="" <?php if(isset($themecontrol['cr2htmlresponsive']) && $themecontrol['cr2htmlresponsive']=='')                                     { echo 'selected="selected"'; }?>>Phone Options</option>
								<option value="hidden-xs" <?php if(isset($themecontrol['cr2htmlresponsive']) && $themecontrol['cr2htmlresponsive']=='hidden-xs')	                 { echo 'selected="selected"'; }?>>Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['cr2htmlresponsive']) && $themecontrol['cr2htmlresponsive']=='responsiveclass')       { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[cr2htmlresponsivesm]">
								<option value="" <?php if(isset($themecontrol['cr2htmlresponsivesm']) && $themecontrol['cr2htmlresponsivesm']=='')                         					 { echo 'selected="selected"'; }?>> Tablet Options</option>
								<option value="hidden-sm" <?php if(isset($themecontrol['cr2htmlresponsivesm']) && $themecontrol['cr2htmlresponsivesm']=='hidden-sm')	      					 { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['cr2htmlresponsivesm']) && $themecontrol['cr2htmlresponsivesm']=='responsiveclass')				 { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[cr2htmlresponsivemd]">
								<option value="" <?php if(isset($themecontrol['cr2htmlresponsivemd']) && $themecontrol['cr2htmlresponsivemd']=='')                         { echo 'selected="selected"'; }?>> Notebook Options</option>
								<option value="hidden-md" <?php if(isset($themecontrol['cr2htmlresponsivemd']) && $themecontrol['cr2htmlresponsivemd']=='hidden-md')	      					 { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['cr2htmlresponsivemd']) && $themecontrol['cr2htmlresponsivemd']=='responsiveclass')	 { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[cr2htmlresponsivelg]">
								<option value="" <?php if(isset($themecontrol['cr2htmlresponsivelg']) && $themecontrol['cr2htmlresponsivelg']=='')      					  { echo 'selected="selected"'; }?>> Desktop Options</option>
								<option value="hidden-lg" <?php if(isset($themecontrol['cr2htmlresponsivelg']) && $themecontrol['cr2htmlresponsivelg']=='hidden-lg')	      					  { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['cr2htmlresponsivelg']) && $themecontrol['cr2htmlresponsivelg']=='responsiveclass')	  { echo 'selected="selected"'; }?>>   Show</option>
							</select>
						</td>
					</tr>
						<tr>
						<td>Nine Theme : Camera Slider Module options :</td>
						<td>
							<select name="themecontrol[contentsliderresponsive]">
								<option value="" <?php if(isset($themecontrol['contentsliderresponsive']) && $themecontrol['contentsliderresponsive']=='')                                     { echo 'selected="selected"'; }?>>Phone Options</option>
								<option value="hidden-xs" <?php if(isset($themecontrol['contentsliderresponsive']) && $themecontrol['contentsliderresponsive']=='hidden-xs')	                 { echo 'selected="selected"'; }?>>Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['contentsliderresponsive']) && $themecontrol['contentsliderresponsive']=='responsiveclass')       { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[contentsliderresponsivesm]">
								<option value="" <?php if(isset($themecontrol['contentsliderresponsivesm']) && $themecontrol['contentsliderresponsivesm']=='')                         					 { echo 'selected="selected"'; }?>> Tablet Options</option>
								<option value="hidden-sm" <?php if(isset($themecontrol['contentsliderresponsivesm']) && $themecontrol['contentsliderresponsivesm']=='hidden-sm')	      					 { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['contentsliderresponsivesm']) && $themecontrol['contentsliderresponsivesm']=='responsiveclass')				 { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[contentsliderresponsivemd]">
								<option value="" <?php if(isset($themecontrol['contentsliderresponsivemd']) && $themecontrol['contentsliderresponsivemd']=='')                         { echo 'selected="selected"'; }?>> Notebook Options</option>
								<option value="hidden-md" <?php if(isset($themecontrol['contentsliderresponsivemd']) && $themecontrol['contentsliderresponsivemd']=='hidden-md')	      					 { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['contentsliderresponsivemd']) && $themecontrol['contentsliderresponsivemd']=='responsiveclass')	 { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[contentsliderresponsivelg]">
								<option value="" <?php if(isset($themecontrol['contentsliderresponsivelg']) && $themecontrol['contentsliderresponsivelg']=='')      					  { echo 'selected="selected"'; }?>> Desktop Options</option>
								<option value="hidden-lg" <?php if(isset($themecontrol['contentsliderresponsivelg']) && $themecontrol['contentsliderresponsivelg']=='hidden-lg')	      					  { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['contentsliderresponsivelg']) && $themecontrol['contentsliderresponsivelg']=='responsiveclass')	  { echo 'selected="selected"'; }?>>   Show</option>
							</select>
						</td>
					</tr>
					
					<tr>
						<td>Account Module options :</td>
						<td>
							<select name="themecontrol[accountresponsive]">
								<option value="" <?php if(isset($themecontrol['accountresponsive']) && $themecontrol['accountresponsive']=='')                                     { echo 'selected="selected"'; }?>>Phone Options</option>
								<option value="hidden-xs" <?php if(isset($themecontrol['accountresponsive']) && $themecontrol['accountresponsive']=='hidden-xs')	                 { echo 'selected="selected"'; }?>>Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['accountresponsive']) && $themecontrol['accountresponsive']=='responsiveclass')       { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[accountresponsivesm]">
								<option value="" <?php if(isset($themecontrol['accountresponsivesm']) && $themecontrol['accountresponsivesm']=='')                         					 { echo 'selected="selected"'; }?>> Tablet Options</option>
								<option value="hidden-sm" <?php if(isset($themecontrol['accountresponsivesm']) && $themecontrol['accountresponsivesm']=='hidden-sm')	      					 { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['accountresponsivesm']) && $themecontrol['accountresponsivesm']=='responsiveclass')				 { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[accountresponsivemd]">
								<option value="" <?php if(isset($themecontrol['accountresponsivemd']) && $themecontrol['accountresponsivemd']=='')                         { echo 'selected="selected"'; }?>> Notebook Options</option>
								<option value="hidden-md" <?php if(isset($themecontrol['accountresponsivemd']) && $themecontrol['accountresponsivemd']=='hidden-md')	      					 { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['accountresponsivemd']) && $themecontrol['accountresponsivemd']=='responsiveclass')	 { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[accountresponsivelg]">
								<option value="" <?php if(isset($themecontrol['accountresponsivelg']) && $themecontrol['accountresponsivelg']=='')      					  { echo 'selected="selected"'; }?>> Desktop Options</option>
								<option value="hidden-lg" <?php if(isset($themecontrol['accountresponsivelg']) && $themecontrol['accountresponsivelg']=='hidden-lg')	      					  { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['accountresponsivelg']) && $themecontrol['accountresponsivelg']=='responsiveclass')	  { echo 'selected="selected"'; }?>>   Show</option>
							</select>
						</td>
					</tr>
						<tr>
						<td>Affiliate Module options :</td>
						<td>
							<select name="themecontrol[affiliateresponsive]">
								<option value="" <?php if(isset($themecontrol['affiliateresponsive']) && $themecontrol['affiliateresponsive']=='')                                     { echo 'selected="selected"'; }?>>Phone Options</option>
								<option value="hidden-xs" <?php if(isset($themecontrol['affiliateresponsive']) && $themecontrol['affiliateresponsive']=='hidden-xs')	                 { echo 'selected="selected"'; }?>>Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['affiliateresponsive']) && $themecontrol['affiliateresponsive']=='responsiveclass')       { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[affiliateresponsivesm]">
								<option value="" <?php if(isset($themecontrol['affiliateresponsivesm']) && $themecontrol['affiliateresponsivesm']=='')                         					 { echo 'selected="selected"'; }?>> Tablet Options</option>
								<option value="hidden-sm" <?php if(isset($themecontrol['affiliateresponsivesm']) && $themecontrol['affiliateresponsivesm']=='hidden-sm')	      					 { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['affiliateresponsivesm']) && $themecontrol['affiliateresponsivesm']=='responsiveclass')				 { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[affiliateresponsivemd]">
								<option value="" <?php if(isset($themecontrol['affiliateresponsivemd']) && $themecontrol['affiliateresponsivemd']=='')                         { echo 'selected="selected"'; }?>> Notebook Options</option>
								<option value="hidden-md" <?php if(isset($themecontrol['affiliateresponsivemd']) && $themecontrol['affiliateresponsivemd']=='hidden-md')	      					 { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['affiliateresponsivemd']) && $themecontrol['affiliateresponsivemd']=='responsiveclass')	 { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[affiliateresponsivelg]">
								<option value="" <?php if(isset($themecontrol['affiliateresponsivelg']) && $themecontrol['affiliateresponsivelg']=='')      					  { echo 'selected="selected"'; }?>> Desktop Options</option>
								<option value="hidden-lg" <?php if(isset($themecontrol['affiliateresponsivelg']) && $themecontrol['affiliateresponsivelg']=='hidden-lg')	      					  { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['affiliateresponsivelg']) && $themecontrol['affiliateresponsivelg']=='responsiveclass')	  { echo 'selected="selected"'; }?>>   Show</option>
							</select>
						</td>
					</tr>
						<tr>
						<td>Banner Module options :</td>
						<td>
							<select name="themecontrol[bannerresponsive]">
								<option value="" <?php if(isset($themecontrol['bannerresponsive']) && $themecontrol['bannerresponsive']=='')                                     { echo 'selected="selected"'; }?>>Phone Options</option>
								<option value="hidden-xs" <?php if(isset($themecontrol['bannerresponsive']) && $themecontrol['bannerresponsive']=='hidden-xs')	                 { echo 'selected="selected"'; }?>>Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['bannerresponsive']) && $themecontrol['bannerresponsive']=='responsiveclass')       { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[bannerresponsivesm]">
								<option value="" <?php if(isset($themecontrol['bannerresponsivesm']) && $themecontrol['bannerresponsivesm']=='')                         					 { echo 'selected="selected"'; }?>> Tablet Options</option>
								<option value="hidden-sm" <?php if(isset($themecontrol['bannerresponsivesm']) && $themecontrol['bannerresponsivesm']=='hidden-sm')	      					 { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['bannerresponsivesm']) && $themecontrol['bannerresponsivesm']=='responsiveclass')				 { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[bannerresponsivemd]">
								<option value="" <?php if(isset($themecontrol['bannerresponsivemd']) && $themecontrol['bannerresponsivemd']=='')                         { echo 'selected="selected"'; }?>> Notebook Options</option>
								<option value="hidden-md" <?php if(isset($themecontrol['bannerresponsivemd']) && $themecontrol['bannerresponsivemd']=='hidden-md')	      					 { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['bannerresponsivemd']) && $themecontrol['bannerresponsivemd']=='responsiveclass')	 { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[bannerresponsivelg]">
								<option value="" <?php if(isset($themecontrol['bannerresponsivelg']) && $themecontrol['bannerresponsivelg']=='')      					  { echo 'selected="selected"'; }?>> Desktop Options</option>
								<option value="hidden-lg" <?php if(isset($themecontrol['bannerresponsivelg']) && $themecontrol['bannerresponsivelg']=='hidden-lg')	      					  { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['bannerresponsivelg']) && $themecontrol['bannerresponsivelg']=='responsiveclass')	  { echo 'selected="selected"'; }?>>   Show</option>
							</select>
						</td>
					</tr>
						<tr>
						<td>Carousel Module options :</td>
						<td>
							<select name="themecontrol[carouselresponsive]">
								<option value="" <?php if(isset($themecontrol['carouselresponsive']) && $themecontrol['carouselresponsive']=='')                                     { echo 'selected="selected"'; }?>>Phone Options</option>
								<option value="hidden-xs" <?php if(isset($themecontrol['carouselresponsive']) && $themecontrol['carouselresponsive']=='hidden-xs')	                 { echo 'selected="selected"'; }?>>Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['carouselresponsive']) && $themecontrol['carouselresponsive']=='responsiveclass')       { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[carouselresponsivesm]">
								<option value="" <?php if(isset($themecontrol['carouselresponsivesm']) && $themecontrol['carouselresponsivesm']=='')                         					 { echo 'selected="selected"'; }?>> Tablet Options</option>
								<option value="hidden-sm" <?php if(isset($themecontrol['carouselresponsivesm']) && $themecontrol['carouselresponsivesm']=='hidden-sm')	      					 { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['carouselresponsivesm']) && $themecontrol['carouselresponsivesm']=='responsiveclass')				 { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[carouselresponsivemd]">
								<option value="" <?php if(isset($themecontrol['carouselresponsivemd']) && $themecontrol['carouselresponsivemd']=='')                         { echo 'selected="selected"'; }?>> Notebook Options</option>
								<option value="hidden-md" <?php if(isset($themecontrol['carouselresponsivemd']) && $themecontrol['carouselresponsivemd']=='hidden-md')	      					 { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['carouselresponsivemd']) && $themecontrol['carouselresponsivemd']=='responsiveclass')	 { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[carouselresponsivelg]">
								<option value="" <?php if(isset($themecontrol['carouselresponsivelg']) && $themecontrol['carouselresponsivelg']=='')      					  { echo 'selected="selected"'; }?>> Desktop Options</option>
								<option value="hidden-lg" <?php if(isset($themecontrol['carouselresponsivelg']) && $themecontrol['carouselresponsivelg']=='hidden-lg')	      					  { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['carouselresponsivelg']) && $themecontrol['carouselresponsivelg']=='responsiveclass')	  { echo 'selected="selected"'; }?>>   Show</option>
							</select>
						</td>
					</tr>
						<tr>
						<td>Category Module options :</td>
						<td>
							<select name="themecontrol[categoryresponsive]">
								<option value="" <?php if(isset($themecontrol['categoryresponsive']) && $themecontrol['categoryresponsive']=='')                                     { echo 'selected="selected"'; }?>>Phone Options</option>
								<option value="hidden-xs" <?php if(isset($themecontrol['categoryresponsive']) && $themecontrol['categoryresponsive']=='hidden-xs')	                 { echo 'selected="selected"'; }?>>Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['categoryresponsive']) && $themecontrol['categoryresponsive']=='responsiveclass')       { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[categoryresponsivesm]">
								<option value="" <?php if(isset($themecontrol['categoryresponsivesm']) && $themecontrol['categoryresponsivesm']=='')                         					 { echo 'selected="selected"'; }?>> Tablet Options</option>
								<option value="hidden-sm" <?php if(isset($themecontrol['categoryresponsivesm']) && $themecontrol['categoryresponsivesm']=='hidden-sm')	      					 { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['categoryresponsivesm']) && $themecontrol['categoryresponsivesm']=='responsiveclass')				 { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[categoryresponsivemd]">
								<option value="" <?php if(isset($themecontrol['categoryresponsivemd']) && $themecontrol['categoryresponsivemd']=='')                         { echo 'selected="selected"'; }?>> Notebook Options</option>
								<option value="hidden-md" <?php if(isset($themecontrol['categoryresponsivemd']) && $themecontrol['categoryresponsivemd']=='hidden-md')	      					 { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['categoryresponsivemd']) && $themecontrol['categoryresponsivemd']=='responsiveclass')	 { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[categoryresponsivelg]">
								<option value="" <?php if(isset($themecontrol['categoryresponsivelg']) && $themecontrol['categoryresponsivelg']=='')      					  { echo 'selected="selected"'; }?>> Desktop Options</option>
								<option value="hidden-lg" <?php if(isset($themecontrol['categoryresponsivelg']) && $themecontrol['categoryresponsivelg']=='hidden-lg')	      					  { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['categoryresponsivelg']) && $themecontrol['categoryresponsivelg']=='responsiveclass')	  { echo 'selected="selected"'; }?>>   Show</option>
							</select>
						</td>
					</tr>
						<tr>
						<td>Filter Module options :</td>
						<td>
							<select name="themecontrol[filterresponsive]">
								<option value="" <?php if(isset($themecontrol['filterresponsive']) && $themecontrol['filterresponsive']=='')                                     { echo 'selected="selected"'; }?>>Phone Options</option>
								<option value="hidden-xs" <?php if(isset($themecontrol['filterresponsive']) && $themecontrol['filterresponsive']=='hidden-xs')	                 { echo 'selected="selected"'; }?>>Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['filterresponsive']) && $themecontrol['filterresponsive']=='responsiveclass')       { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[filterresponsivesm]">
								<option value="" <?php if(isset($themecontrol['filterresponsivesm']) && $themecontrol['filterresponsivesm']=='')                         					 { echo 'selected="selected"'; }?>> Tablet Options</option>
								<option value="hidden-sm" <?php if(isset($themecontrol['filterresponsivesm']) && $themecontrol['filterresponsivesm']=='hidden-sm')	      					 { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['filterresponsivesm']) && $themecontrol['filterresponsivesm']=='responsiveclass')				 { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[filterresponsivemd]">
								<option value="" <?php if(isset($themecontrol['filterresponsivemd']) && $themecontrol['filterresponsivemd']=='')                         { echo 'selected="selected"'; }?>> Notebook Options</option>
								<option value="hidden-md" <?php if(isset($themecontrol['filterresponsivemd']) && $themecontrol['filterresponsivemd']=='hidden-md')	      					 { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['filterresponsivemd']) && $themecontrol['filterresponsivemd']=='responsiveclass')	 { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[filterresponsivelg]">
								<option value="" <?php if(isset($themecontrol['filterresponsivelg']) && $themecontrol['filterresponsivelg']=='')      					  { echo 'selected="selected"'; }?>> Desktop Options</option>
								<option value="hidden-lg" <?php if(isset($themecontrol['filterresponsivelg']) && $themecontrol['filterresponsivelg']=='hidden-lg')	      					  { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['filterresponsivelg']) && $themecontrol['filterresponsivelg']=='responsiveclass')	  { echo 'selected="selected"'; }?>>   Show</option>
							</select>
						</td>
					</tr>
						<tr>
						<td>Information Module options :</td>
						<td>
							<select name="themecontrol[informationresponsive]">
								<option value="" <?php if(isset($themecontrol['informationresponsive']) && $themecontrol['informationresponsive']=='')                                     { echo 'selected="selected"'; }?>>Phone Options</option>
								<option value="hidden-xs" <?php if(isset($themecontrol['informationresponsive']) && $themecontrol['informationresponsive']=='hidden-xs')	                 { echo 'selected="selected"'; }?>>Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['informationresponsive']) && $themecontrol['informationresponsive']=='responsiveclass')       { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[informationresponsivesm]">
								<option value="" <?php if(isset($themecontrol['informationresponsivesm']) && $themecontrol['informationresponsivesm']=='')                         					 { echo 'selected="selected"'; }?>> Tablet Options</option>
								<option value="hidden-sm" <?php if(isset($themecontrol['informationresponsivesm']) && $themecontrol['informationresponsivesm']=='hidden-sm')	      					 { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['informationresponsivesm']) && $themecontrol['informationresponsivesm']=='responsiveclass')				 { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[informationresponsivemd]">
								<option value="" <?php if(isset($themecontrol['informationresponsivemd']) && $themecontrol['informationresponsivemd']=='')                         { echo 'selected="selected"'; }?>> Notebook Options</option>
								<option value="hidden-md" <?php if(isset($themecontrol['informationresponsivemd']) && $themecontrol['informationresponsivemd']=='hidden-md')	      					 { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['informationresponsivemd']) && $themecontrol['informationresponsivemd']=='responsiveclass')	 { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[informationresponsivelg]">
								<option value="" <?php if(isset($themecontrol['informationresponsivelg']) && $themecontrol['informationresponsivelg']=='')      					  { echo 'selected="selected"'; }?>> Desktop Options</option>
								<option value="hidden-lg" <?php if(isset($themecontrol['informationresponsivelg']) && $themecontrol['informationresponsivelg']=='hidden-lg')	      					  { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['informationresponsivelg']) && $themecontrol['informationresponsivelg']=='responsiveclass')	  { echo 'selected="selected"'; }?>>   Show</option>
							</select>
						</td>
					</tr>
						<tr>
						<td>Nine Theme : Manufacturer Module options :</td>
						<td>
							<select name="themecontrol[manufacturerresponsive]">
								<option value="" <?php if(isset($themecontrol['manufacturerresponsive']) && $themecontrol['manufacturerresponsive']=='')                                     { echo 'selected="selected"'; }?>>Phone Options</option>
								<option value="hidden-xs" <?php if(isset($themecontrol['manufacturerresponsive']) && $themecontrol['manufacturerresponsive']=='hidden-xs')	                 { echo 'selected="selected"'; }?>>Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['manufacturerresponsive']) && $themecontrol['manufacturerresponsive']=='responsiveclass')       { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[manufacturerresponsivesm]">
								<option value="" <?php if(isset($themecontrol['manufacturerresponsivesm']) && $themecontrol['manufacturerresponsivesm']=='')                         					 { echo 'selected="selected"'; }?>> Tablet Options</option>
								<option value="hidden-sm" <?php if(isset($themecontrol['manufacturerresponsivesm']) && $themecontrol['manufacturerresponsivesm']=='hidden-sm')	      					 { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['manufacturerresponsivesm']) && $themecontrol['manufacturerresponsivesm']=='responsiveclass')				 { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[manufacturerresponsivemd]">
								<option value="" <?php if(isset($themecontrol['manufacturerresponsivemd']) && $themecontrol['manufacturerresponsivemd']=='')                         { echo 'selected="selected"'; }?>> Notebook Options</option>
								<option value="hidden-md" <?php if(isset($themecontrol['manufacturerresponsivemd']) && $themecontrol['manufacturerresponsivemd']=='hidden-md')	      					 { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['manufacturerresponsivemd']) && $themecontrol['manufacturerresponsivemd']=='responsiveclass')	 { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[manufacturerresponsivelg]">
								<option value="" <?php if(isset($themecontrol['manufacturerresponsivelg']) && $themecontrol['manufacturerresponsivelg']=='')      					  { echo 'selected="selected"'; }?>> Desktop Options</option>
								<option value="hidden-lg" <?php if(isset($themecontrol['manufacturerresponsivelg']) && $themecontrol['manufacturerresponsivelg']=='hidden-lg')	      					  { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['manufacturerresponsivelg']) && $themecontrol['manufacturerresponsivelg']=='responsiveclass')	  { echo 'selected="selected"'; }?>>   Show</option>
							</select>
						</td>
					</tr>

						<tr>
						<td>Pav Blog Category  Module options :</td>
						<td>
							<select name="themecontrol[pavcategoryresponsive]">
								<option value="" <?php if(isset($themecontrol['pavcategoryresponsive']) && $themecontrol['pavcategoryresponsive']=='')                                     { echo 'selected="selected"'; }?>>Phone Options</option>
								<option value="hidden-xs" <?php if(isset($themecontrol['pavcategoryresponsive']) && $themecontrol['pavcategoryresponsive']=='hidden-xs')	                 { echo 'selected="selected"'; }?>>Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['pavcategoryresponsive']) && $themecontrol['pavcategoryresponsive']=='responsiveclass')       { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[pavcategoryresponsivesm]">
								<option value="" <?php if(isset($themecontrol['pavcategoryresponsivesm']) && $themecontrol['pavcategoryresponsivesm']=='')                         					 { echo 'selected="selected"'; }?>> Tablet Options</option>
								<option value="hidden-sm" <?php if(isset($themecontrol['pavcategoryresponsivesm']) && $themecontrol['pavcategoryresponsivesm']=='hidden-sm')	      					 { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['pavcategoryresponsivesm']) && $themecontrol['pavcategoryresponsivesm']=='responsiveclass')				 { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[pavcategoryresponsivemd]">
								<option value="" <?php if(isset($themecontrol['pavcategoryresponsivemd']) && $themecontrol['pavcategoryresponsivemd']=='')                         { echo 'selected="selected"'; }?>> Notebook Options</option>
								<option value="hidden-md" <?php if(isset($themecontrol['pavcategoryresponsivemd']) && $themecontrol['pavcategoryresponsivemd']=='hidden-md')	      					 { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['pavcategoryresponsivemd']) && $themecontrol['pavcategoryresponsivemd']=='responsiveclass')	 { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[pavcategoryresponsivelg]">
								<option value="" <?php if(isset($themecontrol['pavcategoryresponsivelg']) && $themecontrol['pavcategoryresponsivelg']=='')      					  { echo 'selected="selected"'; }?>> Desktop Options</option>
								<option value="hidden-lg" <?php if(isset($themecontrol['pavcategoryresponsivelg']) && $themecontrol['pavcategoryresponsivelg']=='hidden-lg')	      					  { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['pavcategoryresponsivelg']) && $themecontrol['pavcategoryresponsivelg']=='responsiveclass')	  { echo 'selected="selected"'; }?>>   Show</option>
							</select>
						</td>
					</tr>
						<tr>
						<td>Pav Blog Latest Comment Moduleoptions :</td>
						<td>
							<select name="themecontrol[pavcommentresponsive]">
								<option value="" <?php if(isset($themecontrol['pavcommentresponsive']) && $themecontrol['pavcommentresponsive']=='')                                     { echo 'selected="selected"'; }?>>Phone Options</option>
								<option value="hidden-xs" <?php if(isset($themecontrol['pavcommentresponsive']) && $themecontrol['pavcommentresponsive']=='hidden-xs')	                 { echo 'selected="selected"'; }?>>Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['pavcommentresponsive']) && $themecontrol['pavcommentresponsive']=='responsiveclass')       { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[pavcommentresponsivesm]">
								<option value="" <?php if(isset($themecontrol['pavcommentresponsivesm']) && $themecontrol['pavcommentresponsivesm']=='')                         					 { echo 'selected="selected"'; }?>> Tablet Options</option>
								<option value="hidden-sm" <?php if(isset($themecontrol['pavcommentresponsivesm']) && $themecontrol['pavcommentresponsivesm']=='hidden-sm')	      					 { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['pavcommentresponsivesm']) && $themecontrol['pavcommentresponsivesm']=='responsiveclass')				 { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[pavcommentresponsivemd]">
								<option value="" <?php if(isset($themecontrol['pavcommentresponsivemd']) && $themecontrol['pavcommentresponsivemd']=='')                         { echo 'selected="selected"'; }?>> Notebook Options</option>
								<option value="hidden-md" <?php if(isset($themecontrol['pavcommentresponsivemd']) && $themecontrol['pavcommentresponsivemd']=='hidden-md')	      					 { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['pavcommentresponsivemd']) && $themecontrol['pavcommentresponsivemd']=='responsiveclass')	 { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[pavcommentresponsivelg]">
								<option value="" <?php if(isset($themecontrol['pavcommentresponsivelg']) && $themecontrol['pavcommentresponsivelg']=='')      					  { echo 'selected="selected"'; }?>> Desktop Options</option>
								<option value="hidden-lg" <?php if(isset($themecontrol['pavcommentresponsivelg']) && $themecontrol['pavcommentresponsivelg']=='hidden-lg')	      					  { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['pavcommentresponsivelg']) && $themecontrol['pavcommentresponsivelg']=='responsiveclass')	  { echo 'selected="selected"'; }?>>   Show</option>
							</select>
						</td>
					</tr>
						<tr>
						<td>Pav Blog Latest Module options :</td>
						<td>
							<select name="themecontrol[pavlatestresponsive]">
								<option value="" <?php if(isset($themecontrol['pavlatestresponsive']) && $themecontrol['pavlatestresponsive']=='')                                     { echo 'selected="selected"'; }?>>Phone Options</option>
								<option value="hidden-xs" <?php if(isset($themecontrol['pavlatestresponsive']) && $themecontrol['pavlatestresponsive']=='hidden-xs')	                 { echo 'selected="selected"'; }?>>Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['pavlatestresponsive']) && $themecontrol['pavlatestresponsive']=='responsiveclass')       { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[pavlatestresponsivesm]">
								<option value="" <?php if(isset($themecontrol['pavlatestresponsivesm']) && $themecontrol['pavlatestresponsivesm']=='')                         					 { echo 'selected="selected"'; }?>> Tablet Options</option>
								<option value="hidden-sm" <?php if(isset($themecontrol['pavlatestresponsivesm']) && $themecontrol['pavlatestresponsivesm']=='hidden-sm')	      					 { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['pavlatestresponsivesm']) && $themecontrol['pavlatestresponsivesm']=='responsiveclass')				 { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[pavlatestresponsivemd]">
								<option value="" <?php if(isset($themecontrol['pavlatestresponsivemd']) && $themecontrol['pavlatestresponsivemd']=='')                         { echo 'selected="selected"'; }?>> Notebook Options</option>
								<option value="hidden-md" <?php if(isset($themecontrol['pavlatestresponsivemd']) && $themecontrol['pavlatestresponsivemd']=='hidden-md')	      					 { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['pavlatestresponsivemd']) && $themecontrol['pavlatestresponsivemd']=='responsiveclass')	 { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[pavlatestresponsivelg]">
								<option value="" <?php if(isset($themecontrol['pavlatestresponsivelg']) && $themecontrol['pavlatestresponsivelg']=='')      					  { echo 'selected="selected"'; }?>> Desktop Options</option>
								<option value="hidden-lg" <?php if(isset($themecontrol['pavlatestresponsivelg']) && $themecontrol['pavlatestresponsivelg']=='hidden-lg')	      					  { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['pavlatestresponsivelg']) && $themecontrol['pavlatestresponsivelg']=='responsiveclass')	  { echo 'selected="selected"'; }?>>   Show</option>
							</select>
						</td>
					</tr>
						<tr>
						<td>Nine Theme : Price Filter Slider Module options :</td>
						<td>
							<select name="themecontrol[pricesliderresponsive]">
								<option value="" <?php if(isset($themecontrol['pricesliderresponsive']) && $themecontrol['pricesliderresponsive']=='')                                     { echo 'selected="selected"'; }?>>Phone Options</option>
								<option value="hidden-xs" <?php if(isset($themecontrol['pricesliderresponsive']) && $themecontrol['pricesliderresponsive']=='hidden-xs')	                 { echo 'selected="selected"'; }?>>Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['pricesliderresponsive']) && $themecontrol['pricesliderresponsive']=='responsiveclass')       { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[pricesliderresponsivesm]">
								<option value="" <?php if(isset($themecontrol['pricesliderresponsivesm']) && $themecontrol['pricesliderresponsivesm']=='')                         					 { echo 'selected="selected"'; }?>> Tablet Options</option>
								<option value="hidden-sm" <?php if(isset($themecontrol['pricesliderresponsivesm']) && $themecontrol['pricesliderresponsivesm']=='hidden-sm')	      					 { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['pricesliderresponsivesm']) && $themecontrol['pricesliderresponsivesm']=='responsiveclass')				 { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[pricesliderresponsivemd]">
								<option value="" <?php if(isset($themecontrol['pricesliderresponsivemd']) && $themecontrol['pricesliderresponsivemd']=='')                         { echo 'selected="selected"'; }?>> Notebook Options</option>
								<option value="hidden-md" <?php if(isset($themecontrol['pricesliderresponsivemd']) && $themecontrol['pricesliderresponsivemd']=='hidden-md')	      					 { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['pricesliderresponsivemd']) && $themecontrol['pricesliderresponsivemd']=='responsiveclass')	 { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[pricesliderresponsivelg]">
								<option value="" <?php if(isset($themecontrol['pricesliderresponsivelg']) && $themecontrol['pricesliderresponsivelg']=='')      					  { echo 'selected="selected"'; }?>> Desktop Options</option>
								<option value="hidden-lg" <?php if(isset($themecontrol['pricesliderresponsivelg']) && $themecontrol['pricesliderresponsivelg']=='hidden-lg')	      					  { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['pricesliderresponsivelg']) && $themecontrol['pricesliderresponsivelg']=='responsiveclass')	  { echo 'selected="selected"'; }?>>   Show</option>
							</select>
						</td>
					</tr>
						<tr>
						<td>Slideshow Module options :</td>
						<td>
							<select name="themecontrol[slideshowresponsive]">
								<option value="" <?php if(isset($themecontrol['slideshowresponsive']) && $themecontrol['slideshowresponsive']=='')                                     { echo 'selected="selected"'; }?>>Phone Options</option>
								<option value="hidden-xs" <?php if(isset($themecontrol['slideshowresponsive']) && $themecontrol['slideshowresponsive']=='hidden-xs')	                 { echo 'selected="selected"'; }?>>Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['slideshowresponsive']) && $themecontrol['slideshowresponsive']=='responsiveclass')       { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[slideshowresponsivesm]">
								<option value="" <?php if(isset($themecontrol['slideshowresponsivesm']) && $themecontrol['slideshowresponsivesm']=='')                         					 { echo 'selected="selected"'; }?>> Tablet Options</option>
								<option value="hidden-sm" <?php if(isset($themecontrol['slideshowresponsivesm']) && $themecontrol['slideshowresponsivesm']=='hidden-sm')	      					 { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['slideshowresponsivesm']) && $themecontrol['slideshowresponsivesm']=='responsiveclass')				 { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[slideshowresponsivemd]">
								<option value="" <?php if(isset($themecontrol['slideshowresponsivemd']) && $themecontrol['slideshowresponsivemd']=='')                         { echo 'selected="selected"'; }?>> Notebook Options</option>
								<option value="hidden-md" <?php if(isset($themecontrol['slideshowresponsivemd']) && $themecontrol['slideshowresponsivemd']=='hidden-md')	      					 { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['slideshowresponsivemd']) && $themecontrol['slideshowresponsivemd']=='responsiveclass')	 { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[slideshowresponsivelg]">
								<option value="" <?php if(isset($themecontrol['slideshowresponsivelg']) && $themecontrol['slideshowresponsivelg']=='')      					  { echo 'selected="selected"'; }?>> Desktop Options</option>
								<option value="hidden-lg" <?php if(isset($themecontrol['slideshowresponsivelg']) && $themecontrol['slideshowresponsivelg']=='hidden-lg')	      					  { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['slideshowresponsivelg']) && $themecontrol['slideshowresponsivelg']=='responsiveclass')	  { echo 'selected="selected"'; }?>>   Show</option>
							</select>
						</td>
					</tr>
						<tr>
						<td>Welcome Module options :</td>
						<td>
							<select name="themecontrol[welcomeresponsive]">
								<option value="" <?php if(isset($themecontrol['welcomeresponsive']) && $themecontrol['welcomeresponsive']=='')                                     { echo 'selected="selected"'; }?>>Phone Options</option>
								<option value="hidden-xs" <?php if(isset($themecontrol['welcomeresponsive']) && $themecontrol['welcomeresponsive']=='hidden-xs')	                 { echo 'selected="selected"'; }?>>Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['welcomeresponsive']) && $themecontrol['welcomeresponsive']=='responsiveclass')       { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[welcomeresponsivesm]">
								<option value="" <?php if(isset($themecontrol['welcomeresponsivesm']) && $themecontrol['welcomeresponsivesm']=='')                         					 { echo 'selected="selected"'; }?>> Tablet Options</option>
								<option value="hidden-sm" <?php if(isset($themecontrol['welcomeresponsivesm']) && $themecontrol['welcomeresponsivesm']=='hidden-sm')	      					 { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['welcomeresponsivesm']) && $themecontrol['welcomeresponsivesm']=='responsiveclass')				 { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[welcomeresponsivemd]">
								<option value="" <?php if(isset($themecontrol['welcomeresponsivemd']) && $themecontrol['welcomeresponsivemd']=='')                         { echo 'selected="selected"'; }?>> Notebook Options</option>
								<option value="hidden-md" <?php if(isset($themecontrol['welcomeresponsivemd']) && $themecontrol['welcomeresponsivemd']=='hidden-md')	      					 { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['welcomeresponsivemd']) && $themecontrol['welcomeresponsivemd']=='responsiveclass')	 { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[welcomeresponsivelg]">
								<option value="" <?php if(isset($themecontrol['welcomeresponsivelg']) && $themecontrol['welcomeresponsivelg']=='')      					  { echo 'selected="selected"'; }?>> Desktop Options</option>
								<option value="hidden-lg" <?php if(isset($themecontrol['welcomeresponsivelg']) && $themecontrol['welcomeresponsivelg']=='hidden-lg')	      					  { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['welcomeresponsivelg']) && $themecontrol['welcomeresponsivelg']=='responsiveclass')	  { echo 'selected="selected"'; }?>>   Show</option>
							</select>
						</td>
					</tr>
				</table>
			</div>
				<div id="responsive_footer" class="vtabs-content" style="">
				
				<table class="form">
					<tr>
						<td>Facebook Plugin options :</td>
						<td>
							<select name="themecontrol[footerfaceresponsive]">
								<option value="" <?php if(isset($themecontrol['footerfaceresponsive']) && $themecontrol['footerfaceresponsive']=='')                                     { echo 'selected="selected"'; }?>>Phone Options</option>
								<option value="hidden-xs" <?php if(isset($themecontrol['footerfaceresponsive']) && $themecontrol['footerfaceresponsive']=='hidden-xs')	                 { echo 'selected="selected"'; }?>>Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['footerfaceresponsive']) && $themecontrol['footerfaceresponsive']=='responsiveclass')       { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[footerfaceresponsivesm]">
								<option value="" <?php if(isset($themecontrol['footerfaceresponsivesm']) && $themecontrol['footerfaceresponsivesm']=='')                         					 { echo 'selected="selected"'; }?>> Tablet Options</option>
								<option value="hidden-sm" <?php if(isset($themecontrol['footerfaceresponsivesm']) && $themecontrol['footerfaceresponsivesm']=='hidden-sm')	      					 { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['footerfaceresponsivesm']) && $themecontrol['footerfaceresponsivesm']=='responsiveclass')				 { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[footerfaceresponsivemd]">
								<option value="" <?php if(isset($themecontrol['footerfaceresponsivemd']) && $themecontrol['footerfaceresponsivemd']=='')                         { echo 'selected="selected"'; }?>> Notebook Options</option>
								<option value="hidden-md" <?php if(isset($themecontrol['footerfaceresponsivemd']) && $themecontrol['footerfaceresponsivemd']=='hidden-md')	      					 { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['footerfaceresponsivemd']) && $themecontrol['footerfaceresponsivemd']=='responsiveclass')	 { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[footerfaceresponsivelg]">
								<option value="" <?php if(isset($themecontrol['footerfaceresponsivelg']) && $themecontrol['footerfaceresponsivelg']=='')      					  { echo 'selected="selected"'; }?>> Desktop Options</option>
								<option value="hidden-lg" <?php if(isset($themecontrol['footerfaceresponsivelg']) && $themecontrol['footerfaceresponsivelg']=='hidden-lg')	      					  { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['footerfaceresponsivelg']) && $themecontrol['footerfaceresponsivelg']=='responsiveclass')	  { echo 'selected="selected"'; }?>>   Show</option>
							</select>
						</td>
					</tr>
					<tr>
						<td>Twitter Plugin options :</td>
						<td>
							<select name="themecontrol[footertwitresponsive]">
								<option value="" <?php if(isset($themecontrol['footertwitresponsive']) && $themecontrol['footertwitresponsive']=='')                                     { echo 'selected="selected"'; }?>>Phone Options</option>
								<option value="hidden-xs" <?php if(isset($themecontrol['footertwitresponsive']) && $themecontrol['footertwitresponsive']=='hidden-xs')	                 { echo 'selected="selected"'; }?>>Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['footertwitresponsive']) && $themecontrol['footertwitresponsive']=='responsiveclass')       { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[footertwitresponsivesm]">
								<option value="" <?php if(isset($themecontrol['footertwitresponsivesm']) && $themecontrol['footertwitresponsivesm']=='')                         					 { echo 'selected="selected"'; }?>> Tablet Options</option>
								<option value="hidden-sm" <?php if(isset($themecontrol['footertwitresponsivesm']) && $themecontrol['footertwitresponsivesm']=='hidden-sm')	      					 { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['footertwitresponsivesm']) && $themecontrol['footertwitresponsivesm']=='responsiveclass')				 { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[footertwitresponsivemd]">
								<option value="" <?php if(isset($themecontrol['footertwitresponsivemd']) && $themecontrol['footertwitresponsivemd']=='')                         { echo 'selected="selected"'; }?>> Notebook Options</option>
								<option value="hidden-md" <?php if(isset($themecontrol['footertwitresponsivemd']) && $themecontrol['footertwitresponsivemd']=='hidden-md')	      					 { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['footertwitresponsivemd']) && $themecontrol['footertwitresponsivemd']=='responsiveclass')	 { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[footertwitresponsivelg]">
								<option value="" <?php if(isset($themecontrol['footertwitresponsivelg']) && $themecontrol['footertwitresponsivelg']=='')      					  { echo 'selected="selected"'; }?>> Desktop Options</option>
								<option value="hidden-lg" <?php if(isset($themecontrol['footertwitresponsivelg']) && $themecontrol['footertwitresponsivelg']=='hidden-lg')	      					  { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['footertwitresponsivelg']) && $themecontrol['footertwitresponsivelg']=='responsiveclass')	  { echo 'selected="selected"'; }?>>   Show</option>
							</select>
						</td>
					</tr>
					<tr>
						<td>Instagram Plugin options :</td>
						<td>
							<select name="themecontrol[footercontactresponsive]">
								<option value="" <?php if(isset($themecontrol['footercontactresponsive']) && $themecontrol['footercontactresponsive']=='')                                     { echo 'selected="selected"'; }?>>Phone Options</option>
								<option value="hidden-xs" <?php if(isset($themecontrol['footercontactresponsive']) && $themecontrol['footercontactresponsive']=='hidden-xs')	                 { echo 'selected="selected"'; }?>>Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['footercontactresponsive']) && $themecontrol['footercontactresponsive']=='responsiveclass')       { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[footercontactresponsivesm]">
								<option value="" <?php if(isset($themecontrol['footercontactresponsivesm']) && $themecontrol['footercontactresponsivesm']=='')                         					 { echo 'selected="selected"'; }?>> Tablet Options</option>
								<option value="hidden-sm" <?php if(isset($themecontrol['footercontactresponsivesm']) && $themecontrol['footercontactresponsivesm']=='hidden-sm')	      					 { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['footercontactresponsivesm']) && $themecontrol['footercontactresponsivesm']=='responsiveclass')				 { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[footercontactresponsivemd]">
								<option value="" <?php if(isset($themecontrol['footercontactresponsivemd']) && $themecontrol['footercontactresponsivemd']=='')                         { echo 'selected="selected"'; }?>> Notebook Options</option>
								<option value="hidden-md" <?php if(isset($themecontrol['footercontactresponsivemd']) && $themecontrol['footercontactresponsivemd']=='hidden-md')	      					 { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['footercontactresponsivemd']) && $themecontrol['footercontactresponsivemd']=='responsiveclass')	 { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[footercontactresponsivelg]">
								<option value="" <?php if(isset($themecontrol['footercontactresponsivelg']) && $themecontrol['footercontactresponsivelg']=='')      					  { echo 'selected="selected"'; }?>> Desktop Options</option>
								<option value="hidden-lg" <?php if(isset($themecontrol['footercontactresponsivelg']) && $themecontrol['footercontactresponsivelg']=='hidden-lg')	      					  { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['footercontactresponsivelg']) && $themecontrol['footercontactresponsivelg']=='responsiveclass')	  { echo 'selected="selected"'; }?>>   Show</option>
							</select>
						</td>
					</tr>
					<tr>
						<td>Social Icons options :</td>
						<td>
							<select name="themecontrol[footersocialresponsive]">
								<option value="" <?php if(isset($themecontrol['footersocialresponsive']) && $themecontrol['footersocialresponsive']=='')                                     { echo 'selected="selected"'; }?>>Phone Options</option>
								<option value="hidden-xs" <?php if(isset($themecontrol['footersocialresponsive']) && $themecontrol['footersocialresponsive']=='hidden-xs')	                 { echo 'selected="selected"'; }?>>Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['footersocialresponsive']) && $themecontrol['footersocialresponsive']=='responsiveclass')       { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[footersocialresponsivesm]">
								<option value="" <?php if(isset($themecontrol['footersocialresponsivesm']) && $themecontrol['footersocialresponsivesm']=='')                         					 { echo 'selected="selected"'; }?>> Tablet Options</option>
								<option value="hidden-sm" <?php if(isset($themecontrol['footersocialresponsivesm']) && $themecontrol['footersocialresponsivesm']=='hidden-sm')	      					 { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['footersocialresponsivesm']) && $themecontrol['footersocialresponsivesm']=='responsiveclass')				 { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[footersocialresponsivemd]">
								<option value="" <?php if(isset($themecontrol['footersocialresponsivemd']) && $themecontrol['footersocialresponsivemd']=='')                         { echo 'selected="selected"'; }?>> Notebook Options</option>
								<option value="hidden-md" <?php if(isset($themecontrol['footersocialresponsivemd']) && $themecontrol['footersocialresponsivemd']=='hidden-md')	      					 { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['footersocialresponsivemd']) && $themecontrol['footersocialresponsivemd']=='responsiveclass')	 { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[footersocialresponsivelg]">
								<option value="" <?php if(isset($themecontrol['footersocialresponsivelg']) && $themecontrol['footersocialresponsivelg']=='')      					  { echo 'selected="selected"'; }?>> Desktop Options</option>
								<option value="hidden-lg" <?php if(isset($themecontrol['footersocialresponsivelg']) && $themecontrol['footersocialresponsivelg']=='hidden-lg')	      					  { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['footersocialresponsivelg']) && $themecontrol['footersocialresponsivelg']=='responsiveclass')	  { echo 'selected="selected"'; }?>>   Show</option>
							</select>
						</td>
					</tr>
					<tr>
						<td>Shop Info Area options :</td>
						<td>
							<select name="themecontrol[footershopinforesponsive]">
								<option value="" <?php if(isset($themecontrol['footershopinforesponsive']) && $themecontrol['footershopinforesponsive']=='')                                     { echo 'selected="selected"'; }?>>Phone Options</option>
								<option value="hidden-xs" <?php if(isset($themecontrol['footershopinforesponsive']) && $themecontrol['footershopinforesponsive']=='hidden-xs')	                 { echo 'selected="selected"'; }?>>Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['footershopinforesponsive']) && $themecontrol['footershopinforesponsive']=='responsiveclass')       { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[footershopinforesponsivesm]">
								<option value="" <?php if(isset($themecontrol['footershopinforesponsivesm']) && $themecontrol['footershopinforesponsivesm']=='')                         					 { echo 'selected="selected"'; }?>> Tablet Options</option>
								<option value="hidden-sm" <?php if(isset($themecontrol['footershopinforesponsivesm']) && $themecontrol['footershopinforesponsivesm']=='hidden-sm')	      					 { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['footershopinforesponsivesm']) && $themecontrol['footershopinforesponsivesm']=='responsiveclass')				 { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[footershopinforesponsivemd]">
								<option value="" <?php if(isset($themecontrol['footershopinforesponsivemd']) && $themecontrol['footershopinforesponsivemd']=='')                         { echo 'selected="selected"'; }?>> Notebook Options</option>
								<option value="hidden-md" <?php if(isset($themecontrol['footershopinforesponsivemd']) && $themecontrol['footershopinforesponsivemd']=='hidden-md')	      					 { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['footershopinforesponsivemd']) && $themecontrol['footershopinforesponsivemd']=='responsiveclass')	 { echo 'selected="selected"'; }?>>Show</option>
							</select>
							<select name="themecontrol[footershopinforesponsivelg]">
								<option value="" <?php if(isset($themecontrol['footershopinforesponsivelg']) && $themecontrol['footershopinforesponsivelg']=='')      					  { echo 'selected="selected"'; }?>> Desktop Options</option>
								<option value="hidden-lg" <?php if(isset($themecontrol['footershopinforesponsivelg']) && $themecontrol['footershopinforesponsivelg']=='hidden-lg')	      					  { echo 'selected="selected"'; }?>>   Hide</option>
								<option value="responsiveclass" <?php if(isset($themecontrol['footershopinforesponsivelg']) && $themecontrol['footershopinforesponsivelg']=='responsiveclass')	  { echo 'selected="selected"'; }?>>   Show</option>
							</select>
						</td>
					</tr>
					</table>
			</div>
			</div>

			<div id="footer_settings" class="divtab">
			
				<div id="footer_settings_tabs" class="vtabs">
					<a href="#information" class="selected">Information Module</a>
					<a href="#facebook" style="">Facebook Module</a>
					<a href="#twitter" style="">Twitter Module</a>
					<a href="#custom" style="">Custom Module</a>
					<a href="#others" style="">Others</a>
					<a href="#footercolor" style="">Footer Color Options</a>
					<a href="#footerboxes" style="">Footer Annonce Boxes</a>
				</div>
				
				<div id="information" class="vtabs-content" style="">
					<table class="form">
						<h2>Footer Information Module</h2>
						<tr>
							<td>Enable Module:</td>
							<td>
								<select name="themecontrol[infoEnable]">
									<option value="disable" <?php if(isset($themecontrol['infoEnable']) && $themecontrol['infoEnable']=='disable'){ echo 'selected="selected"'; }?>><?php echo $text_disabled; ?></option>
									<option value="enable" <?php if(isset($themecontrol['infoEnable']) && $themecontrol['infoEnable']=='enable'){ echo 'selected="selected"'; }?>><?php echo $text_enabled; ?></option>
								</select>
							</td>
						</tr>
						<tr>
							<td>Module Title:<br /><span class="help">Example: Abous Us</span></td>
							<td>
							   <input type="text" name="themecontrol[aboutTitle]" value="<?php if(isset($themecontrol['aboutTitle'])){ echo $themecontrol['aboutTitle']; } ?>" size="50" />
							</td>
						</tr>
					
						<tr>
							<td>
								Footer About Text: <br />
								<span class="help">You can use images</span>
							</td>
							<td><textarea name="themecontrol[footer_information]" cols="52" rows="5"><?php if(isset($themecontrol['footer_information'])){ echo $themecontrol['footer_information']; } ?></textarea>
							</td>
						</tr>
					
					</table>
				</div>
				
				<div id="facebook" class="vtabs-content" style="">
					<table class="form">
						<h2>Facebook Module</h2>
						<tr>
							<td>Enable Module:</td>
							<td>
								<select name="themecontrol[facebookEnable]">
									<option value="disable" <?php if(isset($themecontrol['facebookEnable']) && $themecontrol['facebookEnable']=='disable'){ echo 'selected="selected"'; }?>><?php echo $text_disabled; ?></option>
									<option value="enable" <?php if(isset($themecontrol['facebookEnable']) && $themecontrol['facebookEnable']=='enable'){ echo 'selected="selected"'; }?>><?php echo $text_enabled; ?></option>
								</select>
							</td>
						</tr>
						<tr>
							<td>Module Title:<br /><span class="help">Example: Find Us On Facebook</span></td>
							<td>
							   <input type="text" name="themecontrol[facebookTitle]" value="<?php if(isset($themecontrol['facebookTitle'])){ echo $themecontrol['facebookTitle']; } ?>" size="50" />
							</td>
						</tr>
						<tr>
							<td>Facebook Page Link:<br /><span class="help">Example: https://www.facebook.com/envato</span></td>
							<td>
							   <input type="text" name="themecontrol[facebookAccount]" value="<?php if(isset($themecontrol['facebookAccount'])){ echo $themecontrol['facebookAccount']; } ?>" size="50" />
							</td>
						</tr>
					</table>
				</div>
				
				<div id="twitter" class="vtabs-content" style="">
					<table class="form">
						<h2>Twitter Module</h2>
						<tr>
							<td>Enable Module:</td>
							<td>
								<select name="themecontrol[twitterEnable]">
									<option value="disable" <?php if(isset($themecontrol['twitterEnable']) && $themecontrol['twitterEnable']=='disable'){ echo 'selected="selected"'; }?>><?php echo $text_disabled; ?></option>
									<option value="enable" <?php if(isset($themecontrol['twitterEnable']) && $themecontrol['twitterEnable']=='enable'){ echo 'selected="selected"'; }?>><?php echo $text_enabled; ?></option>
								</select>
							</td>
						</tr>
						<tr>
							<td>Module Title:<br /><span class="help">Example: Follow Us On Twitter</span></td>
							<td>
							   <input type="text" name="themecontrol[twitterTitle]" value="<?php if(isset($themecontrol['twitterTitle'])){ echo $themecontrol['twitterTitle']; } ?>" size="50" />
							</td>
						</tr>
						<tr>
							<td>Twitter Account:</td>
							<td>
							   <input type="text" name="themecontrol[twitterAccount]" value="<?php if(isset($themecontrol['twitterAccount'])){ echo $themecontrol['twitterAccount']; } ?>" size="50" />
							</td>
						</tr>
						<tr>
							<td>Count:</td>
							<td>
								<select name="themecontrol[twitterCount]">
									<option value="1" <?php if(isset($themecontrol['twitterCount']) && $themecontrol['twitterCount']=='1'){ echo 'selected="selected"'; }?>>1</option>
									<option value="2" <?php if(isset($themecontrol['twitterCount']) && $themecontrol['twitterCount']=='2'){ echo 'selected="selected"'; }?>>2</option>
									<option value="3" <?php if(isset($themecontrol['twitterCount']) && $themecontrol['twitterCount']=='3'){ echo 'selected="selected"'; }?>>3</option>
									<option value="4" <?php if(isset($themecontrol['twitterCount']) && $themecontrol['twitterCount']=='4'){ echo 'selected="selected"'; }?>>4</option>
									<option value="5" <?php if(isset($themecontrol['twitterCount']) && $themecontrol['twitterCount']=='5'){ echo 'selected="selected"'; }?>>5</option>
								</select>
							</td>
						</tr>
					</table>
				</div>
				
				<div id="custom" class="vtabs-content" style="">
					<table class="form">
						<h2>Custom Footer</h2>
						<tr>
							<td>Enable Module:</td>
							<td>
								<select name="themecontrol[customEnable]">
									<option value="disable" <?php if(isset($themecontrol['customEnable']) && $themecontrol['customEnable']=='disable'){ echo 'selected="selected"'; }?>><?php echo $text_disabled; ?></option>
									<option value="enable" <?php if(isset($themecontrol['customEnable']) && $themecontrol['customEnable']=='enable'){ echo 'selected="selected"'; }?>><?php echo $text_enabled; ?></option>
								</select>
							</td>
						</tr>
						<tr>
							<td>Telephone:</td>
							<td>
							   <input type="text" name="themecontrol[telephone]" value="<?php if(isset($themecontrol['telephone'])){ echo $themecontrol['telephone']; } ?>" size="50" />
							</td>
						</tr>
					
						
						<tr>
							<td>E-mail:</td>
							<td>
							   <input type="text" name="themecontrol[email]" value="<?php if(isset($themecontrol['email'])){ echo $themecontrol['email']; } ?>" size="50" />
							</td>
						</tr>
							<tr>
							<td>Skypename:<br /></td>
							<td>
							   <input type="text" name="themecontrol[skypename]" value="<?php if(isset($themecontrol['skypename'])){ echo $themecontrol['skypename']; } ?>" size="50" />
							</td>
						</tr>
					</table>
				</div>
				<div id="others" class="vtabs-content" style="">
					<table class="form">
						<h2>Others</h2>
			<tr>
			<td class="left">Shortcuts Url (1):</td>
			<td>
			<input type="text" name="themecontrol[short1]" value="<?php if(isset($themecontrol['short1'])){ echo $themecontrol['short1']; } ?>" size="50"/>
			<td class="left">Shortcuts Name (1):</td>

			</td>
			<td>
			<input type="text" name="themecontrol[shortname1]" value="<?php if(isset($themecontrol['shortname1'])){ echo $themecontrol['shortname1']; } ?>" size="50"/>
			</td>
			</tr>
			<tr>
                <td class="left">Shortcuts Url (2):</td>
				<td>
				   <input type="text" name="themecontrol[short2]" value="<?php if(isset($themecontrol['short2'])){ echo $themecontrol['short2']; } ?>" size="50"/>
				    <td class="left">Shortcuts Name (2):</td>
				
				</td>
				<td>
				   <input type="text" name="themecontrol[shortname2]" value="<?php if(isset($themecontrol['shortname2'])){ echo $themecontrol['shortname2']; } ?>" size="50"/>
				</td>
        	</tr>
				<tr>
                <td class="left">Shortcuts Url (3):</td>
				<td>
				   <input type="text" name="themecontrol[short3]" value="<?php if(isset($themecontrol['short3'])){ echo $themecontrol['short3']; } ?>" size="50"/>
				    <td class="left">Shortcuts Name (3):</td>
				
				</td>
				<td>
				   <input type="text" name="themecontrol[shortname3]" value="<?php if(isset($themecontrol['shortname3'])){ echo $themecontrol['shortname3']; } ?>" size="50"/>
				</td>
        	</tr>
				<tr>
                <td class="left">Shortcuts Url (4):</td>
				<td>
				   <input type="text" name="themecontrol[short4]" value="<?php if(isset($themecontrol['short4'])){ echo $themecontrol['short4']; } ?>" size="50"/>
				    <td class="left">Shortcuts Name (4):</td>
				
				</td>
				<td>
				   <input type="text" name="themecontrol[shortname4]" value="<?php if(isset($themecontrol['shortname4'])){ echo $themecontrol['shortname4']; } ?>" size="50"/>
				</td>
        	</tr>
				<tr style = "height: 60px;">
					<td> Visa</td>
					<td>
					<img style="margin-right:30px; float:left;" src="../catalog/view/theme/commerca/img/visacard.png" alt="paypal" title="PayPal">
						<select name="themecontrol[visa]">
							<option value="disable" <?php if(isset($themecontrol['visa']) && $themecontrol['visa']=='disable'){ echo 'selected=""'; }?>><?php echo $text_disabled; ?></option>
							<option value="enable" <?php if(isset($themecontrol['visa']) && $themecontrol['visa']=='enable'){ echo 'selected="selected"'; }?>><?php echo $text_enabled; ?></option>
						</select>
					</td>
				</tr>
				<tr style = "height: 60px;">
					<td> Jcb</td>
					<td>
					<img style="margin-right:30px; float:left;" src="../catalog/view/theme/commerca/img/jcb.png" alt="paypal" title="PayPal">
						<select name="themecontrol[jcb]">
							<option value="disable" <?php if(isset($themecontrol['jcb']) && $themecontrol['jcb']=='disable'){ echo 'selected=""'; }?>><?php echo $text_disabled; ?></option>
							<option value="enable" <?php if(isset($themecontrol['jcb']) && $themecontrol['jcb']=='enable'){ echo 'selected="selected"'; }?>><?php echo $text_enabled; ?></option>
						</select>
					</td>
				</tr>
				<tr style = "height: 60px;">
					<td> Master</td>
					<td>
						<img style="margin-right:30px; float:left;" src="../catalog/view/theme/commerca/img/mastercard.png" alt="paypal" title="PayPal">
						<select name="themecontrol[master]">
							<option value="disable" <?php if(isset($themecontrol['master']) && $themecontrol['master']=='disable'){ echo 'selected=""'; }?>><?php echo $text_disabled; ?></option>
							<option value="enable" <?php if(isset($themecontrol['master']) && $themecontrol['master']=='enable'){ echo 'selected="selected"'; }?>><?php echo $text_enabled; ?></option>
						</select>
					</td>
				</tr>
				<tr style = "height: 60px;">
					<td> Diner</td>
					<td>
											<img style="margin-right:30px; float:left;" src="../catalog/view/theme/commerca/img/dinerclub.png" alt="paypal" title="PayPal">
						<select name="themecontrol[diner]">
							<option value="disable" <?php if(isset($themecontrol['diner']) && $themecontrol['diner']=='disable'){ echo 'selected=""'; }?>><?php echo $text_disabled; ?></option>
							<option value="enable" <?php if(isset($themecontrol['diner']) && $themecontrol['diner']=='enable'){ echo 'selected="selected"'; }?>><?php echo $text_enabled; ?></option>
						</select>
					</td>
				</tr>
				<tr style = "height: 60px;">
					<td> Paypal</td>
					<td>
						<img style="margin-right:30px; float:left;" src="../catalog/view/theme/commerca/img/payment_paypal.png" alt="paypal" title="PayPal">
						<select name="themecontrol[paypalicon]">
							<option value="disable" <?php if(isset($themecontrol['paypalicon']) && $themecontrol['paypalicon']=='disable'){ echo 'selected=""'; }?>><?php echo $text_disabled; ?></option>
							<option value="enable" <?php if(isset($themecontrol['paypalicon']) && $themecontrol['paypalicon']=='enable'){ echo 'selected="selected"'; }?>><?php echo $text_enabled; ?></option>
						</select>
					</td>
				</tr>
							<tr style = "height: 60px;">
					<td>Western Union</td>
					<td>
					<img style="margin-right:30px; float:left;" src="../catalog/view/theme/commerca/img/payment_western_union.png" alt="paypal" title="PayPal">
						<select name="themecontrol[payment_western_union]">
							<option value="disable" <?php if(isset($themecontrol['payment_western_union']) && $themecontrol['payment_western_union']=='disable'){ echo 'selected=""'; }?>><?php echo $text_disabled; ?></option>
							<option value="enable" <?php if(isset($themecontrol['payment_western_union']) && $themecontrol['payment_western_union']=='enable'){ echo 'selected="selected"'; }?>><?php echo $text_enabled; ?></option>
						</select>
					</td>
				</tr>
				<tr style = "height: 60px;">
					<td> Switch</td>
					<td>
					<img style="margin-right:30px; float:left;" src="../catalog/view/theme/commerca/img/payment_switch.png" alt="paypal" title="PayPal">
						<select name="themecontrol[payment_switch]">
							<option value="disable" <?php if(isset($themecontrol['payment_switch']) && $themecontrol['payment_switch']=='disable'){ echo 'selected=""'; }?>><?php echo $text_disabled; ?></option>
							<option value="enable" <?php if(isset($themecontrol['payment_switch']) && $themecontrol['payment_switch']=='enable'){ echo 'selected="selected"'; }?>><?php echo $text_enabled; ?></option>
						</select>
					</td>
				</tr>
				<tr style = "height: 60px;">
					<td> Solo</td>
					<td>
					<img style="margin-right:30px; float:left;" src="../catalog/view/theme/commerca/img/payment_solo.png" alt="paypal" title="PayPal">
						<select name="themecontrol[payment_solo]">
							<option value="disable" <?php if(isset($themecontrol['payment_solo']) && $themecontrol['payment_solo']=='disable'){ echo 'selected=""'; }?>><?php echo $text_disabled; ?></option>
							<option value="enable" <?php if(isset($themecontrol['payment_solo']) && $themecontrol['payment_solo']=='enable'){ echo 'selected="selected"'; }?>><?php echo $text_enabled; ?></option>
						</select>
					</td>
				</tr>
				<tr style = "height: 60px;">
					<td> Sagepay</td>
					<td>
					<img style="margin-right:30px; float:left;" src="../catalog/view/theme/commerca/img/payment_sagepay.png" alt="paypal" title="PayPal">
						<select name="themecontrol[payment_sagepay]">
							<option value="disable" <?php if(isset($themecontrol['payment_sagepay']) && $themecontrol['payment_sagepay']=='disable'){ echo 'selected=""'; }?>><?php echo $text_disabled; ?></option>
							<option value="enable" <?php if(isset($themecontrol['payment_sagepay']) && $themecontrol['payment_sagepay']=='enable'){ echo 'selected="selected"'; }?>><?php echo $text_enabled; ?></option>
						</select>
					</td>
				</tr>
				<tr style = "height: 60px;">
					<td> Moneybookers</td>
					<td>
					<img style="margin-right:30px; float:left;" src="../catalog/view/theme/commerca/img/payment_moneybookers.png" alt="paypal" title="PayPal">
						<select name="themecontrol[payment_moneybookers]">
							<option value="disable" <?php if(isset($themecontrol['payment_moneybookers']) && $themecontrol['payment_moneybookers']=='disable'){ echo 'selected=""'; }?>><?php echo $text_disabled; ?></option>
							<option value="enable" <?php if(isset($themecontrol['payment_moneybookers']) && $themecontrol['payment_moneybookers']=='enable'){ echo 'selected="selected"'; }?>><?php echo $text_enabled; ?></option>
						</select>
					</td>
				</tr><tr style = "height: 60px;">
					<td> Maestro</td>
					<td>
					<img style="margin-right:30px; float:left;" src="../catalog/view/theme/commerca/img/payment_maestro.png" alt="paypal" title="PayPal">
						<select name="themecontrol[payment_maestro]">
							<option value="disable" <?php if(isset($themecontrol['payment_maestro']) && $themecontrol['payment_maestro']=='disable'){ echo 'selected=""'; }?>><?php echo $text_disabled; ?></option>
							<option value="enable" <?php if(isset($themecontrol['payment_maestro']) && $themecontrol['payment_maestro']=='enable'){ echo 'selected="selected"'; }?>><?php echo $text_enabled; ?></option>
						</select>
					</td>
				</tr><tr style = "height: 60px;">
					<td> Google</td>
					<td>
					<img style="margin-right:30px; float:left;" src="../catalog/view/theme/commerca/img/payment_google.png" alt="paypal" title="PayPal">
						<select name="themecontrol[payment_google]">
							<option value="disable" <?php if(isset($themecontrol['payment_google']) && $themecontrol['payment_google']=='disable'){ echo 'selected=""'; }?>><?php echo $text_disabled; ?></option>
							<option value="enable" <?php if(isset($themecontrol['payment_google']) && $themecontrol['payment_google']=='enable'){ echo 'selected="selected"'; }?>><?php echo $text_enabled; ?></option>
						</select>
					</td>
				</tr>
				<tr style = "height: 60px;">
					<td> Ebay</td>
					<td>
					<img style="margin-right:30px; float:left;" src="../catalog/view/theme/commerca/img/payment_ebay.png" alt="paypal" title="PayPal">
						<select name="themecontrol[payment_ebay]">
							<option value="disable" <?php if(isset($themecontrol['payment_ebay']) && $themecontrol['payment_ebay']=='disable'){ echo 'selected=""'; }?>><?php echo $text_disabled; ?></option>
							<option value="enable" <?php if(isset($themecontrol['payment_ebay']) && $themecontrol['payment_ebay']=='enable'){ echo 'selected="selected"'; }?>><?php echo $text_enabled; ?></option>
						</select>
					</td>
				</tr>
				<tr style = "height: 60px;">
					<td> Discover</td>
					<td>
					<img style="margin-right:30px; float:left;" src="../catalog/view/theme/commerca/img/payment_discover.png" alt="paypal" title="PayPal">
						<select name="themecontrol[payment_discover]">
							<option value="disable" <?php if(isset($themecontrol['payment_discover']) && $themecontrol['payment_discover']=='disable'){ echo 'selected=""'; }?>><?php echo $text_disabled; ?></option>
							<option value="enable" <?php if(isset($themecontrol['payment_discover']) && $themecontrol['payment_discover']=='enable'){ echo 'selected="selected"'; }?>><?php echo $text_enabled; ?></option>
						</select>
					</td>
				</tr>
				<tr style = "height: 60px;">
					<td>Direct</td>
					<td>
					<img style="margin-right:30px; float:left;" src="../catalog/view/theme/commerca/img/payment_direct.png" alt="paypal" title="PayPal">
						<select name="themecontrol[payment_direct]">
							<option value="disable" <?php if(isset($themecontrol['payment_direct']) && $themecontrol['payment_direct']=='disable'){ echo 'selected=""'; }?>><?php echo $text_disabled; ?></option>
							<option value="enable" <?php if(isset($themecontrol['payment_direct']) && $themecontrol['payment_direct']=='enable'){ echo 'selected="selected"'; }?>><?php echo $text_enabled; ?></option>
						</select>
					</td>
				</tr>
				<tr style = "height: 60px;">
					<td> Delta</td>
					<td>
					<img style="margin-right:30px; float:left;" src="../catalog/view/theme/commerca/img/payment_delta.png" alt="paypal" title="PayPal">
						<select name="themecontrol[payment_delta]">
							<option value="disable" <?php if(isset($themecontrol['payment_delta']) && $themecontrol['payment_delta']=='disable'){ echo 'selected=""'; }?>><?php echo $text_disabled; ?></option>
							<option value="enable" <?php if(isset($themecontrol['payment_delta']) && $themecontrol['payment_delta']=='enable'){ echo 'selected="selected"'; }?>><?php echo $text_enabled; ?></option>
						</select>
					</td>
				</tr>
				<tr style = "height: 60px;">
					<td> Cirrus</td>
					<td>
					<img style="margin-right:30px; float:left;" src="../catalog/view/theme/commerca/img/payment_cirrus.png" alt="paypal" title="PayPal">
						<select name="themecontrol[payment_cirrus]">
							<option value="disable" <?php if(isset($themecontrol['payment_cirrus']) && $themecontrol['payment_cirrus']=='disable'){ echo 'selected=""'; }?>><?php echo $text_disabled; ?></option>
							<option value="enable" <?php if(isset($themecontrol['payment_cirrus']) && $themecontrol['payment_cirrus']=='enable'){ echo 'selected="selected"'; }?>><?php echo $text_enabled; ?></option>
						</select>
					</td>
				</tr>
				<tr style = "height: 60px;">
					<td> American</td>
					<td>
					<img style="margin-right:30px; float:left;" src="../catalog/view/theme/commerca/img/payment_american.png" alt="paypal" title="PayPal">
						<select name="themecontrol[payment_american]">
							<option value="disable" <?php if(isset($themecontrol['payment_american']) && $themecontrol['payment_american']=='disable'){ echo 'selected=""'; }?>><?php echo $text_disabled; ?></option>
							<option value="enable" <?php if(isset($themecontrol['payment_american']) && $themecontrol['payment_american']=='enable'){ echo 'selected="selected"'; }?>><?php echo $text_enabled; ?></option>
						</select>
					</td>
				</tr>
				<tr style = "height: 60px;">
					<td> 2checkout</td>
					<td>
					<img style="margin-right:30px; float:left;" src="../catalog/view/theme/commerca/img/payment_2checkout.png" alt="paypal" title="PayPal">
						<select name="themecontrol[payment_2checkout]">
							<option value="disable" <?php if(isset($themecontrol['payment_2checkout']) && $themecontrol['payment_2checkout']=='disable'){ echo 'selected=""'; }?>><?php echo $text_disabled; ?></option>
							<option value="enable" <?php if(isset($themecontrol['payment_2checkout']) && $themecontrol['payment_2checkout']=='enable'){ echo 'selected="selected"'; }?>><?php echo $text_enabled; ?></option>
						</select>
					</td>
				</tr>
						<tr>
							<td>
								Footer Copyright Text:
							</td>
							<td>
								<input type="text" name="themecontrol[footer_copyright]" value="<?php if(isset($themecontrol['footer_copyright'])){ echo $themecontrol['footer_copyright']; } ?>" size="50" />
							</td>
						</tr>
							<tr>
							<td>
								Footer Top Area : Text / image / video: <br />
								<span class="help">You can use images or code/text</span>
							</td>
							<td><textarea name="themecontrol[footer_informationbottom]" cols="52" rows="5"><?php if(isset($themecontrol['footer_informationbottom'])){ echo $themecontrol['footer_informationbottom']; } ?></textarea>
							</td>
						</tr>
					</table>
				</div>
				<div id="footerboxes" class="vtabs-content" style="">
				<table class="form">
					<tr>
						<td> Footer Annonce Boxes : </td>
						<td>
							<select name="themecontrol[footerboxes]">
								<option value="enable" <?php if(isset($themecontrol['footerboxes']) && $themecontrol['footerboxes']=='enable'){ echo 'selected=""'; }?>>Show</option>
								<option value="disable" <?php if(isset($themecontrol['footerboxes']) && $themecontrol['footerboxes']=='disable'){ echo 'selected="selected"'; }?>>Hide</option>
							</select>
						</td>				
					</tr>
					<tr>

					<td class="left">Footer Annonce Boxes Head</td>
					<td>
					   <input type="text" name="themecontrol[footer_boxes_1]" value="<?php if(isset($themecontrol['footer_boxes_1'])){ echo $themecontrol['footer_boxes_1']; } ?>" size="50" placeholder="Your Head"/>
						<td class="left">Footer Annonce Boxes Comment:</td>

					</td>
					<td>
					   <input type="text" name="themecontrol[footer_boxes_1a]" value="<?php if(isset($themecontrol['footer_boxes_1a'])){ echo $themecontrol['footer_boxes_1a']; } ?>" size="50" placeholder="Your Comment"/>
					</td>
					</tr>
					<tr>

					<td class="left">Footer Annonce Boxes Head</td>
					<td>
					   <input type="text" name="themecontrol[footer_boxes_2]" value="<?php if(isset($themecontrol['footer_boxes_2'])){ echo $themecontrol['footer_boxes_2']; } ?>" size="50" placeholder="Your Head"/>
						<td class="left">Footer Annonce Boxes Comment:</td>

					</td>
					<td>
					   <input type="text" name="themecontrol[footer_boxes_2a]" value="<?php if(isset($themecontrol['footer_boxes_2a'])){ echo $themecontrol['footer_boxes_2a']; } ?>" size="50" placeholder="Your Comment"/>
					</td>
					</tr>
					<tr>

					<td class="left">Footer Annonce Boxes Head</td>
					<td>
					   <input type="text" name="themecontrol[footer_boxes_3]" value="<?php if(isset($themecontrol['footer_boxes_3'])){ echo $themecontrol['footer_boxes_3']; } ?>" size="50" placeholder="Your Head"/>
						<td class="left">Footer Annonce Boxes Comment:</td>

					</td>
					<td>
					   <input type="text" name="themecontrol[footer_boxes_3a]" value="<?php if(isset($themecontrol['footer_boxes_3a'])){ echo $themecontrol['footer_boxes_3a']; } ?>" size="50" placeholder="Your Comment"/>
					</td>
					</tr>
					<tr>

					<td class="left">Footer Annonce Boxes Head</td>
					<td>
					   <input type="text" name="themecontrol[footer_boxes_4]" value="<?php if(isset($themecontrol['footer_boxes_4'])){ echo $themecontrol['footer_boxes_4']; } ?>" size="50" placeholder="Your Head"/>
						<td class="left">Footer Annonce Boxes Comment</td>

					</td>
					<td>
					   <input type="text" name="themecontrol[footer_boxes_4a]" value="<?php if(isset($themecontrol['footer_boxes_4a'])){ echo $themecontrol['footer_boxes_4a']; } ?>" size="50" placeholder="Your Comment"/>
					</td>
					</tr>
					
				</table>
				</div>
				<div id="footercolor" class="vtabs-content" style="">
					<table class="form">
					<h2>Footer Color Options</h2>
					<tr>
						<td>Footer All Background:</td>
						<td>
						   <input type="text" name="themecontrol[footerallbg]" value="<?php if(isset($themecontrol['footerallbg'])){ echo $themecontrol['footerallbg']; } ?>" class="colorPicker" />
						   <span style="background:#<?php if(isset($themecontrol['footerallbg'])){ echo $themecontrol['footerallbg']; } ?>;"></span>
						</td>
					</tr>
					
					<tr>
						<td>Footer Top Background:</td>
						<td>
						   <input type="text" name="themecontrol[footertopbg]" value="<?php if(isset($themecontrol['footertopbg'])){ echo $themecontrol['footertopbg']; } ?>" class="colorPicker" />
						   <span style="background:#<?php if(isset($themecontrol['footertopbg'])){ echo $themecontrol['footertopbg']; } ?>;"></span>
						</td>
					</tr>
					<tr>
						<td>Footer Top Link:</td>
						<td>
						   <input type="text" name="themecontrol[footertoplink]" value="<?php if(isset($themecontrol['footertoplink'])){ echo $themecontrol['footertoplink']; } ?>" class="colorPicker" />
						   <span style="background:#<?php if(isset($themecontrol['footertoplink'])){ echo $themecontrol['footertoplink']; } ?>;"></span>
						</td>
					</tr>
					<tr>
						<td>Footer Top Border:</td>
						<td>
						   <input type="text" name="themecontrol[footertopborder]" value="<?php if(isset($themecontrol['footertopborder'])){ echo $themecontrol['footertopborder']; } ?>" class="colorPicker" />
						   <span style="background:#<?php if(isset($themecontrol['footertopborder'])){ echo $themecontrol['footertopborder']; } ?>;"></span>
						</td>
					</tr>
					<tr>
						<td>Footer Top Before:</td>
						<td>
						   <input type="text" name="themecontrol[footertopbefore]" value="<?php if(isset($themecontrol['footertopbefore'])){ echo $themecontrol['footertopbefore']; } ?>" class="colorPicker" />
						   <span style="background:#<?php if(isset($themecontrol['footertopbefore'])){ echo $themecontrol['footertopbefore']; } ?>;"></span>
						</td>
					</tr>
						<tr>
						<td>Footer Bottom Background:</td>
						<td>
						   <input type="text" name="themecontrol[footerbottombg]" value="<?php if(isset($themecontrol['footerbottombg'])){ echo $themecontrol['footerbottombg']; } ?>" class="colorPicker" />
						   <span style="background:#<?php if(isset($themecontrol['footerbottombg'])){ echo $themecontrol['footerbottombg']; } ?>;"></span>
						</td>
					</tr>
					<tr>
						<td>Footer bottom Link:</td>
						<td>
						   <input type="text" name="themecontrol[footerbottomlink]" value="<?php if(isset($themecontrol['footerbottomlink'])){ echo $themecontrol['footerbottomlink']; } ?>" class="colorPicker" />
						   <span style="background:#<?php if(isset($themecontrol['footerbottomlink'])){ echo $themecontrol['footerbottomlink']; } ?>;"></span>
						</td>
					</tr>
					<tr>
						<td>Footer bottom Border:</td>
						<td>
						   <input type="text" name="themecontrol[footerbottomborder]" value="<?php if(isset($themecontrol['footerbottomborder'])){ echo $themecontrol['footerbottomborder']; } ?>" class="colorPicker" />
						   <span style="background:#<?php if(isset($themecontrol['footerbottomborder'])){ echo $themecontrol['footerbottomborder']; } ?>;"></span>
						</td>
					</tr>
					<tr>
						<td>Footer bottom Before:</td>
						<td>
						   <input type="text" name="themecontrol[footerbottombefore]" value="<?php if(isset($themecontrol['footerbottombefore'])){ echo $themecontrol['footerbottombefore']; } ?>" class="colorPicker" />
						   <span style="background:#<?php if(isset($themecontrol['footerbottombefore'])){ echo $themecontrol['footerbottombefore']; } ?>;"></span>
						</td>
					</tr>
					<tr>
						<td>Footer Powered Background:</td>
						<td>
						   <input type="text" name="themecontrol[footerpowered]" value="<?php if(isset($themecontrol['footerpowered'])){ echo $themecontrol['footerpowered']; } ?>" class="colorPicker" />
						   <span style="background:#<?php if(isset($themecontrol['footerpowered'])){ echo $themecontrol['footerpowered']; } ?>;"></span>
						</td>
					</tr>
					<tr>
						<td>Footer Powered Link:</td>
						<td>
						   <input type="text" name="themecontrol[footerpoweredlink]" value="<?php if(isset($themecontrol['footerpoweredlink'])){ echo $themecontrol['footerpoweredlink']; } ?>" class="colorPicker" />
						   <span style="background:#<?php if(isset($themecontrol['footerpoweredlink'])){ echo $themecontrol['footerpoweredlink']; } ?>;"></span>
						</td>
					</tr>
					</table>
				</div>
			</div>
			
			<div id="social_links" class="divtab">
			
				<div id="social_settings_tabs" class="vtabs">
					<a href="#social_networks" class="selected">Social Networks</a>
					<a href="#social_networks_iconic" class="selected">Header iconic category</a>
					<a href="#social_networks_color" class="selected">Header Color Options</a>
				</div>
				
				<div id="social_networks" class="vtabs-content" style="">
					<table class="form">
						<?php foreach ($s_links as $sv => $sc) { ?>				
						<tr>
							<td><?php echo $sc; ?> Link:</td>
							<td>
								<input type="text" name="themecontrol[<?php echo $sv; ?>]" value="<?php if(isset($themecontrol[$sv])){ echo $themecontrol[$sv]; } ?>" size="50" />
							</td>
						</tr>
						<?php } ?>
						</table>
				</div>		
			<div id="social_networks_iconic" class="vtabs-content" style="">	
			<table class="form">
			<tr>
				<td> >Header iconic category: </td>
				<td>
					<select name="themecontrol[headericonic]">
						<option value="enable" <?php if(isset($themecontrol['headericonic']) && $themecontrol['headericonic']=='enable'){ echo 'selected=""'; }?>>Show</option>
						<option value="disable" <?php if(isset($themecontrol['headericonic']) && $themecontrol['headericonic']=='disable'){ echo 'selected="selected"'; }?>>Hide</option>
					</select>
				</td>				
			</tr>			
			<tr>

			<td class="left">Header iconic category url</td>
			<td>
			   <input type="text" name="themecontrol[icon_box_1]" value="<?php if(isset($themecontrol['icon_box_1'])){ echo $themecontrol['icon_box_1']; } ?>" size="50" placeholder="support"/>
				<td class="left">Header iconic category url:</td>

			</td>
			<td>
			   <input type="text" name="themecontrol[icon_box_link_1]" value="<?php if(isset($themecontrol['icon_box_link_1'])){ echo $themecontrol['icon_box_link_1']; } ?>" size="50" placeholder="Your link"/>
			</td>
			</tr>
			<tr>
			<td class="left">Header iconic category url</td>
			<td>
			   <input type="text" name="themecontrol[icon_box_2]" value="<?php if(isset($themecontrol['icon_box_2'])){ echo $themecontrol['icon_box_2']; } ?>" size="50" placeholder="support"/>
				<td class="left">Header iconic category url:</td>

			</td>
			<td>
			   <input type="text" name="themecontrol[icon_box_link_2]" value="<?php if(isset($themecontrol['icon_box_link_2'])){ echo $themecontrol['icon_box_link_2']; } ?>" size="50" placeholder="Your link"/>
			</td>
			</tr>

			<tr>
			<td class="left">Header iconic category url</td>
			<td>
			   <input type="text" name="themecontrol[icon_box_3]" value="<?php if(isset($themecontrol['icon_box_3'])){ echo $themecontrol['icon_box_3']; } ?>" size="50" placeholder="support"/>
				<td class="left">Header iconic category url:</td>

			</td>
			<td>
			   <input type="text" name="themecontrol[icon_box_link_3]" value="<?php if(isset($themecontrol['icon_box_link_3'])){ echo $themecontrol['icon_box_link_3']; } ?>" size="50" placeholder="Your link"/>
			</td>
			</tr>

			<tr>
			<td class="left">Header iconic category url</td>
			<td>
			   <input type="text" name="themecontrol[icon_box_4]" value="<?php if(isset($themecontrol['icon_box_4'])){ echo $themecontrol['icon_box_4']; } ?>" size="50" placeholder="support"/>
				<td class="left">Header iconic category url:</td>

			</td>
			<td>
			   <input type="text" name="themecontrol[icon_box_link_4]" value="<?php if(isset($themecontrol['icon_box_link_4'])){ echo $themecontrol['icon_box_link_4']; } ?>" size="50" placeholder="Your link"/>
			</td>
			</tr>

			<tr>
			<td class="left">Header iconic category url</td>
			<td>
			   <input type="text" name="themecontrol[icon_box_5]" value="<?php if(isset($themecontrol['icon_box_5'])){ echo $themecontrol['icon_box_5']; } ?>" size="50" placeholder="support"/>
				<td class="left">Header iconic category url:</td>

			</td>
			<td>
			   <input type="text" name="themecontrol[icon_box_link_5]" value="<?php if(isset($themecontrol['icon_box_link_5'])){ echo $themecontrol['icon_box_link_5']; } ?>" size="50" placeholder="Your link"/>
			</td>
			</tr>

			<tr>
			<td class="left">Header iconic category url</td>
			<td>
			   <input type="text" name="themecontrol[icon_box_6]" value="<?php if(isset($themecontrol['icon_box_6'])){ echo $themecontrol['icon_box_6']; } ?>" size="50" placeholder="support"/>
				<td class="left">Header iconic category url:</td>

			</td>
			<td>
			   <input type="text" name="themecontrol[icon_box_link_6]" value="<?php if(isset($themecontrol['icon_box_link_6'])){ echo $themecontrol['icon_box_link_6']; } ?>" size="50" placeholder="Your link"/>
			</td>
			</tr>

			<tr>
			<td class="left">Header iconic category url</td>
			<td>
			   <input type="text" name="themecontrol[icon_box_7]" value="<?php if(isset($themecontrol['icon_box_7'])){ echo $themecontrol['icon_box_7']; } ?>" size="50" placeholder="support"/>
				<td class="left">Header iconic category url:</td>

			</td>
			<td>
			   <input type="text" name="themecontrol[icon_box_link_7]" value="<?php if(isset($themecontrol['icon_box_link_7'])){ echo $themecontrol['icon_box_link_7']; } ?>" size="50" placeholder="Your link"/>
			</td>
			</tr>

			<tr>
			<td class="left">Header iconic category url</td>
			<td>
			   <input type="text" name="themecontrol[icon_box_8]" value="<?php if(isset($themecontrol['icon_box_8'])){ echo $themecontrol['icon_box_8']; } ?>" size="50" placeholder="support"/>
				<td class="left">Header iconic category url:</td>

			</td>
			<td>
			   <input type="text" name="themecontrol[icon_box_link_8]" value="<?php if(isset($themecontrol['icon_box_link_8'])){ echo $themecontrol['icon_box_link_8']; } ?>" size="50" placeholder="Your link"/>
			</td>
			</tr>

			<tr>
			<td class="left">Header iconic category url</td>
			<td>
			   <input type="text" name="themecontrol[icon_box_9]" value="<?php if(isset($themecontrol['icon_box_9'])){ echo $themecontrol['icon_box_9']; } ?>" size="50" placeholder="support"/>
				<td class="left">Header iconic category url:</td>

			</td>
			<td>
			   <input type="text" name="themecontrol[icon_box_link_9]" value="<?php if(isset($themecontrol['icon_box_link_9'])){ echo $themecontrol['icon_box_link_9']; } ?>" size="50" placeholder="Your link"/>
			</td>
			</tr>

			<tr>
			<td class="left">Header iconic category url</td>
			<td>
			   <input type="text" name="themecontrol[icon_box_10]" value="<?php if(isset($themecontrol['icon_box_10'])){ echo $themecontrol['icon_box_10']; } ?>" size="50" placeholder="support"/>
				<td class="left">Header iconic category url:</td>

			</td>
			<td>
			   <input type="text" name="themecontrol[icon_box_link_10]" value="<?php if(isset($themecontrol['icon_box_link_10'])){ echo $themecontrol['icon_box_link_10']; } ?>" size="50" placeholder="Your link"/>
			</td>
			</tr>

			<tr>
			<td class="left">Header iconic category url</td>
			<td>
			   <input type="text" name="themecontrol[icon_box_11]" value="<?php if(isset($themecontrol['icon_box_11'])){ echo $themecontrol['icon_box_11']; } ?>" size="50" placeholder="support"/>
				<td class="left">Header iconic category url:</td>

			</td>
			<td>
			   <input type="text" name="themecontrol[icon_box_link_11]" value="<?php if(isset($themecontrol['icon_box_link_11'])){ echo $themecontrol['icon_box_link_11']; } ?>" size="50" placeholder="Your link"/>
			</td>
			</tr>

			<tr>
			<td class="left">Header iconic category url</td>
			<td>
			   <input type="text" name="themecontrol[icon_box_12]" value="<?php if(isset($themecontrol['icon_box_12'])){ echo $themecontrol['icon_box_12']; } ?>" size="50" placeholder="support"/>
				<td class="left">Header iconic category url:</td>

			</td>
			<td>
			   <input type="text" name="themecontrol[icon_box_link_12]" value="<?php if(isset($themecontrol['icon_box_link_12'])){ echo $themecontrol['icon_box_link_12']; } ?>" size="50" placeholder="Your link"/>
			</td>
			</tr>
			</table>
			</div>
			<div id="social_networks_color" class="vtabs-content" style="">
					<table class="form">
					<tr>
						<td>Header Top Background :</td>
						<td>
						   <input type="text" name="themecontrol[headertopbg]" value="<?php if(isset($themecontrol['headertopbg'])){ echo $themecontrol['headertopbg']; } ?>" class="colorPicker" />
						   <span style="background:#<?php if(isset($themecontrol['headertopbg'])){ echo $themecontrol['headertopbg']; } ?>;"></span>
						</td>
					</tr>
					<tr>
						<td>Header Top Link :</td>
						<td>
						   <input type="text" name="themecontrol[headertoplink]" value="<?php if(isset($themecontrol['headertoplink'])){ echo $themecontrol['headertoplink']; } ?>" class="colorPicker" />
						   <span style="background:#<?php if(isset($themecontrol['headertoplink'])){ echo $themecontrol['headertoplink']; } ?>;"></span>
						</td>
					</tr>

					<tr>
						<td>Header Cart Background:</td>
						<td>
						   <input type="text" name="themecontrol[headercartbg]" value="<?php if(isset($themecontrol['headercartbg'])){ echo $themecontrol['headercartbg']; } ?>" class="colorPicker" />
						   <span style="background:#<?php if(isset($themecontrol['headercartbg'])){ echo $themecontrol['headercartbg']; } ?>;"></span>
						</td>
					</tr>
					<tr>
						<td>Header Cart Border:</td>
						<td>
						   <input type="text" name="themecontrol[headercartborder]" value="<?php if(isset($themecontrol['headercartborder'])){ echo $themecontrol['headercartborder']; } ?>" class="colorPicker" />
						   <span style="background:#<?php if(isset($themecontrol['headercartborder'])){ echo $themecontrol['headercartborder']; } ?>;"></span>
						</td>
					</tr>
					<tr>
						<td>Header Cart Text/link:</td>
						<td>
						   <input type="text" name="themecontrol[headercartlink]" value="<?php if(isset($themecontrol['headercartlink'])){ echo $themecontrol['headercartlink']; } ?>" class="colorPicker" />
						   <span style="background:#<?php if(isset($themecontrol['headercartlink'])){ echo $themecontrol['headercartlink']; } ?>;"></span>
						</td>
					</tr>
					<tr>
						<td>Header Menu Background:</td>
						<td>
						   <input type="text" name="themecontrol[headermenubg]" value="<?php if(isset($themecontrol['headermenubg'])){ echo $themecontrol['headermenubg']; } ?>" class="colorPicker" />
						   <span style="background:#<?php if(isset($themecontrol['headermenubg'])){ echo $themecontrol['headermenubg']; } ?>;"></span>
						</td>
					</tr>
					<tr>
						<td>Header Menu Border:</td>
						<td>
						   <input type="text" name="themecontrol[headermenuborder]" value="<?php if(isset($themecontrol['headermenuborder'])){ echo $themecontrol['headermenuborder']; } ?>" class="colorPicker" />
						   <span style="background:#<?php if(isset($themecontrol['headermenuborder'])){ echo $themecontrol['headermenuborder']; } ?>;"></span>
						</td>
					</tr>
					<tr>
						<td>Header Menu Hover:</td>
						<td>
						   <input type="text" name="themecontrol[headermenuhover]" value="<?php if(isset($themecontrol['headermenuhover'])){ echo $themecontrol['headermenuhover']; } ?>" class="colorPicker" />
						   <span style="background:#<?php if(isset($themecontrol['headermenuhover'])){ echo $themecontrol['headermenuhover']; } ?>;"></span>
						</td>
					</tr>
					<tr>
						<td>Header Menu Link:</td>
						<td>
						   <input type="text" name="themecontrol[headermenulink]" value="<?php if(isset($themecontrol['headermenulink'])){ echo $themecontrol['headermenulink']; } ?>" class="colorPicker" />
						   <span style="background:#<?php if(isset($themecontrol['headermenulink'])){ echo $themecontrol['headermenulink']; } ?>;"></span>
						</td>
					</tr>
					<tr>
						<td>Header Menu Dropdown Background:</td>
						<td>
						   <input type="text" name="themecontrol[headermenudropbg]" value="<?php if(isset($themecontrol['headermenudropbg'])){ echo $themecontrol['headermenudropbg']; } ?>" class="colorPicker" />
						   <span style="background:#<?php if(isset($themecontrol['headermenudropbg'])){ echo $themecontrol['headermenudropbg']; } ?>;"></span>
						</td>
					</tr>
					<tr>
						<td>Header Menu Dropdown Border:</td>
						<td>
						   <input type="text" name="themecontrol[headermenudropborder]" value="<?php if(isset($themecontrol['headermenudropborder'])){ echo $themecontrol['headermenudropborder']; } ?>" class="colorPicker" />
						   <span style="background:#<?php if(isset($themecontrol['headermenudropborder'])){ echo $themecontrol['headermenudropborder']; } ?>;"></span>
						</td>
					</tr>
					<tr>
						<td>Header Menu Dropdown Link:</td>
						<td>
						   <input type="text" name="themecontrol[headermenudroplink]" value="<?php if(isset($themecontrol['headermenudroplink'])){ echo $themecontrol['headermenudroplink']; } ?>" class="colorPicker" />
						   <span style="background:#<?php if(isset($themecontrol['headermenudroplink'])){ echo $themecontrol['headermenudroplink']; } ?>;"></span>
						</td>
					</tr>
					<tr>
						<td>Header Breadcrumbs Background:</td>
						<td>
						   <input type="text" name="themecontrol[breadcrumbsbg]" value="<?php if(isset($themecontrol['breadcrumbsbg'])){ echo $themecontrol['breadcrumbsbg']; } ?>" class="colorPicker" />
						   <span style="background:#<?php if(isset($themecontrol['breadcrumbsbg'])){ echo $themecontrol['breadcrumbsbg']; } ?>;"></span>
						</td>
					</tr>
					<tr>
						<td>Header Breadcrumbs Link:</td>
						<td>
						   <input type="text" name="themecontrol[breadcrumbslink]" value="<?php if(isset($themecontrol['breadcrumbslink'])){ echo $themecontrol['breadcrumbslink']; } ?>" class="colorPicker" />
						   <span style="background:#<?php if(isset($themecontrol['breadcrumbslink'])){ echo $themecontrol['breadcrumbslink']; } ?>;"></span>
						</td>
					</tr>
					
					<tr>
						<td>Header Search Background:</td>
						<td>
						   <input type="text" name="themecontrol[headersearchbg]" value="<?php if(isset($themecontrol['headersearchbg'])){ echo $themecontrol['headersearchbg']; } ?>" class="colorPicker" />
						   <span style="background:#<?php if(isset($themecontrol['headersearchbg'])){ echo $themecontrol['headersearchbg']; } ?>;"></span>
						</td>
					</tr>
					</table>
				</div>	

			</div>
			<div id="module_settings" class="divtab">

			<div id="module_settings_tabs" class="vtabs">
				<a href="#module_settings1" class="selected">Slider Options</a>
				<a href="#module_settings2" class="selected">All Category List Modules Options</a>
				<a href="#module_settings3" class="selected">All Carousel Modules Options</a>
			</div>

			<div id="module_settings1" class="vtabs-content" style="">
				<table class="form">
					<tr>
						<td>Select Animation type:</td>
						<td>
							<select name="themecontrol[slideshowtype]">
								<option value="fade" <?php if(isset($themecontrol['slideshowtype']) && $themecontrol['slideshowtype']=='fade'){ echo 'selected="selected"'; }?>>Fade</option>
								<option value="slide" <?php if(isset($themecontrol['slideshowtype']) && $themecontrol['slideshowtype']=='slide'){ echo 'selected=""'; }?>> Slide</option>
							</select>
						</td>
					</tr>
					<tr>
						<td>Select Animation Speed:</td>
						<td>
							<select name="themecontrol[slideshowanispeed]">
								<option value="1000" <?php if(isset($themecontrol['slideshowanispeed']) && $themecontrol['slideshowanispeed']=='1000'){ echo 'selected="selected"'; }?>>1000</option>
								<option value="2000" <?php if(isset($themecontrol['slideshowanispeed']) && $themecontrol['slideshowanispeed']=='2000'){ echo 'selected="selected"'; }?>>2000</option>
								<option value="3000" <?php if(isset($themecontrol['slideshowanispeed']) && $themecontrol['slideshowanispeed']=='3000'){ echo 'selected="selected"'; }?>>3000</option>
								<option value="4000" <?php if(isset($themecontrol['slideshowanispeed']) && $themecontrol['slideshowanispeed']=='4000'){ echo 'selected="selected"'; }?>>4000</option>
								<option value="5000" <?php if(isset($themecontrol['slideshowanispeed']) && $themecontrol['slideshowanispeed']=='5000'){ echo 'selected="selected"'; }?>>5000</option>
								<option value="6000" <?php if(isset($themecontrol['slideshowanispeed']) && $themecontrol['slideshowanispeed']=='6000'){ echo 'selected="selected"'; }?>>6000</option>
								<option value="7000" <?php if(isset($themecontrol['slideshowanispeed']) && $themecontrol['slideshowanispeed']=='7000'){ echo 'selected="selected"'; }?>>7000</option>
								
							</select>
						</td>
					</tr>
					<tr>
						<td>Select Slideshow Speed:</td>
						<td>
							<select name="themecontrol[slideshowSpeed]">
								<option value="1000" <?php if(isset($themecontrol['slideshowSpeed']) && $themecontrol['slideshowSpeed']=='1000'){ echo 'selected="selected"'; }?>>1000</option>
								<option value="2000" <?php if(isset($themecontrol['slideshowSpeed']) && $themecontrol['slideshowSpeed']=='2000'){ echo 'selected="selected"'; }?>>2000</option>
								<option value="3000" <?php if(isset($themecontrol['slideshowSpeed']) && $themecontrol['slideshowSpeed']=='3000'){ echo 'selected="selected"'; }?>>3000</option>
								<option value="4000" <?php if(isset($themecontrol['slideshowSpeed']) && $themecontrol['slideshowSpeed']=='4000'){ echo 'selected="selected"'; }?>>4000</option>
								<option value="5000" <?php if(isset($themecontrol['slideshowSpeed']) && $themecontrol['slideshowSpeed']=='5000'){ echo 'selected="selected"'; }?>>5000</option>
								<option value="6000" <?php if(isset($themecontrol['slideshowSpeed']) && $themecontrol['slideshowSpeed']=='6000'){ echo 'selected="selected"'; }?>>6000</option>
								<option value="7000" <?php if(isset($themecontrol['slideshowSpeed']) && $themecontrol['slideshowSpeed']=='7000'){ echo 'selected="selected"'; }?>>7000</option>
								
							</select>
						</td>
					</tr>
					<tr>
						<td>Select Slideshow Auto :</td>
						<td>
							<select name="themecontrol[slideshowtrue]">
								<option value="true" <?php if(isset($themecontrol['slideshowtrue']) && $themecontrol['slideshowtrue']=='true'){ echo 'selected="selected"'; }?>>Enable</option>
								<option value="false" <?php if(isset($themecontrol['slideshowtrue']) && $themecontrol['slideshowtrue']=='false'){ echo 'selected="selected"'; }?>>Disable</option>
								
							</select>
						</td>
					</tr>
					<tr>
						<td>Select Slideshow Direction :</td>
						<td>
							<select name="themecontrol[slideshowdirect]">
								<option value="horizontal" <?php if(isset($themecontrol['slideshowdirect']) && $themecontrol['slideshowdirect']=='horizontal'){ echo 'selected="selected"'; }?>>Horizontal</option>
								<option value="vertical" <?php if(isset($themecontrol['slideshowdirect']) && $themecontrol['slideshowdirect']=='vertical'){ echo 'selected="selected"'; }?>>Vertical</option>
								
							</select>
						</td>
					</tr>
					<tr>
						<td>Select Slideshow Caption  :</td>
						<td>
							<select name="themecontrol[slideshowcaption]">
								<option value="enable" <?php if(isset($themecontrol['slideshowcaption']) && $themecontrol['slideshowcaption']=='enable'){ echo 'selected="selected"'; }?>>Show Caption</option>
								<option value="disable" <?php if(isset($themecontrol['slideshowcaption']) && $themecontrol['slideshowcaption']=='disable'){ echo 'selected="selected"'; }?>>Hide Caption</option>
								
							</select>
						</td>
					</tr>
				</table>
			</div>
			<div id="module_settings2" class="vtabs-content" style="">
				<table class="form">
					<tr>
						<td>Category List Background:</td>
						<td>
						   <input type="text" name="themecontrol[categorylistbg]" value="<?php if(isset($themecontrol['categorylistbg'])){ echo $themecontrol['categorylistbg']; } ?>" class="colorPicker" />
						   <span style="background:#<?php if(isset($themecontrol['categorylistbg'])){ echo $themecontrol['categorylistbg']; } ?>;"></span>
						</td>
					</tr>
					<tr>
						<td>Category List Border:</td>
						<td>
						   <input type="text" name="themecontrol[categorylistborder]" value="<?php if(isset($themecontrol['categorylistborder'])){ echo $themecontrol['categorylistborder']; } ?>" class="colorPicker" />
						   <span style="background:#<?php if(isset($themecontrol['categorylistborder'])){ echo $themecontrol['categorylistborder']; } ?>;"></span>
						</td>
					</tr>
					<tr>
						<td>Category List Link:</td>
						<td>
						   <input type="text" name="themecontrol[categorylistlink]" value="<?php if(isset($themecontrol['categorylistlink'])){ echo $themecontrol['categorylistlink']; } ?>" class="colorPicker" />
						   <span style="background:#<?php if(isset($themecontrol['categorylistlink'])){ echo $themecontrol['categorylistlink']; } ?>;"></span>
						</td>
					</tr>
					<tr>
						<td>Category List Border:</td>
						<td>
						   <input type="text" name="themecontrol[categorylisth3border]" value="<?php if(isset($themecontrol['categorylisth3border'])){ echo $themecontrol['categorylisth3border']; } ?>" class="colorPicker" />
						   <span style="background:#<?php if(isset($themecontrol['categorylisth3border'])){ echo $themecontrol['categorylisth3border']; } ?>;"></span>
						</td>
					</tr>
					<tr>
						<td>Category List Border Before:</td>
						<td>
						   <input type="text" name="themecontrol[categorylisth3before]" value="<?php if(isset($themecontrol['categorylisth3before'])){ echo $themecontrol['categorylisth3before']; } ?>" class="colorPicker" />
						   <span style="background:#<?php if(isset($themecontrol['categorylisth3before'])){ echo $themecontrol['categorylisth3before']; } ?>;"></span>
						</td>
					</tr>
					

				</table>
			</div>
			<div id="module_settings3" class="vtabs-content" style="">
				<table class="form">
					<tr>
						<td>Carousel Modules Arrows Background:</td>
						<td>
						   <input type="text" name="themecontrol[carouselarrowsbg]" value="<?php if(isset($themecontrol['carouselarrowsbg'])){ echo $themecontrol['carouselarrowsbg']; } ?>" class="colorPicker" />
						   <span style="background:#<?php if(isset($themecontrol['carouselarrowsbg'])){ echo $themecontrol['carouselarrowsbg']; } ?>;"></span>
						</td>
					</tr>
					<tr>
						<td>Carousel Modules Arrows Border:</td>
						<td>
						   <input type="text" name="themecontrol[carouselarrowsborder]" value="<?php if(isset($themecontrol['carouselarrowsborder'])){ echo $themecontrol['carouselarrowsborder']; } ?>" class="colorPicker" />
						   <span style="background:#<?php if(isset($themecontrol['carouselarrowsborder'])){ echo $themecontrol['carouselarrowsborder']; } ?>;"></span>
						</td>
					</tr>
					
					<tr>
						<td>Carousel Modules After And Before:</td>
						<td>
						   <input type="text" name="themecontrol[carouselproafter]" value="<?php if(isset($themecontrol['carouselproafter'])){ echo $themecontrol['carouselproafter']; } ?>" class="colorPicker" />
						   <span style="background:#<?php if(isset($themecontrol['carouselproafter'])){ echo $themecontrol['carouselproafter']; } ?>;"></span>
						</td>
					</tr>
					<tr>
						<td>Carousel Modules  H3 Border:</td>
						<td>
						   <input type="text" name="themecontrol[carouselh3border]" value="<?php if(isset($themecontrol['carouselh3border'])){ echo $themecontrol['carouselh3border']; } ?>" class="colorPicker" />
						   <span style="background:#<?php if(isset($themecontrol['carouselh3border'])){ echo $themecontrol['carouselh3border']; } ?>;"></span>
						</td>
					</tr>
					<tr>
						<td>Carousel Modules  Border After:</td>
						<td>
						   <input type="text" name="themecontrol[carouselh3after]" value="<?php if(isset($themecontrol['carouselh3after'])){ echo $themecontrol['carouselh3after']; } ?>" class="colorPicker" />
						   <span style="background:#<?php if(isset($themecontrol['carouselh3after'])){ echo $themecontrol['carouselh3after']; } ?>;"></span>
						</td>
					</tr>
					<tr>
						<td>Carousel Modules  Buttons Background:</td>
						<td>
						   <input type="text" name="themecontrol[carouselbuttonbg]" value="<?php if(isset($themecontrol['carouselbuttonbg'])){ echo $themecontrol['carouselbuttonbg']; } ?>" class="colorPicker" />
						   <span style="background:#<?php if(isset($themecontrol['carouselbuttonbg'])){ echo $themecontrol['carouselbuttonbg']; } ?>;"></span>
						</td>
					</tr>
					<tr>
						<td>Carousel Modules  Buttons Hover:</td>
						<td>
						   <input type="text" name="themecontrol[carouselbuttonhover]" value="<?php if(isset($themecontrol['carouselbuttonhover'])){ echo $themecontrol['carouselbuttonhover']; } ?>" class="colorPicker" />
						   <span style="background:#<?php if(isset($themecontrol['carouselbuttonhover'])){ echo $themecontrol['carouselbuttonhover']; } ?>;"></span>
						</td>
					</tr>
					<tr>
						<td>Carousel Modules  Buttons Border:</td>
						<td>
						   <input type="text" name="themecontrol[carouselbuttonborder]" value="<?php if(isset($themecontrol['carouselbuttonborder'])){ echo $themecontrol['carouselbuttonborder']; } ?>" class="colorPicker" />
						   <span style="background:#<?php if(isset($themecontrol['carouselbuttonborder'])){ echo $themecontrol['carouselbuttonborder']; } ?>;"></span>
						</td>
					</tr>
					

				</table>
			</div>
			</div>
			<div id="custom_css_settings" class="divtab">
			
				<div id="custom_css_settings_tabs" class="vtabs">
					<a href="#custom_css_code" class="selected">Custom CSS Code</a>
					<a href="#custom_js_code" class="selected">Custom JS Code</a>
				</div>
				
				<div id="custom_css_code" class="vtabs-content" style="">
					<table class="form">
						<tr>
							<td colspan="4">
								<h3>Custom CSS</h3>
								<span class="pclass" style="width: 100%;">You can use here for your own CSS code.</span>
							</td>
						</tr>
						<tr>
							<td>Paste your own CSS:</td>
							<td>
								<textarea id="themecontrol[customCss]" name="themecontrol[customCss]" cols="52" rows="20" style="width:80%;"><?php if(isset($themecontrol['customCss'])){ echo $themecontrol['customCss']; } ?></textarea>
							</td>
						</tr>
					</table>
				</div>
				<div id="custom_js_code" class="vtabs-content" style="">
					<table class="form">
						<tr>
							<td colspan="4">
								<h3>Custom JS</h3>
								<span class="pclass" style="width: 100%;">You can use here for your own JS code.</span>
							</td>
						</tr>
						<tr>
							<td>Paste your own CSS:</td>
							<td>
								<textarea id="themecontrol[customjs]" name="themecontrol[customjs]" cols="52" rows="20" style="width:80%;"><?php if(isset($themecontrol['customjs'])){ echo $themecontrol['customjs']; } ?></textarea>
							</td>
						</tr>
					</table>
				</div>
			</div>	
			<div id="contact_settings" class="divtab">
			
				<div id="contact_settings_tabs" class="vtabs">
					<a href="#contact_settingsone" class="selected">Contact Options</a>
				</div>
				
				<div id="contactone" class="vtabs-content" style="">
					<table class="form">
						<tr>
							<td>Show / Hide Options:</td>
							<td>
								<select name="themecontrol[Show]">
									<option value="section" <?php if(isset($themecontrol['Show']) && $themecontrol['Show']=='section'){ echo 'selected="selected"'; }?>>Show Google Maps</option>
									<option value="hidden-xs hidden-sm hidden-lg" <?php if(isset($themecontrol['Show']) && $themecontrol['Show']=='hidden-xs hidden-sm hidden-lg'){ echo 'selected=""'; }?>>Hide Google Maps</option>
								</select>
							</td>
						</tr>
						
						<tr>
							<td>
								Google Maps data-lat  (Example="-37.817186"):
							</td>
							<td>
								<input type="text" name="themecontrol[mapsltd]" value="<?php if(isset($themecontrol['mapsltd'])){ echo $themecontrol['mapsltd']; } ?>" size="50" />
							</td>
						</tr>
						<tr>
							<td>
								Google Maps data-lng  (Example="144.964986"):
							</td>
							<td>
								<input type="text" name="themecontrol[mapslng]" value="<?php if(isset($themecontrol['mapslng'])){ echo $themecontrol['mapslng']; } ?>" size="50" />
							</td>
						</tr>
						<tr>
							<td colspan="4">
								<h3>Contact Page Options</h3>
								<span class="pclass" style="width: 100%;">You can use here for your Contact page information / announcement.</span>
							</td>
						</tr>
						<tr>
							<td>
								Contact custom area : Text / image / video / code <br />
								<span class="help">You can use images</span>
							</td>
							<td><textarea name="themecontrol[contactinfo]" cols="52" rows="5"><?php if(isset($themecontrol['contactinfo'])){ echo $themecontrol['contactinfo']; } ?></textarea>
							</td>
						</tr>
					</table>
				</div>
			</div>

		</form>

	</div>

</div>
</div>

<?php echo $footer; ?>
<script type="text/javascript"><!--
$('#pattern-preview').removeClass().addClass('<?php if(isset($themecontrol['background_pattern']) && $themecontrol['background_pattern']!=''){ echo $themecontrol['background_pattern']; } else { echo 'pattern1'; }?>');
$('#scheme-preview').removeClass().addClass('<?php if(isset($themecontrol['color_schemes']) && $themecontrol['color_schemes']!=''){ echo 'col' . substr($themecontrol['color_schemes'], 5); } else { echo 'theme1'; }?>');
$('#color-preview').removeClass().addClass('<?php if(isset($themecontrol['background_color']) && $themecontrol['background_color']!=''){ echo $themecontrol['background_color']; } else { echo 'col1'; }?>');
//--></script> 

<script type="text/javascript">
	$('#tabs a').tabs();
	$('#general_settings_tabs a').tabs();
	$('#footer_settings a').tabs();
	$('#social_settings_tabs a').tabs();
	$('#module_settings_tabs a').tabs();
	$('#custom_css_settings_tabs a').tabs();
</script>

<script type="text/javascript" src="view/javascript/jscolor/jscolor.js"></script> 

<script type="text/javascript" src="view/javascript/ckeditor/ckeditor.js"></script>
<script type="text/javascript"><!--
$('input.colorPicker').ColorPicker({
	onSubmit: function(hsb, hex, rgb, el) {
		$(el).val(hex);
		$(el).ColorPickerHide();
		$(el).parent().find('span').css('background','#'+hex);	
	},
	onBeforeShow: function () {
		$(this).ColorPickerSetColor(this.value);
	}
})
.bind('keyup', function(){
	$(this).ColorPickerSetColor(this.value);	
});
--></script>

<script type="text/javascript">

	CKEDITOR.replace('themecontrol[footer_information]', {
		filebrowserImageBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
		filebrowserFlashBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
		filebrowserUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
		filebrowserImageUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
		filebrowserFlashUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>'
	});
	
	CKEDITOR.replace('themecontrol[footer_informationbottom]', {
		filebrowserImageBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
		filebrowserFlashBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
		filebrowserUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
		filebrowserImageUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
		filebrowserFlashUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>'
	});
	CKEDITOR.replace('themecontrol[contactinfo]', {
		filebrowserImageBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
		filebrowserFlashBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
		filebrowserUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
		filebrowserImageUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
		filebrowserFlashUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>'
	});
</script>
<script type="text/javascript"><!--
function image_upload(field, preview) {
	$('#dialog').remove();
	
	$('#content').prepend('<div id="dialog" style="padding: 3px 0px 0px 0px;"><iframe src="index.php?route=common/filemanager&token=<?php echo $token; ?>&field=' + encodeURIComponent(field) + '" style="padding:0; margin: 0; display: block; width: 100%; height: 100%;" frameborder="no" scrolling="auto"></iframe></div>');
	
	$('#dialog').dialog({
		title: '<?php echo $text_image_manager; ?>',
		close: function (event, ui) {
			if ($('#' + field).attr('value')) {
				$.ajax({
					url: 'index.php?route=common/filemanager/image&token=<?php echo $token; ?>&image=' + encodeURIComponent($('#' + field).val()),
					dataType: 'text',
					success: function(data) {
						$('#' + preview).replaceWith('<img src="' + data + '" alt="" id="' + preview + '" />');
					}
				});
			}
		},	
		bgiframe: false,
		width: 700,
		height: 400,
		resizable: false,
		modal: false
	});
};
//--></script> 