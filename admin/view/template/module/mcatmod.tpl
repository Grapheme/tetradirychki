<?php echo $header; ?>
<style type="text/css">
  table.list td {
    vertical-align: top;  
	}
	input[type='text'], input[type='password'] {
	border: 1px solid #bbb;
	border-top: 1px solid #e7e7e7;
	border-left: 1px solid #e7e7e7;
	-webkit-border-radius: 2px;
	-moz-border-radius: 2px;
	-khtml-border-radius: 2px;
	border-radius: 2px;
	padding: 5px;
	margin: 3px;
	}
	input[type='text']:focus, input[type='password']:focus {
	-webkit-box-shadow: 0px 0px 3px #07f;
	-moz-box-shadow: 0px 0px 3px #07f;
	box-shadow: 0px 0px 3px #07f;
	}
	select { 
    border: 3px solid #DDDDDD;
    padding: 7px;
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	-khtml-border-radius: 3px;
	border-radius: 3px;
    }
    a.button, .list a.button {
    background: #4094D8;
	color: #fff;
	padding: 6px;
	font-weight: bold;
	border: 1px solid #4FB0FA;
	border-right: 1px solid #3E83B7;
	border-bottom: 1px solid #3E83B7;
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	-khtml-border-radius: 3px;
	border-radius: 3px;
	}
	a.button:hover, .list a.button:hover {
	background: #333;
	border: 1px solid #444;
	border-right: 1px solid #222;
	border-bottom: 1px solid #222;
	}
	.htabs {
	border-bottom: 3px solid #ddd;
	}
	.htabs a {
    border-top: 3px solid #ddd;
	border-left: 3px solid #ddd;
	border-right: 3px solid #ddd;
	background: #88C847;
	-webkit-border-radius: 3px 3px 0px 0px;
	-moz-border-radius: 3px 3px 0px 0px;
	-khtml-border-radius: 3px 3px 0px 0px;
	border-radius: 3px 3px 0px 0px;
	padding: 6px 15px 5px;
	color: #fff;
    }	
	.htabs a.selected { 
     background: #FFFFFF;
	 color: #88C847;
     padding-bottom: 8px;
     }
	 a.butonas, .list a.butonas {
    background: #4094D8;
	color: #fff;
	padding: 0px;
	line-height: 16px;
	padding-left: 5px;
	padding-right: 5px;
	font-weight: bold;
	border: 1px solid #4FB0FA;
	border-right: 1px solid #3E83B7;
	border-bottom: 1px solid #3E83B7;
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	-khtml-border-radius: 3px;
	border-radius: 3px;
	text-decoration: none;
	}
	 a.butonas:hover, .list a.butonas:hover {
	 background: #3A81B7;
	}
	 a.butonasc, .list a.butonasc {
    background: #FF2323;
	color: #fff;
	padding: 0px;
	line-height: 16px;
	padding-left: 5px;
	padding-right: 5px;
	font-weight: bold;
	border: 1px solid #FB6262;
	border-right: 1px solid #C11818;
	border-bottom: 1px solid #C11818;
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	-khtml-border-radius: 3px;
	border-radius: 3px;
	margin-bottom: 4px;
	text-decoration: none;
	}
	 a.butonasc:hover, .list a.butonasc:hover {
	 background: #EB1D1D;
	}
	table.sets td {
	 padding-top: 5px;
	 padding-bottom: 5px;
	 border-bottom: 2px solid #ddd;
	}
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
  <?php if ($success) { ?>
  <div class="success"><?php echo $success; ?></div>
  <?php } ?>
  <div class="box">
    <div class="heading">
      <h1><img src="view/image/module.png" alt="" /> <?php echo $heading_title; ?></h1>
      <div class="buttons"><a onclick="$('#form').submit();" class="button"><?php echo $button_save; ?></a><a onclick="location = '<?php echo $cancel; ?>';" class="button"><?php echo $button_cancel; ?></a></div>
    </div>
    <div class="content">
	<div id="tabs" class="htabs"><a href="#tab-add"><?php echo $tab_add; ?></a><a href="#tab-settings"><?php echo $tab_settings; ?></a></div>
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
	  <div id="tab-add">
        <table id="module" class="list">
          <thead>
            <tr>
			  <td class="left"><?php echo $entry_theme; ?></td>
              <td class="left"><?php echo $entry_layout; ?></td>
              <td class="left"><?php echo $entry_position; ?></td>
              <td class="left"><?php echo $entry_status; ?></td>
              <td class="right"><?php echo $entry_sort_order; ?></td>
              <td></td>
            </tr>
          </thead>
          <?php $module_row = 0; ?>
          <?php foreach ($modules as $module) { ?>
          <tbody id="module-row<?php echo $module_row; ?>">
            <tr>
			<td class="left"><select name="mcatmod_module[<?php echo $module_row; ?>][theme]">
                  <?php if ($module['theme'] == 'default') { ?>
                  <option value="default" selected="selected">Default</option>
                  <?php } else { ?>
                  <option value="default">Default</option>
                  <?php } ?>
				  <?php if ($module['theme'] == 'block') { ?>
                  <option value="block" selected="selected">Default Bocks</option>
                  <?php } else { ?>
                  <option value="block">Default Bocks</option>
                  <?php } ?>
				  <?php if ($module['theme'] == 'dark') { ?>
                  <option value="dark" selected="selected">Dark</option>
                  <?php } else { ?>
                  <option value="dark">Dark</option>
                  <?php } ?>
				  <?php if ($module['theme'] == 'blue') { ?>
                  <option value="blue" selected="selected">Blue</option>
                  <?php } else { ?>
                  <option value="blue">Blue</option>
                  <?php } ?>
				  <?php if ($module['theme'] == 'green') { ?>
                  <option value="green" selected="selected">Green</option>
                  <?php } else { ?>
                  <option value="green">Green</option>
                  <?php } ?>
				  <?php if ($module['theme'] == 'red') { ?>
                  <option value="red" selected="selected">Red</option>
                  <?php } else { ?>
                  <option value="red">Red</option>
                  <?php } ?>
                </select></td>
              <td class="left"><select name="mcatmod_module[<?php echo $module_row; ?>][layout_id]">
                  <?php foreach ($layouts as $layout) { ?>
                  <?php if ($layout['layout_id'] == $module['layout_id']) { ?>
                  <option value="<?php echo $layout['layout_id']; ?>" selected="selected"><?php echo $layout['name']; ?></option>
                  <?php } else { ?>
                  <option value="<?php echo $layout['layout_id']; ?>"><?php echo $layout['name']; ?></option>
                  <?php } ?>
                  <?php } ?>
                </select></td>
              <td class="left"><select name="mcatmod_module[<?php echo $module_row; ?>][position]">
                  <?php if ($module['position'] == 'column_left') { ?>
                  <option value="column_left" selected="selected"><?php echo $text_column_left; ?></option>
                  <?php } else { ?>
                  <option value="column_left"><?php echo $text_column_left; ?></option>
                  <?php } ?>
                  <?php if ($module['position'] == 'column_right') { ?>
                  <option value="column_right" selected="selected"><?php echo $text_column_right; ?></option>
                  <?php } else { ?>
                  <option value="column_right"><?php echo $text_column_right; ?></option>
                  <?php } ?>
                </select></td>
              <td class="left"><select name="mcatmod_module[<?php echo $module_row; ?>][status]">
                  <?php if ($module['status']) { ?>
                  <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                  <option value="0"><?php echo $text_disabled; ?></option>
                  <?php } else { ?>
                  <option value="1"><?php echo $text_enabled; ?></option>
                  <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                  <?php } ?>
                </select></td>
              <td class="right"><input type="text" name="mcatmod_module[<?php echo $module_row; ?>][sort_order]" value="<?php echo $module['sort_order']; ?>" size="3" /></td>
              <td class="left"><a onclick="$('#module-row<?php echo $module_row; ?>').remove();" class="button"><?php echo $button_remove; ?></a></td>
            </tr>
          </tbody>
          <?php $module_row++; ?>
          <?php } ?>
          <tfoot>
            <tr>
              <td colspan="5"></td>
              <td class="left"><a onclick="addModule();" class="button"><?php echo $button_add_module; ?></a></td>
            </tr>
          </tfoot>
        </table>
		<table id="item" class="list">
          <thead>
            <tr>
              <td class="left"><?php echo $entry_type; ?></td>
              <td class="left"><?php echo $entry_category; ?></td>
              <td class="left"><?php echo $entry_information; ?></td>
              <td class="left"><?php echo $entry_custom; ?></td>
              <td class="right"><?php echo $entry_add; ?></td>
              <td></td>
            </tr>
          </thead>
          <?php $item_row = 0; ?>
		  <?php $libg = '#eee'; ?>
          <?php foreach ($items as $item) { ?>
		  <?php $libg = ($libg == '#fff' ? '#eee' : '#fff'); ?>
          <tbody id="item-row<?php echo $item_row; ?>">
            <tr>
           <td class="left" style="background: <?php echo $libg; ?>;"><select name="mcatmod_item[<?php echo $item_row; ?>][type]">
			      <?php if ($item['type'] == 'cat') { ?>
                  <option value="cat" selected="selected"><?php echo $type_cat; ?></option>
                  <?php } else { ?>
                  <option value="cat"><?php echo $type_cat; ?></option>
                  <?php } ?>
				  <?php if ($item['type'] == 'infol') { ?>
                  <option value="infol" selected="selected"><?php echo $type_infol; ?></option>
                  <?php } else { ?>
                  <option value="infol"><?php echo $type_infol; ?></option>
                  <?php } ?>
				  <?php if ($item['type'] == 'infod') { ?>
                  <option value="infod" selected="selected"><?php echo $type_infod; ?></option>
                  <?php } else { ?>
                  <option value="infod"><?php echo $type_infod; ?></option>
                  <?php } ?>
				   <?php if ($item['type'] == 'custom') { ?>
                  <option value="custom" selected="selected"><?php echo $type_custom; ?></option>
                  <?php } else { ?>
                  <option value="custom"><?php echo $type_custom; ?></option>
                  <?php } ?>
				   <?php if ($item['type'] == 'more') { ?>
                  <option value="more" selected="selected"><?php echo $type_more; ?></option>
                  <?php } else { ?>
                  <option value="more"><?php echo $type_more; ?></option>
                  <?php } ?>
				  <?php if ($item['type'] == 'mand') { ?>
                  <option value="mand" selected="selected"><?php echo $type_mand; ?></option>
                  <?php } else { ?>
                  <option value="mand"><?php echo $type_mand; ?></option>
                  <?php } ?>
		 </select>
		 <br /><br /> <b><?php echo $text_sview; ?> </b>
		  <select name="mcatmod_item[<?php echo $item_row; ?>][view]">
			      <?php if (!$item['view']) { ?>
                  <option value="0" selected="selected"><?php echo $text_slist; ?></option>
				  <option value="1"><?php echo $text_sgrid; ?></option>
                  <?php } else { ?>
                  <option value="1"  selected="selected"><?php echo $text_sgrid; ?></option>
				  <option value="0"><?php echo $text_slist; ?></option>
                  <?php } ?>
		  </select>
		 </td>
          <td class="left" style="background: <?php echo $libg; ?>;"><select style="width: 140px;" name="mcatmod_item[<?php echo $item_row; ?>][category_id]">
		          <?php foreach ($categories as $category ){ ?>
		          <?php if ($category['category_id'] == $item['category_id']) { ?>
		          <option value="<?php echo $category['category_id']; ?>" selected="selected"><?php echo $category['name'] ?></option>
		          <?php } else { ?>
                  <option value="<?php echo $category['category_id']; ?>"><?php echo $category['name'] ?></option>
                  <?php } ?>
                  <?php } ?>
          </select>
		  
		  </td>
          <td class="left" style="background: <?php echo $libg; ?>;"><select name="mcatmod_item[<?php echo $item_row; ?>][information_id]">
		          <?php foreach ($informations as $information){ ?>
		          <?php if ($information['information_id'] == $item['information_id']) { ?>
		          <option value="<?php echo $information['information_id']; ?>" selected="selected"><?php echo $information['name'] ?></option>
		          <?php } else { ?>
                  <option value="<?php echo $information['information_id']; ?>"><?php echo $information['name'] ?></option>
                  <?php } ?>
                  <?php } ?>
          </select></td>
          <td class="left" style="background: <?php echo $libg; ?>; text-align: right;">
			<?php foreach ($languages as $language) { ?>
              <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $custom_name; ?>
			  <input type="text" name="mcatmod_item[<?php echo $item_row; ?>][customname][<?php echo $language['language_id']; ?>]" value="<?php echo isset($item['customname'][$language['language_id']]) ? $item['customname'][$language['language_id']] : ''; ?>" /><br /><br />
			  <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $custom_url; ?>
			  <input type="text" name="mcatmod_item[<?php echo $item_row; ?>][customurl][<?php echo $language['language_id']; ?>]" value="<?php echo isset($item['customurl'][$language['language_id']]) ? $item['customurl'][$language['language_id']] : ''; ?>" /><br /><br />
            <?php } ?>
		   </td>
              <td class="right" style="background: <?php echo $libg; ?>;">
			  <?php foreach ($languages as $language) { ?>
			  <div style="padding: 3px; background: #eee; border: 1px solid #ddd; margin-bottom: 2px; text-align: left; font-weight: bold;"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?><br />
			 URL: <input type="text" name="mcatmod_item[<?php echo $item_row; ?>][addurl][<?php echo $language['language_id']; ?>]" value="<?php echo isset($item['addurl'][$language['language_id']]) ? $item['addurl'][$language['language_id']] : ''; ?>" /><br />
			  <div class="image"><img style="float: left; margin-right: 7px; width: 50px; height: 50px;" src="<?php if ($item['image'][$language['language_id']] && strlen($item['image'][$language['language_id']]) > 3) { ?><?php echo $this->model_tool_image->resize($item['image'][$language['language_id']],50,50); ?><?php } else { ?><?php echo $no_image; ?><?php } ?>" alt="" id="add_<?php echo $item_row; ?><?php echo $language['language_id']; ?>" />
                  <input type="hidden" name="mcatmod_item[<?php echo $item_row; ?>][image][<?php echo $language['language_id']; ?>]" value="<?php echo $item['image'][$language['language_id']]; ?>" id="image_<?php echo $item_row; ?><?php echo $language['language_id']; ?>" />
                  <a class="butonas" onclick="image_upload('image_<?php echo $item_row; ?><?php echo $language['language_id']; ?>', 'add_<?php echo $item_row; ?><?php echo $language['language_id']; ?>');"><?php echo $text_browse; ?></a><br /><br /><a class="butonasc" onclick="$('#add_<?php echo $item_row; ?><?php echo $language['language_id']; ?>').attr('src', '<?php echo $no_image; ?>'); $('#image_<?php echo $item_row; ?><?php echo $language['language_id']; ?>').attr('value', '');"><?php echo $text_clear; ?></a>
				</div>
				</div>
			  <?php } ?>
			  </td>
              <td class="left" style="background: <?php echo $libg; ?>;"><a onclick="$('#item-row<?php echo $item_row; ?>').remove();" class="button"><?php echo $button_remove; ?></a></td>
            </tr>
          </tbody>
          <?php $item_row++; ?>
          <?php } ?>
          <tfoot>
            <tr>
              <td colspan="5"></td>
              <td class="left"><a onclick="additem();" class="button"><?php echo $button_add_item; ?></a></td>
            </tr>
          </tfoot>
        </table>
		</div>
		<div id="tab-settings">
		<table class="sets">
		 <tr>
		  <td>
		  <?php foreach ($languages as $language) { ?>
	      <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $entry_modname; ?>
	      <input type="text" name="mcatmod_title[<?php echo $language['language_id']; ?>]" value="<?php echo isset($mcatmod_title[$language['language_id']]) ? $mcatmod_title[$language['language_id']] : ''; ?>" /><br />
         <?php } ?>
		  </td>
		 </tr>
		 <tr>
		  <td>
	      <?php echo $entry_image_size; ?>
	      <input type="text" name="mcatmod_image_width" value="<?php echo $mcatmod_image_width; ?>" size="3" />
		  <input type="text" name="mcatmod_image_height" value="<?php echo $mcatmod_image_height; ?>" size="3" />
		  </br />
		  </td>
		 </tr>
		  <tr>
		  <td>
	      <?php echo $entry_show_description; ?>
	      <select name="mcatmod_show_description">
			      <?php if ($mcatmod_show_description == 'no') { ?>
                  <option value="no" selected="selected"><?php echo $text_no; ?></option>
                  <?php } else { ?>
                  <option value="no"><?php echo $text_no; ?></option>
                  <?php } ?>
				  <?php if ($mcatmod_show_description == 'yes') { ?>
                  <option value="yes" selected="selected"><?php echo $text_yes; ?></option>
                  <?php } else { ?>
                  <option value="yes"><?php echo $text_yes; ?></option>
                  <?php } ?>
		  </select>		  
		  </br />
		  </td>
		 </tr>
	     <tr>
	     <td>
		 <?php foreach ($languages as $language) { ?>
	      <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $more_name; ?>
	      <input type="text" name="mcatmod_more_title[<?php echo $language['language_id']; ?>]" value="<?php echo isset($mcatmod_more_title[$language['language_id']]) ? $mcatmod_more_title[$language['language_id']] : ''; ?>" /><br /><br />
         <?php } ?>
	     <div class="scrollbox">
                  <?php $class = 'odd'; ?>
                  <?php foreach ($categories as $kat) { ?>
                  <?php $class = ($class == 'even' ? 'odd' : 'even'); ?>
                  <div class="<?php echo $class; ?>">
                    <?php if (in_array($kat['category_id'], $mcatmod_more)) { ?>
                    <input type="checkbox" name="mcatmod_more[]" value="<?php echo $kat['category_id']; ?>" checked="checked" />
                    <?php echo $kat['name']; ?>
                    <?php } else { ?>
                    <input type="checkbox" name="mcatmod_more[]" value="<?php echo $kat['category_id']; ?>" />
                    <?php echo $kat['name']; ?>
                    <?php } ?>
                  </div>
                  <?php } ?>
          </div>
          <a onclick="$(this).parent().find(':checkbox').attr('checked', true);"><?php echo $text_select_all; ?></a> / <a onclick="$(this).parent().find(':checkbox').attr('checked', false);"><?php echo $text_unselect_all; ?></a>
		</td>
	   </tr>
	  </table>
	  </div>
      </form>
    </div>
  </div>
