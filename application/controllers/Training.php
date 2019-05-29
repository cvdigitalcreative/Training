<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Training extends CI_Controller {

	
	function __construct(){
		parent::__construct();
			
		$this->load->model('m_galeri');
		$this->load->model('m_tulisan');
	}	

	public function index()
	{
		$y['title'] = "Training K3 Dwi";
		$x['title'] = "Training K3 Dwi";
		$jum=$this->m_tulisan->get_tulisan_by_kategori(2);;
	    $page=$this->uri->segment(3);
	    if(!$page):
	        $offset = 0;
	    else:
	        $offset = $page;
	    endif;
	    $limit=6;
	    $config['base_url'] = base_url() . 'training/index';
	    $config['total_rows'] = $jum->num_rows();
	    $config['per_page'] = $limit;
	    $config['uri_segment'] = 3;
	    $config['full_tag_open'] = "<ul>";
		$config['full_tag_close'] = '</ul>';
		$config['num_tag_open'] = '<li class="btn btn-quaternary btn-outline">';
		$config['num_tag_close'] = '</li>';
		$config['cur_tag_open'] = '<li class="btn btn-quaternary btn-outline active"><a href="#">';
		$config['cur_tag_close'] = '</a></li>';
		$config['prev_tag_open'] = '<li>';
		$config['prev_tag_close'] = '</li>';
		$config['first_tag_open'] = '<li>';
		$config['first_tag_close'] = '</li>';
		$config['last_tag_open'] = '<li>';
		$config['last_tag_close'] = '</li>';
		    
		$config['prev_link'] = 'Prev';
		$config['prev_tag_open'] = '<li class="prev">';
		$config['prev_tag_close'] = '</li>';


		$config['next_link'] = 'Next';
		$config['next_tag_open'] = '<li class="next">';
		$config['next_tag_close'] = '</li>';

	    $this->pagination->initialize($config);
	    $x['page'] =$this->pagination->create_links();	
		$x['training'] = $this->m_tulisan->berita_perpage_by_kategori(2,$offset,$limit);
		$this->load->view('user/v_header',$y);
		$this->load->view('user/v_training',$x);
		$this->load->view('user/v_footer');
	}

	function detail($slug){
		$data=$this->m_tulisan->get_berita_by_slug($slug);
		$q=$data->row_array();
		$judul=$q['tulisan_judul'];
		$tulisan_album_id=$q['tulisan_album_id'];
		$y['title'] = $judul;
		$x['data']=$this->m_tulisan->get_berita_by_slug($slug);
		$x['galeri'] = $this->m_galeri->get_galeri_by_album_id_withlimit($tulisan_album_id,10);
		$this->load->view('user/v_header',$y);
		$this->load->view('user/v_training_detail',$x);
		$this->load->view('user/v_footer');
	}
}

?>