        <!-- BEGIN SIDEBAR -->
                <!-- DOC: Set data-auto-scroll="false" to disable the sidebar from auto scrolling/focusing -->
                <!-- DOC: Change data-auto-speed="200" to adjust the sub menu slide up/down speed -->
                <div class="page-sidebar navbar-collapse collapse">
                    <!-- BEGIN SIDEBAR MENU -->
                    <!-- DOC: Apply "page-sidebar-menu-light" class right after "page-sidebar-menu" to enable light sidebar menu style(without borders) -->
                    <!-- DOC: Apply "page-sidebar-menu-hover-submenu" class right after "page-sidebar-menu" to enable hoverable(hover vs accordion) sub menu mode -->
                    <!-- DOC: Apply "page-sidebar-menu-closed" class right after "page-sidebar-menu" to collapse("page-sidebar-closed" class must be applied to the body element) the sidebar sub menu mode -->
                    <!-- DOC: Set data-auto-scroll="false" to disable the sidebar from auto scrolling/focusing -->
                    <!-- DOC: Set data-keep-expand="true" to keep the submenues expanded -->
                    <!-- DOC: Set data-auto-speed="200" to adjust the sub menu slide up/down speed -->
                    <ul class="page-sidebar-menu" data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200">
                    <li class="nav-item start <?php if($curt=='home'){echo'active open';}?>">
                        <a href="<?=$url;?>admin" class="nav-link ">
                            <i class="icon-home"></i>
                                        <span class="title">لوحة التحكم</span>
                                        <span class="selected"></span>
                                    </a>
                    </li>
                    <?
                        $users_jobs=$this->db->get_where("jobs_from",array("view"=>'0'))->result();
                        $users_message=$this->db->get_where("messages",array("view"=>'0'))->result();

                    ?>
	<li class="nav-item start <?php if($curt=='setting'||$curt=='slider'){echo'active open';}?>">
						<a href="javascript:;" class="nav-link nav-toggle">
                                <i class="icon-settings"></i>
								<span class="title">الاعدادات 
								</span>
                                <span class="arrow"></span>
                            </a>
							<ul class="sub-menu">
                                <li class="nav-item  <?php if($curt=='setting'){echo'active open';}?>">
                              
                                    <a href="<?=base_url()?>admin/setting" class="nav-link ">
                                           <i class="icon-settings"></i>
                                        <span class="title">الاعدادات</span>
                                    </a>
                                </li>
						
										 <li class="nav-item <?php if($curt=='slider'){echo'active open';}?>">
                                    <a href="<?=base_url()?>admin/slider_home/" class="nav-link ">
                                        <i class="fa fa-file"></i>
                                        <span class="title">الصور المتحركة</span>
                                    </a>
                                </li>
							
                                  
                            </ul>
                    </li>
                    
                    

                      
<li class="nav-item start <?php if($curt=='team_work'){echo'active open';}?>">
<a href="<?=$url;?>admin/team_work" class="nav-link ">
<i class="icon-users"></i>
<span class="title">المشرفين</span>
<span class="selected"></span>
</a>
</li>
				
                    
				
					<li class="nav-item start <?php if($curt=='about_us'){echo'active open';}?>">
						<a href="javascript:;" class="nav-link nav-toggle">
                                <i class="icon-info"></i>
								<span class="title">عن سوابكو</span>
                                <span class="arrow"></span>
                            </a>
							<ul class="sub-menu">
							<li class="nav-item <?php if($curt=='about_us'){echo'active open';}?>">
							
							<a href="<?=base_url()?>admin/about/show" class="nav-link ">
                            <i class="icon-note"></i>
								<span class="title">من نحن</span>
							</a>
						</li>

						
							
							</ul>
                    </li>
                    
 
 
 
<li class="nav-item start <?php if($curt=='Sustainability'||$curt=="banner_Sustainability"){echo'active open';}?>">
<a href="javascript:;" class="nav-link nav-toggle">
<i class="icon-briefcase"></i>
<span class="title">Sustainability</span>

<span class="arrow"></span>
</a>
<ul class="sub-menu">      

<li class="nav-item <?php if($curt=='banner_business'){echo'active open';}?>">
<a href="<?=base_url()?>admin/sustainability/banner" class="nav-link ">
<i class="fa fa-photo"></i>
<span class="title">Banner Sustainability  </span>
</a>
</li> 	

<li class="nav-item  <?php if($curt=='business'){echo'active open';}?>">
<a href="<?=base_url()?>admin/sustainability/" class="nav-link ">
<i class="icon-briefcase"></i>
<span class="title">Sustainability </span>
</a>
</li>
</ul>
</li>    
           
 
 
