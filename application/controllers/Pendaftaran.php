<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pendaftaran extends CI_Controller {

	
	function __construct(){
		parent::__construct();
			
		$this->load->model('m_training');
		$this->load->model('m_pendaftaran');
	}	

	public function index()
	{
		$y['title'] = "Pendaftaran Training K3 Dwi";
		$x['training'] = $this->m_training->getAllTraining();
		$this->load->view('user/v_header',$y);
		$this->load->view('user/v_pendaftaran',$x);
		$this->load->view('user/v_footer');
	}

	public function save(){
		$nama = $this->input->post('nama');
		$telp = $this->input->post('telp');
		$email = $this->input->post('email');
		$perusahaan = $this->input->post('perusahaan');
		$training_id = $this->input->post('training');
		$pesan = $this->input->post('pesan');

		$this->m_pendaftaran->save_pendaftaran($nama,$telp,$email,$perusahaan,$training_id,$pesan);
		echo $this->session->set_flashdata('msg','success');
	   	redirect('Pendaftaran');
	}

	public function update(){
		$id = $this->input->post('id');
		$nama = $this->input->post('nama');
		$telp = $this->input->post('telp');
		$email = $this->input->post('email');
		$perusahaan = $this->input->post('perusahaan');
		$training_id = $this->input->post('training');
		$pesan = $this->input->post('pesan');

		$this->m_pendaftaran->update_pendaftaran($id,$nama,$telp,$email,$perusahaan,$training_id,$pesan);
		echo $this->session->set_flashdata('msg','update');
	   	redirect('Pendaftaran/Data');
	}

	public function hapus(){
		$id = $this->input->post('id');

		$this->m_pendaftaran->hapus_pendaftaran($id);
		echo $this->session->set_flashdata('msg','delete');
	   	redirect('Pendaftaran/Data');
	}

	function data(){
		if($this->session->userdata('akses') == 1 && $this->session->userdata('masuk') == true){
			$y['title'] = "Data Pendaftaran";
			$x['pendaftaran'] = $this->m_pendaftaran->getAllPendaftaran();
			$x['training'] = $this->m_training->getAllTraining();
			$this->load->view('admin/v_header',$y);
			$this->load->view('admin/v_sidebar');
			$this->load->view('admin/v_pendaftaran',$x);
		}
		else{
		   redirect('Login');
		}
	}
}
