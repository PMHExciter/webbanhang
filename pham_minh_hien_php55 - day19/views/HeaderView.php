  <div class="wrapper">
    <div class="header-info">
                <div class="container">
                    <div class="header-left">
                        <ul class="header-info-list">
                            <li>FREE SHIPPING & RETURN</li>
                            <li>MONEY BACK GUARANTEE</li>
                            <li>ONLINE SUPPORT 24/7</li>
                        </ul>
                    </div><!-- End .header-left -->
                    <div class="header-right">
                        <div class="header-contact">
                            <span>HOT LINE</span>
                            <a href="tel:123456789"><strong>123456789</strong></a>
                        </div><!-- End .header-contact -->
                    </div><!-- End .header-right -->
                </div><!-- End .container -->
            </div><!-- End .header-info -->
        <!-- ----------------------------- -->
        <div class="header-log">
          <div class="container">
              <?php if(isset($_SESSION["customer_email"]) == true): ?>
                <div class="customer1"> <a class="hello" href="#" style="text-decoration:none">Xin chào <?php echo $_SESSION["customer_email"];  ?></a>
                  &nbsp; &nbsp;<a class="logout" href="index.php?controller=account&action=logout">Đăng xuất</a></div>
              <?php else: ?>
                <div class="customer2"> <a class="login" href="index.php?controller=account&action=login">Đăng nhập</a>&nbsp; &nbsp;<a class="login1" href="index.php?controller=account&action=register">Đăng ký</a> </div>
              <?php endif; ?>
               
              <a class="admin" href="admin">Admin</a>
          </div><!-- End .container  -->
        </div><!-- End .header-log  -->
        <!-- ----------------------------- -->
    <div class="header">
      <div class="container">
        <div class="right">
          <!--<select>
            <option>VN</option>
            <option>ENG</option>
          </select>-->
        </div><!-- End .right -->
        <div class="main">
          <img src="loadding/images/logo.png">
        </div><!-- End .main -->
        <div class="left" style="position:relative;margin-left: 765px; width: 400px;">

            <input type="text" value="" placeholder="Nhập từ khóa tìm kiếm..." id="key" class="input-control">
            <button style="margin-top:5px;" type="button"> <i class="fa fa-search" onclick="location.href='index.php?controller=search&key='+document.getElementById('key').value;"></i> </button>

            <div id="smart-search">
                <ul>
                  <li><img src="assets/upload/products/1622640476_1615812872_132195017985165066_1.jpg"> <a href="#">18 - 16 - MacBook Pro 16 Touch Bar</a></li>
                  <li><img src="assets/upload/products/1622640476_1615812872_132195017985165066_1.jpg"> <a href="#">18 - 16 - MacBook Pro 16 Touch Bar</a></li>
                  <li><img src="assets/upload/products/1622640476_1615812872_132195017985165066_1.jpg"> <a href="#">18 - 16 - MacBook Pro 16 Touch Bar</a></li>
                </ul>
            </div>

        </div><!-- End .left -->
        <style type="text/css">
          #smart-search{position: absolute; width: 100%; background: white; z-index: 1; display: none; height: 300px; overflow:scroll;}
          #smart-search ul{padding: 0px; margin: 0px; list-style: none;}
          #smart-search ul li{border-bottom: 1px solid #dddddd; margin-bottom: 10px; margin-top: 10px;}
          #smart-search ul li a{text-decoration: none;}
          #smart-search img{width: 60px; margin-right: 5px;}
        </style>
        <script type="text/javascript">
          $(document).ready(function(){
            $("#key").keyup(function(){
              var key = $("#key").val();
              if(key != ""){
                $("#smart-search").attr("style","display:block;");
                //---
                $.ajax({
                  url: "index.php?controller=search&action=ajax&key="+key,
                  success: function( result ) {
                    $( "#smart-search ul" ).empty();
                    $( "#smart-search ul" ).append(result);
                  }
                });
                //---
              }
              else
                $("#smart-search").attr("style","display:none;");
            });
          });
        </script>


      </div><!-- End .container  -->
    </div><!-- End .header  -->
    <!-- ----------------header---------------- -->
    <div class="menu-header">
      <div class="main">
        <ul>
          <li><a href="index.php">TRANG CHỦ</a></li>
          <li><a href="index.php?controller=intro">CHÍNH SÁCH</a></li>
          <li><a href="#">SẢN PHẨM</a><i class="fas fa-angle-down"></i>
            <ul class="level2" style="z-index: 1;">
               <?php 
              //lay bien ket noi
              $conn = Connection::getInstance();
              $query = $conn->query("select * from categories where parent_id = 0 order by id desc");
              $categories = $query->fetchAll();
           ?>
           <?php foreach($categories as $rows): ?>
            <li><a href="index.php?controller=products&action=category&category_id=<?php echo $rows->id; ?>"><?php echo $rows->name; ?></a></li>
            <?php 
              $querySub = $conn->query("select * from categories where parent_id=".$rows->id);
              $categoriesSub = $querySub->fetchAll();
             ?>
             <?php foreach($categoriesSub as $rowsSub): ?>
            <li style="padding-left:20px;"><a href="index.php?controller=products&action=category&category_id=<?php echo $rowsSub->id; ?>"><?php echo $rowsSub->name; ?></a></li>
              <?php endforeach; ?>
           <?php endforeach; ?> 
            </ul>
          </li>
          <!-- <li><a href="index.php?controller=news">TIN TỨC</a></li> -->
        <li><a href="index.php?controller=contact">LIÊN HỆ</a></li>
        </ul>       
      </div><!-- End .main  -->
      <div class="shop">
        <span><a href="index.php?controller=cart"><i class="fas fa-shopping-cart"></i>Giỏ hàng</a></span>
      </div><!-- End .shop  -->
    </div><!-- End .menu-header  -->
    <!-- --------------menu-header-------------- -->