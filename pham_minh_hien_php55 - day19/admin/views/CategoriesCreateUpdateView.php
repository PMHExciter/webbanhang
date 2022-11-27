<?php 
    $this->layoutPath = "Layout.php"
 ?>
<div class="col-md-12">  
    <div class="panel panel-primary" style="border:1px solid pink">
        <div class="panel-heading" style="background: pink;color: black;border:2px solid pink">Add edit category</div>
        <div class="panel-body">
        <form method="post" action="<?php echo $action; ?>">
            <!-- rows -->
            <div class="row" style="margin-top:5px;">
                <div class="col-md-2">Name</div>
                <div class="col-md-10">
                    <input type="text" value="<?php echo isset($record->name)?$record->name:''; ?>" name="name" required class="form-control" >
                </div>
            </div>
            <!-- end rows -->
             <!-- rows -->
            <div class="row" style="margin-top:5px;">
                <div class="col-md-2">Parent</div>
                <div class="col-md-10">
                    <select name="parent_id" class="form-control" style="width: 250px;">
                    	<option value="0">
                    		
                    	</option>
                    	<?php
                    		$categories = $this->modelCategories(); 
                    	 ?>
                    	 <?php foreach($categories as $rows): ?>
                    	 	<option <?php if(isset($record->parent_id)&&$record->parent_id==$rows->id): ?> selected <?php endif; ?> value="<?php echo $rows->id; ?>"><?php echo $rows->name; ?>	 		
                    	 	</option>
                    	 <?php endforeach ?>
                    </select>
                </div>
            </div>
            <!-- end rows -->
           
            <!-- rows -->
            <div class="row" style="margin-top:5px;">
                <div class="col-md-2"></div>
                <div class="col-md-10">
                    <input type="submit" value="Process" class="btn btn-primary" style="background: pink;color: black;border:2px solid pink">
                </div>
            </div>
            <!-- end rows -->
        </form>
        </div>
    </div>
</div>