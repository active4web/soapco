

    <!-- Preloader Begin -->
    
    <?php
                
                foreach($site_info as $site_info)
                ?>




			<div role="main" class="main">
				<div class="slider-container">
					<div class="slider" id="revolutionSlider" data-plugin-revolution-slider data-plugin-options='{"startheight":400}'>
						<ul>
						    <?php
foreach($slider as $data){
?>
							<li data-transition="fade" data-slotamount="6" data-masterspeed="200" >
				
								<img src="<?= base_url()?>uploads/slider/<?= $data->img?>" data-bgfit="cover" data-bgposition="left top" data-bgrepeat="no-repeat">
							</li>
						<?php }?>
						</ul>
					</div>
				</div>
	
				
				
			
				
				<div class="container">
				
				<div class="row">
						<div style="height:50px" class="col-md-12"></div>
					</div>
				
				</div>
				
				<div class="container">
				
					<div class="row">
						<div class="col-md-12">
							<h2> <strong>OUR BUSINESS</strong></h2>

							<div class="row">
<?php
if(count($products)>0){
    $count=0;
foreach($products as $data){
    $count++;
    
?>
							<div class="col-md-4  col-xs-12 col-sm-6 mb-n1" >
							<div class="box4">
                        <img src="<?= DIR_DES_STYLE?>business/thumbnail_150/<?= $data->img;?>" class="rounded float-left img_business">
                        <div class="box-content">
                            <h3 class="title"><?= $data->name;?></h3>
                            <ul class="icon">
                                <?php 
                                if($count==6){
                                ?>
                                <li><a href="<?= DIR?>career/" class="fa fa-link"></a></li>
                                <?php } else {?>
                              <li><a href="<?= DIR?>business/service/<?= $data->id;?>" class="fa fa-link"></a></li>  
                                <?php }?>
                            </ul>
                        </div>
					</div>
					  <?php if($count==6){ ?><a href="<?= DIR?>career/" style="text-decoration: none;"><?php } else {?>
					<a href="<?= DIR?>business/service/<?= $data->id;?>" style="text-decoration: none;"><?php }?>
					<div class="panel panel-default">
					     <?php if($count==6){ ?><div class="panel-heading">Join Us</div>
    <?php } else {?><div class="panel-heading"><?= $data->name;?></div> <?php }?>
  </div></a>
					</div>
					<?php }?>

				<?php }?>


<?php
if(count($site_setting)>0){

foreach($site_setting as $data_join){

    
?>
							<div class="col-md-4  col-xs-12 col-sm-6 mb-n1" >
							<div class="box4">
                        <img src="<?= DIR_DES_STYLE?>business/thumbnail_150/<?= $data_join->join_img;?>" class="rounded float-left img_business">
                        <div class="box-content">
                            <h3 class="title"><?= $data_join->join_title;?></h3>
                            <ul class="icon">
                             
                                <li><a href="<?= DIR?>career/" class="fa fa-link"></a></li>
                              
                            </ul>
                        </div>
					</div>
					 <a href="<?= DIR?>career/" style="text-decoration: none;">
				
					<div class="panel panel-default">
					    <div class="panel-heading"><?= $data_join->join_title;?></div>
  </div></a>
					</div>
					<?php }?>

				<?php }?>
								
							</div>
						</div>
				
					</div>
				
				
				
				</div>
			</div>
 
