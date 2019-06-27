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

      $this->load->model('search_model');

      $this->load->model('user_model','user');

  }

  public function index()
  {
      if (!$this->session->user_logged_in) {
        redirect(site_url('/index.php/user/login'));
      }

      $this->load->helper('form');

      $data['is_home'] = false;
      $data['title'] = get_option('companyname');

      $search = NULL;

      $user_id = $this->session->userdata['userid'];

			$this->db->select('tbl_user.firstname,tbl_user.lastname,tbl_user.state,tbl_user.city');
			$this->db->from('tbl_user');

      $this->db->where('tbl_user.id', $user_id);
      $query=$this->db->get();

      $data['user'] = $query->result_array();

      $this->data    = $data;
      $this->view    = 'search';
      $this->layout();
  }

  public function producers()
  {

      parse_str($_SERVER['QUERY_STRING'], $_GET);

      $results = $this->search_model->search($_GET['search']);

      header('Content-Type: application/json');
      // echo json_encode( "HELLO THAR" );
      echo json_encode($results);

  }
}
