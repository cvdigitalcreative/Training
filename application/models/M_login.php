<?php
class M_login extends CI_Model
{
    function cekuser($username,$password){
        $hasil=$this->db->query("SELECT * FROM tbl_pengguna WHERE pengguna_username='$username' AND pengguna_password='$password' ");
        return $hasil;
    }
  
}?>