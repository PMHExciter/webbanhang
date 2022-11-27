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
        <div class="widget">
          <a href="#">PMH Store</a>
          <ul class="fas">
            <li><a href="#">Mọi thắc mắc của quý khách xin gửi về email: pmhstore@gmail.com</a></li>
            <li><a href="#">Hoặc số tổng đài: 0999 899 339</a></li>
          </ul>
        </div> 
    <style type="text/css">
    .main-product .main-left{
        margin: 0px auto;
        padding: 0px;
        width: 1168px;
    }
      .main-product .main-left .widget{
        margin: 0px auto;
        padding: 0px;
        width: 1168px;
        height: 140px;
        margin-bottom: 10px;
      }
      .main-product .main-left .widget a{
        display: block;
        margin: 5px 30px;
      }
      .main-product .main-left .widget ul li{
        width: 1168px;
      }
      .main-product .main-left .widget ul li a{
        display: block;
        margin: 0px 30px;
      }
    </style>
        <!--
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
          </style> -->

        </div><!-- End .price  -->
        <!-- <div class="widget-body">
          <p>Color</p>
              <ul class="config-size-list">
                  <label for=""><li> <input class="common_selector Color" type="checkbox"  value="66"></li>Green</label>
                  <label for=""><li> <input class="common_selector Color" type="checkbox"  value="65"></li>Black</label>
                  <label for=""><li> <input class="common_selector Color" type="checkbox"  value="64"></li>Red</label>
                  <label for=""><li> <input class="common_selector Color" type="checkbox"  value="63"></li>Yellow</label>
                  </ul>
          </div>
          <div class="widget-size">
            <p>Size</p>
            <ul class="config-size-list">
                  <label for=""><li> <input class="common_selector Size" type="checkbox" name="boloc" value="62"></li>S</label>
                  <label for=""><li> <input class="common_selector Size" type="checkbox" name="boloc" value="61"></li>M</label>
                  <label for=""><li> <input class="common_selector Size" type="checkbox" name="boloc" value="60"></li>L</label>
                  <label for=""><li> <input class="common_selector Size" type="checkbox" name="boloc" value="59"></li>XL</label>
                  <label for=""><li> <input class="common_selector Size" type="checkbox" name="boloc" value="58"></li>2XL</label>
                  <label for=""><li> <input class="common_selector Size" type="checkbox" name="boloc" value="57"></li>3XL</label>   
              </ul>
          </div>
          <div class="widget-brand">
            <p>Thương Hiệu</p>
              <ul class="cat-list">
                    <li><a href="#">Adidas <span>4</span></a></li>
                    <li><a href="#">Camel <span>3</span></a></li>
                </ul>
          </div>
          <div class="widget-featured">
              <p class="widget-title">Sản phẩm nổi bật</p>
                  <div class="widget-product">
                          <div class="widget-featured-products">
                              
                                  <div class="product product-sm">
                                      <figure class="product-image-container">
                                          <a href="#" class="product-image">
                                              <img src="assets/frontend/images/widget-image-6.jpg" alt="Adidas UltraBoost 4.0 cookies and cream">
                                          </a>
                                      </figure>
                                      <div class="product-details">
                                          
                                              <a href="#">Adidas UltraBoost 4.0 cookies and cream</a>
                                          
                                          <div class="ratings-container">
                                              
                                                                                           
                                          </div>
                                          <div class="price-box">
                                              <span class="old-price"><del>4,500,000 đ</del></span>
                                              <span class="product-price">3,000,000 đ</span>
                                          </div>
                                      </div>
                                  </div>                                             
                              
                          </div>
                  </div>
                  <div class="widget-product">
                          <div class="widget-featured-products">
                              
                                  <div class="product product-sm">
                                      <figure class="product-image-container">
                                          <a href="#" class="product-image">
                                              <img src="assets/frontend/images/widget-image-2.jpg" alt="Adidas UltraBoost 4.0 cookies and cream">
                                          </a>
                                      </figure>
                                      <div class="product-details">
                                          
                                              <a href="#">Adidas UltraBoost 4.0 cookies and cream</a>
                                          
                                          <div class="ratings-container">
                                              
                                                                                           
                                          </div>
                                          <div class="price-box">
                                              <span class="old-price"><del>4,500,000 đ</del></span>
                                              <span class="product-price">3,000,000 đ</span>
                                          </div>
                                      </div>
                                  </div>                                             
                              
                          </div>
                  </div>
                  <div class="widget-product">
                          <div class="widget-featured-products">
                              
                                  <div class="product product-sm">
                                      <figure class="product-image-container">
                                          <a href="#" class="product-image">
                                              <img src="assets/frontend/images/widget-image.jpg" alt="Adidas UltraBoost 4.0 cookies and cream">
                                          </a>
                                      </figure>
                                      <div class="product-details">
                                          
                                              <a href="#">Adidas UltraBoost 4.0 cookies and cream</a>
                                          
                                          <div class="ratings-container">
                                              
                                                                                           
                                          </div>
                                          <div class="price-box">
                                              <span class="old-price"><del>4,500,000 đ</del></span>
                                              <span class="product-price">3,000,000 đ</span>
                                          </div>
                                      </div>
                                  </div>                                             
                              
                          </div>
                  </div>
                  <div class="widget-product">
                          <div class="widget-featured-products">
                              
                                  <div class="product product-sm">
                                      <figure class="product-image-container">
                                          <a href="#" class="product-image">
                                              <img src="assets/frontend/images/widget-image-3.jpg" alt="Adidas UltraBoost 4.0 cookies and cream">
                                          </a>
                                      </figure>
                                      <div class="product-details">
                                          
                                              <a href="#">Adidas UltraBoost 4.0 cookies and cream</a>
                                          
                                          <div class="ratings-container">
                                              
                                                                                           
                                          </div>
                                          <div class="price-box">
                                              <span class="old-price"><del>4,500,000 đ</del></span>
                                              <span class="product-price">3,000,000 đ</span>
                                          </div>
                                      </div>
                                  </div>                                             
                              
                          </div>
                  </div>
                  <div class="widget-product">
                          <div class="widget-featured-products">
                              
                                  <div class="product product-sm">
                                      <figure class="product-image-container">
                                          <a href="#" class="product-image">
                                              <img src="assets/frontend/images/widget-image-4.jpg" alt="Adidas UltraBoost 4.0 cookies and cream">
                                          </a>
                                      </figure>
                                      <div class="product-details">
                                          
                                              <a href="#">Adidas UltraBoost 4.0 cookies and cream</a>
                                          
                                          <div class="ratings-container">
                                              
                                                                                           
                                          </div>
                                          <div class="price-box">
                                              <span class="old-price"><del>4,500,000 đ</del></span>
                                              <span class="product-price">3,000,000 đ</span>
                                          </div>
                                      </div>
                                  </div>                                             
                              
                          </div>
                  </div>
                  <div class="widget-product">
                          <div class="widget-featured-products">
                              
                                  <div class="product product-sm">
                                      <figure class="product-image-container">
                                          <a href="#" class="product-image">
                                              <img src="assets/frontend/images/widget-image-5.jpg" alt="Adidas UltraBoost 4.0 cookies and cream">
                                          </a>
                                      </figure>
                                      <div class="product-details">
                                          
                                              <a href="#">Adidas UltraBoost 4.0 cookies and cream</a>
                                          
                                          <div class="ratings-container">
                                              
                                                                                           
                                          </div>
                                          <div class="price-box">
                                              <span class="old-price"><del>4,500,000 đ</del></span>
                                              <span class="product-price">3,000,000 đ</span>
                                          </div>
                                      </div>
                                  </div>                                             
                              
                          </div>
                  </div>
                  <div class="widget-product">
                          <div class="widget-featured-products">
                              
                                  <div class="product product-sm">
                                      <figure class="product-image-container">
                                          <a href="#" class="product-image">
                                              <img src="assets/frontend/images/widget-image.jpg" alt="Adidas UltraBoost 4.0 cookies and cream">
                                          </a>
                                      </figure>
                                      <div class="product-details">
                                          
                                              <a href="#">Adidas UltraBoost 4.0 cookies and cream</a>
                                          
                                          <div class="ratings-container">
                                              
                                                                                           
                                          </div>
                                          <div class="price-box">
                                              <span class="old-price"><del>4,500,000 đ</del></span>
                                              <span class="product-price">3,000,000 đ</span>
                                          </div>
                                      </div>
                                  </div>                                             
                              
                          </div>
                  </div>
          </div> -->
