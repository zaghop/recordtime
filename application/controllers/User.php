<?php
defined('BASEPATH') or exit('No direct script access allowed');
class User extends Public_controller
{
    public function __construct()
    {
        parent::__construct();
//        $this->form_validation->set_error_delimiters('<p class="text-danger alert-validation">', '</p>');
        do_action('after_website_init');
        $this->load->library('form_validation');
        $this->load->model('user_model','user');
    }

    public function index()
    {
        $data['is_home'] = true;

        $data['title'] = get_option('companyname');
        $this->data    = $data;
        $this->view    = 'home';
        $this->layout();
    }

	public function whyArtists()
    {
        $data['title'] = _l('artists_overview');

        $this->data    = $data;
        $this->view    = 'artists/overview';
        $this->layout();
    }

	public function howItWorksArtists()
    {

        $data['title'] = _l('artists_how_it_works');
        $data['class'] = 'how-it-works-page';

        $this->data    = $data;
        $this->view    = 'artists/how-it-works';
        $this->layout();
    }

	public function whyProducers()
    {

        $data['title'] = _l('producers_overview');
        $data['class'] = 'why-producers-page';


        $this->data    = $data;
        $this->view    = 'producers/overview';
        $this->layout();
    }

	public function howItWorksProducers()
    {

        $data['title'] = _l('producers_how_it_works');
        $data['class'] = 'how-it-works-producer-page';

        $this->data    = $data;
        $this->view    = 'producers/how-it-works';
        $this->layout();
    }

    public function profile()
    {
        if (!is_client_logged_in()) {
            redirect(site_url('clients/login'));
        }
        if ($this->input->post('profile')) {
            $this->form_validation->set_rules('firstname', _l('client_firstname'), 'required');
            $this->form_validation->set_rules('lastname', _l('client_lastname'), 'required');
            $custom_fields = get_custom_fields('contacts', array(
                'show_on_client_portal' => 1,
                'required' => 1,
                'disalow_client_to_edit' => 0
            ));
            foreach ($custom_fields as $field) {
                $field_name = 'custom_fields[' . $field['fieldto'] . '][' . $field['id'] . ']';
                if ($field['type'] == 'checkbox' || $field['type'] == 'multiselect') {
                    $field_name .= '[]';
                }
                $this->form_validation->set_rules($field_name, $field['name'], 'required');
            }
            if ($this->form_validation->run() !== false) {
                handle_contact_profile_image_upload();
                $data = $this->input->post();
                // Unset the form indicator so we wont send it to the model
                unset($data['profile']);
                $success = $this->clients_model->update_contact($data, get_contact_user_id(), true);
                if ($success == true) {
                    set_alert('success', _l('clients_profile_updated'));
                }
                redirect(site_url('clients/profile'));
            }
        } elseif ($this->input->post('change_password')) {
            $this->form_validation->set_rules('oldpassword', _l('clients_edit_profile_old_password'), 'required');
            $this->form_validation->set_rules('newpassword', _l('clients_edit_profile_new_password'), 'required');
            $this->form_validation->set_rules('newpasswordr', _l('clients_edit_profile_new_password_repeat'), 'required|matches[newpassword]');
            if ($this->form_validation->run() !== false) {
                $success = $this->clients_model->change_contact_password($this->input->post());
                if (is_array($success) && isset($success['old_password_not_match'])) {
                    set_alert('danger', _l('client_old_password_incorrect'));
                } elseif ($success == true) {
                    set_alert('success', _l('client_password_changed'));
                }
                redirect(site_url('clients/profile'));
            }
        }
        $data['title'] = _l('clients_profile_heading');
        $this->data    = $data;
        $this->view    = 'profile';
        $this->layout();
    }

    public function remove_profile_image()
    {
        if (!is_client_logged_in()) {
            redirect(site_url('clients/login'));
        }
        do_action('before_remove_contact_profile_image');
        if (file_exists(get_upload_path_by_type('contact_profile_images') . get_contact_user_id())) {
            delete_dir(get_upload_path_by_type('contact_profile_images') . get_contact_user_id());
        }
        $this->db->where('id', get_contact_user_id());
        $this->db->update('tblcontacts', array(
            'profile_image' => null
        ));
        if ($this->db->affected_rows() > 0) {
            redirect(site_url('clients/profile'));
        }
    }

