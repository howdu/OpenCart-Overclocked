<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="robots" content="index, follow" />
<meta name="generator" content="<?php echo $version; ?>" />
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } else { ?>
<meta name="keywords" content="<?php echo $text_home; ?>" />
<?php } ?>
<?php if ($metas) { ?>
<?php foreach ($metas as $meta) { ?>
<meta name="<?php echo $meta['name']; ?>" content="<?php echo $meta['content']; ?>" />
<?php } ?>
<?php } ?>
<?php if ($icon) { ?>
<link rel="icon" type="image/png" href="<?php echo $icon; ?>" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $template; ?>/stylesheet/stylesheet.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $template; ?>/stylesheet/stylesheet-modifiers.min.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/start/jquery-ui-1.12.1.min.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/awesome/css/font-awesome.min.css" />
<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-migrate-1.4.1.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.12.1.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/minified/jquery.ui.touch-punch.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/livesearch.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/common.min.js"></script>
<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>
<!--[if lt IE 9]>
<script type="text/javascript" src="catalog/view/javascript/html5shiv.js"></script>
<![endif]-->
<?php if ($stores) { ?>
<script type="text/javascript"><!--
$(document).ready(function() {
<?php foreach ($stores as $store) { ?>
  $('body').prepend('<iframe src="<?php echo $store; ?>" style="display:none;"></iframe>');
<?php } ?>
});
//--></script>
<?php } ?>
<?php if ($cookie_consent) { ?>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/consent/css/cookieDisclaimer.min.css" />
<script type="text/javascript" src="catalog/view/javascript/jquery/consent/jquery.cookieDisclaimer.pack.min.js"></script>
<script type="text/javascript"><!--
$(document).ready(function() {
  $('body').cookieDisclaimer({
    position: "<?php echo $cookie_position; ?>",
    style: "<?php echo $cookie_theme; ?>",
    text: "<?php echo $text_message; ?>",
    cssPosition: "relative",
    acceptBtn: {
      text: "<?php echo $text_accept; ?>"
    },
    policyBtn: {
      active: true,
      text: "<?php echo $text_policy; ?>",
      link: "<?php echo $cookie_privacy; ?>"
    },
    cookie: { expire: <?php echo $cookie_age; ?> }
  });
});
//--></script>
<?php } ?>
<?php echo ($google_analytics) ? $google_analytics : ''; ?>
<?php echo ($alexa_analytics) ? $alexa_analytics : ''; ?>
<?php if ($rss) { ?>
<link rel="alternate" type="application/rss+xml" href="<?php echo $rss_href; ?>" />
<?php } ?>
</head>
<body style="background-color:<?php echo $body_color; ?>;">
<div id="container-top">
  <div class="container-top-inner-<?php echo $display_size; ?>">
    <?php echo $currency; ?>
    <?php echo $language; ?>
    <?php if ($logged) { ?>
      <a class="top-link" onclick="location='<?php echo $account; ?>';" title=""><i class="fa fa-user"></i><span class="hide-phone"> &nbsp;<?php echo $text_account; ?></span></a>
    <?php } else { ?>
      <a class="top-link" onclick="location='<?php echo $account; ?>';" title=""><i class="fa fa-user"></i><span class="hide-phone"> &nbsp;<?php echo $text_signin; ?></span></a>
    <?php } ?>
    <a class="top-link" onclick="location='<?php echo $shopping_cart; ?>';" title=""><i class="fa fa-shopping-cart"></i><span class="hide-phone"> &nbsp;<?php echo $text_shopping_cart; ?></span></a>
    <a class="top-link" onclick="location='<?php echo $checkout; ?>';" title=""><i class="fa fa-mail-forward"></i><span class="hide-phone"> &nbsp;<?php echo $text_checkout; ?></span></a>
  </div>
</div>
<div id="container" style="background-color:<?php echo $container_color; ?>;">
<div class="container-<?php echo $display_size; ?>">
<div id="header">
  <?php if ($logo) { ?>
    <div id="logo"><a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a></div>
  <?php } ?>
  <?php echo $cart; ?>
  <div id="header-bottom">
    <div id="search">
      <div class="search-inside">
        <label for="search" class="hidden"><?php echo $text_search; ?></label>
        <input type="text" name="search" placeholder="<?php echo $text_search; ?>" value="" />
        <div class="button-search"></div>
      </div>
    </div>
  </div>
</div>