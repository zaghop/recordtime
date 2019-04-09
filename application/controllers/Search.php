<?php
defined('BASEPATH') or exit('No direct script access allowed');
class Search extends Public_controller
{
  public function __construct()
  {
      parent::__construct();
      // $this->form_validation->set_error_delimiters('<p class="text-danger alert-validation">', '</p>');;;
      do_action('after_website_init');

      $this->load->library('session');
      $this->load->library('form_validation');
  }

  public function index()
  {
      $data['is_home'] = false;
      $data['title'] = get_option('companyname');
      $this->data    = $data;
      $this->view    = 'search';
      $this->layout();
  }
}
