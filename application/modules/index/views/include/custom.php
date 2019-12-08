



<script>
$(document).ready(function(){
$(".forgetpassword").click(function(){
 $(".forgetpassword").attr("disabled", "disabled");
    var form=$("#form");
    var data=form.serialize();
    var email=$("#email").val();
		var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;

		 if(email==""){
  toastr.error("من فضلك ادخل البريد الألكترونى"); 
      $(".forgetpassword").prop('disabled', false);
			$("#email").css('border',"1px solid #f10101");
			$("#email").css('color',"#f10101");
   }

    if (!reg.test(email)&&email!="") {
			toastr.error("البريد الألكترونى غير صحيح",  {timeOut: 5000});
			$("#email").css('border',"1px solid #f10101");
			$("#email").css('color',"#f10101");
			$(".forgetpassword").prop('disabled', false);
		}

var url="<?= base_url()?>forget_password/forget_action";
if(email!=""&&reg.test(email)){
$.ajax({
        type:"POST",
        url:url,
        data:data,
        success: function(response){
				//alert(response);
        if(response == 1){
					window.location = "<?=base_url()?>forget_password/confirmation";
 toastr.success("تم ارسال رسالة الى البريد الالكترونى تحتوى على كلمة المرور");
$(".forgetpassword").prop('disabled', false);

        }  else if(response == 2){
            toastr.error("البريد الألكترونى غير موجود");
            $(".forgetpassword").prop('disabled', false);
        }
			
        
        }
    });
    }
   
});

});
</script>



<script>
$(document).ready(function(){
$(".login").click(function(){
 $(".login").attr("disabled", "disabled");
    var form=$("#form");
    var data=form.serialize();
    var phone=$("#phone").val();
     var password=$("#password").val();
		 //alert(data);
		 if(phone==""){
  toastr.error("من فضلك ادخل رقم الجوال"); 
      $(".login").prop('disabled', false);
			$("#phone").css('border',"1px solid #f10101");

   }
         if(password==""){
  toastr.error("من فضلك ادخل كلمة المرور"); 
      $(".login").prop('disabled', false);
			$("#password").css('border',"1px solid #f10101");
   }
var url="<?= base_url()?>login/login_action";
    if(phone!=""&&password!=""){
$.ajax({
        type:"POST",
        url:url,
        data:data,
        success: function(response){
				//	alert(response);
        if(response == 1){
					window.location = "<?=base_url()?>user/";
            toastr.success("تم تسجيل الدخول  بنجاح");
$(".login").prop('disabled', false);

        }  else if(response == 2){
            toastr.error("نأسف لعدم تفعيل الحساب من جانب الادارة");
            $(".login").prop('disabled', false);
        }
				else if(response == 3){
            toastr.error("رقم الجوال او كلمة المرور غير صحيحة");
            $(".login").prop('disabled', false);
        }
        
        }
    });
    }
   
});

});
</script>


<script>
$(document).ready(function(){
$(".user").click(function(){
$("#user_type").val(1);
$(".type_user").css("background","#fcfcfe");
$(".type_user").css("color","#818181");
$(".user").css("background","#ffc108");
$(".user").css("color","#fff");

});
$(".com").click(function(){
$("#user_type").val(4);
$(".type_user").css("background","#fcfcfe");
$(".type_user").css("color","#818181");
$(".com").css("background","#ffc108");
$(".com").css("color","#fff");



});
$(".bag").click(function(){
$("#user_type").val(3);
$(".type_user").css("background","#fcfcfe");
$(".type_user").css("color","#818181");
$(".bag").css("background","#ffc108");
$(".bag").css("color","#fff");

});
$(".trainer").click(function(){
$("#user_type").val(2);
$(".type_user").css("background","#fcfcfe");
$(".type_user").css("color","#818181");
$(".trainer").css("background","#ffc108");
$(".trainer").css("color","#fff");
});
});
</script>

