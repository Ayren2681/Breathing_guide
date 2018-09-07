<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>註冊</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<link rel="stylesheet"
	href="./bootstrap/css/bootstrap-responsive.min.css">
<script src="./bootstrap/js/bootstrap.min.js"></script>
<link href="./bootstrap/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
</head>
<body>
	<form class="form-horizontal">
		<div class="control-group">
			<div class="controls">
				<button class="btn btn-primary" type="button">聲明段落</button>
			</div>
		</div>
		<div class="control-group">
			<div class="controls">
				帳號<input type="text" placeholder="username">
			</div>
			<div class="controls">
				密碼<input type="text" placeholder="password">
			</div>
			<div class="controls">
				再次輸入密碼<input type="text" placeholder="password again">
			</div>
		</div>
		<div class="control-group">
			<div class="controls">
				性別 男<input id="radio1" type="radio" name="optionsRadios"> 
				女 <input name="optionsRadios" type="radio">
			</div>
			<div class="controls">
				年齡
				<inputtype ="text" placeholder="age" />
			</div>
			<div class="controls">
				是否有下列疾病 <label class="checkbox inline"> <input
					type="checkbox" id="inlineCheckbox1" value="option1"> 心臟病
				</label> <label class="checkbox inline"> <input type="checkbox"
					id="inlineCheckbox2" value="option1"> 糖尿病
				</label> <label class="checkbox inline"> <input type="checkbox"
					id="inlineCheckbox3" value="option1"> 高血壓
				</label>
				</label> <label class="checkbox inline"> <input type="checkbox"
					id="inlineCheckbox3" value="option1"> 自律神經失調
				</label>
			</div>
		</div>
	</form>
</body>
</html>