<!DOCTYPE html>
<html>
<head>
	<title>Login</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="../assets/admin/layout1/css/bootstrap.min.css">
</head>
<body>
<div class="container" style="margin-top:40px;" >
	<div class="row" style="background:pink;">
		<div class="col-md-6 col-md-offset-3">
			<div class="panel panel-primary" style="border:1px solid pink">
				<div class="panel-heading" style="background: pink;color: black;border:2px solid pink;">Login with PMH shop</div>
				<div class="panel-body">
					<form method="post" action="index.php?controller=login&action=login" style="height:200px">
					<div class="row" style="margin-top:5px;">
						<div class="col-md-2">Email</div>
						<div class="col-md-9"><input type="email" name="email" required class="form-control"></div>
					</div>
					<div class="row" style="margin-top:5px;">
						<div class="col-md-2">Password</div>
						<div class="col-md-9"><input type="password" name="password" required class="form-control"></div>
					</div>
					<div class="row" style="margin-top:5px;">
						<div class="col-md-2"></div>
						<div class="col-md-9"><input type="submit" value="Login" class="btn btn-primary"> <input type="reset" value="Reset" class="btn btn-danger"></div>
					</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>