<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<jsp:setProperty name="user" property="*"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/bootstrap/css/bootstrap-responsive.min.css">
<script src="/bootstrap/js/bootstrap.min.js"></script>
<link href="/bootstrap/reset.css" rel="stylesheet" type="text/css"/>
<link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="/bootstrap/css/main.css" rel="stylesheet" type="text/css"/>

<title>Login</title>
</head>

<body>
	<div class="container">
		<!-- header -->
		<h1>Please Login</h1>
		
		
		<!-- Form -->
		<hr/>
		<div class="row">
			<div class="span12">
				<form action="<%=request.getContextPath() %>/login" class="form-horizontal" name="userForm" method="post">
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
							<button type="submit" class=" " >login</button>
						</div>
					</div>
				</form>
			</div>
		</div>
		
		<!-- footer -->
		<hr/>
		
	</div>
</body>

</html>