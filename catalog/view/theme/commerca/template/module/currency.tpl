
<?php if (count($currencies) > 1) { ?>
 <li class="dropdown hidden-xs"><a class="dropdown-toggle" data-toggle="dropdown" ><?php echo $text_currency; ?><i class="icon-arrow-down"></i> </a>

              <ul class="dropdown-menu" >
			   <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
                  <?php foreach ($currencies as $currency) { ?>
    <?php if ($currency['code'] == $currency_code) { ?>
    <?php if ($currency['symbol_left']) { ?>
    <li>  <a title="<?php echo $currency['title']; ?>"><b><?php echo $currency['title']; ?></b></a></li>
    <?php } else { ?>
     <li> <a title="<?php echo $currency['title']; ?>"><b><?php echo $currency['title']; ?></b></a></li>
    <?php } ?>
    <?php } else { ?>
    <?php if ($currency['symbol_left']) { ?>
     <li> <a title="<?php echo $currency['title']; ?>" onclick="$('input[name=\'currency_code\']').attr('value', '<?php echo $currency['code']; ?>'); $(this).parent().parent().submit();"><?php echo $currency['title']; ?></a></li>
    <?php } else { ?>
    <li>  <a title="<?php echo $currency['title']; ?>" onclick="$('input[name=\'currency_code\']').attr('value', '<?php echo $currency['code']; ?>'); $(this).parent().parent().submit();"><?php echo $currency['title']; ?></a></li>
    <?php } ?>
    <?php } ?>
    <?php } ?>
    <input type="hidden" name="currency_code" value="" />
    <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
</form>
              </ul>
            </li>
			
<?php } ?>