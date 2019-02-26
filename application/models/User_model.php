<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class User_model extends CI_Model {

    public function __construct() {
        parent::__construct();
        $this->load->library('session');

    }

 public function artists_signup($data){
    // $this->db->insert('ef_userinvestorprofile', $data);
    // return true;
        $email = $data['email'];
        $this->db->where("email", $email);
        $query = $this->db->get("tbl_user");
         if ($query->num_rows() > 0) {
            return false;
        }
        else {
            unset($data['submit']);
            $data['password'] = md5($data['password']);
            $this->db->insert('tbl_user', $data);
            $lastId = $this->db->insert_id();
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
                    'user_logged_in' => TRUE,
                    'type' => $rows->type
                );
            }
            $this->session->set_userdata($newdata);
            return $newdata;
        }
        else{
            return false;
        }

    }
    public function producer_signup($data){
    // $this->db->insert('ef_userinvestorprofile', $data);
    // return true;
        $email = $data['email'];
        $data['type'] = 2;
        $this->db->where("email", $email);
        $query = $this->db->get("tbl_user");
         if ($query->num_rows() > 0) {
            return false;
        }
        else {
            unset($data['submit']);
            $data['password'] = md5($data['password']);
            $this->db->insert('tbl_user', $data);
            $lastId = $this->db->insert_id();
            return $lastId;

        }
 }
}
