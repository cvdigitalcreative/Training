<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class About extends CI_Controller {

	
	function __construct(){
		parent::__construct();
			
		$this->load->model('m_galeri');
		$this->load->model('m_tulisan');
	}	

	public function index()
	{
		$y['title'] = "Tentang Kami";
		$x['whowe'] = $this->m_tulisan->get_tulisan_by_kategori_limit(1,1);
		$x['layanan'] = $this->m_tulisan->get_tulisan_by_kategori_limit(5,1);
		$x['visi'] = $this->m_tulisan->get_tulisan_by_kategori_limit(3,1);
		$x['misi'] = $this->m_tulisan->get_tulisan_by_kategori_limit(4,1);
		$this->load->view('user/v_header',$y);
		$this->load->view('user/v_about_us',$x);
		$this->load->view('user/v_footer');
	}
}
