<?php

(defined('BASEPATH')) OR exit('No direct script access allowed');

/**
 * Description of site
 *
 * @author https://www.roytuts.com
 */
class Career extends MX_Controller {

    function __construct() {
       $this->load->library('session');
		$this->load->model('data','','true');
          $this->load->library('pagination');
          $this->load->library('lib_pagination'); 
		@date_default_timezone_set('Asia/Riyadh');
    }
    


    public function index(){
  $datacontent['site_info'] =$this->db->get_where('site_info')->result(); 
   $datacontent['site_setting'] =$this->db->get_where('site_setting')->result();
   $datacontent['country'] =$this->db->get_where('country',array('view'=>'1'))->result();
   $datacontent['jobs'] =$this->db->get_where('jobs',array('view'=>'1'))->result();
$data['site_info'] =$this->db->get_where('site_info')->result(); 
$this->load->view("index/include/head",$data );
$this->load->view("index/include/header",$data );
$this->load->view('career',$datacontent);
$this->load->view("index/include/footer",$data);
              
    }
	


	public function contact_action(){
        $sname=$this->input->post('sname');
         $lname=$this->input->post('lname');
        $email=$this->input->post('email');
        $phone=$this->input->post('phone');
        $country_id=$this->input->post('country_id');
        $city=$this->input->post('city');
        $address=$this->input->post('address');
 $job_id=$this->input->post('job_id');
 $message=$this->input->post('message');
 
 $data['name'] = $sname;
  $data['phone'] = $phone;
        $data['message'] = $message;
        $data['lname'] = $lname;
        $data['email'] = $email;
        $data['country_id'] = $country_id;
        $data['city'] = $city;
        $data['address'] = $address;
        $data['jobtype_id'] = $job_id;
        $data['creation_date'] = date("Y-m-d");
        
        $this->db->insert('jobs_from',$data);
        $id = $this->db->insert_id();

if($_FILES['cv']['name']!=""){
$file=$_FILES['cv']['name'];
$file_name="cv";
 $config=get_img_config('jobs_from','uploads/cv/',$file,$file_name,'cv','pdf|doc|gif|jpg|png|jpeg',1200000,1200000,1200000,array('id'=>$id));
  }

        $main_email = $this->data->get_table_row('site_info',array('id'=>1),'message_email');
        $logo = $this->data->get_table_row('site_info',array('id'=>1),'logo');
        $country = $this->data->get_table_row('country',array('id'=>$country_id),'title');
        $job= $this->data->get_table_row('jobs',array('id'=>$job_id),'title');
        $main_name=$sname." ".$lname;
    $main_msg="الأسم $main_name   <br>";
    $main_msg.="رقم الجوال".":".$phone."<br>";
    $main_msg.="البريد الألكترونى".":".$email."<br>";
    $main_msg.="البلد".":".$country."<br>";
    $main_msg.="الوظيفة".":".$job."<br>";
    
    $logo=DIR."uploads/site_setting/$logo";	
    $cv=DIR."uploads/cv/$config";	
             $subject = "طلب توظيف";
             $mail_message= "<br>";
             $mail_message.=
             "<!DOCTYPE html PUBLIC '-//W3C//DTD XHTML 1.0 Transitional//EN' 'http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd'>
         <html xmlns='http://www.w3.org/1999/xhtml'>
         <head>
           <meta http-equiv='Content-Type' content='text/html; charset=UTF-8' />
           <meta name='viewport' content='width=device-width, initial-scale=1' />
           <title>السوابوكى-SOAPCO</title>
         
               <style type='text/css'>
             /* Take care of image borders and formatting, client hacks */
             img { max-width: 600px; outline: none; text-decoration: none; -ms-interpolation-mode: bicubic;}
             a img { border: none; }
             table { border-collapse: collapse !important;}
             #outlook a { padding:0; }
             .ReadMsgBody { width: 100%; }
             .ExternalClass { width: 100%; }
             .backgroundTable { margin: 0 auto; padding: 0; width: 100% !important; }
             table td { border-collapse: collapse; }
             .ExternalClass * { line-height: 115%; }
             .container-for-gmail-android { min-width: 600px; }
         
         
             /* General styling */
             * {
               font-family: Helvetica, Arial, sans-serif;
             }
         
             body {
               -webkit-font-smoothing: antialiased;
               -webkit-text-size-adjust: none;
               width: 100% !important;
               margin: 0 !important;
               height: 100%;
               color: #676767;
             }
         
             td {
               font-family: Helvetica, Arial, sans-serif;
               font-size: 14px;
               color: #777777;
               text-align: center;
               line-height: 21px;
             }
         
             a {
               color: #676767;
               text-decoration: none !important;
             }
         
             .pull-left {
               text-align: left;
             }
         
             .pull-right {
               text-align: right;
             }
         
             .header-lg,
             .header-md,
             .header-sm {
               font-size:18px;
               font-weight:500;
               line-height: normal;
               padding:10px 0 0;
               color: #666;
               text-align:right;
             }
    
             .header-lg,
             .header-md,
             .header-sm {
               font-size:17px;
               font-weight:500;
               line-height: 30px;
               padding:10px 10px 0;
               color: #666;
               text-align:right;
             }
    
             .headerlgb {
                font-size:17px;
                font-weight:500;
                line-height: 30px;
                padding:10px 10px 0;
                color: #666;
                text-align:right;
             }
             
             .headerlgb1{
                font-size:17px;
                font-weight:500;
                line-height: 30px;
                padding:10px 10px 0;
                color: #666;
                text-align:right;
               }
    
             .header-md {
               font-size: 24px;
             }
         
             .header-sm {
               padding: 5px 0;
               font-size: 18px;
               line-height: 1.3;
             }
         
             .content-padding {
               padding: 20px 0 5px;
             }
         
             .mobile-header-padding-right {
               width: 290px;
               text-align: right;
               padding-left: 10px;
             }
         
             .mobile-header-padding-left {
               width: 290px;
               text-align: left;
               padding-left: 10px;
             }
         
             .free-text {
               width: 100% !important;
               padding: 10px 60px 0px;
             }
         
             .button {
               padding: 30px 0;
             }
         
         
             .mini-block {
               border: 1px solid #e5e5e5;
               border-radius: 5px;
               background-color: #ffffff;
               padding: 12px 15px 15px;
               text-align: left;
               width: 253px;
             }
         
             .mini-container-left {
               width: 278px;
               padding: 10px 0 10px 15px;
             }
         
             .mini-container-right {
               width: 278px;
               padding: 10px 14px 10px 15px;
             }
         
             .product {
               text-align: left;
               vertical-align: top;
               width: 175px;
             }
         
             .total-space {
               padding-bottom: 8px;
               display: inline-block;
             }
         
             .item-table {
               padding: 50px 20px;
               width: 560px;
             }
         
             .item {
               width: 300px;
             }
         
             .mobile-hide-img {
               text-align: left;
               width: 125px;
             }
         
             .mobile-hide-img img {
               border: 1px solid #e6e6e6;
               border-radius: 4px;
             }
         
             .title-dark {
               text-align: left;
               border-bottom: 1px solid #cccccc;
               color: #4d4d4d;
               font-weight: 700;
               padding-bottom: 5px;
             }
         
             .item-col {
               padding-top: 20px;
               text-align: left;
               vertical-align: top;
             }
         
             .force-width-gmail {
               min-width:600px;
               height: 0px !important;
               line-height: 1px !important;
               font-size: 1px !important;
             }
         
           </style>
         
           <style type='text/css' media='screen'>
             @import url(http://fonts.googleapis.com/css?family=Oxygen:400,700);
           </style>
         
           <style type='text/css' media='screen'>
             @media screen {
               /* Thanks Outlook 2013! */
               * {
                 font-family: 'Oxygen', 'Helvetica Neue', 'Arial', 'sans-serif' !important;
               }
             }
           </style>
         
           <style type='text/css' media='only screen and (max-width: 480px)'>
             /* Mobile styles */
             @media only screen and (max-width: 480px) {
         
               table[class*='container-for-gmail-android'] {
                 min-width: 290px !important;
                 width: 100% !important;
               }
         
               img[class='force-width-gmail'] {
                 display: none !important;
                 width: 0 !important;
                 height: 0 !important;
               }
         
               table[class='w320'] {
                 width: 320px !important;
               }
         
         
               td[class*='mobile-header-padding-left'] {
                 width: 160px !important;
                 padding-left: 0 !important;
               }
         
               td[class*='mobile-header-padding-right'] {
                 width: 160px !important;
                 padding-right: 0 !important;
               }
         
               td[class='header-lg'] {
                 font-size:15px !important;
                 padding-bottom: 5px !important;
               }
         
               td[class='content-padding'] {
                 padding: 5px 0 5px !important;
               }
         
                td[class='button'] {
                 padding: 5px 5px 30px !important;
               }
         
               td[class*='free-text'] {
                 padding: 10px 18px 30px !important;
               }
         
               td[class~='mobile-hide-img'] {
                 display: none !important;
                 height: 0 !important;
                 width: 0 !important;
                 line-height: 0 !important;
               }
         
               td[class~='item'] {
                 width: 140px !important;
                 vertical-align: top !important;
               }
         
               td[class~='quantity'] {
                 width: 50px !important;
               }
         
               td[class~='price'] {
                 width: 90px !important;
               }
         
               td[class='item-table'] {
                 padding: 30px 20px !important;
               }
         
               td[class='mini-container-left'],
               td[class='mini-container-right'] {
                 padding: 0 15px 15px !important;
                 display: block !important;
                 width: 290px !important;
               }
             }
           </style>
         <table align='right' cellpadding='0' cellspacing='0' class='container-for-gmail-android' width='100%' dir='rtl'>
    
                            <tr>
                            <td  width='100%' class=''>
                            <center>
                            <img src='".$logo."'>
                            </center>
                            </td>
                            </tr>
          
             
           <tr>
             <td align='center' valign='top' width='100%' style='background-color: #f7f7f7;' class='content-padding'>
                 <table cellspacing='0' cellpadding='0' width='600' class='w320'>
                   <tr>
                     <td class='header-lg'>عزيزى
                     <span style='color: #ffad18;'> </span>تحية طيبة وبعد
                     </td>
                   </tr>
                   <tr>
                     <td class='headerlgb'>".$main_msg."
    
                    </td>
                   </tr>
                   
                   <tr>
                   <td class='headerlgb'> للتحميل السيرة الذاتية اضغط هنا".$cv."
  
                  </td>
                 </tr>
           <tr>
             <td align='center' valign='top' width='100%'' style='background-color: #f7f7f7; height: 100px;'>
               <center>
                 <table cellspacing='0' cellpadding='0' width='600' class='w320'>
                   <tr>
                     <td style='padding:5px 0 25px' class='free-text headerlgb1'>
                       &copy; جميع الحقوق محفوظة لدى شركة <a href='https://soapco-sa.com'> SOAPCO-السوابوكى  </a>  <br />
                      <br /><br />
                     </td>
                   </tr>
                 </table>
               </center>
             </td>
           </tr>
         </table>
         </html>
             </div>";
             $message = $mail_message;
    $body = '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
                <html xmlns="http://www.w3.org/1999/xhtml">
                <head>
                    <meta http-equiv="Content-Type" content="text/html; charset=' . strtolower(config_item('charset')) . '" />
                    <title>' . html_escape($subject) . '</title>
                    
                </head>
                <header>
                <table style="direction:rtl">
                <tr></tr>
                </table>
                </header>
                <body>
                ' . $message . '
                </body>
                </html>';
    
                $result = $this->email
              ->from('info@soapco-sa.com')
              ->reply_to('info@soapco-sa.com')    // Optional, an account where a human being reads.
              ->to($main_email)
              ->subject($subject)
              ->message($body)
              ->send();

        $this->session->set_flashdata('msg'," Your message has been sent to us");
        $this->session->mark_as_flash('msg');
        redirect(base_url("career"));
        }
           
}

/* End of file Site.php */
/* Location: ./application/modules/site/controllers/site.php */