    public function register()
    {
        if (get_option('allow_registration') != 1 || is_client_logged_in()) {
            redirect(site_url());
        }
        if (get_option('company_is_required') == 1) {
            $this->form_validation->set_rules('company', _l('client_company'), 'required');
        }
        $this->form_validation->set_rules('firstname', _l('client_firstname'), 'required');
        $this->form_validation->set_rules('lastname', _l('client_lastname'), 'required');
        $this->form_validation->set_rules('email', _l('client_email'), 'required|is_unique[tblcontacts.email]|valid_email');
        $this->form_validation->set_rules('password', _l('clients_register_password'), 'required');
        $this->form_validation->set_rules('passwordr', _l('clients_register_password_repeat'), 'required|matches[password]');

        if (get_option('use_recaptcha_customers_area') == 1 && get_option('recaptcha_secret_key') != '' && get_option('recaptcha_site_key') != '' && is_connected('google.com')) {
            $this->form_validation->set_rules('g-recaptcha-response', 'Captcha', 'callback_recaptcha');
        }

        $custom_fields = get_custom_fields('customers', array(
            'show_on_client_portal' => 1,
            'required' => 1
        ));

        $custom_fields_contacts = get_custom_fields('contacts', array(
            'show_on_client_portal' => 1,
            'required' => 1
        ));

        foreach ($custom_fields as $field) {
            $field_name = 'custom_fields[' . $field['fieldto'] . '][' . $field['id'] . ']';
            if ($field['type'] == 'checkbox' || $field['type'] == 'multiselect') {
                $field_name .= '[]';
            }
            $this->form_validation->set_rules($field_name, $field['name'], 'required');
        }
        foreach ($custom_fields_contacts as $field) {
            $field_name = 'custom_fields[' . $field['fieldto'] . '][' . $field['id'] . ']';
            if ($field['type'] == 'checkbox' || $field['type'] == 'multiselect') {
                $field_name .= '[]';
            }
            $this->form_validation->set_rules($field_name, $field['name'], 'required');
        }
        if ($this->input->post()) {
            if ($this->form_validation->run() !== false) {
                $data = $this->input->post();
                // Unset recaptchafield
                if (isset($data['g-recaptcha-response'])) {
                    unset($data['g-recaptcha-response']);
                }
                $clientid = $this->clients_model->add($data, true);
                if ($clientid) {
                    do_action('after_client_register', $clientid);
                    $this->load->model('authentication_model');
                    $logged_in = $this->authentication_model->login($this->input->post('email'), $this->input->post('password'), false, false);
                    if ($logged_in) {
                        do_action('after_client_register_logged_in', $clientid);
                        set_alert('success', _l('clients_successfully_registered'));
                    } else {
                        set_alert('warning', _l('clients_account_created_but_not_logged_in'));
                        redirect(site_url('clients/login'));
                    }
                    redirect(site_url());
                }
            }
        }

        $data['title'] = _l('clients_register_heading');
        $this->data    = $data;
        $this->view    = 'register';
        $this->layout();
    }

    public function login()
    {
        if (is_client_logged_in()) {
            redirect(site_url());
        }
        if(isset($this->session->userdata['userid'])!= ''){
            redirect('artists/profile');
        }
        $data['title'] = _l('artists_login');

        $this->data    = $data;
        $this->view    = 'artists/login';
        $this->layout();

        if($this->input->post('submit')){
            $data['email'] = trim($this->input->post('email'));
            $data['password'] = md5($this->input->post('password'));
            $this->form_validation->set_rules('email', 'Email', 'required');
            $this->form_validation->set_rules('password', 'Password', 'required');

            if ($this->form_validation->run() == FALSE)
            {
                $this->session->set_flashdata('error',"There is some error. please check");
            }
            else{
                    $username = trim($this->input->post('email'));
                    $password = md5($this->input->post('password'));

                    $login = $this->user->login_user($data);
                    if($login != false) {
                        $this->session->set_flashdata('success',"You have been successfully logged in.");
                        if($login['type'] == 1){
                            redirect("artists/profile");
                        }elseif($login['type'] == 2){
                            redirect("producer/profile");
                        }
                    }
                    else{
                        $this->session->set_flashdata('error',"Email address or password does not match.");
                         redirect("artists/login");
                    }
                }
            }
    }