<script>
$(document).ready(function(){
$(".user1").click(function(){
	$(".trainer_reg").hide();
	$(".user_reg").show();
	$(".company_reg").hide();
	$(".bag_reg").hide();

$("#user_type1").val(1);
$(".type_user1").css("background","#fcfcfe");
$(".type_user1").css("color","#818181");
$(".user1").css("background","#ffc108");
$(".user1").css("color","#fff");

});
$(".com1").click(function(){
	$(".trainer_reg").hide();
	$(".user_reg").hide();
	$(".company_reg").show();
	$(".bag_reg").hide();

$("#user_type1").val(4);
$(".type_user1").css("background","#fcfcfe");
$(".type_user1").css("color","#818181");
$(".com1").css("background","#ffc108");
$(".com1").css("color","#fff");



});
$(".bag1").click(function(){
	$(".trainer_reg").hide();
	$(".user_reg").hide();
	$(".company_reg").hide();
	$(".bag_reg").show();

$("#user_type1").val(3);
$(".type_user1").css("background","#fcfcfe");
$(".type_user1").css("color","#818181");
$(".bag1").css("background","#ffc108");
$(".bag1").css("color","#fff");

});
$(".trainer1").click(function(){
	$(".trainer_reg").show();
	$(".user_reg").hide();
	$(".company_reg").hide();
	$(".bag_reg").hide();
$("#user_type1").val(2);
$(".type_user1").css("background","#fcfcfe");
$(".type_user1").css("color","#818181");
$(".trainer1").css("background","#ffc108");
$(".trainer1").css("color","#fff");
});
});
</script>



<script>
$(document).ready(function(){
$(".register_type").click(function(){
	var user_type=$("#user_type1").val();
//	alert(user_type);
	window.location="<?=DIR?>user/profile/register/"+ user_type;
});
});
</script>


<script>
$(document).ready(function(){
$(".reply_tickect").click(function(){
 $(".reply_tickect").attr("disabled", "disabled");
    var form=$("#form");
    var data=form.serialize();
    var message=$("#message").val();
	
		 if(message==""){
  toastr.error("من فضلك اكتب محتوى الرسالة"); 
      $(".reply_tickect").prop('disabled', false);
			$("#message").css('border',"1px solid #f10101");
			$("#message").css('color',"#f10101");
   }

  

var url="<?= base_url()?>user/ticket/replay_action";
if(message!=""){
$.ajax({
        type:"POST",
        url:url,
        data:data,
        success: function(response){
				//	 alert(response);
        if(response == 1){
					window.location.reload();
 toastr.success("تم ارسال رسالتك بنجاح");
$(".forgetpassword").prop('disabled', false);

        }  else if(response == 2){
            toastr.error("فشل عملية الارسال");
            $(".forgetpassword").prop('disabled', false);
        }
			
        
        }
    });
    }
   
});

});
</script>

<script>
$(document).ready(function(){
$(".ticket_tp").click(function(){
	$(".ticket_tp").css("background","#357cfe")
 var val_txt=$(this).nextAll(".div_txt").val();
 $("#tickets_types").val(val_txt);
 $(this).css("background","#FFC108")
});
});
</script>



<script>
$(document).ready(function(){
$(".new_tickect").click(function(){

 $(".new_tickect").attr("disabled", "disabled");
    var form=$("#new_form");
    var data=form.serialize();
    var message=$("#message_new").val();
	
		 if(message==""){
  toastr.error("من فضلك اكتب محتوى الرسالة"); 
      $(".new_tickect").prop('disabled', false);
			$("#message_new").css('border',"1px solid #f10101");
			$("#message_new").css('color',"#f10101");
   }

  

var url="<?= base_url()?>user/ticket/new_action";
if(message!=""){
$.ajax({
        type:"POST",
        url:url,
        data:data,
        success: function(response){
				//	 alert(response);
        if(response == 1){
					window.location.reload();
 toastr.success("تم ارسال رسالتك بنجاح");
$(".new_tickect").prop('disabled', false);

        }  else if(response == 2){
            toastr.error("فشل عملية الارسال");
            $(".new_tickect").prop('disabled', false);
        }
			
        
        }
    });
    }
   
});

});
</script>



<script>
$(document).ready(function(){
$(".notify_menu").click(function(){

	$.ajax({
        type:"POST",
        url:"<?=base_url()?>user/notification/empty_all",
        success: function(response){
					toastr.success("تم الحذف بنجاح");
					window.location.reload();
}
    });


});
});
</script>