</div><!-- End .main-left  -->

<!-- <div class="top">
    <div class="row">
      <div class="col-xs-12 col-md-6 product-image">
        <div class="featured-image"> 
          <img src="assets/upload/products/<?php echo $record->photo; ?>" style=" margin-left:30px" class="img-responsive"/>
        </div>  
        <style type="text/css">
            .featured-image .img-responsive{
              width: 280px;
              height: 300px;
            }
        </style>
      </div>
      <div style="margin-left: 30px;">
        <h1 itemprop="name"><?php echo $record->name; ?></h1>
        <p class="vendor"> Category:&nbsp; <span> 
          <?php
            $category = $this->modelGetCategory($record->category_id);
            echo isset($category->name) ? $category->name : "";
           ?> </span></p>
        <p itemprop="price" class="price-box product-price-box"> <span class="special-price"> <span class="price product-price" style="text-decoration:line-through;"> <?php echo number_format($record->price); ?>₫ </span></span></p>
        <p itemprop="price" class="price-box product-price-box"> <span class="special-price"> <span class="price product-price"> <?php echo number_format($record->price - $record->price * $record->discount/100); ?>₫ </span></span></p>
      
      <a href="index.php?controller=cart&action=add&id=<?php echo $record->id; ?>" class="btn btn-primary"
        style="width: 130px;line-height: 30px;text-align: center;  font-size: 14px;color: white; text-decoration:none; background: #62b959; border-radius: 30px; padding:10px;">Cho vào giỏ hàng</a>
    </div>
