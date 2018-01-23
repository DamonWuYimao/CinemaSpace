<%@ page language="java" contentType="text/html; charset=utf-8"
	    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!--[if lt IE 7 ]><html lang="en" class="ie6 ielt7 ielt8 ielt9"><![endif]--><!--[if IE 7 ]><html lang="en" class="ie7 ielt8 ielt9"><![endif]--><!--[if IE 8 ]><html lang="en" class="ie8 ielt9"><![endif]--><!--[if IE 9 ]><html lang="en" class="ie9"> <![endif]--><!--[if (gt IE 9)|!(IE)]><!--> 
<html lang="en"><!--<![endif]--> 
	<head>
		<meta charset="utf-8">
		<title>Tasks - Akira</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<link href="css/bootstrap-responsive.min.css" rel="stylesheet">
		<link href="css/site.css" rel="stylesheet">
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
							<li>
								<a href="moviesList"><i class="icon-folder-open"></i> 电影管理</a>
							</li>
							<li  class="active">
								<a href="userTask"><i class="icon-check"></i> 查询会员信息</a>
							</li>
							<li>
								<a href="comPage"><i class="icon-envelope"></i>留言管理 </a>
							</li>
							<li>
								<a href="orders"><i class="icon-file"></i> 订单处理</a>
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
				<div class="span9">
					<h1>
						Projects
					</h1>
					<table class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>
									会员名
								</th>
								<th>用户邮箱
								</th>
								<th>
									最后登录时间
								</th>
								<th>
									最后登录ip
								</th>
								<th>
									注册时间
								</th>
								<th>
									管理
								</th>
							</tr>
						</thead>
							<c:forEach items="${userList}" var="users">
						
						<tbody>
							<tr>
								<td>
									${ users.u_id}
								</td>
								<td>
									${ users.u_mail}
								</td>
								<td>
									${ users.u_time}
								</td>
								<td>
									${ users.u_ip}
								</td>
								<td>
									${ users.u_addtime}
								</td>
								<td>
									<div >
										<p><a href="member?u_id=${users.u_id }">管理</a></p>
									</div>
								</td>
							</tr>
							
						</tbody>
						</c:forEach>
					</table>
					</div>
		</div>
		<script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/site.js"></script>
	</body>
</html>
