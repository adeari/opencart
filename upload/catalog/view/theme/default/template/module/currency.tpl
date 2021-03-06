<?php if (count($currencies) > 1) { ?>
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
  <div class="btn-group">
    <button class="btn btn-default dropdown-toggle" data-toggle="dropdown">
    <?php foreach ($currencies as $currency) { ?>
    <?php if ($currency['symbol_left'] && $currency['code'] == $currency_code) { ?>
    <?php echo $currency['symbol_left']; ?>
    <?php } elseif ($currency['code'] == $currency_code) { ?>
    <?php echo $currency['symbol_right']; ?>
    <?php } ?>
    <?php } ?>
    <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_currency; ?></span> <i class="icon-caret-down"></i></button>
    <ul class="dropdown-menu">
      <?php foreach ($currencies as $currency) { ?>
      <?php if ($currency['code'] == $currency_code) { ?>
      <?php if ($currency['symbol_left']) { ?>
      <li><a title="<?php echo $currency['title']; ?>"><?php echo $currency['symbol_left']; ?> <?php echo $currency['title']; ?></a></li>
      <?php } else { ?>
      <li><a title="<?php echo $currency['title']; ?>"><?php echo $currency['symbol_right']; ?> <?php echo $currency['title']; ?></a></li>
      <?php } ?>
      <?php } else { ?>
      <?php if ($currency['symbol_left']) { ?>
      <li><a onclick="$('input[name=\'currency_code\']').attr('value', '<?php echo $currency['code']; ?>'); $(this).parent().parent().parent().parent().submit();" title="<?php echo $currency['title']; ?>"><?php echo $currency['symbol_left']; ?> <?php echo $currency['title']; ?></a></li>
      <?php } else { ?>
      <li><a onclick="$('input[name=\'currency_code\']').attr('value', '<?php echo $currency['code']; ?>'); $(this).parent().parent().parent().parent().submit();" title="<?php echo $currency['title']; ?>"><?php echo $currency['symbol_right']; ?> <?php echo $currency['title']; ?></a></li>
      <?php } ?>
      <?php } ?>
      <?php } ?>
    </ul>
  </div>
  <input type="hidden" name="currency_code" value="" />
  <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
</form>
<?php } ?>
