<?php 
	$this->layoutPath = "Layout.php"
 ?>
    <div class="col-md-12">
        <div style="margin-bottom:5px;">
            <a href="index.php?controller=Categories&action=create" class="btn btn-primary" style="background: pink; color: black;border:2px solid pink">Add Categories</a>
        </div>
        <div class="panel panel-primary" style="border:1px solid pink">
            <div class="panel-heading" style="background: pink;color: black;border:2px solid pink">List Category</div>
            <div class="panel-body">
                <table class="table table-bordered table-hover">
                    <tr>
                        <th>FullnameCategory</th>
                        
                        <th style="width:100px;"></th>
                    </tr>
                    <?php foreach($data as $rows): ?>
                    <tr>
                        <td><?php echo $rows->name; ?></td>
                       
                        <td style="text-align:center;">
                            <a href="index.php?controller=Categories&action=update&id=<?php echo $rows->id; ?>"style="color: black;">Edit</a>&nbsp;
                            <a href="index.php?controller=Categories&action=delete&id=<?php echo $rows->id; ?>" onclick="return window.confirm('Are you sure?');" style="color: black;">Delete</a>
                        </td>
                    </tr>
                    <?php 
                    	$categoriesSub = $this->modelCategoriesSub($rows->id);
                    	 ?>
                    <?php foreach($categoriesSub as $rowsSub): ?>
                    <tr>
                    	<td style="padding-left: 30px;">
                    		<?php echo $rowsSub->name; ?>
                    	</td>
                    	<td style="text-align:center;">
                    		<a href="index.php?controller=Categories&action=update&id=<?php echo $rowsSub->id; ?>">Edit</a>&nbsp;
                    		<a href="index.php?controller=Categories&action=delete&id=<?php echo $rowsSub->id; ?>" onclick="return window.confirm('Are you sure?');">Delete</a>
                    	</td>
                    </tr>
                <?php endforeach; ?>
                <?php endforeach; ?>
                </table>
                <style type="text/css">
                    .pagination{padding:0px; margin:0px;}
                </style>
                <!-- liet ke cac trang -->
                <ul class="pagination">
                	<?php for($i = 1;$i <= $numPage; $i++): ?>
                	<li class="page-item">
                		<a href="index.php?controller=Categories&p=<?php echo $i; ?>" class="page-link"><?php echo $i; ?></a> 
                	</li>
                	<?php endfor; ?>
                </ul>
            </div>
        </div>
    </div>