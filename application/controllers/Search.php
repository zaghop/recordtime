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
      $this->load->helper('form');

      $data['is_home'] = false;
      $data['title'] = get_option('companyname');

      // $data['searches'] = array();

      // $data['results'] = array();

      $search = NULL;
      // $data['results'] = NULL;

      //
      // if ($this->input->post('search_producers')) {
      //
      //   if ($search) {
      //     $data['results'] = $this->search_model->search($search);
      //
      //     // $this->output
      //     // ->set_content_type('application/json')
      //     // ->set_output(json_encode(array('foo' => 'bar')));
      //
      //     //add the header here
      //     header('Content-Type: application/json');
      //     echo json_encode( $this->search_model->search($search) );
      //   };
      // };


      // $this->db->where('tbl_user.id', $this->session->userdata['userid']);
      // // $data['user'] = $this->session->userdata['city'];
      //
      // $user = $this->db->get();
      //
      // $data['user'] = $user['city'];

      // $user_id = $data['user_id'];

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
