<?php 

/**
 * 
 */
class users extends CI_Controller
{
	
	public function register(){
		$data['title'] = 'Sign Up';

		$this->form_validation->set_rules('name', 'Name', 'required');
		$this->form_validation->set_rules('username', 'Username', 'required|callback_check_username_exists');
		$this->form_validation->set_rules('email', 'Email', 'required|callback_check_username_exists');
		$this->form_validation->set_rules('password', 'Password', 'required');
		$this->form_validation->set_rules('password2', 'Confirm Pasword', 'matches[password]');

		if ($this->form_validation->run() === FALSE) {
			$this->load->view('template/header');
			$this->load->view('users/register', $data);
			$this->load->view('template/footer');
		}else{
			// Encrypt Password
			$enc_password = md5($this->input->post('password'));

			$this->user_model->register($enc_password);

			//Set Message
			$this->session->set_flashdata('user_registered', 'You are now registered and can login');

			redirect('posts');
		}
	}

	// Check if username exist
	function check_username_exists($username){
		$this->form_validation->set_message('check_username_exists', 'That Username is taken. Please choose a different one');
		if ($this->user_model->check_username_exists($username)) {
			return true;
		}else{
			return false;
		}
	}

	// Check if email exist
	function check_email_exists($email){
		$this->form_validation->set_message('check_email_exists', 'That Email is taken. Please choose a different one');
		if ($this->user_model->check_username_exists($email)) {
			return true;
		}else{
			return false;
		}
	}

}

?>