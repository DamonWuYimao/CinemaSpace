<%@ page language="java" contentType="text/html; charset=utf-8"
	    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<!--[if lt IE 7 ]><html lang="en" class="ie6 ielt7 ielt8 ielt9"><![endif]--><!--[if IE 7 ]><html lang="en" class="ie7 ielt8 ielt9"><![endif]--><!--[if IE 8 ]><html lang="en" class="ie8 ielt9"><![endif]--><!--[if IE 9 ]><html lang="en" class="ie9"> <![endif]--><!--[if (gt IE 9)|!(IE)]><!--> 
<html lang="en"><!--<![endif]--> 
	<head>
		<meta charset="utf-8">
		<title>Projects - Akira</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<link href="css/bootstrap-responsive.min.css" rel="stylesheet">
		<link href="css/site.css" rel="stylesheet">

	
		<style type="text/css">
 
</style>
		<!--[if lt IE 9]><script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
	</head>
	<body>
		<div class="container">
			<div class="navbar">
				<div class="navbar-inner">
					<div class="container">
						<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </a> <a class="brand" href="#">Ho'me</a>
						<div class="nav-collapse">
						<ul class="nav">
								<li>
									<a href="index.html">主页</a>
								</li>
								<li>
									<a href="../Cinema/404.html">用户管理</a>
								</li>
								<li>
									<a href="../Cinema/404.html">帮助</a>
								</li>
								<li class="dropdown">
									<a href="help.htm" class="dropdown-toggle" data-toggle="dropdown">Tours <b class="caret"></b></a>
									
							</li>
							</ul>
						</div>
							<c:choose><c:when test="${sadasdsa==null}"><a href='Login.jsp'>请登录</a></c:when>
           <c:otherwise>欢迎你，${sadasdsa.u_name} <a href='Exit'>退出</a></c:otherwise>
          </c:choose>
								
					</div>
				</div>
			</div>
			<div class="row">
				<div class="span3">
					<div class="well" style="padding: 8px 0;">
						<ul class="nav nav-list">
							<li class="nav-header">
								Akira
							</li>
							<li >
								<a href="index.html"><i class="icon-home"></i> 主页</a>
							</li>
							<li class="active">
								<a href="moviesList"><i class="icon-folder-open"></i> 电影管理</a>
							</li>
							<li>
								<a href="tasks.htm"><i class="icon-check"></i> 查询会员信息</a>
							</li>
							<li>
								<a href="messages.htm"><i class="icon-envelope"></i>留言管理 </a>
							</li>
							<li>
								<a href="files.htm"><i class="icon-file"></i> 订单处理</a>
							</li>
							<li>
								<a href="activity.htm"><i class="icon-list-alt"></i> 统计</a>
							</li>
							<li class="nav-header">
								Your Account
							</li>
							<li>
								<a href="profile.htm"><i class="icon-user"></i> Profile</a>
							</li>
							<li>
								<a href="settings.htm"><i class="icon-cog"></i> 设置</a>
							</li>
							<li class="divider">
							</li>
							<li>
								<a href="help.htm"><i class="icon-info-sign"></i> 帮助</a>
							</li>
							<li class="nav-header">
								Bonus Templates
							</li>
							<li>
								<a href="gallery.htm"><i class="icon-picture"></i> 电影图片管理</a>
							</li>
							<li>
								<a href="blank.htm"><i class="icon-stop"></i> 404</a>
							</li>
						</ul>
					</div>
					
				</div>

		<div class="uploader white">
		
		<form action="picUpload?id=${m_id}" method="post" enctype="multipart/form-data" onsubmit="return sumbit_sure()">
		<p>点我上传首页图片</p>
		<p>图片要求424px X 424px</p>
		<input type="hidden" name="id" value="${bookId}"/>
        <input type="file" name="pic" />
        <input type="submit" value="上传"/>
        
</form>
</div>
		<div class="uploader white">
		
		<form action="indexPic?id=${m_id}" method="post" enctype="multipart/form-data" onsubmit="return sumbit_sure()">
		<p>点我上传首页滚动</p>
		<p>图片要求1920X500+</p>
		<input type="hidden" name="id" value="${bookId}"/>
        <input type="file" name="pic" />
        <input type="submit" value="上传"/>
        
        
</form>
</div>
<div class="uploader white">
		
		<form action="neiPivUpload?id=${m_id}" method="post" enctype="multipart/form-data" onsubmit="return sumbit_sure()">
		<p>点我上传内页大图</p>
		<p>图片要求380X600</p>
		<input type="hidden" name="id" value="${bookId}"/>
        <input type="file" name="pic" />
        <input type="submit" value="上传"/>
        
        
</form>
</div>

</div>

		
				
				
					
					</body>


		<script src="js/jquery-1.7.2.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/site.js"></script>
		<script>
function sumbit_sure(){
var gnl=confirm("确定要上传?");
if (gnl==true){
return true;
}else{
return false;
}
}
</script>

       

	
</html>