<script>
$(document).ready(function(){
$(".change_profile").click(function(){
 $(".change_profile").attr("disabled", "disabled");

		var name=$("#name").val();
		var phone=$("#phone").val();
		var email=$("#email").val();
		var age=$("#age").val();
		var cityid=$("#cityid").val();
		var cat_id=$("#cat_id").val();


var formData = new FormData(data);
var form = $('#form')[0];
var data = new FormData(form);

		 if(name==""){
  toastr.error("من فضلك اكتب الأسم "); 
      $(".change_profile").prop('disabled', false);
			$("#name").css('border',"1px solid #f10101");
			$("#name").css('color',"#f10101");
   }
	 if(name==""){
  toastr.error("من فضلك اكتب الأسم "); 
      $(".change_profile").prop('disabled', false);
			$("#name").css('border',"1px solid #f10101");
			$("#name").css('color',"#f10101");
   }
	 if(phone==""){
  toastr.error("من فضلك اكتب رقم الجوال "); 
      $(".change_profile").prop('disabled', false);
			$("#phone").css('border',"1px solid #f10101");
			$("#phone").css('color',"#f10101");
   }
	 if(email==""){
  toastr.error("من فضلك اكتب البريد الألكترونى "); 
      $(".change_profile").prop('disabled', false);
			$("#email").css('border',"1px solid #f10101");
			$("#email").css('color',"#f10101");
   }
  
	 if(age==""){
  toastr.error("من فضلك اكتب البريد عمرك "); 
      $(".change_profile").prop('disabled', false);
			$("#age").css('border',"1px solid #f10101");
			$("#age").css('color',"#f10101");
   }


var url="<?= base_url()?>user/profile/edit_profile";
if(name!=""&&phone!=""&&email!=""&&age!=""){
$.ajax({
        type:"POST",
        url:url,
        data:data,
				enctype: 'multipart/form-data',
         processData: false,
            contentType: false,
        success: function(response){
			//	alert(response);
        if(response == 1){
					window.location.reload();
 toastr.success("تم  تيغر البيانات بنجاح ");
$(".change_profile").prop('disabled', false);

        }  else if(response == 2){
            toastr.error("فشل عملية التحديث");
            $(".change_profile").prop('disabled', false);
        }
				else if(response == 3){
            toastr.error("رقم الجوال موجود سابقا");
            $(".change_profile").prop('disabled', false);
        }
				else if(response == 4){
            toastr.error("البريد الألكترونى مستخدم سابقا");
            $(".change_profile").prop('disabled', false);
        }
        
        }
    });
    }
   
});

});
</script>






<script>
$(document).ready(function(){
$(".change_password").click(function(){
 $(".change_password").attr("disabled", "disabled");
 var form=$("#form");
    var data=form.serialize();

		var curr_pass=$("#curr_pass").val();
		var new_pass=$("#new_pass").val();
		var confir_pass=$("#confir_pass").val();



		 if(curr_pass==""){
  toastr.error("من فضلك اكتب كلمة المرور الحالية"); 
      $(".change_password").prop('disabled', false);
			$("#curr_pass").css('border',"1px solid #f10101");
			$("#curr_pass").css('color',"#f10101");
   }
	 else if(new_pass==""){
  toastr.error("من فضلك اكتب كلمة المرور الجديدة"); 
      $(".change_password").prop('disabled', false);
			$("#new_pass").css('border',"1px solid #f10101");
			$("#new_pass").css('color',"#f10101");
   }
	 else if(confir_pass==""){
  toastr.error("تاكيد كلمة المرور الجديدة مطلوب"); 
      $(".change_password").prop('disabled', false);
			$("#confir_pass").css('border',"1px solid #f10101");
			$("#confir_pass").css('color',"#f10101");
   }

	 else if(confir_pass!=new_pass){
  toastr.error("تاكيد كلمة المرور الجديدة غير متطابق"); 
      $(".change_password").prop('disabled', false);
			$("#confir_pass").css('border',"1px solid #f10101");
			$("#confir_pass").css('color',"#f10101");
			$("#new_pass").css('border',"1px solid #f10101");
			$("#new_pass").css('color',"#f10101");
   }


var url="<?= base_url()?>user/profile/password_action";
if(curr_pass!=""&&new_pass!=""&&confir_pass!="" && new_pass==confir_pass){
$.ajax({
        type:"POST",
        url:url,
        data:data,
        success: function(response){
			//alert(response);
        if(response == 1){
					window.location.reload();
 toastr.success("تم  تيغر البيانات بنجاح ");
$(".change_password").prop('disabled', false);

        }  else if(response == 2){
            toastr.error("كلمة المرور الحالية غير صحيحة");
            $(".change_password").prop('disabled', false);
						$("#new_pass").css('border',"1px solid #f10101");
		      	$("#new_pass").css('color',"#f10101");

        }
				
        
        }
    });
    }
   
});

});
</script>