    public function contact_email_exists($email = '')
    {
        if ($email == '') {
            $email = $this->input->post('email');
        }
        $this->db->where('email', $email);
        $total_rows = $this->db->count_all_results('tblcontacts');
        if ($this->input->post() && $this->input->is_ajax_request()) {
            if ($total_rows > 0) {
                echo json_encode(false);
            } else {
                echo json_encode(true);
            }
            die();
        } elseif ($this->input->post()) {
            if ($total_rows == 0) {
                $this->form_validation->set_message('contact_email_exists', _l('auth_reset_pass_email_not_found'));

                return false;
            }

            return true;
        }
    }

    public function change_language($lang = '')
    {
        if (!is_client_logged_in() || !is_primary_contact()) {
            redirect(site_url());
        }
        $lang = do_action('before_customer_change_language', $lang);
        $this->db->where('userid', get_client_user_id());
        $this->db->update('tblclients', array('default_language'=>$lang));
        if (isset($_SERVER['HTTP_REFERER']) && !empty($_SERVER['HTTP_REFERER'])) {
            redirect($_SERVER['HTTP_REFERER']);
        } else {
            redirect(site_url());
        }
    }

    /**
     * Client home chart
     * @return mixed
     */
    public function client_home_chart()
    {
        if (is_client_logged_in()) {
            $statuses        = array(
                1,
                2,
                4,
                3
            );
            $months          = array();
            $months_original = array();
            for ($m = 1; $m <= 12; $m++) {
                array_push($months, _l(date('F', mktime(0, 0, 0, $m, 1))));
                array_push($months_original, date('F', mktime(0, 0, 0, $m, 1)));
            }
            $chart = array(
                'labels' => $months,
                'datasets' => array()
            );
            foreach ($statuses as $status) {
                $this->db->select('total as amount, date');
                $this->db->from('tblinvoices');
                $this->db->where('clientid', get_client_user_id());
                $this->db->where('status', $status);
                $by_currency = $this->input->post('report_currency');
                if ($by_currency) {
                    $this->db->where('currency', $by_currency);
                }
                if ($this->input->post('year')) {
                    $this->db->where('YEAR(tblinvoices.date)', $this->input->post('year'));
                }
                $payments      = $this->db->get()->result_array();
                $data          = array();
                $data['temp']  = $months_original;
                $data['total'] = array();
                $i             = 0;
                foreach ($months_original as $month) {
                    $data['temp'][$i] = array();
                    foreach ($payments as $payment) {
                        $_month = date('F', strtotime($payment['date']));
                        if ($_month == $month) {
                            $data['temp'][$i][] = $payment['amount'];
                        }
                    }
                    $data['total'][] = array_sum($data['temp'][$i]);
                    $i++;
                }

                if ($status == 1) {
                    $borderColor = '#fc142b';
                } elseif ($status == 2) {
                    $borderColor = '#84c529';
                } elseif ($status == 4 || $status == 3) {
                    $borderColor = '#ff6f00';
                }

                $backgroundColor = 'rgba('.implode(',',hex2rgb($borderColor)).',0.3)';

                array_push($chart['datasets'], array(
                    'label' => format_invoice_status($status, '', false, true),
                    'backgroundColor' => $backgroundColor,
                    'borderColor' => $borderColor,
                    'borderWidth' => 1,
                    'tension' => false,
                    'data' => $data['total']
                ));
            }
            echo json_encode($chart);
        }
    }

    public function recaptcha($str = '')
    {
        return do_recaptcha_validation($str);
    }


