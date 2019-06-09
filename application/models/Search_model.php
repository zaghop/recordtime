<?php
defined('BASEPATH') or exit('No direct script access allowed');
Class Search_model Extends CI_Model
{
    function __construct()
    {
        parent::__construct();
    }

    function search($search)
    {
        $this->db->like('philosophy', $search);
        $this->db->or_like('skills', $search);
        $this->db->or_like('genres', $search);
        $this->db->
        // $query = $this->db->get('producers');
        // $this->db->join('tbl_user', 'tbl_user.id = producers.user_id');
        // return $query->result();
        // return array($search);


        $this->db->from('producers');
        $this->db->join('tbl_user', 'tbl_user.id = producers.user_id');
        $query = $this->db->get();
        return $query->result();
    }
}