</div>
<script type="text/javascript"><!--
var module_row = <?php echo $module_row; ?>;

function addModule() {	
	html  = '<tbody id="module-row' + module_row + '">';
	html += '  <tr>';
	html += '    <td class="left"><select name="mcatmod_module[' + module_row + '][theme]">';
	html += '      <option value="default">Default</option>';
	html += '      <option value="block">Default Blocks</option>';
	html += '      <option value="dark">Dark</option>';
	html += '      <option value="blue">Blue</option>';
	html += '      <option value="green">Green</option>';
	html += '      <option value="red">Red</option>';
	html += '    </select></td>';
	html += '    <td class="left"><select name="mcatmod_module[' + module_row + '][layout_id]">';
	<?php foreach ($layouts as $layout) { ?>
	html += '      <option value="<?php echo $layout['layout_id']; ?>"><?php echo addslashes($layout['name']); ?></option>';
	<?php } ?>
	html += '    </select></td>';
	html += '    <td class="left"><select name="mcatmod_module[' + module_row + '][position]">';
	html += '      <option value="column_left"><?php echo $text_column_left; ?></option>';
	html += '      <option value="column_right"><?php echo $text_column_right; ?></option>';
	html += '    </select></td>';
	html += '    <td class="left"><select name="mcatmod_module[' + module_row + '][status]">';
    html += '      <option value="1" selected="selected"><?php echo $text_enabled; ?></option>';
    html += '      <option value="0"><?php echo $text_disabled; ?></option>';
    html += '    </select></td>';
	html += '    <td class="right"><input type="text" name="mcatmod_module[' + module_row + '][sort_order]" value="" size="3" /></td>';
	html += '    <td class="left"><a onclick="$(\'#module-row' + module_row + '\').remove();" class="button"><?php echo $button_remove; ?></a></td>';
	html += '  </tr>';
	html += '</tbody>';
	
	$('#module tfoot').before(html);
	
	module_row++;
}
//--></script> 
<script type="text/javascript"><!--
var item_row = <?php echo $item_row; ?>;

