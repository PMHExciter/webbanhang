<?php 
  //load file Layout.php
  $this->layoutPath = "LayoutTrangChu.php";
 ?>
<!-- -------------------------------------------------------- -->
<div class="color">
<div class="featured-products">
      <div class="container">
        <h2 style="font-family: &quot;Open Sans&quot;, sans-serif;">Featured Products</h2>
        <div class="owl-carousel owl-theme">  
              <?php 
                  $hotProducts = $this->modelHotProducts();
               ?>
               <?php foreach($hotProducts as $rows): ?>
              <div  style="width: 270px; margin-right: 30px;">
                <div class="product" style="height: 360px;">
                  <figure class="product-image-container">
                    <a href="index.php?controller=products&action=detail&id=<?php echo $rows->id; ?>"><img src="assets/upload/products/<?php echo $rows->photo; ?>" title="<?php echo $rows->name; ?>" alt="<?php echo $rows->name; ?>" class="img-responsive"></a>
                    <input type="hidden" name="getid" id="getid" value="55" />
                  <div class="readmore">
                                  </div>
                                  <span class="product-label-sale" style="font-family: &quot;Open Sans&quot;, sans-serif;"><span>-</span><?php echo number_format($rows->discount); ?><span>%</span></span>
                                  <span class="product-label-hot">NEW</span>
                                  <span class="product-label-hot">HOT</span>
                  </figure>
                  <div class="product-details">
                                    <h2 class="product-title">
                                      <a href="index.php?controller=products&action=detail&id=<?php echo $rows->id; ?>"><?php echo $rows->name; ?></a>
                                    </h2>
                                    <div class="product-action">
                                        <a href="index.php?controller=products&action=detail&id=<?php echo $rows->id; ?>" class="paction add-wishlist" style="color:red;">
                                                <i class="fas fa-heart"></i>
                                            </a> 
                                    </div><!-- End .product-action -->
                                    <div class="price-box">
                                        <span class="old-price" style="font-family: &quot;Open Sans&quot;, sans-serif;"><del><?php echo number_format($rows->price); ?></del></span>
                                        <span class="product-price" style="font-family: &quot;Open Sans&quot;, sans-serif;"><?php echo number_format($rows->price - $rows->price*$rows->discount/100); ?><span style="margin-left:5px;">đ</span></span>
                                    <div class="cart"><a href="index.php?controller=cart&action=add&id=<?php echo $rows->id; ?>" class="button" style="width: 80px;line-height: 19px;text-align: center;position: absolute;left: 0px;top: 315px;  font-size: 14px;color: white; text-decoration:none; background: #62b959; border-radius: 20px;" >Add to Cart</a></div>
                                    </div><!-- End .price-box -->
                                </div><!-- End .product-details -->
                </div><!-- End .product -->
            </div>
              <?php endforeach; ?> 


        </div><!-- End .owl-carousel  -->
      </div><!-- End .container  -->
</div><!-- End .featured-product  --> 
<!-- --------------------------------------------- -->
<script type="text/javascript">
      $(document).ready(function(){
          $('.owl-carousel').owlCarousel({

              //loop:true,
              margin:0,
              //nav:true,
              items:4,
              responsive:{
                  0:{
                      items:1
                  },
                  600:{
                      items:2
                  },
                  1000:{
                      items:4
                  }
              }
          })
        });
    </script>



<!-- --------------------------------------------------------- -->
<?php 
    $categories = $this->modelCategories();
?>
    <?php foreach($categories as $rowsCategory): ?>
 
<div class="new-arrivals">
      <div class="title">
        <span>          
          <?php echo $rowsCategory->name; ?>
            
          </span>
      </div>

      <div class="container">
        <div class="new-main">
          <div class="new-main-top">
            <?php 
                $products = $this->modelProducts($rowsCategory->id);
            ?>
                <?php foreach($products as $rows): ?>
            <div class="main-1">      
                <a href="index.php?controller=products&action=detail&id=<?php echo $rows->id; ?>">  
                    <img src="assets/upload/products/<?php echo $rows->photo; ?>" title="<?php echo $rows->name; ?>" alt="<?php echo $rows->name; ?>">
                </a>
            </div>
          
          <?php endforeach; ?>
          </div><!-- End .new-main-top -->
        </div><!-- End .new-main -->
      </div><!-- End .container  -->
    </div><!-- End .new-arrivals  -->
    <?php endforeach; ?>  
</div>