<?php 
	class Controller{
		public $view = NULL;
		public $layoutPath = NULL;
		public function loadview($fileName,$data = NULL){
			// gan cacthong so de bien fileName thanh duong dan hoan chinh
			$fileName = "views/$fileName";
			if(file_exists($fileName)){
				ob_start();
					// su dung lenh extract de bien ten key thanh ten bien
					if($data != NULL)
						extract($data);
					include $fileName;
					// doc du lieu cua file $fileName va nem du lieu vao bien $this->view
					$this->view = ob_get_contents();
				ob_get_clean();
			}
			//----
			if($this->layoutPath != NULL)
				include "views/$this->layoutPath";
			else
				echo $this->view;
		}
		// ham xac thuc danh nhap trang admin
		public function authentication(){
			if(isset($_SESSION["admin_email"])==false)
				header("location:index.php?controller=login");
		}
	}
 ?>