<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath() %>/bootstrap/css/bootstrap-responsive.min.css">
<script src="<%=request.getContextPath() %>/bootstrap/js/bootstrap.min.js"></script>
<link href="<%=request.getContextPath() %>/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

<title>Login</title>
</head>

<body>
	<div class="container">
		<!-- header -->
		<h1>Guided Breathing</h1>
		
		
		<!-- Form -->
		<hr/>
		<div class="row">
			<div class="span12">
				<form action="<%=request.getContextPath() %>/page/breath" class="form-horizontal" name="userForm" method="post">
					<div class="control-group">
						<label class="control-label" for="inputEmail">Username</label>
						<div class="controls">
							<input type="text" class="form-control" name="username" id="inputEmail" placeholder="Username">
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="inputEmail">Password</label>
						<div class="controls">
							<input type="password" class="form-control" name="password" id="inputPassword" placeholder="Password">
						</div>
					</div>
					<div class="control-group">
						<div class="controls">
							<button type="submit" class="btn" >login</button>
							
						</div>
					</div>
				</form>
			</div>
		</div>
		<form action="<%=request.getContextPath() %>/gif.do?reg=Y" method="post">
		<button   type="submit" class="btn"  style="margin-left:90%;">註冊</button></form>
		<h3>國立中正大學心理系健康心理學實驗室</h3>
		<!-- footer -->
		<hr/>
		
	</div>
</body>

</html>