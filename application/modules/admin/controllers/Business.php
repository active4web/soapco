<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Business extends MX_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->lang->load('admin', get_lang() );
        $this->load->library('session');
        $this->load->library('pagination');
        $this->load->model('data','','true');
        $this->load->library('upload');
        $this->load->helper(array('form', 'url','text'));
        $this->load->library('lib_pagination');
        $this->load->library('CKEditor');
        $this->load->library('CKFinder');
        $this->ckfinder->SetupCKEditor($this->ckeditor,'../../design/ckfinder/');
		$this->load->library('image_lib');		
    }
    public function gen_random_string()
    {
        $chars ="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890";//length:36
        $final_rand='';
        for($i=0;$i<4; $i++) {
            $final_rand .= $chars[ rand(0,strlen($chars)-1)];
        }
        return $final_rand;
    }

 public function banner(){
		$data['site_info']= $this->data->get_table_data('site_setting');
		$this->load->view("admin/products/banner",$data); 
    }
    
    public function index(){
        redirect(base_url().'admin/business/show','refresh');
    }

    public function show(){
        $pg_config['sql'] = $this->data->get_sql('products','','id','DESC');
        $pg_config['per_page'] = 10;
        $data = $this->lib_pagination->create_pagination($pg_config);
        $this->load->view("admin/products/show", $data); 
    }

    public function add(){
        $this->load->view("admin/products/add"); 
    }

    public function add_action(){
        $name_project=$this->input->post('name_project');
        $desc_ar=$this->input->post('desc_ar');

        $data['name'] = $name_project;
        $data['details'] = $desc_ar;
        $data['creation_date'] = date("Y-m-d");

        $this->db->insert('products',$data);
		$id = $this->db->insert_id();
		

		
if($_FILES['file']['name']!=""){
$file=$_FILES['file']['name'];
$file_name="file";
//$config=get_img_config('products','uploads/business/',$file,$file_name,'img','gif|jpg|png|jpeg',600000,600000,600000,array('id'=>$id),"440","350");
$config=get_img_config_course('products','uploads/business/',$file,$file_name,'img','gif|jpg|png|jpeg',600000,600000,600000,array('id'=>$id),"360","250",$id);
}
		
        $this->session->set_flashdata('msg', 'تمت الإضافة بنجاح');
        redirect(base_url().'admin/business/show','refresh');
    }
	
	public function json($status,$msg=[]){
		$data['status'] = $status;
		$data['msg'] = $msg;
		echo json_encode($data);
	}
	
	public function del_img(){
		$id = $this->input->post('id');
		$img = get_this('products_images',['id' => $id],'img');
		if ($img != "") {
		  unlink("uploads/site_setting/products_gallery/$img");
		}
		$this->db->delete('products_images', array('id' => $id));
		return $this->json(true,'تم الحذف');
  	}

    public function delete(){
        $id_products = $this->input->get('id_products');
        $check=$this->input->post('check');

        if($id_products!=""){
        $ret_value=$this->data->delete_table_row('products',array('id'=>$id_products)); 
        }
     
        if(isset($check) && $check!=""){  
        $check=$this->input->post('check');
        $length=count($check);
        for($i=0;$i<$length;$i++){
        $ret_value=$this->data->delete_table_row('products',array('id'=>$check[$i]));    
        }
        }

        $this->session->set_flashdata('msg', 'تم الحذف بنجاح');
        redirect(base_url().'admin/business/show','refresh');
    }

    function active(){
        $id = $this->input->post("id");
        $ser = $this->db->get_where("products",array("id"=>$id,"view" => "1"))->num_rows();
        if ($ser == 1) {
            $this->db->update("products",array("view" => "0"),array("id"=>$id));
            echo "0";
        }
        if ($ser == 0) {
            $this->db->update("products",array("view" => "1"),array("id"=>$id));
            echo "1";
        } 
    }

    public function edit(){
        $id=$this->input->get('id');
        $data['data'] = $this->data->get_table_data('products',array('id'=>$id));
        $this->load->view("admin/products/edit",$data); 
    }

    function edit_action(){
 $name_project=$this->input->post('name_title');
$desc_ar=$this->input->post('contents');
 $id=$this->input->post('id');
$data['name'] = $name_project;
$data['details'] = $desc_ar;
$this->db->update('products',$data,array("id"=>$id));


if($_FILES['file']['name']!=""){
$file=$_FILES['file']['name'];
$file_name="file";
$config=get_img_config_course('products','uploads/business/',$file,$file_name,'img','gif|jpg|png|jpeg',600000,600000,600000,array('id'=>$id),"360","250",$id);
}
$this->session->set_flashdata('msg', 'تم التعديل بنجاح');
redirect(base_url().'admin/business/show','refresh');
    }

}