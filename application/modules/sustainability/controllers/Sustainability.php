<?php

(defined('BASEPATH')) OR exit('No direct script access allowed');

class Sustainability extends MX_Controller {
    function __construct() {

		parent::__construct();
        $this->load->library('session');
		$this->load->model('data','','true');
          $this->load->library('pagination');
          $this->load->library('lib_pagination'); 
		@date_default_timezone_set('Asia/Riyadh');
    }


    
    
    
    public function index(){

  $data['site_info'] =$this->db->get_where('site_info')->result(); 
  $datacontent['site_info'] =$this->db->get_where('site_info')->result(); 
  $datacontent['products'] =$this->db->order_by("id","desc")->get_where('sustainability')->result(); 
   $datacontent['site_setting'] =$this->db->get_where('site_setting')->result();
  $this->load->view("index/include/head",$data );
  $this->load->view("index/include/header",$data );
  $this->load->view('sustainability',$datacontent);
  $this->load->view("index/include/footer",$data);


}

    public function service(){
        $id=$this->uri->segment(3);
  $datacontent['site_info'] =$this->db->get_where('site_info')->result(); 
  $datacontent['data_products'] =$this->db->get_where('sustainability',array('id'=>$id))->result(); 
   $datacontent['site_setting'] =$this->db->get_where('site_setting')->result();
  $data['site_info'] =$this->db->get_where('site_info')->result(); 
  $this->load->view("index/include/head",$data );
  $this->load->view("index/include/header",$data );
  $this->load->view('service',$datacontent);
  $this->load->view("index/include/footer",$data);


}


 
    
    

}


