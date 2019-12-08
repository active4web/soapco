<footer>
<?php foreach($site_info as $siteinfo)?>
<footer id="footer">
				<div class="container">
					<div class="row">
						
						<div class="col-md-4">
							<div class="newsletter">
								<h4>About Us</h4>
								<p style="color:#fff;font-size:15px;margin-left:10px;">
								    <?= $siteinfo->footer_about;?>
								</p>
			
							
							</div>
						</div>
						<div class="col-md-2">
							<h4>Our Business</h4>
							<div id="tweet" class="twitter" data-plugin-tweets data-plugin-options='{"username": "", "count": 2}'>
								<ul class="contact">
								    <?php
								    $footerproduct=$this->db->order_by("id","desc")->limit(4)->get_where('products',array('view'=>'1'))->result();
								    if(count($footerproduct)>0){
								    foreach($footerproduct as $footerpro){
								    ?>
									<li><a href="<?= DIR?>business/service/<?= $footerpro->id;?>"><?= $footerpro->name;?></a></li>
									<?php } }?>
								</ul>
							</div>
						</div>
						<div class="col-md-2">
							<div class="contact-details">
								<h4>Career</h4>
								<ul class="contact">
									<li><p><a href="<?= DIR?>career">Join SOAPCO</a></p></li>
									
								</ul>
							</div>
						</div>
						<div class="col-md-4">
							<div class="contact-details">
								<h4>Contact Us</h4>
								<ul class="contact">
									<li><p><i class="fa fa-map-marker"></i> <strong style="margin-right:5px;">Address:</strong><?= $siteinfo->address;?></p></li>
									<li><p><i class="fa fa-phone"></i> <strong style="margin-right:5px;">Phone:</strong><?= $siteinfo->phone;?></p></li>
									<li><p><i class="fa fa-envelope"></i> <strong style="margin-right:5px;">Email:</strong> <a href="mailto:<?= $siteinfo->email;?>"><?= $siteinfo->email;?></a></p></li>
								</ul>
								<div class="social-icons">
								<ul class="social-icons">
									<li class="facebook"><a href="<?= $siteinfo->facebook;?>" target="_blank" data-placement="bottom" data-tooltip title="Facebook">Facebook</a></li>
									<li class="twitter"><a href="<?= $siteinfo->twitter;?>" target="_blank" data-placement="bottom" data-tooltip title="Twitter">Twitter</a></li>
									<li class="linkedin"><a href="<?= $siteinfo->linkedin;?>" target="_blank" data-placement="bottom" data-tooltip title="Linkedin">Linkedin</a></li>
									<li class="googleplus"><a href="<?= $siteinfo->google_pluse;?>" target="_blank" data-placement="bottom" data-tooltip title="Linkedin">Google Plus</a></li>
								</ul>
							</div>
							</div>
						</div>

						
					</div>
				</div>
				<div class="footer-copyright">
					<div class="container">
						<div class="row">
							
							<div class="col-md-12">
								
		<h5  style=" margin-top: 10px; margin-bottom: 10px;font-size:14px;color:#fff !important">All Rights Reserved for SOAPCO &amp; SOAPCO ©2019.</h5>
							</div>
						
						</div>
					</div>
				</div>
			</footer>
		</div>

		<!-- Vendor -->
		<script src="<?= base_url()?>assets/vendor/jquery/jquery.js"></script>
		<script src="<?= base_url()?>assets/vendor/jquery.appear/jquery.appear.js"></script>
		<script src="<?= base_url()?>assets/vendor/jquery.easing/jquery.easing.js"></script>
		<script src="<?= base_url()?>assets/vendor/jquery-cookie/jquery-cookie.js"></script>
		<script src="<?= base_url()?>assets/vendor/bootstrap/bootstrap.js"></script>
	<script src="<?= base_url()?>assets/vendor/common/common.js"></script>

		<script src="<?= base_url()?>assets/vendor/jquery.validation/jquery.validation.js"></script>
		<script src="<?= base_url()?>assets/vendor/jquery.stellar/jquery.stellar.js"></script>
		<script src="<?= base_url()?>assets/vendor/jquery.easy-pie-chart/jquery.easy-pie-chart.js"></script>
		<script src="<?= base_url()?>assets/vendor/jquery.gmap/jquery.gmap.js"></script>
		<script src="<?= base_url()?>assets/vendor/isotope/jquery.isotope.js"></script>
		<script src="<?= base_url()?>assets/vendor/owlcarousel/owl.carousel.js"></script>
		<script src="<?= base_url()?>assets/vendor/jflickrfeed/jflickrfeed.js"></script>
		<script src="<?= base_url()?>assets/vendor/magnific-popup/jquery.magnific-popup.js"></script>
		<script src="<?= base_url()?>assets/vendor/vide/vide.js"></script>
		
		<!-- Theme Base, Components and Settings -->
	
		
		<!-- Specific Page Vendor and Views -->
		<script src="<?= base_url()?>assets/vendor/rs-plugin/js/jquery.themepunch.tools.min.js"></script>
		<script src="<?= base_url()?>assets/vendor/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
		<script src="<?= base_url()?>assets/vendor/circle-flip-slideshow/js/jquery.flipshow.js"></script>
		<script src="<?= base_url()?>assets/js/views/view.home.js"></script>
		
		<!-- Theme Custom -->
		<script src="<?= base_url()?>assets/js/custom.js"></script>
		
		<!-- Theme Initialization Files -->
		<script src="<?= base_url()?>assets/js/theme.js"></script>
		<script src="<?= base_url()?>assets/js/theme.init.js"></script>
		    <script type="text/javascript" src="<?= base_url()?>design/frontpage/toastr/toastr.min.js"></script>
    <link href="<?= base_url()?>design/frontpage/toastr/toastr.min.css" rel="stylesheet">
    	<?php if(isset($_SESSION['msg']) && $_SESSION['msg']!=''){?>
<script>
$(document).ready(function(e) {
	toastr.info("<strong>Success!</strong> Your message has been sent to us.")
});
</script>
<?php }?>


<script>

$(document).on('change','.up', function(){
            var names = [];
            var length = $(this).get(0).files.length;
                for (var i = 0; i < $(this).get(0).files.length; ++i) {
                    names.push($(this).get(0).files[i].name);
                }
                // $("input[name=file]").val(names);
                if(length>2){
                  var fileName = names.join(', ');
                  $(this).closest('.form-group').find('.form-control').attr("value",length+" files selected");
                }
                else{
                    $(this).closest('.form-group').find('.form-control').attr("value",names);
                }
       });


</script>
	</body>
</html>


