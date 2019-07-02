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
            $this->db->insert('tbl_userdetails', array('user_id' => $lastId));
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
	
	// Artist edit profile module start cpp
	
		public function getArtistdetails($data){

			$user_id = $data['user_id'];

			$this->db->select('user_id');
			$this->db->from('tbl_userdetails');
			$this->db->where('user_id', $user_id);
			$query=$this->db->get();

			if ( $query->num_rows() > 0 )
			{
				$this->db->select('tbl_user.firstname,tbl_user.lastname,tbl_user.state,tbl_user.city,tbl_user.genre,tbl_userdetails.*');
				$this->db->from('tbl_user');
				$this->db->join('tbl_userdetails','tbl_userdetails.user_id=tbl_user.id');
				$this->db->where('tbl_user.id', $user_id);

			}else{

				$this->db->select('id as user_id,firstname,lastname,state,city,genre');
				$this->db->from('tbl_user');
				$this->db->where('id', $user_id);
			}


			// $this->db->select('tbl_user.firstname,tbl_user.lastname,tbl_user.state,tbl_user.city,tbl_user.genre,tbl_userdetails.*');
			// $this->db->from('tbl_user');
			// $this->db->join('tbl_userdetails','tbl_userdetails.user_id=tbl_user.id');
			// $this->db->where('tbl_user.id', $user_id);
			$query=$this->db->get();

			if ( $query->num_rows() > 0 )
			{
				$row = $query->result_array();
				return $row;
			}

		}

		public function updateartistprofile($id) {
			//add created and modified data if not included

			$fname = $this->input->post('fname');
			$lname = $this->input->post('lname');
			$state = $this->input->post('state');
			$city = $this->input->post('city');
			$base_rate = $this->input->post('base_rate');
			$genre = $this->input->post('genre');
			$base_rate_text = $this->input->post('base_rate_text');
			$base_production_rate = $this->input->post('base_production_rate');
			$mix_engineer_rate = $this->input->post('mix_engineer_rate');
			$mastering_engineer_rate = $this->input->post('mastering_engineer_rate');
			$programmer_rate = $this->input->post('programmer_rate');
			$philosphy = $this->input->post('philosphy');
			$credits = $this->input->post('credits');
			$skills = $this->input->post('skills');





			//echo $profile_pic = $data['upload_data']['file_name']; exit;

			//insert user data to users table

			$this->db->set('firstname', $fname);
			$this->db->set('lastname', $lname);
			$this->db->set('state', $state);
			$this->db->set('city', $city);
			$this->db->set('genre', $genre);
			$this->db->where('id', $id);  
			$updateuser = $this->db->update('tbl_user'); 

			if($this->upload->do_upload("profile_pic")){

				$data = array('upload_data' => $this->upload->data());

				$profile_pic = $data['upload_data']['file_name'];

				$this->db->set('profile_pic', $profile_pic);
				$this->db->set('base_rate', $base_rate);
				$this->db->set('base_rate_text', $base_rate_text);
				$this->db->set('base_production_rate', $base_production_rate);
				$this->db->set('mix_engineer_rate', $mix_engineer_rate);
				$this->db->set('mastering_engineer_rate', $mastering_engineer_rate);
				$this->db->set('programmer_rate', $programmer_rate);
				$this->db->set('philosphy', $philosphy);
				$this->db->set('credits', $credits);
				$this->db->set('skills', $skills);
				$this->db->where('user_id', $id);  
				$updateuserdetails = $this->db->update('tbl_userdetails'); 

			}else{
				$this->db->set('base_rate', $base_rate);
				$this->db->set('base_rate_text', $base_rate_text);
				$this->db->set('base_production_rate', $base_production_rate);
				$this->db->set('mix_engineer_rate', $mix_engineer_rate);
				$this->db->set('mastering_engineer_rate', $mastering_engineer_rate);
				$this->db->set('programmer_rate', $programmer_rate);
				$this->db->set('philosphy', $philosphy);
				$this->db->set('credits', $credits);
				$this->db->set('skills', $skills);
				$this->db->where('user_id', $id);  
				$updateuserdetails = $this->db->update('tbl_userdetails'); 
			}



			//print_r($this->db->last_query()); exit;
			//return the status
			if($updateuser && $updateuserdetails){
				return true;
			}else{
				return false;
			}
		}
	
	// Artist edit profile module end


	// Producer edit profile start

		public function getProducerdetails($data){

			$user_id = $data['user_id'];

			$this->db->select('user_id');
			$this->db->from('tbl_userdetails');
			$this->db->where('user_id', $user_id);
			$query=$this->db->get();

			if ( $query->num_rows() > 0 )
			{
				$this->db->select('tbl_user.firstname,tbl_user.lastname,tbl_user.state,tbl_user.city,tbl_user.genre,tbl_userdetails.*');
				$this->db->from('tbl_user');
				$this->db->join('tbl_userdetails','tbl_userdetails.user_id=tbl_user.id');
				$this->db->where('tbl_user.id', $user_id);

			}else{

				$this->db->select('id as user_id,firstname,lastname,state,city,genre');
				$this->db->from('tbl_user');
				$this->db->where('id', $user_id);
			}

			$query=$this->db->get();
   
			if ( $query->num_rows() > 0 )
			{
				$row = $query->result_array();
				return $row;
			}

		}


		public function updateproducerprofile($id) {
			//add created and modified data if not included

			$fname = $this->input->post('fname');
			$lname = $this->input->post('lname');
			$state = $this->input->post('state');
			$city = $this->input->post('city');
			$genre = $this->input->post('genre');
			$philosphy = $this->input->post('philosphy');
			$credits = $this->input->post('credits');
			$skills = $this->input->post('skills');

			//insert user data to users table

			$this->db->set('firstname', $fname);
			$this->db->set('lastname', $lname);
			$this->db->set('state', $state);
			$this->db->set('city', $city);
			$this->db->set('genre', $genre);
			$this->db->where('id', $id);  
			$updateuser = $this->db->update('tbl_user'); 

			if($this->upload->do_upload("profile_pic")){

				$data = array('upload_data' => $this->upload->data());

				$profile_pic = $data['upload_data']['file_name'];

				$this->db->set('profile_pic', $profile_pic);
				$this->db->set('philosphy', $philosphy);
				$this->db->set('credits', $credits);
				$this->db->set('skills', $skills);
				$this->db->where('user_id', $id);  
				$updateuserdetails = $this->db->update('tbl_userdetails'); 

			}else{
				$this->db->set('philosphy', $philosphy);
				$this->db->set('credits', $credits);
				$this->db->set('skills', $skills);
				$this->db->where('user_id', $id);  
				$updateuserdetails = $this->db->update('tbl_userdetails'); 
			}

			//return the status
			if($updateuser && $updateuserdetails){
				return true;
			}else{
				return false;
			}
		}

	// end

	// Production rate module start by Cp

		public function insertprorates($data){

			$user_id = $data['user_id'];

			$this->db->select('user_id');
			$this->db->from('tbl_productionexpenses');
			$this->db->where('user_id', $user_id);
			$query=$this->db->get();

			if ( $query->num_rows() > 0 )
			{
				$this->db->where('user_id',$user_id);
            	return $this->db->update('tbl_productionexpenses',$data);
			}else{
				return $this->db->insert('tbl_productionexpenses', $data);
            	
			}


            
		}

	// Production rate module end



	// get production rate summary start

		public function getSummary($data){

			$user_id = $data['user_id'];

			$this->db->select('*');
			$this->db->from('tbl_productionexpenses');
			$this->db->where('user_id', $user_id);
			$query=$this->db->get();

			if ( $query->num_rows() > 0 )
			{
				$row = $query->result_array();
				return $row;
			}

		}

	// end
	
	
}
