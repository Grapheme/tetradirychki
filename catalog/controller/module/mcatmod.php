<?php  
class ControllerModulemcatmod extends Controller {
	protected function index($setting) {
	static $module = 0;
	
		$this->language->load('module/category');
		
		$modtitles = $this->config->get('mcatmod_title');
		
		if ($modtitles[$this->config->get('config_language_id')]) {
		
		$this->data['heading_title'] = $modtitles[$this->config->get('config_language_id')];
		
		} else {
		
    	$this->data['heading_title'] = $this->language->get('heading_title');
		
		}
		
		$this->data['desc_show'] = $this->config->get('mcatmod_show_description');
		
		$this->load->model('catalog/category');
		
		$this->load->model('tool/image');
		
		$this->load->model('catalog/information');
		
		$this->load->model('catalog/manufacturer');
		
		$this->language->load('common/footer');
		
		$this->document->addStyle('catalog/view/theme/commerca/mcatmod/mcatmod.css');
		
		$theme = 'catalog/view/theme/commerca/mcatmod/' . $setting['theme'] . '.css';
		
		if ($setting['theme'] != 'default') {
		
		$this->document->addStyle($theme);
		
		}
		
		$this->document->addScript('catalog/view/theme/commerca/mcatmod/jquery.hoverIntent.minified.js');
		
		if (isset($this->request->get['path'])) {
			$parts = explode('_', (string)$this->request->get['path']);
		} else {
			$parts = array();
		}
		
		if (isset($parts[0])) {
			$this->data['category_id'] = $parts[0];
		} else {
			$this->data['category_id'] = 0;
		}
		
		if (isset($parts[1])) {
			$this->data['child_id'] = $parts[1];
		} else {
			$this->data['child_id'] = 0;
		}
		if (isset($parts[2])) {
			$this->data['gchild_id'] = $parts[2];
		} else {
			$this->data['gchild_id'] = 0;
		}
		
		$this->data['categories'] = array();
		
		
		$items = $this->config->get('mcatmod_item');
		
		if ($items) {
		
		 foreach ($items as $item) {
		 
		  $item_name = '';
		 
		  if ($item['type'] == 'cat') {
		 
           $katid = $item['category_id']; 
		 
           $kat_info = $this->model_catalog_category->getCategory($katid);	
		   
		    if ($kat_info) {
			
		     $item_name = $kat_info['name'];
			 
			 $item_view = $item['view'];
			 
			 $item_id = $kat_info['category_id'];
			 
			 $item_url = $this->url->link('product/category', 'path=' . $item_id);
			 
			 $firstkids_data = array();
			
			 $firstkids = $this->model_catalog_category->getCategories($item_id);
			 
			 foreach ($firstkids as $firstkid) {
			 
			  $secondkids_data = array();
			  
			  if ($firstkid['image']) {
				$image = $this->model_tool_image->resize($firstkid['image'], $this->config->get('mcatmod_image_width'), $this->config->get('mcatmod_image_height'));
			  } else {
				$image = $this->model_tool_image->resize('no_image.jpg', $this->config->get('mcatmod_image_width'), $this->config->get('mcatmod_image_height'));
			  }
			
			  $secondkids = $this->model_catalog_category->getCategories($firstkid['category_id']);
			  
			  foreach ($secondkids as $secondkid) {
			  
			   $secondkids_data[] = array(
						'category_id' => $secondkid['category_id'],
						'name'        => $secondkid['name'],
						'href'        => $this->url->link('product/category', 'path=' . $item_id . '_' . $firstkid['category_id'] . '_' . $secondkid['category_id'])	
					);	
			  }
			   
			  $firstkids_data[] = array(
						'category_id' => $firstkid['category_id'],
						'name'        => $firstkid['name'],
						'thumb'       => $image,
						'gchildren'   => $secondkids_data,
						'href'        => $this->url->link('product/category', 'path=' . $item_id . '_' . $firstkid['category_id'])	
					);						
			 }
			 
			 if ($kat_info['image']) {
				$item_image = $this->model_tool_image->resize($kat_info['image'], 120, 120);
			 } else {
				$item_image = $this->model_tool_image->resize('no_image.jpg', 120, 120);
			 }
		     if ($kat_info['description']) {
			    $item_description = substr(strip_tags(html_entity_decode($kat_info['description'], ENT_QUOTES, 'UTF-8')), 0, 500) . '..';
			 } else {
			    $item_description = false;
			 }
		   
		    }
		
		  } elseif ($item['type'] == 'more') {
		     
			 $itm = $this->config->get('mcatmod_more_title');
			 
			 $item_name = $itm[$this->config->get('config_language_id')];
			 
			 $item_view = $item['view'];
			 
			 $item_id = '';
			 
			 $item_url = '';
			 
			 $firstkids_data = array();
			
			 $firstkids =  $this->config->get('mcatmod_more');
			 
			 foreach ($firstkids as $kid) {
			 
			 $firstkid = $this->model_catalog_category->getCategory($kid);
			 
			  $secondkids_data = array();
			
			  if ($firstkid['image']) {
				$image = $this->model_tool_image->resize($firstkid['image'],  $this->config->get('mcatmod_image_width'), $this->config->get('mcatmod_image_height'));
              } else {
				$image = $this->model_tool_image->resize('no_image.jpg',  $this->config->get('mcatmod_image_width'), $this->config->get('mcatmod_image_height'));
			  }
			
			  $secondkids = $this->model_catalog_category->getCategories($firstkid['category_id']);
			  
			  foreach ($secondkids as $secondkid) {
			  
			   $secondkids_data[] = array(
						'category_id' => $secondkid['category_id'],
						'name'        => $secondkid['name'],
						'href'        => $this->url->link('product/category', 'path=' . $item_id . '_' . $firstkid['category_id'] . '_' . $secondkid['category_id'])	
					);	
			  }
			   
			  $firstkids_data[] = array(
						'category_id' => $firstkid['category_id'],
						'name'        => $firstkid['name'],
						'thumb'       => $image,
						'gchildren'   => $secondkids_data,
						'href'        => $this->url->link('product/category', 'path=' . $item_id . '_' . $firstkid['category_id'])	
					);						
			 }
			 
			 $item_image = false;
			 
			 $item_description = false;
		   
		
		  } elseif ($item['type'] == 'infol') {
		  
		   $info_id = $item['information_id']; 
		   
		   $item_view = '';
		 
           $info_info = $this->model_catalog_information->getInformation($info_id);
		   
		   if ($info_info) {
		    
			 $item_name = $info_info['title'];
			 
			 $item_id = $info_info['information_id'];
			 
			 $item_url = $this->url->link('information/information', 'information_id=' . $item_id);
			 
			 $firstkids_data = array();
			 
			 $item_image = false;
			 
			 $item_description = false;
			
		   }
			
			
		  } elseif ($item['type'] == 'infod') {
		  
		     $item_name = $this->language->get('text_information');
			 
			 $item_view = '';
			 
			 $item_id = '';
			 
			 $item_url = '';
			 
			 $firstkids_data = array();
			 
			 foreach ($this->model_catalog_information->getInformations() as $infolinks) {
			 
				$firstkids_data[] = array(
						'category_id' => false,
						'name'        => '<b>' . $infolinks['title'] . '</b><br /><span style="color: #999; font-size: 11px;">' . substr(strip_tags(html_entity_decode($infolinks['description'], ENT_QUOTES, 'UTF-8')), 0, 200) . '..</span>',
						'gchildren'   => false,
						'href'        => $this->url->link('information/information', 'information_id=' . $infolinks['information_id'])
					);
					
    	     }
			 
			 $item_image = false;
			 
			 $item_description = false;
		
		  } elseif ($item['type'] == 'mand') {
		  
		     $item_name = $this->language->get('text_manufacturer');
			 
			 $item_view = $item['view'];
			 
			 $item_id = '';
			 
			 $item_url = $this->url->link('product/manufacturer');
			 
			 $firstkids_data = array();
			 
			 foreach ($this->model_catalog_manufacturer->getManufacturers() as $brandlinks) {
			 
			     if ($brandlinks['image']) {
				  $image = $this->model_tool_image->resize($brandlinks['image'],  $this->config->get('mcatmod_image_width'), $this->config->get('mcatmod_image_height'));
                 } else {
			 	  $image = $this->model_tool_image->resize('no_image.jpg',  $this->config->get('mcatmod_image_width'), $this->config->get('mcatmod_image_height'));
			     }
			  
				$firstkids_data[] = array(
						'category_id' => false,
						'name'        => $brandlinks['name'],
						'thumb'       => $image,
						'gchildren'   => false,
						'href'        => $this->url->link('product/manufacturer/info', 'manufacturer_id=' . $brandlinks['manufacturer_id'])
					);
					
    	     }
			 
			 $item_image = false;
			 
			 $item_description = false;
		
		  } else {
		  
		     $item_name = $item['customname'][$this->config->get('config_language_id')];
			 
			 $item_view = '';
			 
			 $item_id = '';
			 
			 $item_url = $item['customurl'][$this->config->get('config_language_id')];
			 
			 $firstkids_data = array();
			 
			 $item_image = false;
			 
			 $item_description = false;
		  
		  }
		  
		  $item_addurl = $item['addurl'][$this->config->get('config_language_id')];
		  
		  $item_add = $item['image'][$this->config->get('config_language_id')];
		  
		  if ($item_name) {
		  
		  $this->data['categories'][] = array(
				'name'        => $item_name,
				'id'          => $item_id,
				'children'    => $firstkids_data,
				'image'       => $item_image,
				'description' => $item_description,
				'view'        => $item_view,
				'add'         => $item_add,
				'addurl'      => $item_addurl,
				'href'        => $item_url
			);
			
		  }	
		  
		 }
		}
		
		$this->data['module'] = $module++; 
		
			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/mcatmod.tpl')) {
				$this->template = $this->config->get('config_template') . '/template/module/mcatmod.tpl';
			} else {
				$this->template = 'default/template/module/mcatmod.tpl';
			}
		
		$this->render();
  	}	
}
?>