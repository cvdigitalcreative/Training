<?php 
 /**
  * 
  */
 class Training extends CI_Controller
 {
 	
 	
		function __construct()
	  	{
		    parent:: __construct();
		    if($this->session->userdata('masuk') !=TRUE){
		      $url=base_url('Login');
		      redirect($url);
		    };

		    
	  	}

	  	function index(){
	  		if($this->session->userdata('akses') == 2 && $this->session->userdata('masuk') == true){
		       $y['title'] = "Kurir";
		       $x['kurir'] = $this->m_pemesanan->getAllkurir();
		       $this->load->view('v_header',$y);
		       $this->load->view('admin/v_sidebar');
		       $this->load->view('admin/v_kurir',$x);
		    }
		    else{
		       redirect('Login');
		    }
	  	}

	  	function savekurir(){
	  		$kurir_nama = $this->input->post('kurir_nama');
	  		$this->m_pemesanan->save_kurir($kurir_nama);
	  		echo $this->session->set_flashdata('msg','success');
	       	redirect('Admin/Pemesanan/kurir');
	  	}

	  	function updatekurir(){
	  		$id = $this->input->post('kurir_id');
	  		$kurir_nama = $this->input->post('kurir_nama');
	  		$this->m_pemesanan->update_kurir($id,$kurir_nama);
	  		echo $this->session->set_flashdata('msg','update');
	       	redirect('Admin/Pemesanan/kurir');
	  	}

	  	function hapuskurir(){
	  		$id = $this->input->post('kurir_id');
	  		$this->m_pemesanan->hapus_kurir($id);
	  		echo $this->session->set_flashdata('msg','delete');
	       	redirect('Admin/Pemesanan/kurir');
	  	}
 }

?>