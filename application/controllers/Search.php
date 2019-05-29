<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Search extends Public_controller
{
  public function __construct()
  {
      parent::__construct();
      // $this->form_validation->set_error_delimiters('<p class="text-danger alert-validation">', '</p>');;;
      do_action('after_website_init');

      $this->load->helper('form');

      $this->load->library('session');
      $this->load->library('form_validation');

      // search model?
      $this->load->model('project_model','project');
      $this->load->model('search_model');

  }

  public function index()
  {
      $this->load->helper('form');

      $data['is_home'] = false;
      $data['title'] = get_option('companyname');

      $data['searches'] = array();

      $data['results'] = array();

      $search = NULL;
      $data['results'] = NULL;


      $search  = $this->input->post('search');

      if ($search) {
        $data['results'] = $this->search_model->search($search);

      };




      $this->data    = $data;
      $this->view    = 'search';
      $this->layout();
  }
}
