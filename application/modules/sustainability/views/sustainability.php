

    <!-- Preloader Begin -->
<?php
foreach($site_info as $site_info)
	foreach($site_setting as $sitesetting)
                ?>




			<div role="main" class="main">

<section class="page-top" style="background: linear-gradient( rgba(0, 65, 136, 0.77), rgba(0, 67, 136, 0.5)), url(<?= DIR_DES_STYLE?>site_setting/<?= $sitesetting->sustainability_banner;?>);background-size: cover;">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<ul class="breadcrumb">
					<li><a href="<?= DIR?>" style="color:#fff;">Home</a></li>
					<li class="active">Sustainability</li>
				</ul>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<h1>Sustainability</h1>
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

							<div class="row">
<?php
if(count($products)>0){
foreach($products as $data){
?>
							<div class="col-md-4  col-xs-12 col-sm-6 mb-n1" >
							<div class="box4">
                        <img src="<?= DIR_DES_STYLE?>business/thumbnail_150/<?= $data->img;?>" class="rounded float-left img_business">
                        <div class="box-content">
                            <h3 class="title"><?= $data->name;?></h3>
                            <ul class="icon">
                                <li><a href="<?= DIR?>sustainability/service/<?= $data->id;?>" class="fa fa-link"></a></li>
                            </ul>
                        </div>
					</div>
						<a href="<?= DIR?>sustainability/service/<?= $data->id;?>" style="text-decoration: none;">
					<div class="panel panel-default">
    <div class="panel-heading"><?= $data->name;?></div>
  </div></a>
					</div>

				<?php } }?>
								
							</div>
						</div>
				
					</div>
				
				
				
				</div>
			</div>
 
