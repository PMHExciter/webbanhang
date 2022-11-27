<?php 
	trait CategoriesModel{
		// lay cac ban ghi co phan trang
		public function modelRead($recordPerPage){
			// lay tong cac ban ghi
			$totalRecord = $this->modelTotalRecord();
			// tinh so trang
			// ham ceil lay gia tri trần vd:ceil(2.2)=3
			$numPage = ceil($totalRecord/$recordPerPage);
			// lay bien page truyen tu url
			$page = isset($_GET["p"])&&$_GET["p"]>0 ? $_GET["p"]-1 : 0;
			// lay tu ban ghi nao
			$from = $page * $recordPerPage;
			// lay bien ket noi
			$conn = Connection::getInstance();
			$query = $conn->query("select * from categories where parent_id = 0 order by id desc limit $from,$recordPerPage");
			// tra ve tat ca cac ban ghi
			return $query->fetchAll();
		}
		// tinh tong so ban ghi
		public function modelTotalRecord(){
			//lay bien ket noi
			$conn = Connection::getInstance();
			$query = $conn->query("select id from categories where parent_id = 0");
			// tra ve tong so ban ghi dem duoc
			return $query->rowCount();
		}
		//lay mot ban ghi
		public function modelGetRecord($id){
			//lay bien ket noi
			$conn = Connection::getInstance();
			$query = $conn->prepare("select * from categories where id=:var_id");
			$query->execute(["var_id"=>$id]);
			//tra ve mot ban ghi
			return $query->fetch();
		}
		public function modelUpdate($id){
			$name = $_POST["name"];	
			$parent_id = $_POST["parent_id"];		
			//lay bien ket noi
			$conn = Connection::getInstance();
			//update cot name
			$query = $conn->prepare("update categories set name=:var_name, parent_id=:var_parent_id where id:=var_id");
			$query->execute(["var_id"=>$id,"var_parent_id"=>$parent_id]);

		}
		public function modelCreate(){
			$name = $_POST["name"];
			$parent_id = $_POST["parent_id"];
			//lay bien ket noi
			$conn = Connection::getInstance();
			//update cot name
			$query = $conn->prepare("insert into categories set name=:var_name,parent_id=:var_parent_id");
			$query->execute(["var_name"=>$name,"var_parent_id"=>$parent_id]);
			
		}
		public function modelDelete($id){
			//lay bien ket noi
			$conn = Connection::getInstance();
			//update cot name
			$query = $conn->prepare("delete from categories where id=:var_id or parent_id = $id");
			$query->execute(["var_id"=>$id]);
		}
		public function modelCategoriesSub($category_id){
			//lay bien ket noi
			$conn = Connection::getInstance();
			
			$query = $conn->query("select * from categories where parent_id = $category_id");
			return $query->fetchAll();
		}
		public function modelCategories(){
			//lay bien ket noi
			$conn = Connection::getInstance();
			
			$query = $conn->query("select * from categories where parent_id = 0");
			return $query->fetchAll();
		}
	}
 ?>