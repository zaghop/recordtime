<?php
defined('BASEPATH') or exit('No direct script access allowed');
class Message extends Public_controller
{
    public function __construct()
    {
        parent::__construct();
        do_action('after_website_init');
        $this->load->library('form_validation');
        $this->load->model('message_model','message');
    }
	
	public function sendMail($msg, $attach)
	{
		
			$mailto = 'chaitanya.21twelve@gmail.com';
    		$subject = 'Recordtimes Chat';
		
			$filename = $attach;
			$path = 'http://develop.zaghop.com/~zagdev/recordtime/assets/themes/recordtime/messagefiles/';
		
			$file = $path.$filename;
			$content = file_get_contents( $file);
			$content = chunk_split(base64_encode($content));
			$uid = md5(uniqid(time()));
			$name = basename($file);

			// header
			$header = "From: Recordtime <chaitanya@21twelveinteractive.com>\r\n";
			//$header .= "Reply-To: ".$replyto."\r\n";
			$header .= "MIME-Version: 1.0\r\n";
			$header .= "Content-Type: multipart/mixed; boundary=\"".$uid."\"\r\n\r\n";

			// message & attachment
			$nmessage = "--".$uid."\r\n";
			$nmessage .= "Content-type:text/plain; charset=iso-8859-1\r\n";
			$nmessage .= "Content-Transfer-Encoding: 7bit\r\n\r\n";
			$nmessage .= $msg."\r\n\r\n";
			$nmessage .= "--".$uid."\r\n";
			$nmessage .= "Content-Type: application/octet-stream; name=\"".$filename."\"\r\n";
			$nmessage .= "Content-Transfer-Encoding: base64\r\n";
			$nmessage .= "Content-Disposition: attachment; filename=\"".$filename."\"\r\n\r\n";
			$nmessage .= $content."\r\n\r\n";
			$nmessage .= "--".$uid."--";

			if (mail($mailto, $subject, $nmessage, $header)) {
				return true; // Or do something here
			} else {
			  return false;
			}

	}
	

    public function index()
    {
		
       	$_SESSION['recipient_id'] = $_GET['recipient_id'];
		$data['user_id'] = $this->session->userdata['userid'];
		$data['recipient_id'] = $_SESSION['recipient_id'];
		
		//$this->sendMail();

		
		
		$data['recipients_details'] = $this->message->getRecipientdetails(array('id'=>$this->session->userdata['userid'], 'rec_id'=>$data['recipient_id']));
		$data['recipients_msg'] = $this->message->getRecipientmsg(array('id'=>$this->session->userdata['userid'], 'rec_id'=>$data['recipient_id']));
		//echo "<pre>"; print_r($data['recipients_msg']); exit;
		$data['messages'] = $this->message->getRows(array('from_id'=>$this->session->userdata['userid'], 'to_id'=>$data['recipient_id']));
		

		

        $data['title'] = 'Messages';
        $this->data    = $data;
        $this->view    = 'messages/dashboard';
        $this->layout();
    }
	
	
	public function add_message(){
		
		// $this->form_validation->set_rules('message', 'Message', 'required');
		// echo "<pre>"; print_r($_POST);
		//echo "<pre>"; print_r($_FILES); exit;
		
	
		$config['upload_path']="./assets/themes/recordtime/messagefiles/";
        $config['allowed_types']='gif|jpg|png|pdf|csv|doc|txt';
		$this->upload->initialize($config);
        $this->load->library('upload',$config);
        if($this->upload->do_upload("attachments")){
			
        	$data = array('upload_data' => $this->upload->data());
			//echo $data['upload_data']['file_name']; exit;
			$messageData = array(
				'to_id' => $this->input->post('to_id'),
				'from_id' => $this->input->post('from_id'),
				'thread_id' => $this->input->post('thread_id'),
				'attachments' => $data['upload_data']['file_name'],
				'message' => $this->input->post('message')
                
            );
		}else{
		//print_r($data); exit;
			$messageData = array(
				'to_id' => $this->input->post('to_id'),
				'from_id' => $this->input->post('from_id'),
				'thread_id' => $this->input->post('thread_id'),
				//'attachments' => $data['upload_data']['file_name'],
				'message' => $this->input->post('message')
                
            );
		
		}
            //if($this->form_validation->run() == true){
                $addmessage = $this->message->addmessage($messageData);
                if($addmessage){
					//print_r($addmessage); exit;
					$msg = $addmessage[0]['message'];
					$attach = $addmessage[0]['attachments'];
					$this->sendMail($msg,$attach);
                    //redirect('/message');
                }else{
                    $data['error_msg'] = 'Some problems occured, please try again.';
                }
            //}
	}

    
}
