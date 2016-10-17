<?php if (isset($error)) { ?>
  <div class="warning"><?php echo $error; ?></div>
<?php } elseif (isset($attention)) { ?>
  <div class="attention"><?php echo $attention; ?></div>
<?php } else { ?>
  <?php if ($checkout_method == 'iframe') { ?>
    <iframe src="<?php echo $iframe_url; ?>" scrolling="no" width="570px" height="540px"></iframe>
  <?php } else { ?>
    <div class="buttons">
      <div class="right">
        <a class="button" href="<?php echo $iframe_url; ?>"><?php echo $button_confirm; ?></a>
      </div>
    </div>
  <?php } ?>
<?php } ?>