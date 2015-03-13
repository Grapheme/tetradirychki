
<?php if (!$this->customer->isLogged()) { ?>
   <li class="dropdown hidden-xs"> <a class="dropdown-toggle"  data-toggle="dropdown" href="">  <?php echo $button_login; ?><i class="icon-arrow-down"></i></span></a> 
              <ul class="loginbox dropdown-menu" style="padding:15px; min-width: 250px;"> 
              <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="module_login"> 
                  <div class="form-group"> <i class="fa fa-user fa-fw"></i>
                    <input class="form-control" id="InputUserName" placeholder="<?php echo $entry_email_address; ?>" name="email" type="text">
                  </div>
                  <div class="form-group"> <i class="fa fa-lock fa-fw"></i>
                    <input class="form-control" name="password" placeholder="<?php echo $entry_password; ?>" type="password">
                  </div>
                  <button onclick="$('#module_login').submit();" class="btn medium color1 pull-right" type="submit"><?php echo $button_login; ?></button>
                </form>
				
              </ul>
            </li>
 <script type="text/javascript"><!--
  $('.dropdown input').keydown(function(e) {
	  if (e.keyCode == 13) {
		  $('.dropdown ').submit();
	  }
  });
  //--></script>
<?php } ?>