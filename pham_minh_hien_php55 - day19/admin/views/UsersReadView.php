<?php 
    $this->layoutPath = "Layout.php"
 ?>
    <div class="col-md-12">
        <div style="margin-bottom:5px;">
            <a href="index.php?controller=users&action=create" class="btn btn-primary" style="background: pink; color: black;border:2px solid pink">Add user</a>
        </div>
        <div class="panel panel-primary" style="border:1px solid pink">
            <div class="panel-heading" style="background: pink;color: black;border:2px solid pink">List User</div>
            <div class="panel-body">
                <table class="table table-bordered table-hover">
                    <tr>
                        <th>Fullname</th>
                        <th>Email</th>
                        <th style="width:100px;"></th>
                    </tr>
                    <?php foreach($data as $rows): ?>
                    <tr>
                        <td><?php echo $rows->name; ?></td>
                        <td><?php echo $rows->email; ?></td>
                        <td style="text-align:center;">
                            <a href="index.php?controller=users&action=update&id=<?php echo $rows->id; ?>">Edit</a>&nbsp;
                            <a href="index.php?controller=users&action=delete&id=<?php echo $rows->id; ?>" onclick="return window.confirm('Are you sure?');">Delete</a>
                        </td>
                    </tr>
                <?php endforeach; ?>
                </table>
                <style type="text/css">
                    .pagination{padding:0px; margin:0px;}
                </style>
                <!-- liet ke cac trang -->
                <ul class="pagination">
                    <?php for($i = 1;$i <= $numPage; $i++): ?>
                    <li class="page-item">
                        <a href="index.php?controller=users&p=<?php echo $i; ?>" class="page-link"><?php echo $i; ?></a> 
                    </li>
                    <?php endfor ?>
                </ul>
            </div>
        </div>
    </div>