<?php
class ControllerModulemcatmod extends Controller {
	private $error = array(); 
	
	public function index() {   
		$this->language->load('module/mcatmod');

		$this->document->setTitle($this->language->get('heading_title'));
		
		$this->load->model('setting/setting');
		$this->load->model('catalog/information');
		$this->load->model('tool/image');
				
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && ($this->validate())) {
			$this->model_setting_setting->editSetting('mcatmod', $this->request->post);		
					
			$this->session->data['success'] = $this->language->get('text_success');
						
			$this->redirect($this->url->link('module/mcatmod', 'token=' . $this->session->data['token'], 'SSL'));
		}
				
		$this->data['heading_title'] = $this->language->get('heading_title');

		$this->data['text_enabled'] = $this->language->get('text_enabled');
		$this->data['text_disabled'] = $this->language->get('text_disabled');
		$this->data['text_content_top'] = $this->language->get('text_content_top');
		$this->data['text_content_bottom'] = $this->language->get('text_content_bottom');		
		$this->data['text_column_left'] = $this->language->get('text_column_left');
		$this->data['text_column_right'] = $this->language->get('text_column_right');
		$this->data['text_wall'] = $this->language->get('text_wall');
		$this->data['text_image'] = $this->language->get('text_image');
		$this->data['text_or'] = $this->language->get('text_or');
		$this->data['text_no'] = $this->language->get('text_no');
		$this->data['text_yes'] = $this->language->get('text_yes');
		$this->data['text_browse'] = $this->language->get('text_browse');
		$this->data['text_clear'] = $this->language->get('text_clear');
		$this->data['text_image_manager'] = $this->language->get('text_image_manager');
		$this->data['text_unselect_all'] = $this->language->get('text_unselect_all');
		$this->data['text_select_all'] = $this->language->get('text_select_all');
		$this->data['entry_layout'] = $this->language->get('entry_layout');
		$this->data['entry_add'] = $this->language->get('entry_add');
		$this->data['text_slist'] = $this->language->get('text_slist');
		$this->data['text_sgrid'] = $this->language->get('text_sgrid');
		$this->data['text_sview'] = $this->language->get('text_sview');
		$this->data['entry_type'] = $this->language->get('entry_type');
		$this->data['entry_category'] = $this->language->get('entry_category');
		$this->data['entry_custom'] = $this->language->get('entry_custom');
		$this->data['entry_information'] = $this->language->get('entry_information');
		$this->data['custom_name'] = $this->language->get('custom_name');
		$this->data['custom_url'] = $this->language->get('custom_url');
		$this->data['type_cat'] = $this->language->get('type_cat');
		$this->data['type_infol'] = $this->language->get('type_infol');
		$this->data['type_mand'] = $this->language->get('type_mand');
		$this->data['type_infod'] = $this->language->get('type_infod');
		$this->data['type_custom'] = $this->language->get('type_custom');
		$this->data['type_more'] = $this->language->get('type_more');
		$this->data['entry_position'] = $this->language->get('entry_position');
		$this->data['text_list'] = $this->language->get('text_list');
		$this->data['text_car'] = $this->language->get('text_car');
		$this->data['text_3dcar'] = $this->language->get('text_3dcar');
		$this->data['text_sel'] = $this->language->get('text_sel');
		$this->data['text_unselect_all'] = $this->language->get('text_unselect_all');
		$this->data['text_select_all'] = $this->language->get('text_select_all');
		$this->data['entry_3dpstyle'] = $this->language->get('entry_3dpstyle');
		$this->data['entry_limit'] = $this->language->get('entry_limit');
		$this->data['entry_display'] = $this->language->get('entry_disply');
		$this->data['entry_pstyle'] = $this->language->get('entry_pstyle');
		$this->data['entry_image'] = $this->language->get('entry_image');
		$this->data['entry_category'] = $this->language->get('entry_category');
		$this->data['entry_layout'] = $this->language->get('entry_layout');
		$this->data['entry_position'] = $this->language->get('entry_position');
		$this->data['entry_status'] = $this->language->get('entry_status');
		$this->data['entry_mtitle'] = $this->language->get('entry_mtitle');
		$this->data['entry_feat'] = $this->language->get('entry_feat');
		$this->data['entry_sort_order'] = $this->language->get('entry_sort_order');
		$this->data['entry_modname'] = $this->language->get('entry_modname');
		$this->data['entry_show_description'] = $this->language->get('entry_show_description');
		$this->data['entry_theme'] = $this->language->get('entry_theme');
		$this->data['entry_image_size'] = $this->language->get('entry_image_size');
		
		$this->data['button_save'] = $this->language->get('button_save');
		$this->data['button_cancel'] = $this->language->get('button_cancel');
		$this->data['button_add_module'] = $this->language->get('button_add_module');
		$this->data['button_add_item'] = $this->language->get('button_add_item');
		$this->data['button_remove'] = $this->language->get('button_remove');
		$this->data['more_name'] = $this->language->get('more_name');
		$this->data['more_status'] = $this->language->get('more_status');
		$this->data['tab_module'] = $this->language->get('tab_module');
		$this->data['tab_add'] = $this->language->get('tab_add');
		$this->data['tab_settings'] = $this->language->get('tab_settings');
		