<script>
$(document).ready(function(){
$(".update_info").click(function(){
 $(".update_info").attr("disabled", "disabled");
 var form=$("#form");
    var data=form.serialize();
//alert(data);
		var about=$("#about").val();
		var field_name=$("#field_name").val();
		var exp=$("#exp").val();
		var comp=$("#comp").val();


		 if(about==""){
  toastr.error("من فضلك اكتب مقدمة تعريفية عن نفسك"); 
      $(".update_info").prop('disabled', false);
			$("#about").css('border',"1px solid #f10101");
			$("#about").css('color',"#f10101");
   }
	

	 if(exp==""){
  toastr.error("من فضلك اكتب خبرتك فى مجال العمل"); 
      $(".update_info").prop('disabled', false);
			$("#exp").css('border',"1px solid #f10101");
			$("#exp").css('color',"#f10101");
   }
	


	 if(comp==""){
  toastr.error("من فضلك اكتب اسم شركة سابق لك العمل فيها"); 
      $(".update_info").prop('disabled', false);
			$("#comp").css('border',"1px solid #f10101");
			$("#comp").css('color',"#f10101");
   }
	
	 




var url="<?= base_url()?>user/profile/update_info_action";
if(about!=""&&field_name!=""&&comp!=""&&exp!=""){
$.ajax({
        type:"POST",
        url:url,
        data:data,
        success: function(response){
			//alert(response);
        if(response == 1){
					window.location.reload();
 toastr.success("تم  تيغر البيانات بنجاح ");
$(".update_info").prop('disabled', false);

        } 
        
        }
    });
    }
   
});

});
</script>




<script>
$(document).ready(function(){
$(".register_account").click(function(){
 $(".register_account").attr("disabled", "disabled");
 var formData = new FormData(data);
var form = $('#form')[0];
var data = new FormData(form);

		var name=$("#name").val();
		var phone=$("#phone").val();
		var email=$("#email").val();
		var pass=$("#pass").val();
		var conpass=$("#conpass").val();
		var age=$("#age").val();
		var usertype=$("#usertype").val();
		var reg_phone =/^\+?([0-9])\)?[-. ]?([0-9])[-. ]?([0-9])$/;
		var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
	//	var reg_usertype = /^\+?([1-4]{1})\)$/;
if(usertype>4||usertype<1){
	toastr.error("نوع العضوية غير صحيح"); 
      $(".register_account").prop('disabled', false);
}
else		 if(name==""){
  toastr.error("من فضلك حدد الاسم كامل"); 
      $(".register_account").prop('disabled', false);
			$("#name").css('border',"1px solid #f10101");
			$("#name").css('color',"#f10101");
   }
	

	 else if(phone==""){
  toastr.error("رقم الجوال مطلوب"); 
      $(".register_account").prop('disabled', false);
			$("#phone").css('border',"1px solid #f10101");
			$("#phone").css('color',"#f10101");
   }
	

	 else if (!reg_phone.test(phone)&&phone!="") {
			toastr.error("رقم الجوال غير صحيح");
			$("#phone").css('border',"1px solid #f10101");
			$("#phone").css('color',"#f10101");
			$(".register_account").prop('disabled', false);
		}

	 else if(email==""){
  toastr.error("البريد الألكترونى مطلوب"); 
      $(".register_account").prop('disabled', false);
			$("#email").css('border',"1px solid #f10101");
			$("#email").css('color',"#f10101");
   }




   else if (!reg.test(email)&&email!="") {
			toastr.error("البريد الألكترونى غير صحيح");
			$("#email").css('border',"1px solid #f10101");
			$("#email").css('color',"#f10101");
			$(".register_account").prop('disabled', false);
		}

	 else if(pass==""){
  toastr.error("كلمة المرور مطلوبة"); 
      $(".register_account").prop('disabled', false);
			$("#pass").css('border',"1px solid #f10101");
			$("#pass").css('color',"#f10101");
   }
	
	 else if(conpass==""){
  toastr.error("تأكيد كلمة المرور مطلوب"); 
      $(".register_account").prop('disabled', false);
			$("#conpass").css('border',"1px solid #f10101");
			$("#conpass").css('color',"#f10101");
   }

	 else if(conpass!=pass){
  toastr.error("كلمة المرور غير متطابقة"); 
      $(".register_account").prop('disabled', false);
			$("#conpass").css('border',"1px solid #f10101");
			$("#pass").css('border',"1px solid #f10101");
   }
	 

	 else if(age==""){
  toastr.error("العمر مطلوب"); 
      $(".register_account").prop('disabled', false);
			$("#age").css('border',"1px solid #f10101");
			$("#age").css('color',"#f10101");
   }


var url="<?= base_url()?>user/profile/register_action";
if(name!=""&&phone!=""&&email!=""&&pass!=""&&conpass!=""&&usertype!=""&&conpass==pass&&age!=""&&reg.test(email)&&reg_phone.test(phone)){
$.ajax({
        type:"POST",
        url:url,
        data:data,
				enctype: 'multipart/form-data',
         processData: false,
            contentType: false,
        success: function(response){
			//alert(response);
        if(response == 1){
			//	window.location="<?=DIR?>login";
 if(usertype==1){
	toastr.success("تم انشاء الحساب ويمكن الدخول على حسابك حاليا");
 }
 else { toastr.success("تم انشاء الحساب بنجاح سوف يتم تفعيله فى خلال 24 بعد مراجعة كل البيانات");}
$(".register_account").prop('disabled', false);
$(":text").val('');
$(":password").val('');

        }

				else if(response == 3){
            toastr.error("رقم الجوال موجود سابقا");
            $(".register_account").prop('disabled', false);
						$("#phone").css('border',"1px solid #f10101");
        }
				else if(response == 4){
            toastr.error("البريد الألكترونى مستخدم سابقا");
            $(".register_account").prop('disabled', false);
						$("#email").css('border',"1px solid #f10101");
        }

        
        }
    });
    }
   
});

});
</script>


