</head>
<body>	

<?php


		$day_d=date('d');
		$month_d=date('m'); 
		$year_d=date('Y'); 
		$ip=$this->input->ip_address();
		$customer_id = $this->data->get_table_row('visiting',array('ip'=>$ip,'day_t'=>$day_d,'month_d'=>$month_d,'year_d'=>$year_d),'id');
		if($customer_id!=""){
		$visit_num = $this->data->get_table_row('visiting',array('ip'=>$ip,'day_t'=>$day_d,'month_d'=>$month_d,'year_d'=>$year_d),'visit_num');
		$data['visit_num']=$visit_num+1;
		
		$this->db->update('visiting',$data,array('ip'=>$ip,'day_t'=>$day_d,'month_d'=>$month_d,'year_d'=>$year_d));
		}
		else {
		$data['ip']=$ip;
		$data['day_t']=$day_d;
		$data['month_d']=$month_d;
		$data['year_d']=$year_d;
		$data['visit_num']=1;
		$data['date']=$year_d."-".$month_d."-".$day_d;;
		$this->db->insert('visiting',$data);
		}

$curt = $this->uri->segment(3);
$main_curt=$this->uri->segment(1);
$controller_curt=$this->uri->segment(2);
$curt_id = $this->uri->segment(4);
$this->session->set_userdata(array('curt' => $curt));
$this->session->set_userdata(array('curt_id' => $curt_id));
//echo "dfgfdg".$main_curt;
  foreach($site_info as $site_info)
?>

	</head>
	<body>
		<div class="body">
			<header id="header" data-plugin-options='{"alwaysStickyEnabled": true}'>
				<div class="container">
					<div class="logo">
						<a href="<?= DIR?>">
							<img alt="Porto"  data-sticky-width="82" data-sticky-height="40" src="<?= DIR_DES_STYLE;?>site_setting/<?= $site_info->logo?>">
						</a>
					</div>
				
					<nav style="float:right">
						<ul class="nav nav-pills nav-top">
						
						
							<li class="phone">
								<span><?= $site_info->phone?></span>
							</li>
							<li class="email">
								<a href="mailto:<?= $site_info->email?>" style="color:#fff;padding:7px 20px 9px 20px;"><i class="fa fa-envelope-o"></i>Email Us</a>
							</li>
						</ul>
					</nav>
					<button class="btn btn-responsive-nav btn-inverse" data-toggle="collapse" data-target=".nav-main-collapse">
						<i class="fa fa-bars"></i>
					</button>
				</div>
				<div class="navbar-collapse nav-main-collapse collapse">
					<div class="container">
					
						<nav class="nav-main mega-menu">
							<ul class="nav nav-pills nav-main" id="mainMenu">
								
	<li <?php if($main_curt=="index"){?>class="active" <?php }?>><a href="<?= base_url()?>">Home</a></li>
	<li <?php if($main_curt=="about"){?>class="active" <?php }?>><a href="<?= base_url()?>about">About Us</a></li>
	<li <?php if($main_curt=="business"){?>class="active" <?php }?>><a href="<?= base_url()?>business">Our Business</a></li>
		<li <?php if($main_curt=="sustainability"){?>class="active" <?php }?>><a href="<?= base_url()?>sustainability">Sustainability</a></li>
										<li  <?php if($main_curt=="career"){?>class="active" <?php }?>><a href="<?= base_url()?>career">Career</a></li>
										<li  <?php if($main_curt=="contact"){?>class="active" <?php }?>><a href="<?= base_url()?>contact">Contact Us</a></li>
								
							</ul>
						</nav>
					</div>
				</div>
			</header>
	  