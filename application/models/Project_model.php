<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Project_model extends CI_Model {

    public function __construct() {
        parent::__construct();
        $this->load->library('session');
        $this->load->library('upload');
        $this->load->database();
    }

 public function dashboard() {
   // TODO: Obviously needs to be more finely grained + auth
    $projects = $this->db->query("SELECT * FROM tblprojects");

    if ($projects->num_rows() < 1) {
      return false;
    }
    else {
      return $projects->result_array();
    }
 }

 public function projects_add($data){
        $proj_name = $data['name'];
        $this->db->where("name", $proj_name);
        $query = $this->db->get("tbl_projects");
         if ($query->num_rows() > 0) {
            return false;
        }
        else {
            unset($data['submit']);
            $criteria = implode(',', $data['criteria']);
            $proj_data  = array(
                'name' => $data['name'],
                'budget' => $data['budget'],
                'songs' => $data['songs'],
                'complete_time' => $data['complete_time'],
                'criteria' => $criteria,
                'user_id' => $this->session->userdata['userid']
             );
            $this->db->insert('tbl_projects', $proj_data);
            $lastId = $this->db->insert_id();
            if(isset($data['doc_name']) && $data['doc_name'] != ''){
                $proj_doc_data = array(
                    'doc_name' => $data['doc_name'],
                    'project_id' => $lastId
                 );
            }
            $this->db->insert('tbl_project_docs', $proj_doc_data);
            return $lastId;

        }
 }
 public function login_user($data){
        // print_r($data);die;
        $data = array(
            'email' => $data['email'],
            'password' => $data['password']
        );
        $query = $this->db->get_where('tbl_user', $data);
        if ($query->num_rows() > 0) {
            foreach ($query->result() as $rows) {
                //add all data to session
                $newdata = array(
                    'userid' => $rows->id,
                    'email'     => $rows->email,
                    'user_logged_in' => TRUE
                );
            }
            $this->session->set_userdata($newdata);
            return true;
        }
        else{
            return false;
        }

    }
}
