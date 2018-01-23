<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<script src="jquery-1.12.1.min.js"></script>
<script>
     $(document).ready(function(){
    		 $("#check").click(function(){
    			 var userId=$("#id").val();
    			 $.post("check",{userId:userId},function(data){
    				 	alert(userId);
    			 });
    			 });
    		 });
    		 </script>
</head>
<body>
用户名：<input type="text" name="id" id="id"/> 	<input type="button" id="check" value="check"/> 	<br>
<input type="text" name="phone" /> 
</body>
</html>