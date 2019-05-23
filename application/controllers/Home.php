<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

	
	function __construct(){
		parent::__construct();
			
		$this->load->model('m_galeri');
		$this->load->model('m_tulisan');
	}	

	public function index()
	{
		$y['title'] = "Training K3 Dwi";
		$x['slider'] = $this->m_galeri->get_galeri_by_album_id_withlimit(1,3);
		$x['alamat'] = $this->m_galeri->get_galeri_by_album_id_withlimit(2,1)->row_array();
		$x['hp'] = $this->m_galeri->get_galeri_by_album_id_withlimit(3,1)->row_array();
		$x['telp'] = $this->m_galeri->get_galeri_by_album_id_withlimit(4,1)->row_array();
		$x['email'] = $this->m_galeri->get_galeri_by_album_id_withlimit(5,1)->row_array();
		$x['galeri'] = $this->m_galeri->get_galeri_by_album_id_withlimit(6,8);
		$x['whowe'] = $this->m_tulisan->get_tulisan_by_kategori_limit(1,1);
		$x['training'] = $this->m_tulisan->get_tulisan_by_kategori_limit(2,3);
		$this->load->view('user/v_header',$y);
		$this->load->view('user/v_home',$x);
		$this->load->view('user/v_footer');
	}
}
