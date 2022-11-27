<?php 
    //load file Layout.php
    $this->layoutPath = "Layout.php";
 ?>
<div class="col-md-12">
    <div style="margin-bottom:5px;">
        <a href="index.php?controller=products&action=create" class="btn btn-primary" style="background: pink; color: black;border:2px solid pink">Add category</a>
    </div>
    <div class="panel panel-primary" style="border:1px solid pink">
        <div class="panel-heading" style="background: pink;color: black;border:2px solid pink">List Products</div>
        <div class="panel-body">
            <table class="table table-bordered table-hover">
                <tr>
                    <th style="width: 100px;"></th>
                    <th>name</th>
                    <th style="width: 150px;">Danh mục</th>
                    <th style="width:70px">Giá</th>
                    <th style="width:70px">Hot</th>
                    <th style="width:50px">Giảm giá</th>
                    <th style="width:100px;"></th>
                </tr>
                <?php foreach($data as $rows): ?>
                <tr>
                    <td>
                        <?php if($rows->photo != "" && file_exists("../assets/upload/products/".$rows->photo)): ?>
                            <img src="../assets/upload/products/<?php echo $rows->photo; ?>" style="width:100px;">
                        <?php endif; ?>
                    </td>
                    <td><?php echo $rows->name; ?></td>
                    <td>
                        <?php 
                            $category = $this->modelGetCategory($rows->category_id);
                            echo isset($category->name) ? $category->name : "";
                         ?>
                    </td>
                    <td style="text-align: center;"><?php echo number_format($rows->price); ?></td>
                    <td style="text-align: center;">
                        <?php if(isset($rows->hot)&&$rows->hot == 1): ?>
                            <span class="fa fa-check"></span>
                        <?php endif; ?>
                    </td>
                    <td style="text-align: center;"><?php echo $rows->discount; ?></td>
                    <td style="text-align:center;">
                        <a href="index.php?controller=products&action=update&id=<?php echo $rows->id; ?>" style="color: black;">Edit</a>&nbsp;
                        <a href="index.php?controller=products&action=delete&id=<?php echo $rows->id; ?>" onclick="return window.confirm('Are you sure?');" style="color: black;">Delete</a>
                    </td>
                </tr>
                <?php endforeach; ?>
            </table>
            <style type="text/css">
                .pagination{padding:0px; margin:0px;}
            </style>
            <!-- liet ke cac trang -->
            <ul class="pagination">
                <?php for($i = 1; $i <= $numPage; $i++): ?>
                <li class="page-item">
                    <a href="index.php?controller=products&p=<?php echo $i; ?>" class="page-link"><?php echo $i; ?></a>
                </li>
                <?php endfor; ?>
            </ul>
        </div>
    </div>
</div>