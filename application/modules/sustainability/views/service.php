

    <!-- Preloader Begin -->
    
<?php 
foreach($site_info as $siteinfo)
foreach($site_setting as $sitesetting)
foreach($data_products as $data_products)
?>

			<div role="main" class="main">

<section class="page-top" style="background: linear-gradient( rgba(0, 65, 136, 0.77), rgba(0, 67, 136, 0.5)), url(<?= DIR_DES_STYLE?>site_setting/<?= $sitesetting->business_banner;?>);background-size: cover;">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<ul class="breadcrumb">
					<li><a href="<?= DIR?>" style="color:#fff;">Home</a></li>
					<li ><a href="<?= DIR?>sustainability" style="color:#fff;">Sustainability</a></li>
						<li class="active"><?= $data_products->name?></li>
					

				</ul>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<h1><?= $data_products->name?></h1>
			</div>
		</div>
	</div>
</section>
	
				
				
			
				
				<div class="container">
				
				<div class="row">
						<div style="height:50px" class="col-md-12"></div>
					</div>
				
				</div>
				
				<div class="container">
				
					<div class="row">
						<div class="col-md-12">
							<h2><?= $data_products->name?></h2>

							<div class="row">


					<div class="col-md-7  col-xs-12 col-sm-12 mb-n1" >
							
				<p><?= $data_products->details;?></p>
					</div>



								<div class="col-md-5 col-xs-12 col-sm-12 mb-n1" >
								<div class="">
                        <img src="<?= DIR_DES_STYLE?>sustainability/<?= $data_products->img;?>" class="rounded float-left img_business" style="width:100%">
                       
						
					</div>
				
								</div>
								
							</div>
						</div>
				
					</div>
				
				
				
				</div>
			</div>
 
