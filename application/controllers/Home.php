<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

	
	public function index()
	{
		$y['title'] = "Training K3 Dwi";
		$this->load->view('user/v_header',$y);
		$this->load->view('user/v_home');
		$this->load->view('user/v_footer');
	}
}