function additem() {	
	html  = '<tbody id="item-row' + item_row + '">';
	html += '  <tr>';
	html += '    <td class="left"><select name="mcatmod_item[' + item_row + '][type]">';
	html += '      <option value="cat"><?php echo $type_cat; ?></option>';
	html += '      <option value="infol"><?php echo $type_infol; ?></option>';
	html += '      <option value="infod"><?php echo $type_infod; ?></option>';
	html += '      <option value="custom"><?php echo $type_custom; ?></option>';
	html += '      <option value="more"><?php echo $type_more; ?></option>';
	html += '      <option value="mand"><?php echo $type_mand; ?></option>';
	html += '    </select><br /><br /> <b><?php echo $text_sview; ?> </b><select name="mcatmod_item[' + item_row + '][view]"><option value="0" selected="selected"><?php echo $text_slist; ?></option><option value="1"><?php echo $text_sgrid; ?></option></select></td>';
	html += '    <td class="left"><select style="width: 140px;" name="mcatmod_item[' + item_row + '][category_id]">';
	<?php foreach ($categories as $category ){ ?>
	html += '      <option value="<?php echo $category['category_id']; ?>"><?php echo str_replace("'", "", $category['name']); ?></option>';
	<?php } ?>       
	html += '    </select></td>';
	html += '    <td class="left"><select name="mcatmod_item[' + item_row + '][information_id]">';
	<?php foreach ($informations as $information ){ ?>
	html += '      <option value="<?php echo $information['information_id']; ?>"><?php echo str_replace("'", "", $information['name']); ?></option>';
	<?php } ?>       
	html += '    </select></td>';
	html += '    <td class="left">';
    <?php foreach ($languages as $language) { ?>
	html += '     <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $custom_name; ?> <input type="text" name="mcatmod_item[' + item_row + '][customname][<?php echo $language['language_id']; ?>]" value="" /><br /><br /> <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $custom_url; ?> <input type="text" name="mcatmod_item[' + item_row + '][customurl][<?php echo $language['language_id']; ?>]" value="" /><br /><br />';
	<?php } ?>
    html += '    </td>';
	html += '    <td class="left">';
	<?php foreach ($languages as $language) { ?>
	html +=	'		<div style="padding: 3px; background: #eee; border: 1px solid #ddd; margin-bottom: 2px; text-align: left; font-weight: bold;"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?><br />';
	html += '     URL: <input type="text" name="mcatmod_item[' + item_row + '][addurl][<?php echo $language['language_id']; ?>]" value="" /><br />';
	html +=	'		<div class="image"><img style="float: left; margin-right: 7px; width: 50px; height: 50px;"  src="<?php echo $no_image; ?>" alt="" id="add_' + item_row + '<?php echo $language['language_id']; ?>" />';
    html += '           <input type="hidden" name="mcatmod_item[' + item_row + '][image][<?php echo $language['language_id']; ?>]" value="" id="image_' + item_row + '<?php echo $language['language_id']; ?>" /> ';
    html += '           <a class="butonas" onclick="image_upload(\'image_' + item_row + '<?php echo $language['language_id']; ?>\', \'add_' + item_row + '<?php echo $language['language_id']; ?>\');"><?php echo $text_browse; ?></a><br /><br /><a class="butonasc" onclick="$(\'#add_' + item_row + '<?php echo $language['language_id']; ?>\').attr(\'src\', \'<?php echo $no_image; ?>\'); $(\'#image_' + item_row + '<?php echo $language['language_id']; ?>\').attr(\'value\', \'\');"><?php echo $text_clear; ?></a> ';
	<?php } ?>
	html += '		</div></div></td> ';
	html += '    <td class="left"><a onclick="$(\'#item-row' + item_row + '\').remove();" class="button"><?php echo $button_remove; ?></a></td>';
	html += '  </tr>';
	html += '</tbody>';
	
	$('#item tfoot').before(html);
	
	item_row++;
}
//--></script> 
<script type="text/javascript"><!--
function image_upload(field, thumb) {
	$('#dialog').remove();
	
	$('#content').prepend('<div id="dialog" style="padding: 3px 0px 0px 0px;"><iframe src="index.php?route=common/filemanager&token=<?php echo $token; ?>&field=' + encodeURIComponent(field) + '" style="padding:0; margin: 0; display: block; width: 100%; height: 100%;" frameborder="no" scrolling="auto"></iframe></div>');
	
	$('#dialog').dialog({
		title: '<?php echo $text_image_manager; ?>',
		close: function (event, ui) {
			if ($('#' + field).attr('value')) {
				$.ajax({
					url: 'index.php?route=common/filemanager/image&token=<?php echo $token; ?>&image=' + encodeURIComponent($('#' + field).attr('value')),
					dataType: 'text',
					success: function(text) {
						$('#' + thumb).replaceWith('<img style="float: left; margin-right: 7px; width: 50px; height: 50px;" src="' + text + '" alt="" id="' + thumb + '" />');
					}
				});
			}
		},	
		bgiframe: false,
		width: 800,
		height: 400,
		resizable: false,
		modal: false
	});
};
//--></script> 
<script type="text/javascript"><!--
$('#tabs a').tabs(); 
//--></script>
<?php echo $footer; ?>