    /***************************************code by prakash start ******************************/
    public function artists_signup()
    {
        if($this->input->post('submit')){
            $userdata = $this->input->post();
            $insert = $this->user->artists_signup($userdata);
            if($insert){
                $this->session->set_flashdata('success',"Your profile has been successfully registered.");
                redirect("artists/login");
            }
            else{
                $this->session->set_flashdata('error',"there is some error. please try again.");
                redirect("artists/signup");
            }
        }
        $data['title'] = _l('artists_signup');

        $this->data    = $data;
        $this->view    = 'artists/signup';
        $this->layout();
    }

    public function artists_login(){
        if(isset($this->session->userdata['userid'])!= ''){
            redirect('artists/profile');
        }
        $data['title'] = _l('artists_login');

        $this->data    = $data;
        $this->view    = 'artists/login';
        $this->layout();

        if($this->input->post('submit')){
            $data['email'] = trim($this->input->post('email'));
            $data['password'] = md5($this->input->post('password'));
            $this->form_validation->set_rules('email', 'Email', 'required');
            $this->form_validation->set_rules('password', 'Password', 'required');

            if ($this->form_validation->run() == FALSE)
            {
                $this->session->set_flashdata('error',"There is some error. please check");
            }
            else{
                    $username = trim($this->input->post('email'));
                    $password = md5($this->input->post('password'));

                    $login = $this->user->login_user($data);
                    if($login == true) {
                        $this->session->set_flashdata('success',"You have been successfully logged in.");
                         redirect("artists/profile");
                    }
                    else{
                        $this->session->set_flashdata('error',"Email address or password does not match.");
                         redirect("artists/login");
                    }
                }
            }
        }
    public function artists_profile(){
        if ($this->session->userdata('email') === NULL){
                redirect("/");
        }
        $data['title'] = _l('artists_profile');
        $user = $this->db->get_where('tbl_user', ['email' => $this->session->userdata('email')])->row();
        $this->data    = $data;
        $this->user    = $user;
        $this->view    = 'artists/profile';
        $this->layout();
    }
    /***************************************code by prakash end ******************************/

    /*PRODUCER METHODS*/
    public function producer_login(){
        if(isset($this->session->userdata['userid'])!= ''){
            redirect('producer/profile');
        }
        $data['title'] = _l('producer_login');

        $this->data    = $data;
        $this->view    = 'artists/login';
        $this->layout();

        if($this->input->post('submit')){
            $data['email'] = trim($this->input->post('email'));
            $data['password'] = md5($this->input->post('password'));
            $this->form_validation->set_rules('email', 'Email', 'required');
            $this->form_validation->set_rules('password', 'Password', 'required');

            if ($this->form_validation->run() == FALSE)
            {
                $this->session->set_flashdata('error',"There is some error. please check");
            }
            else{
                    $username = trim($this->input->post('email'));
                    $password = md5($this->input->post('password'));

                    $login = $this->user->login_user($data);
                    if($login == true) {
                        $this->session->set_flashdata('success',"You have been successfully logged in.");
                         redirect("producer/profile");
                    }
                    else{
                        $this->session->set_flashdata('error',"Email address or password does not match.");
                         redirect("producer/login");
                    }
                }
            }
        }
    public function producer_profile(){
        if ($this->session->userdata('email') === NULL){
                redirect("/");
        }
        $data['title'] = _l('producer_profile');

        $this->data    = $data;
        $this->view    = 'producers/profile';
        $this->layout();
    }
    public function producer_signup()
    {
        if($this->input->post('submit')){
            $userdata = $this->input->post();
            $insert = $this->user->artists_signup($userdata);
            if($insert){
                $this->session->set_flashdata('success',"Your profile has been successfully registered.");
                redirect("producer/login");
            }
            else{
                $this->session->set_flashdata('error',"there is some error. please try again.");
                redirect("producer/signup");
            }
        }
        $data['title'] = _l('producer_signup');

        $this->data    = $data;
        $this->view    = 'producers/signup';
        $this->layout();
    }
}