<script>
$(document).ready(function(){
$('#course_type').on('change', function() {
  var course_type= this.value ;
	if(course_type==3){
		$(".accreditation_number").hide();
	}
});
});
</script>

<script>
$(document).ready(function(){
$(".add_bag").click(function(){
 $(".add_bag").attr("disabled", "disabled");
 var formData = new FormData(data);
var form = $('#form')[0];
var data = new FormData(form);
var user_type=$("#user_type").val();
//alert(user_type);
if(user_type==4){
	var price=$("#price").val();
	var duration=$("#duration").val();
	var Institute_name=$("#Institute_name").val();
	var Institute_img=$("#Institute_img").val();
	var Institute_about=$("#Institute_about").val();
	var accreditation_number=$("#accreditation_number").val();
	var num_seats=$("#num_seats").val();
	var date=$("#date").val();
	var course_type=$("#course_type").val();
}


var name=$("#name").val();
var about=$("#about").val();
var field_name=$("#field_name").val();
var img_value=$(".img_value").val();

if(user_type==3){
var bage_total_daies=$("#bage_total_daies").val();
var week_bage_daies=$("#week_bage_daies").val();
var bage_hrs=$("#bage_hrs").val();
}
		if(img_value==""){
			if(user_type==3){toastr.error("صورة الحقيبة مطلوبة"); }
			else 	if(user_type==4){ toastr.error("صورة الدورة او الدبلومة مطلوبة"); }
      $(".add_bag").prop('disabled', false);
			$(".img_value").css('border',"1px solid #f10101");
			$(".img_value").css('color',"#f10101");
   }
		
	 else if(name==""){
  
	if(user_type==3){toastr.error("من فضلك ادخل اسم الحقيبة"); ; }
	else 	if(user_type==4){ toastr.error("من فضلك ادخل اسم الدورة او الدبلومة"); ; }
      $(".add_bag").prop('disabled', false);
			$("#name").css('border',"1px solid #f10101");
			$("#name").css('color',"#f10101");
   }
	

	 else if(about==""){
	if(user_type==3){toastr.error("وصف الحقيبة مطلوب"); }
	else 	if(user_type==4){ toastr.error("وصف الدورة او الدبلومة مطلوب");}
      $(".add_bag").prop('disabled', false);
			$("#about").css('border',"1px solid #f10101");
			$("#about").css('color',"#f10101");
   }
	
	 else if(price==""&&user_type==4){
       toastr.error("سعر الدورة او الدبلومة مطلوب"); 
      $(".add_bag").prop('disabled', false);
			$("#price").css('border',"1px solid #f10101");
			$("#price").css('color',"#f10101");
   }

	
	 else if(duration==""&&user_type==4){
       toastr.error("مدة الدورة او الدبلومة مطلوب"); 
      $(".add_bag").prop('disabled', false);
			$("#duration").css('border',"1px solid #f10101");
			$("#duration").css('color',"#f10101");
   }

	 else if(accreditation_number==""&&user_type==4&&course_type==1){
       toastr.error("رقم اعتماد الدورة مطلوب"); 
      $(".add_bag").prop('disabled', false);
			$("#accreditation_number").css('border',"1px solid #f10101");
			$("#accreditation_number").css('color',"#f10101");
   }
	 else if(num_seats==""&&user_type==4){
       toastr.error("عدد مقاعد الدورة او الدبلومة"); 
      $(".add_bag").prop('disabled', false);
			$("#num_seats").css('border',"1px solid #f10101");
			$("#num_seats").css('color',"#f10101");
   }

	 else if(date==""&&user_type==4){
       toastr.error("تاريخ الدورة او الدبلومة"); 
      $(".add_bag").prop('disabled', false);
			$("#date").css('border',"1px solid #f10101");
			$("#date").css('color',"#f10101");
   }
	 

	 else if(field_name==""){

	if(user_type==3){  toastr.error("محتوى الحقيبة مطلوبة"); }
	else 	if(user_type==4){  toastr.error("محتوى الدورة او الدبلومة مطلوب"); }
      $(".add_bag").prop('disabled', false);
			$("#field_name").css('border',"1px solid #f10101");
			$("#field_name").css('color',"#f10101");
   }

	 else if(Institute_name==""&&user_type==4){
       toastr.error("اسم مقدم الدورة مطلوب"); 
      $(".add_bag").prop('disabled', false);
			$("#Institute_name").css('border',"1px solid #f10101");
			$("#Institute_name").css('color',"#f10101");
   }
	 else if(Institute_about==""&&user_type==4){
       toastr.error("وصف مقدم الدورة مطلوب"); 
      $(".add_bag").prop('disabled', false);
			$("#Institute_about").css('border',"1px solid #f10101");
			$("#Institute_about").css('color',"#f10101");
   }
	 else if(Institute_img==""&&user_type==4){
       toastr.error("صورة مقدم  الدورة"); 
      $(".add_bag").prop('disabled', false);
			$("#Institute_img").css('border',"1px solid #f10101");
			$("#Institute_img").css('color',"#f10101");
   }

	 else if(bage_total_daies==""&&user_type==3){
  toastr.error("اجمالى عدد ايام الحقيبة"); 
      $(".add_bag").prop('disabled', false);
			$("#add_bag").css('border',"1px solid #f10101");
			$("#add_bag").css('color',"#f10101");
   }
	
	 else if(week_bage_daies==""&&user_type==3){
  toastr.error("اجمالى عدد الأيام فى الأسبوع"); 
      $(".add_bag").prop('disabled', false);
			$("#week_bage_daies").css('border',"1px solid #f10101");
			$("#week_bage_daies").css('color',"#f10101");
   }

	 else if(bage_hrs==""&&user_type==3){
  toastr.error("اجمالى عدد ساعات الحقيبة"); 
      $(".add_bag").prop('disabled', false);
			$("#bage_hrs").css('border',"1px solid #f10101");
			$("#bage_hrs").css('color',"#f10101");
   }

if(user_type==3){
var url="<?= base_url()?>user/bags/bag_action";

if(bage_hrs!=""&&week_bage_daies!=""&&bage_total_daies!=""&&field_name!=""&&about!=""&&name!=""&&img_value!=""){
$.ajax({
        type:"POST",
        url:url,
        data:data,
				enctype: 'multipart/form-data',
         processData: false,
            contentType: false,
        success: function(response){
					//alert(response);
        if(response == 1){
					if(user_type==3){	
	toastr.success("تم اضافة الحقيبة بنجاح وسوف يتم مراجعتها من قبل الأدارة");
					}
					else{
						toastr.success("تم اضافة الدورة او الدبلومة بنجاح وسوف يتم مراجعتها من قبل الأدارة");
					}
$(".add_bag").prop('disabled', false);
$(":text").val('');
$("textarea").val('');
$(":number").val('');
        }


        
        }
    });
    }

}
else if(user_type==4){var url="<?= base_url()?>user/company/bag_action";

if(price!=""&&duration!=""&&Institute_img!=""&&Institute_name!=""&&Institute_about!=""&&field_name!=""&&about!=""&&name!=""&&num_seats!=""&&date!=""){
$.ajax({
        type:"POST",
        url:url,
        data:data,
				enctype: 'multipart/form-data',
         processData: false,
            contentType: false,
        success: function(response){
					//alert(response);
        if(response == 1){
					if(user_type==3){	
	toastr.success("تم اضافة الحقيبة بنجاح وسوف يتم مراجعتها من قبل الأدارة");
					}
					else{
						toastr.success("تم اضافة الدورة او الدبلومة بنجاح وسوف يتم مراجعتها من قبل الأدارة");
					}
$(".add_bag").prop('disabled', false);
$(":text").val('');
$("textarea").val('');
$(":number").val('');
        }


        
        }
    });
    }
} 
});

});
</script>



