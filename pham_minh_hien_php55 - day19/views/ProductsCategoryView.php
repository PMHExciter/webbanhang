<?php 
  //load file Layout.php
  $this->layoutPath = "LayoutTrangTrong.php";
  $category_id = isset($_GET["category_id"])?$_GET["category_id"]:0;
 ?>
<div class="home">
      <i class="fas fa-home"></i>
      <i class="fas fa-angle-right"></i>
      <span><a href="#">Sản Phẩm</a></span>
      <i class="fas fa-angle-right"></i>
    </div><!-- End .home  -->

    <div class="main-product">
      <div class="main-left">
        <!-- <div class="widget">
          <a href="#">THỜI TRANG</a>
          <ul class="fas">
            <li><a href="#">Men</a></li>
            <li><a href="#">Women</a></li>
          </ul>
        </div> -->
        <div class="price" >


          <p style="margin: 0px;padding: 0px;">Tìm Giá bán:</p> 
          <ul class="list-group" style="border:0px;">
              <li class="list-group-item" style="border:0px;">Giá từ &nbsp;&nbsp;
                <input type="number" min="0" value="0" id="fromPrice" class="form-control" />
              </li>
              <li class="list-group-item" style="border:0px;">Đến &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="number" min="0" value="0" id="toPrice" class="form-control"/>
              </li>
              <li class="list-group-item" style="border:0px; text-align:center">
                <input type="button" class="btn btn-warning" value="Tìm mức giá" onclick="location.href = 'index.php?controller=search&fromPrice=' + document.getElementById('fromPrice').value + '&toPrice=' + document.getElementById('toPrice').value;" />
              </li>
            </ul>
          <style type="text/css">
              .price{height: 200px;}
              .price .list-group{list-style: none;margin: 0px;padding: 0px;}
              .price .list-group .list-group-item{margin-bottom: 5px;color: #777777;font-size: 15px;font-family: oswald;}
              .price .list-group .list-group-item .form-control{color: #777777;}
              .price .list-group .list-group-item .btn-warning{background-color: #b7b7b7;border: none;
                height: 30px;width: 100px; border-radius: 20px;margin-left: 90px;}
          </style>

        </div><!-- End .price  -->
        
</div><!-- End .main-left  -->
<!-- -------------------------------------------------------------- -->


      <div class="main-right">
          <div class="tool-box">
          <div class="tool-box-title">
            <label><h2>
                <?php   $category = $this->modelGetCategory($category_id);
                    echo $category->name;
                ?>
            </h2></label>
          </div><!-- End .tool-box-title  -->
          
          <div class="tool-box-endl">
            <label>Sắp Xếp:</label>
          </div><!-- End .tool-box-title  -->
          <div class="select-custom-endl">
            <select class="form-control" onchange="location.href = 'index.php?controller=products&action=category&category_id=<?php echo $category_id; ?>&order='+this.value;">
                  <option value="0">Sắp xếp</option>
                  <option <?php if(isset($_GET["order"])&&$_GET["order"]=="priceAsc"): ?> selected <?php endif; ?> value="priceAsc">Giá tăng dần</option>
                  <option <?php if(isset($_GET["order"])&&$_GET["order"]=="priceDesc"): ?> selected <?php endif; ?> value="priceDesc">Giá giảm dần</option>
                  <option <?php if(isset($_GET["order"])&&$_GET["order"]=="nameAsc"): ?> selected <?php endif; ?> value="nameAsc">Sắp xếp A-Z</option>
                  <option <?php if(isset($_GET["order"])&&$_GET["order"]=="nameDesc"): ?> selected <?php endif; ?> value="nameDesc">Sắp xếp Z-A</option>
            </select>
          </div><!-- End .select-custom  -->
          <div class="icon-endl">
            <i class="far fa-grip-horizontal"></i>
          </div><!-- End .icon-endl  -->
        </div><!-- End .tool-box  -->


        <!-- --------------------------- -->
        <div class="featured-products">
          <div class="container">
            <h2 style="font-family: &quot;Open Sans&quot;, sans-serif;"></h2>
          <div class="owl-carousel owl-theme">  

              <?php foreach($data as $rows): ?>

              <div  style="width: 270px; margin-right: 30px;">
                <div class="product">
                  <figure class="product-image-container">
                    <a href="index.php?controller=products&action=detail&id=<?php echo $rows->id; ?>"><img src="assets/upload/products/<?php echo $rows->photo; ?>" title="<?php echo $rows->name; ?>" alt="<?php echo $rows->name; ?>" class="img-responsive">
                    <input type="hidden" name="getid" id="getid" value="55" />
                  <div class="readmore">
                                  <a href="#" class="btn-quickview">Xem Nhanh</a>
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
                                        <a href="#" class="paction add-wishlist" title="Thêm vào yêu thích">
                                                <i class="fas fa-heart"></i>
                                            </a> 
                                    </div><!-- End .product-action -->
                                    <div class="price-box">
                                        <span class="old-price" style="font-family: &quot;Open Sans&quot;, sans-serif;"><del><?php echo number_format($rows->price); ?></del></span>
                                        <span class="product-price" style="font-family: &quot;Open Sans&quot;, sans-serif;"><?php echo number_format($rows->price - $rows->price*$rows->discount/100); ?><span style="margin-left:5px;">đ</span></span>
                                    </div><!-- End .price-box -->
                                    <div class="cart"><a href="index.php?controller=cart&action=add&id=<?php echo $rows->id; ?>" class="button" style="width: 80px;line-height: 19px;text-align: center;position: absolute;left: 0px;top: 315px;  font-size: 14px;color: white; text-decoration:none; background: #62b959; border-radius: 20px;" >Add to Cart</a></div>
                                </div><!-- End .product-details -->
                </div><!-- End .product -->
              </div>            
              <?php endforeach; ?>
        </div><!-- End .owl-carousel  -->
      </div><!-- End .container  -->
    </div><!-- End .featured-product  -->
    <script type="text/javascript">
      $(document).ready(function(){
          $('.owl-carousel').owlCarousel({

              loop:true,
              //margin:0,
              //nav:true,
              responsive:{
                  0:{
                      products:1
                  },
                  600:{
                      products:4
                  },
                  1000:{
                      products:6
                  }
              }
          })
        });
    </script>

    
    </div><!-- End .main-right  -->

</div><!-- End .main-product  -->