<?php
defined('BASEPATH') or exit('No direct script access allowed');
class Project extends Public_controller
{
    public function __construct()
    {
        parent::__construct();
        // $this->form_validation->set_error_delimiters('<p class="text-danger alert-validation">', '</p>');;;
        do_action('after_website_init');

        $this->load->library('session');
        $this->load->library('form_validation');
        $this->load->model('project_model','project');
    }

    public function index()
    {
        $data['is_home'] = true;
        $data['title'] = get_option('companyname');
        $this->data    = $data;
        $this->view    = 'home';
        $this->layout();
    }

    public function dashboard()
    {
        if (!$this->session->user_logged_in) {
          redirect(site_url('clients/login'));
        }

        $user_id = $this->session->userid;

        $data['title'] = _l('Projects');
        $data['projects'] = $this->project->dashboard($user_id);

        $this->data    = $data;
        $this->view    = 'projects/dashboard';
        $this->layout();
    }

    public function create()
    {
        if($this->input->post('submit')){
            $this->form_validation->set_rules('name', 'Project Name', 'required');
            $this->form_validation->set_rules('budget', 'Budget', 'required');
            $this->form_validation->set_rules('songs', 'Project Song', 'required');

            if ($this->form_validation->run() == FALSE)
            {
                $this->session->set_flashdata('error',"There is some error. please check");
            }
            else{
                $projdata = $this->input->post();
                $config['upload_path'] = './assets/themes/recordtime/project_files/';
                $config['allowed_types'] = 'gif|jpg|png|doc|txt';
                $config['encrypt_name'] = TRUE;
                $this->upload->initialize($config);
                $this->load->library('upload', $config);

                if (!$this->upload->do_upload('doc_name'))
                {
                    $projdata['doc_name'] = '';
                }
                else
                {
                    $data = $this->upload->data();
                    $projdata['doc_name'] = $data['file_name'];
                }
                $insert = $this->project->projects_add($projdata);
                if($insert){
                    $this->session->set_flashdata('success',"Your project has been added successfully.");
                    redirect("projects/summary");
                }
                else{
                    $this->session->set_flashdata('error',"there is some error. please try again.");
                    redirect("artists/create");
                }
            }
        }

        $data['title'] = _l('add project');

        $this->data    = $data;
        $this->view    = 'projects/create';
        $this->layout();
    }

}

    // public function artists_login(){
    //     if(isset($this->session->userdata['userid'])!= ''){
    //         redirect('artists/profile');
    //     }
    //     $data['title'] = _l('artists_login');
    //
    //     $this->data    = $data;
    //     $this->view    = 'artists/login';
    //     $this->layout();
    //
    //     if($this->input->post('submit')){
    //         $data['email'] = trim($this->input->post('email'));
    //         $data['password'] = md5($this->input->post('password'));
    //         $this->form_validation->set_rules('email', 'Email', 'required');
    //         $this->form_validation->set_rules('password', 'Password', 'required');
    //
    //         if ($this->form_validation->run() == FALSE)
    //         {
    //             $this->session->set_flashdata('error',"There is some error. please check");
    //         }
    //         else{
    //                 $username = trim($this->input->post('email'));
    //                 $password = md5($this->input->post('password'));
    //
    //                 $login = $this->user->login_user($data);
    //                 if($login == true) {
    //                     $this->session->set_flashdata('success',"You have been successfully logged in.");
    //                      redirect("artists/profile");
    //                 }
    //                 else{
    //                     $this->session->set_flashdata('error',"Email address or password does not match.");
    //                      redirect("artists/login");
    //                 }
    //             }
    //         }
    //     }

    // public function projects_summary(){
    //      $data['title'] = _l('projects_summary');
    //
    //     $this->data    = $data;
    //     $this->view    = 'projects/summary';
    //     $this->layout();
    // }
    /***************************************code by prakash end ******************************/
