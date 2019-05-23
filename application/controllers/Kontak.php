<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Kontak extends CI_Controller {

	
	function __construct(){
		parent::__construct();
			
		$this->load->model('m_galeri');
		$this->load->model('m_kontak');

	}	

	public function index()
	{
		$y['title'] = "Kontak Kami";
		$x['alamat'] = $this->m_galeri->get_galeri_by_album_id_withlimit(2,1)->row_array();
		$x['hp'] = $this->m_galeri->get_galeri_by_album_id_withlimit(3,1)->row_array();
		$x['telp'] = $this->m_galeri->get_galeri_by_album_id_withlimit(4,1)->row_array();
		$x['email'] = $this->m_galeri->get_galeri_by_album_id_withlimit(5,1)->row_array();
		$this->load->view('user/v_header',$y);
		$this->load->view('user/v_kontak',$x);
		$this->load->view('user/v_footer');
	}

	function kirim_pesan(){
        $nama=str_replace("'", "", $this->input->post('name',TRUE));
        $email=str_replace("'", "", $this->input->post('email',TRUE));      
        $pesan=str_replace("'", "", $this->input->post('message',TRUE));
        $this->m_kontak->kirim_pesan($nama,$email,$pesan);
        echo $this->session->set_flashdata('msg',' <p>NB: </strong> Terima Kasih Telah Menghubungi Kami.</p>');
        redirect('Kontak');
    }

    // <div class="contact-form-success alert alert-success d-none mt-4" id="contactSuccess">
				// 					<strong>Success!</strong> Your message has been sent to us.
				// 				</div>

				// 				<div class="contact-form-error alert alert-danger d-none mt-4" id="contactError">
				// 					<strong>Error!</strong> There was an error sending your message.
				// 					<span class="mail-error-message text-1 d-block" id="mailErrorMessage"></span>
				// 				</div>
}
