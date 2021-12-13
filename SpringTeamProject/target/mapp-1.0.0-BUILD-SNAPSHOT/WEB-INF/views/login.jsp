<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
<style>
	body {
		background-color: lightblue;
	}
	img {
		border-radius: 10px;
		border: 2px solid white;
	}
	img, label {
		display:inline-block;
	}
	label{
		width: 130px;
	}
	form {
		font-size: 15px;
	}
	button{
		background-color: #03a9f4;
		border-radius: 4px;
		padding: 10px 95px;
		color: white;
		font-size: 20px; 
		border: none;
	}
	input[type=text], input[type=password] {
		width: 15%;
		padding: 12px 20px;
	}  
	#title {
		text-align:center;
		color:white;
	} 
	
	  
</style>
</head>
<body> 
<h1 id="title" >FreshFood</h1> 
<div style='width:100%;text-align:center;padding-top:20px'>
<img src='../img/snowman.jpg' height="300" width="500">
<form method="post" action="loginOk">
<br>
<div>
	<input type='text' name='userid' placeholder="User id"/>
</div><br>
<div>
	<input type='password' name='password' placeholder="Password"/>
</div>
<br>
<button type='submit'>Sign in</button>
</form>
</div>
</body>
</html>