<script>
$(document).ready(function(){
$(".edit_bag").click(function(){
 $(".edit_bag").attr("disabled", "disabled");
 var formData = new FormData(data);
var form = $('#form')[0];
var data = new FormData(form);

		var name=$("#name").val();
		var about=$("#about").val();
		var field_name=$("#field_name").val();
		var bage_total_daies=$("#bage_total_daies").val();
		var week_bage_daies=$("#week_bage_daies").val();
		var bage_hrs=$("#bage_hrs").val();
		var img_value=$(".img_value").val();
		

		
	  if(name==""){
  toastr.error("من فضلك ادخل اسم الحقيبة"); 
      $(".edit_bag").prop('disabled', false);
			$("#name").css('border',"1px solid #f10101");
			$("#name").css('color',"#f10101");
   }
	

	 else if(about==""){
  toastr.error("وصف الحقيبة مطلوب"); 
      $(".edit_bag").prop('disabled', false);
			$("#about").css('border',"1px solid #f10101");
			$("#about").css('color',"#f10101");
   }
	

	

	 else if(field_name==""){
  toastr.error("محتوى الحقيبة مطلوبة"); 
      $(".edit_bag").prop('disabled', false);
			$("#field_name").css('border',"1px solid #f10101");
			$("#field_name").css('color',"#f10101");
   }


	 else if(bage_total_daies==""){
  toastr.error("اجمالى عدد ايام الحقيبة"); 
      $(".edit_bag").prop('disabled', false);
			$("#bage_total_daies").css('border',"1px solid #f10101");
			$("#bage_total_daies").css('color',"#f10101");
   }
	
	 else if(week_bage_daies==""){
  toastr.error("اجمالى عدد الأيام فى الأسبوع"); 
      $(".edit_bag").prop('disabled', false);
			$("#week_bage_daies").css('border',"1px solid #f10101");
			$("#week_bage_daies").css('color',"#f10101");
   }

	 else if(bage_hrs==""){
  toastr.error("اجمالى عدد ساعات الحقيبة"); 
      $(".add_bag").prop('disabled', false);
			$("#bage_hrs").css('border',"1px solid #f10101");
			$("#bage_hrs").css('color',"#f10101");
   }


var url="<?= base_url()?>user/bags/editbag_action";
if(bage_hrs!=""&&week_bage_daies!=""&&bage_total_daies!=""&&field_name!=""&&about!=""&&name!=""){
$.ajax({
        type:"POST",
        url:url,
        data:data,
				enctype: 'multipart/form-data',
         processData: false,
            contentType: false,
        success: function(response){
				//	alert(response);
        if(response == 1){
	toastr.success("تم تعديل بيانات الحقيبة بنجاح");
$(".edit_bag").prop('disabled', false);

        }


        
        }
    });
    }
   
});

});
</script>





