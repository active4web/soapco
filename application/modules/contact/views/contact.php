		<style>iframe{width:100%;height:350px}</style>
		<?php 
	foreach($site_info as $siteinfo)
	foreach($site_setting as $sitesetting)
						?>

	<div role="main" class="main">

				<section class="page-top" style="background: linear-gradient( rgba(0, 65, 136, 0.77), rgba(0, 67, 136, 0.5)), url(<?= DIR_DES_STYLE?>site_setting/<?= $sitesetting->contact_banner;?>);background-size: cover;">
					<div class="container">
						<div class="row">
							<div class="col-md-12">
								<ul class="breadcrumb">
									<li><a href="<?= DIR?>" style="color:#fff">Home</a></li>
									<li class="active">Contact Us</li>
								</ul>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<h1>Contact Us</h1>
							</div>
						</div>
					</div>
				</section>

				<!-- Google Maps - Go to the bottom of the page to change settings and map location. -->
				
				<div class="container">

					<div class="row">
					<div class="col-md-4">
				<h4 class="push-top contact_info"><i class="icon-map-marker contact_info_icon"></i>ADDRESS</h4>
				<p><?= $siteinfo->address;?></p>
				</div>
					<div class="col-md-4">
		<h4 class="push-top contact_info"><i class="fa fa-mobile contact_info_icon"></i>PHONE</h4>
		<p style="margin:0 0 0px"><?= $siteinfo->phone;?></p>
		<p style="margin:0 0 0px"><?= $siteinfo->phone_second;?></p>
			<p style="margin:0 0 0px"><?= $siteinfo->phone_third;?></p>
		</div>
					<div class="col-md-4">
	<h4 class="push-top contact_info"><i class="fa fa-envelope-o contact_info_icon"></i>E-MAIL</h4>
		<p style="margin:0 0 0px"><?= $siteinfo->email;?></p>
		<p style="margin:0 0 0px"><?= $siteinfo->email_second;?></p>
			<p style="margin:0 0 0px"><?= $siteinfo->email_third;?></p>
					    </div>
				<div class="col-md-12" style="height:30px"></div>		    
						<div class="col-md-6">
						    <h4><br></h4>
                           <?= $siteinfo->map;?>
					

						</div>
	<div class="col-md-6">
	<h4 class="push-top">Get in <strong>touch</strong></h4>
							<div class="alert alert-success hidden" id="contactSuccess">
								<strong>Success!</strong> Your message has been sent to us.
							</div>

							<div class="alert alert-danger hidden" id="contactError">
								<strong>Error!</strong> There was an error sending your message.
							</div>

							<form id="contactForm" action="<?= base_url();?>contact/contact_action" method="POST">
								<div class="row">
									<div class="form-group">
										<div class="col-md-12">
											<label>Your name *</label>
											<input type="text" value="" data-msg-required="Please enter your name." maxlength="100" class="form-control" name="name" id="name" required>
										</div>
										<div class="col-md-12">
											<label>Your email ID *</label>
											<input type="email" value="" data-msg-required="Please enter your email address." data-msg-email="Please enter a valid email address." maxlength="100" class="form-control" name="email" id="email" required>
										</div>
												<div class="col-md-12">
											<label>Your company name*</label>
											<input type="text" value="" data-msg-required="Please enter your email address." data-msg-email="Please enter a valid email address." maxlength="100" class="form-control" name="com" id="com" required>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="form-group">
										<div class="col-md-12">
											<label>Phone</label>
											<input type="text" value="" data-msg-required="Please enter the subject." maxlength="100" class="form-control" name="phone" id="phone" required>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="form-group">
										<div class="col-md-12">
											<label>Message *</label>
											<textarea maxlength="5000" data-msg-required="Please enter your message." rows="5" class="form-control" name="message" id="message" required st></textarea>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-12">
										<input type="submit" value="Send Message" class="btn btn-primary btn-lg" data-loading-text="Loading...">
									</div>
								</div>
							</form>
						</div>
					</div>

				</div>

			</div>
