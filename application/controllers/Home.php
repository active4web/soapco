<?php

(defined('BASEPATH')) OR exit('No direct script access allowed');

class Home extends MX_Controller {
    function __construct() {

		parent::__construct();
        $this->load->library('session');
		$this->load->model('data','','true');
		@date_default_timezone_set('Asia/Riyadh');
    }

    function index() {
	
$data['site_info'] =$this->db->get_where('site_info')->result(); 
$data['site_setting'] =$this->db->get_where('site_setting')->result(); 
$data_conent['slider']=$this->db->order_by("id","desc")->limit(8)->get_where('slider',array("view"=>'1'))->result();
$data_conent['products']=$this->db->order_by("id","desc")->limit(12)->get_where('products',array('view'=>'1'))->result();
$data_conent['site_info'] =$this->db->get_where('site_info')->result(); 
	$this->load->view('index/include/head',$data );
$this->load->view('index/include/header',$data );
	$this->load->view('home',$data_conent);
	$this->load->view('index/include/footer',$data);
		  
    }

function test() {	$this->load->view('test');}
}