<script>
$(document).ready(function(){
$(".model_bag").click(function(){
 var delete_bag_id=$(this).next("input").val();
 $("#delete_bag").val(delete_bag_id);

});
$(".delete_dawrat").click(function(){
  var delete_bag_id=$("#delete_bag").val();
window.location="<?= DIR?>user/company/delete/"+delete_bag_id;
});

});
</script>




<script>
$(document).ready(function(){
$(".edit_dawrat").click(function(){
 $(".edit_dawrat").attr("disabled", "disabled");
 var formData = new FormData(data);
var form = $('#form')[0];
var data = new FormData(form);
var user_type=$("#user_type").val();
//alert(user_type);

	var price=$("#price").val();
	var duration=$("#duration").val();
	var Institute_name=$("#Institute_name").val();
	var Institute_img=$("#Institute_img").val();
	var Institute_about=$("#Institute_about").val();
	var accreditation_number=$("#accreditation_number").val();
	var num_seats=$("#num_seats").val();
	var date=$("#date").val();
	var course_type=$("#course_type").val();
var name=$("#name").val();
var about=$("#about").val();
var field_name=$("#field_name").val();


		
 if(name==""){
   toastr.error("من فضلك ادخل اسم الدورة او الدبلومة"); 
      $(".edit_dawrat").prop('disabled', false);
			$("#name").css('border',"1px solid #f10101");
			$("#name").css('color',"#f10101");
   }
	

	 else if(about==""){
 toastr.error("وصف الدورة او الدبلومة مطلوب");
      $(".edit_dawrat").prop('disabled', false);
			$("#about").css('border',"1px solid #f10101");
			$("#about").css('color',"#f10101");
   }
	
	 else if(price==""){
       toastr.error("سعر الدورة او الدبلومة مطلوب"); 
      $(".edit_dawrat").prop('disabled', false);
			$("#price").css('border',"1px solid #f10101");
			$("#price").css('color',"#f10101");
   }

	
	 else if(duration==""){
       toastr.error("مدة الدورة او الدبلومة مطلوب"); 
      $(".edit_dawrat").prop('disabled', false);
			$("#duration").css('border',"1px solid #f10101");
			$("#duration").css('color',"#f10101");
   }

	 else if(accreditation_number==""&&course_type==1){
       toastr.error("رقم اعتماد الدورة مطلوب"); 
      $(".edit_dawrat").prop('disabled', false);
			$("#accreditation_number").css('border',"1px solid #f10101");
			$("#accreditation_number").css('color',"#f10101");
   }
	 else if(num_seats==""){
       toastr.error("عدد مقاعد الدورة او الدبلومة"); 
      $(".edit_dawrat").prop('disabled', false);
			$("#num_seats").css('border',"1px solid #f10101");
			$("#num_seats").css('color',"#f10101");
   }

	 else if(date==""){
       toastr.error("تاريخ الدورة او الدبلومة"); 
      $(".edit_dawrat").prop('disabled', false);
			$("#date").css('border',"1px solid #f10101");
			$("#date").css('color',"#f10101");
   }
	 

	 else if(field_name==""){
  toastr.error("محتوى الدورة او الدبلومة مطلوب");
      $(".edit_dawrat").prop('disabled', false);
			$("#field_name").css('border',"1px solid #f10101");
			$("#field_name").css('color',"#f10101");
   }

	 else if(Institute_name==""){
       toastr.error("اسم مقدم الدورة مطلوب"); 
      $(".edit_dawrat").prop('disabled', false);
			$("#Institute_name").css('border',"1px solid #f10101");
			$("#Institute_name").css('color',"#f10101");
   }
	 else if(Institute_about==""){
       toastr.error("وصف مقدم الدورة مطلوب"); 
      $(".edit_dawrat").prop('disabled', false);
			$("#Institute_about").css('border',"1px solid #f10101");
			$("#Institute_about").css('color',"#f10101");
   }


var url="<?= base_url()?>user/company/editbag_action";

if(price!=""&&duration!=""&&Institute_name!=""&&Institute_about!=""&&field_name!=""&&about!=""&&name!=""&&num_seats!=""&&date!=""){
$.ajax({
        type:"POST",
        url:url,
        data:data,
				enctype: 'multipart/form-data',
         processData: false,
            contentType: false,
        success: function(response){
				//	alert(response);
        if(response == 1){
			toastr.success("تم حفظ التعديلات بنجاح");
$(".edit_dawrat").prop('disabled', false);

        }


        
        }
    });
    
} 
});

});

</script>

<script>
$(document).ready(function(){
	$(".no_myfav").click(function(){
var id=$(this).nextAll(".myfav_val").val();
var course_key=$(this).nextAll(".course_key").val();
$(this).hide();
$(this).prev(".myfav").show();

$.ajax({
        type:"POST",
        url:"<?=base_url()?>user/courses/add_fav",
        data:{id:id,course_key:course_key,type:1},
        success: function(response){
					alert(response);
					$(".total_notification ").html(response);

        }
    });



});



$(".myfav").click(function(){
var id=$(this).nextAll(".myfav_val").val();
var course_key=$(this).nextAll(".course_key").val();
$(this).hide();
$(this).next(".no_myfav").show();

alert(id);
$.ajax({
        type:"POST",
        url:"<?=base_url()?>user/courses/add_fav",
        data:{id:id,course_key:course_key,type:2},
        success: function(response){
		    alert(response);
					$(".total_notification ").html(response);
        }
    });

});


});
</script>