		$this->data['token'] = $this->session->data['token'];
		
 		if (isset($this->error['warning'])) {
			$this->data['error_warning'] = $this->error['warning'];
		} else {
			$this->data['error_warning'] = '';
		}
		if (isset($this->session->data['success'])) {
			$this->data['success'] = $this->session->data['success'];
		
			unset($this->session->data['success']);
		} else {
			$this->data['success'] = '';
		}
		if (isset($this->error['image'])) {
			$this->data['error_image'] = $this->error['image'];
		} else {
			$this->data['error_image'] = array();
		}

  		$this->data['breadcrumbs'] = array();

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => false
   		);

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_module'),
			'href'      => $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);
		
   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('module/mcatmod', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);
		
		$this->data['action'] = $this->url->link('module/mcatmod', 'token=' . $this->session->data['token'], 'SSL');
		
		$this->data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');
		
		$this->data['no_image'] = $this->model_tool_image->resize('no_image.jpg', 50, 50);
		$this->data['modules'] = array();
		$this->data['items'] = array();
		$this->data['categories'] = array();
		$this->data['informations'] = array();
		$this->load->model('localisation/language');
		$this->data['languages'] = $this->model_localisation_language->getLanguages();
		
		$this->load->model('catalog/category');
		
		$this->data['categories'] = $this->model_catalog_category->getCategories(0);	
		
		if (isset($this->request->post['mcatmod_module'])) {
			$this->data['modules'] = $this->request->post['mcatmod_module'];
		} elseif ($this->config->get('mcatmod_module')) { 
			$this->data['modules'] = $this->config->get('mcatmod_module');
		}
		if (isset($this->request->post['mcatmod_item'])) {
			$this->data['items'] = $this->request->post['mcatmod_item'];
		} elseif ($this->config->get('mcatmod_item')) { 
			$this->data['items'] = $this->config->get('mcatmod_item');
		}
		if (isset($this->request->post['mcatmod_more'])) {
			$this->data['mcatmod_more'] = $this->request->post['mcatmod_more'];
		} elseif ($this->config->get('mcatmod_more')) {
			$this->data['mcatmod_more'] = $this->config->get('mcatmod_more');
		} else {
			$this->data['mcatmod_more'] = array();
		}
		if (isset($this->request->post['mcatmod_more_title'])) {
			$this->data['mcatmod_more_title'] = $this->request->post['mcatmod_more_title'];
		} else {
			$this->data['mcatmod_more_title'] = $this->config->get('mcatmod_more_title');
		}
		if (isset($this->request->post['mcatmod_title'])) {
			$this->data['mcatmod_title'] = $this->request->post['mcatmod_title'];
		} else {
			$this->data['mcatmod_title'] = $this->config->get('mcatmod_title');
		}
		if (isset($this->request->post['mcatmod_theme'])) {
			$this->data['mcatmod_theme'] = $this->request->post['mcatmod_theme'];
		} elseif ($this->config->get('mcatmod_theme')) {
			$this->data['mcatmod_theme'] = $this->config->get('mcatmod_theme');
		} else {
			$this->data['mcatmod_theme'] = '';
		}
		if (isset($this->request->post['mcatmod_show_description'])) {
			$this->data['mcatmod_show_description'] = $this->request->post['mcatmod_show_description'];
		} elseif ($this->config->get('mcatmod_show_description')) {
			$this->data['mcatmod_show_description'] = $this->config->get('mcatmod_show_description');
		} else {
			$this->data['mcatmod_show_description'] = 'no';
		}
		if (isset($this->request->post['mcatmod_image_width'])) {
			$this->data['mcatmod_image_width'] = $this->request->post['mcatmod_image_width'];
		} elseif ($this->config->get('mcatmod_image_width')) {
			$this->data['mcatmod_image_width'] = $this->config->get('mcatmod_image_width');
		} else {
			$this->data['mcatmod_image_width'] = 120;
		}
		if (isset($this->request->post['mcatmod_image_height'])) {
			$this->data['mcatmod_image_height'] = $this->request->post['mcatmod_image_height'];
		} elseif ($this->config->get('mcatmod_image_height')) {
			$this->data['mcatmod_image_height'] = $this->config->get('mcatmod_image_height');
		} else {
			$this->data['mcatmod_image_height'] = 120;
		}
		
		$infos = $this->model_catalog_information->getInformations();
		
		foreach ($infos as $info) {
							
			$this->data['informations'][] = array(
				'information_id' => $info['information_id'],
				'name'           => $info['title']
			);
		}
		
		
		$this->load->model('design/layout');
		
		$this->data['layouts'] = $this->model_design_layout->getLayouts();
				
		$this->template = 'module/mcatmod.tpl';
		$this->children = array(
			'common/header',	
			'common/footer'	
		);
		
		$this->response->setOutput($this->render());
	}
	
	private function validate() {
		if (!$this->user->hasPermission('modify', 'module/mcatmod')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}	
		if (!$this->error) {
			return TRUE;
		} else {
			return FALSE;
		}	
	}
}
?>