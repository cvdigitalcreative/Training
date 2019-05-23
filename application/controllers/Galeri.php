<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Galeri extends CI_Controller {

	
	function __construct(){
		parent::__construct();
			
		$this->load->model('m_galeri');
		$this->load->model('m_tulisan');
	}	

	public function index()
	{
		$y['title'] = "Galeri Training K3 Dwi";
		$x['galeri'] = $this->m_galeri->get_galeri_by_album_id_withlimit(6,15);
		$this->load->view('user/v_header',$y);
		$this->load->view('user/v_galeri',$x);
		$this->load->view('user/v_footer');
	}
}
