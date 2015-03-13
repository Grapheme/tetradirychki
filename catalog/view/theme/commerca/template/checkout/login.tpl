			<div class="row">
				<div class="col-xs-12 col-sm-6">
					<h3><?php echo $text_new_customer; ?></h3>
					<p><?php echo $text_checkout; ?></p>
					<label for="register">
					<?php if ($account == 'register') { ?>
					<input type="radio" name="account" value="register" id="register" checked="checked" />
					<?php } else { ?>
					<input type="radio" name="account" value="register" id="register" />
					<?php } ?>
					<b><?php echo $text_register; ?></b></label>
					<br />
					<?php if ($guest_checkout) { ?>
					<label for="guest">
					<?php if ($account == 'guest') { ?>
					<input type="radio" name="account" value="guest" id="guest" class="form-control" checked="checked" />
					<?php } else { ?>
					<input type="radio" name="account" value="guest" id="guest" />
					<?php } ?>
					<b><?php echo $text_guest; ?></b></label>
					<br />
					<?php } ?>
					<br />
					<p><?php echo $text_register_account; ?></p>
					<input type="button" value="<?php echo $button_continue; ?>" id="button-account" class="button" />
					<br />
					<br />
				</div>
				<div id="login" class="col-xs-12 col-sm-6">
					<h3><?php echo $text_returning_customer; ?></h3>
					<p><?php echo $text_i_am_returning_customer; ?></p>
					<b><?php echo $entry_email; ?></b><br />
					<div class="input-cont">
					<input type="text" name="email" value="" class="form-control"/>
					</div>
				
					<br />
					<b><?php echo $entry_password; ?></b><br />
					<div class="input-cont">
					<input type="password" name="password" value="" class="form-control" />
					<a class="help-block" href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?></a><br />
					</div>
					<div class="input-cont">
					<input type="button" value="<?php echo $button_login; ?>" id="button-login" class="button" /><br />

					</div>
				</div>
			</div>

	