</div>
</div> -->
<!-- ---------------------------------------------------------------------- -->
<div class="main-product">
    <div class="main-left" style="height: auto;">
        <div class="main-top">
            <div class="main-top-left">
                <div class="main-image">
                    <img src="assets/upload/products/<?php echo $record->photo; ?>" style=" margin-left:30px" class="img-responsive"/>
                </div><!-- End .main-image  -->
                 <!-- <div class="main-little">
                    <img src="assets/upload/products/<?php echo $record->photo; ?>" style=" margin-left:30px" class="img-responsive"/>                
                </div> -->
            </div><!-- End .main-top-left -->
            <div class="main-main">
                <div class="product-detail">
                    <h1><?php echo $record->name; ?></h1>
                    <div class="price-box">
                        <span class="old-price"><del><?php echo number_format($record->price); ?>đ </del></span>
                        <span class="product-price"><?php echo number_format($record->price - $record->price * $record->discount/100); ?> đ </span>
                    </div><!-- End .price-box -->
                    <div class="product-desc" style="height: auto; width: 680px;">
                        <p><?php echo $record->content; ?>
                        </p>
                    </div><!-- End .product-desc -->
                    <div class="product-action">
                        <span><i class="fas fa-shopping-cart"></i><a href="index.php?controller=cart&action=add&id=<?php echo $record->id; ?>">Thêm vào giỏ hàng</a></span>
                    </div><!-- End .product-action  -->                
                </div><!-- End .product-detail -->
            </div><!-- End .main-main  -->
        </div>
    </div><!-- End .main-left  -->
</div>
<!-- ---------------------------------------------------------------------- -->

</div><!-- End .main-product  -->
