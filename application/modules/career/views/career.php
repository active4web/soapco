		<style>iframe{width:100%;height:350px}</style>
		<?php 
	foreach($site_info as $siteinfo)
	foreach($site_setting as $sitesetting)
						?>

	<div role="main" class="main">

				<section class="page-top" style="background: linear-gradient( rgba(0, 65, 136, 0.77), rgba(0, 67, 136, 0.5)), url(<?= DIR_DES_STYLE?>site_setting/<?= $sitesetting->job_banner;?>);background-size: cover;">
					<div class="container">
						<div class="row">
							<div class="col-md-12">
								<ul class="breadcrumb">
									<li><a href="<?= DIR?>" style="color:#fff">Home</a></li>
									<li class="active">join us</li>
								</ul>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<h1>join us</h1>
							</div>
						</div>
					</div>
				</section>

				<!-- Google Maps - Go to the bottom of the page to change settings and map location. -->
				
				<div class="container">

					<div class="row">
		
				
						<div class="col-md-3">

						</div>
	<div class="col-md-6" style="background:#f5f6fa;padding:30px;border-radius:0.4em;border:1px solid #f8fafc;text-align:center">
	    <div class="col-md-12" style="padding-bottom:20px;">
		<img alt="Porto" width="120" height="43" data-sticky-width="82" data-sticky-height="40" 
		src="<?= DIR_DES_STYLE;?>site_setting/soapcologo.png">
		</div>
							<div class="alert alert-success hidden" id="contactSuccess">
								<strong>Success!</strong> Your message has been sent to us.
							</div>

							<div class="alert alert-danger hidden" id="contactError">
								<strong>Error!</strong> There was an error sending your message.
							</div>

							<form id="contactForm" action="<?= DIR?>career/contact_action" method="POST" class="md-form" enctype="multipart/form-data">
							
								    
<div class="col-md-6 col-sm-12 form-group">
<input type="text" value="" data-msg-required="Please enter your name." maxlength="100" class="form-control" name="sname" id="sname" placeholder="First name *" required>
</div>

<div class="col-md-6 col-sm-12 form-group">
<input type="text" value="" data-msg-required="Please enter your name." maxlength="100" class="form-control" name="lname" id="lname" placeholder="Last name *" required>
</div>

<div class="col-md-12 form-group">
<input type="email" value="" data-msg-required="Please enter your email address." data-msg-email="Please enter a valid email address." maxlength="100" class="form-control" placeholder="Email*" name="email" id="email" required>
</div>

<div class="col-md-12 form-group">
<input type="text" value="" data-msg-required="Please enter your phone number." data-msg-email="Please enter a valid phone number." maxlength="100" class="form-control" placeholder="Phone number*" name="phone" id="phone" required>
</div>

<div class="col-md-12 form-group">
<select class="form-control" name="country_id">
<option>Select your country</option>
<?php
if(count($country)>0){
    foreach($country as $country){
?>
<option value="<?= $country->id?>">  <?= $country->title?></option>
<?php }?>
<?php }?>
</select>
</div>


<div class="col-md-12 form-group">
<input type="text" value=""   maxlength="100" class="form-control" placeholder="City" name="city" >
</div>

<div class="col-md-12 form-group">
<input type="text" value=""   maxlength="100" class="form-control" placeholder="Address" name="address" >
</div>						

<div class="col-md-12 form-group">
<select class="browser-default custom-select form-control autofocus custom-select custom-select-sm" name="job_id">
<option>Choose desired position</option>
<?php
if(count($jobs)>0){
    foreach($jobs as $jobs){
?>
<option value="<?= $jobs->id?>">  <?= $jobs->title?></option>
<?php }?>
<?php }?>
</select>
</div>


<div class="col-md-12 form-group">
<textarea maxlength="5000"  rows="5" class="form-control" name="message" id="message" required placeholder="Additional info"></textarea>
</div>

<div class="col-md-12 form-group">

<div class="form-group">
<div class="input-group">
  <input type="text" class="form-control" placeholder="Upload your CV *" readonly required>
<div class="input-group-btn">
  <span class="fileUpload btn btn-success" style="    background-color: #f5ac34;
    border-color: #f4ab34 !important;">
      <span class="upl" id="upload">Browse</span>
      <input type="file" class="upload up" id="up" onchange="readURL(this);" name="cv"    required/>
    
    </span><!-- btn-orange -->
    
 </div><!-- btn -->
 </div><!-- group -->
 </div><!-- form-group -->
  <lebal style="    text-align: left;
    font-size: 18px;
    float: left;">Only pdf/doc </lebal>
  </div>

<div class="col-md-12 form-group text-right" >
    <input type="reset" value="RESET" class="btn btn-primary btn-lg" data-loading-text="Loading..."  style="font-size:17px;padding:8px 16px 5px;background-color: #f5ac34;border-color: #f4ab34 !important;">

<input type="submit" value="Send" class="btn btn-primary btn-lg" data-loading-text="Loading..."    style="font-size:17px;padding:8px 16px 5px;background-color: #f5ac34;border-color: #f4ab34 !important;">

</div>

							</form>
						</div>
						<div class="col-md-3"></div>
					</div>

				</div>

			</div>
			