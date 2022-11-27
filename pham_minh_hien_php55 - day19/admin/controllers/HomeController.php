<?php 
	class HomeController extends Controller{
		// ham tao
		public function __construct(){
			//xac thuc danh nhap
			$this->authentication();
		}
		public function index(){
			//load view
			$this->loadview("HomeView.php");
		}
	}
 ?>