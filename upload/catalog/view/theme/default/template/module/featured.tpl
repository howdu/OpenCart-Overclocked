<?php if ($theme) { ?>
<div class="box">
  <div class="box-heading <?php echo $header_shape; ?> <?php echo $header_color; ?>"><?php echo $title; ?></div>
  <div class="box-content <?php echo $content_shape; ?> <?php echo $content_color; ?>">
  <div class="box-product" style="text-align:center;">
    <?php foreach ($products as $product) { ?>
      <div>
        <?php if ($product['thumb']) { ?>
          <?php if ($product['stock_label']) { ?>
            <div class="stock-medium"><img src="<?php echo $product['stock_label']; ?>" alt="" /></div>
          <?php } ?>
          <?php if (!$product['stock_label'] && $product['offer']) { ?>
            <div class="offer-medium"><img src="<?php echo $product['offer_label']; ?>" alt="" /></div>
          <?php } ?>
          <?php if (!$product['stock_label'] && !$product['offer'] && $product['special']) { ?>
            <div class="special-medium"><img src="<?php echo $product['special_label']; ?>" alt="" /></div>
          <?php } ?>
          <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
        <?php } ?>
        <?php if ($brand && $product['manufacturer']) { ?>
          <div class="brand"><?php echo $product['manufacturer']; ?></div>
        <?php } ?>
        <div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
        <?php if ($product['price']) { ?>
          <div class="price">
          <?php if ($product['price_option']) { ?>
            <span class="from"><?php echo $text_from; ?></span><br />
          <?php } ?>
          <?php if (!$product['special']) { ?>
            <?php echo $product['price']; ?>
          <?php } else { ?>
            <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
          <?php } ?>
          </div>
        <?php } ?>
        <?php if ($product['age_minimum']) { ?>
          <span class="help">(<?php echo $product['age_minimum']; ?>+)</span>
        <?php } ?>
        <?php if ($model && $product['model']) { ?>
          <div><span style="font-size:9px;"><?php echo $text_model; ?></span> <?php echo $product['model']; ?><br /></div>
        <?php } ?>
        <?php if ($reward && $product['reward']) { ?>
          <div><span style="font-size:9px;"><?php echo $text_reward; ?></span> <?php echo $product['reward']; ?><br /></div>
        <?php } ?>
        <?php if ($point && $product['points']) { ?>
          <div><span class="reward" style="font-size:9px;"><?php echo $text_points; ?> <?php echo $product['points']; ?></span><br /></div>
        <?php } ?>
        <?php if ($review && $product['rating']) { ?>
          <div class="rating"><img src="catalog/view/theme/<?php echo $template; ?>/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
        <?php } ?>
        <?php if ($product['stock_remaining'] && $this->config->get($template . '_product_stock_low') && ($product['stock_quantity'] > 0) && ($product['stock_quantity'] <= $this->config->get($template . '_product_stock_limit'))) { ?>
          <div class="remaining"><?php echo $product['stock_remaining']; ?></div>
        <?php } ?>
        <div class="box-product-bottom">
        <?php if ($addproduct) { ?>
          <?php if ($product['quote']) { ?>
            <div class="cart"><a href="<?php echo $product['quote']; ?>" title=""><i class="fa fa-quote"></i></a></div>
          <?php } elseif (!$product['quote'] && $product['stock_quantity'] <= 0) { ?>
            <div class="stock-status"><a title="<?php echo $product['stock_status']; ?>"><i class="fa fa-warning"></i></a></div>
          <?php } else { ?>
            <div class="cart"><a onclick="addToCart('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');" title=""><i class="fa fa-shopping-cart"></i></a></div>
          <?php } ?>
        <?php } ?>
          <div><a onclick="addToWishList('<?php echo $product['product_id']; ?>');" title=""><i class="fa fa-heart"></i></a></div>
        <?php if ($viewproduct) { ?>
          <div><a href="<?php echo $product['href']; ?>"><i class="fa fa-search"></i></a></div>
        <?php } ?>
        </div>
      </div>
    <?php } ?>
  </div>
  </div>
</div>
<?php } else { ?>
<div class="<?php echo $content_shape; ?> <?php echo $content_color; ?>" style="margin-bottom:20px;">
  <div class="box-product" style="text-align:center;">
    <?php foreach ($products as $product) { ?>
      <div>
        <?php if ($product['thumb']) { ?>
          <?php if ($product['stock_label']) { ?>
            <div class="stock-medium"><img src="<?php echo $product['stock_label']; ?>" alt="" /></div>
          <?php } ?>
          <?php if (!$product['stock_label'] && $product['offer']) { ?>
            <div class="offer-medium"><img src="<?php echo $product['offer_label']; ?>" alt="" /></div>
          <?php } ?>
          <?php if (!$product['stock_label'] && !$product['offer'] && $product['special']) { ?>
            <div class="special-medium"><img src="<?php echo $product['special_label']; ?>" alt="" /></div>
          <?php } ?>
          <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
        <?php } ?>
        <?php if ($brand && $product['manufacturer']) { ?>
          <div class="brand"><?php echo $product['manufacturer']; ?></div>
        <?php } ?>
        <div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
        <?php if ($product['price']) { ?>
          <div class="price">
          <?php if ($product['price_option']) { ?>
            <span class="from"><?php echo $text_from; ?></span><br />
          <?php } ?>
          <?php if (!$product['special']) { ?>
            <?php echo $product['price']; ?>
          <?php } else { ?>
            <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
          <?php } ?>
          </div>
        <?php } ?>
        <?php if ($product['age_minimum']) { ?>
          <span class="help">(<?php echo $product['age_minimum']; ?>+)</span>
        <?php } ?>
        <?php if ($model && $product['model']) { ?>
          <div><span style="font-size:9px;"><?php echo $text_model; ?></span> <?php echo $product['model']; ?><br /></div>
        <?php } ?>
        <?php if ($reward && $product['reward']) { ?>
          <div><span style="font-size:9px;"><?php echo $text_reward; ?></span> <?php echo $product['reward']; ?><br /></div>
        <?php } ?>
        <?php if ($point && $product['points']) { ?>
          <div><span class="reward" style="font-size:9px;"><?php echo $text_points; ?> <?php echo $product['points']; ?></span><br /></div>
        <?php } ?>
        <?php if ($review && $product['rating']) { ?>
          <div class="rating"><img src="catalog/view/theme/<?php echo $template; ?>/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
        <?php } ?>
        <?php if ($product['stock_remaining'] && $this->config->get($template . '_product_stock_low') && ($product['stock_quantity'] > 0) && ($product['stock_quantity'] <= $this->config->get($template . '_product_stock_limit'))) { ?>
          <div class="remaining"><?php echo $product['stock_remaining']; ?></div>
        <?php } ?>
        <div class="box-product-bottom">
        <?php if ($addproduct) { ?>
          <?php if ($product['quote']) { ?>
            <div class="cart"><a href="<?php echo $product['quote']; ?>" title=""><i class="fa fa-quote"></i></a></div>
          <?php } elseif (!$product['quote'] && $product['stock_quantity'] <= 0) { ?>
            <div class="stock-status"><a title="<?php echo $product['stock_status']; ?>"><i class="fa fa-warning"></i></a></div>
          <?php } else { ?>
            <div class="cart"><a onclick="addToCart('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');" title=""><i class="fa fa-shopping-cart"></i></a></div>
          <?php } ?>
        <?php } ?>
          <div><a onclick="addToWishList('<?php echo $product['product_id']; ?>');" title=""><i class="fa fa-heart"></i></a></div>
        <?php if ($viewproduct) { ?>
          <div><a href="<?php echo $product['href']; ?>"><i class="fa fa-search"></i></a></div>
        <?php } ?>
        </div>
      </div>
    <?php } ?>
  </div>
</div>
<?php } ?>