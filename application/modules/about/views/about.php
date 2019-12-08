		<?php 
	foreach($site_info as $siteinfo)
	foreach($site_setting as $sitesetting)
	
						?>

<div role="main" class="main">

<section class="page-top" style="background: linear-gradient( rgba(0, 65, 136, 0.77), rgba(0, 67, 136, 0.5)), url(<?= DIR_DES_STYLE?>site_setting/<?= $sitesetting->about_img;?>);background-size: cover;">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<ul class="breadcrumb">
					<li><a href="<?= DIR?>" style="color:#fff;">Home</a></li>
					<li class="active">About Us</li>
				</ul>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<h1>ABOUT SOAPCO</h1>
			</div>
		</div>
	</div>
</section>


<div class="container">

	<div class="row">
		<div class="col-md-12">
			<div class="row">
				<div class="col-md-12">
				  <?= $sitesetting->about;?>
				
				</div>
		

			


			</div>
		</div>
	</div>

</div>




</div>