<li class="nav-item start <?php if($curt=='business'||$curt=="banner_business"){echo'active open';}?>">
	<a href="javascript:;" class="nav-link nav-toggle">
            <i class="icon-briefcase"></i>
			<span class="title">الأعمال</span>
			  
            <span class="arrow"></span>
        </a>
  	<ul class="sub-menu">      
 
<li class="nav-item <?php if($curt=='banner_business'){echo'active open';}?>">
<a href="<?=base_url()?>admin/business/banner" class="nav-link ">
<i class="fa fa-photo"></i>
<span class="title">بنر  الأعمال</span>
</a>
</li> 	
  	
 <li class="nav-item  <?php if($curt=='business'){echo'active open';}?>">
<a href="<?=base_url()?>admin/business/" class="nav-link ">
<i class="icon-briefcase"></i>
<span class="title">الأعمال </span>
</a>
     </li>
     <li class="nav-item  <?php if($curt=='business'){echo'active open';}?>">
<a href="<?=base_url()?>admin/about/join_us" class="nav-link ">
<i class="icon-briefcase"></i>
<span class="title">صندوق التوظيف</span>
</a>
     </li>
     
     </ul>
           </li>                      
                                
 
 					<li class="nav-item start <?php if($curt=='jobs'||$curt=='country'||$curt=='request_job'||$curt=='ava_jobs'){echo'active open';}?>">
						<a href="javascript:;" class="nav-link nav-toggle">
                                <i class="fa fa-tasks"></i>
								<span class="title">الوظائف</span>
								    <span style="color:red" class="user_nofiy">
								    <? if(count($users_jobs)>0){echo "(".count($users_jobs).")"; };?></span>
                                <span class="arrow"></span>
                            </a>
							<ul class="sub-menu">
							    	<li class="nav-item <?php if($curt=='jobs'){echo'active open';}?>">
							<a href="<?=base_url()?>admin/jobs/banner" class="nav-link ">
                            <i class="fa fa-photo"></i>
								<span class="title">بنر الوظائف</span>
							</a>
						</li>
						
							<li class="nav-item <?php if($curt=='country'){echo'active open';}?>">
							<a href="<?=base_url()?>admin/places/countries" class="nav-link ">
                            <i class="icon-flag"></i>
								<span class="title">الدول</span>
							</a>
						</li>
							<li class="nav-item  <?php if($curt=='ava_jobs'){echo'active open';}?>">
							<a href="<?=base_url()?>admin/jobs/" class="nav-link ">
                            <i class="fa fa-tasks"></i>
								<span class="title">الوظائف المتاحة</span>
							</a>
						</li>
							<li class="nav-item <?php if($curt=='request_job'){echo'active open';}?>">
							<a href="<?=base_url()?>admin/messages/messages_jobs" class="nav-link ">
                            <i class="icon-envelope"></i>
								<span class="title">طلبات التوظيف</span>
						 <span style="color:red" class="user_nofiy">
								    <? if(count($users_jobs)>0){echo "(".count($users_jobs).")"; };?></span>
							</a>
						</li>
						
						
							
							</ul>
                    </li>
                    
      <li class="nav-item start <?php if($curt=='messages'||$curt=='messages_banner'){echo'active open';}?>">
	<a href="javascript:;" class="nav-link nav-toggle">
            <i class="icon-envelope"></i>
			<span class="title">رسائل التواصل </span>
			   <span style="color:red" class="ticket_nofiy">
			<? if(count($users_message)>0){echo "(".count($users_message).")"; };?></span>
            <span class="arrow"></span>
        </a>
  	<ul class="sub-menu">  
  		<li class="nav-item <?php if($curt=='messages_banner'){echo'active open';}?>">
							<a href="<?=base_url()?>admin/messages/banner" class="nav-link ">
                            <i class="fa fa-photo"></i>
								<span class="title">بنر التواصل</span>
							</a>
						</li>
<li class="nav-item  <?php if($curt=='messages'){echo'active open';}?>">
                                    <a href="<?=base_url()?>admin/messages/messages_contact" class="nav-link ">
                                        <i class="icon-envelope"></i>
                                        <span class="title">رسائل تواصل معانا</span>
                                        <span style="color:red" class="ticket_nofiy">
								    <? if(count($users_message)>0){echo "(".count($users_message).")"; };?></span>
                                    </a>
                                </li>
                   </ul>
                    </li>
                    
                            </ul>
                        </li>
                        
                            </ul>
                        </li>
                    </ul>
                    <!-- END SIDEBAR MENU -->
                </div>
                <!-- END SIDEBAR -->
