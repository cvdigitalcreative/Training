<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pendaftaran extends CI_Controller {

	
	function __construct(){
		parent::__construct();
			
		$this->load->model('m_galeri');
	}	

	public function index()
	{
		$y['title'] = "Pendaftaran Training K3 Dwi";
		// $x['galeri'] = $this->m_galeri->get_galeri_by_album_id_withlimit(7,15);
		$this->load->view('user/v_header',$y);
		$this->load->view('user/v_pendaftaran');
		$this->load->view('user/v_footer');
	}
}
