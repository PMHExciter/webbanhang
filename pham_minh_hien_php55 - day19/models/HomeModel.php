<?php 
	trait HomeModel{
		// lay 6 san pham noi bat
		public function modelHotProducts(){
			$conn = Connection::getInstance();
			$query = $conn->query("select * from products where hot=1 order by id desc limit 0,6");
			return $query->fetchAll();
		}
		//lay danh muc san pham
		public function modelCategories(){
			$conn = Connection::getInstance();
			$query = $conn->query("select * from categories order by id desc ");
			return $query->fetchAll();
		}
		//lay cac sanpham thuoc danh muc
		public function modelProducts($category_id){
			$conn = Connection::getInstance();
			$query = $conn->query("select * from products where category_id=$category_id order by id desc limit 0,6");
			return $query->fetchAll();
		}
		// lay 6 tin noi bat
		public function modelHotNews(){
			$conn = Connection::getInstance();
			$query = $conn->query("select * from news where hot=1 order by id desc limit 0,6");
			return $query->fetchAll();
		}
	}
 ?>