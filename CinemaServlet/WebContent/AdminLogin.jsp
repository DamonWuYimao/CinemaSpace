<%@ page language="java" contentType="text/html; charset=utf-8"
	    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--[if lt IE 7 ]><html lang="en" class="ie6 ielt7 ielt8 ielt9"><![endif]--><!--[if IE 7 ]><html lang="en" class="ie7 ielt8 ielt9"><![endif]--><!--[if IE 8 ]><html lang="en" class="ie8 ielt9"><![endif]--><!--[if IE 9 ]><html lang="en" class="ie9"> <![endif]--><!--[if (gt IE 9)|!(IE)]><!--> 
<html lang="en"><!--<![endif]--> 
	<head>
		<meta charset="utf-8">
		<title>Login - Akira</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<link href="css/bootstrap-responsive.min.css" rel="stylesheet">
		<link href="css/site.css" rel="stylesheet">
		<!--[if lt IE 9]><script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
	</head>
	<body>
		<div id="login-page" class="container">
			<h1>Akira Login</h1>
			<form id="login-form" class="well" action="login" method="post" onsubmit="return checkForm()">
			<input type="text" name="id" class="span2" placeholder="Email" /><br />
			<input type="password" name="pass" class="span2" placeholder="Password" /><br />
			<label class="checkbox"> <input type="checkbox" /> Remember me </label>
			<button type="submit" class="btn btn-primary">Sign in</button>
			
		</form>	
		</div>
		<script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/site.js"></script>
		<script>
		function checkForm(){ 
			function checkForm()
			{
			   if (document.login-form.id.value==""){
			      alert("账号不能为空。");
			      login-form.id.focus();
			      return false;
			   }
			   {
			  
			  if (document.login-form.pass.value=="") {
			     alert("密码不能为空。");
			     login-form.pass.focus();
			     return false;
			   }
			  
			
			   }
			   }
			}</script>
	</body>
</html>