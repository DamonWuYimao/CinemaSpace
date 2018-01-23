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
				<div class="span9">
					<h1>
						Projects
					</h1>
					<form action="delMovies" method="post" >
					<table class="table table-bordered table-striped">
						<thead>
						
							<tr>
							<th>
									选择
								</th>
								<th>
									电影名
								</th>
								<th>
									电影排片管理
								</th>
								<th>
								<a href='moviesList?order=m_time&flag=${flag}'>
									上映时间
									</a>
								</th>
								<th>
									详情
								</th>
								<th>
								<a href='moviesList?order=m_addtime&flag=${flag}'>
									添加时间
									</a>
								</th>
								<th>上传图片</th>
								
								
							</tr>
						</thead>
						<c:forEach items="${moviesList}" var="movies">
						<tbody>
							<tr>
							
							<td><input type='checkbox' name='m_id' value='${ movies.m_id }' /></td>
								<td>
									${movies.m_name}
								</td>
								<td>
									<a href="sellMovie?id=${ movies.m_id}">排片管理</a>
								</td>
								<td>
									${movies.m_time}
								</td>
								<td>
									<a href="updateMovies?id=${ movies.m_id}">电影管理</a>
								</td>
								<td>
									${movies.m_addtime}
								</td>	
								<td>
									<div>
										<p><a href="picUpload?m_id=${movies.m_id}">上传图片</a></p>
									</div>
								</td>
								
							</tr>
							
							
						</tbody>
						</c:forEach>
						
					</table>
					<button type="submit" class="btn btn-primary">Delete</button>
				   </form>
					<div class="pagination">
						<ul>
							<li>
								<a href="moviesList?page=${pager.prePage }&${params}">&laquo;</a>
							</li>
							<li >
								<a href="moviesList?page=1&${params}">1</a>
							</li>
							<li>
								<a href="moviesList?page=2&${params}">2</a>
							</li>
							
							
							<li>
								<a href='moviesList?page=${pager.nextPage }&${params}'>&raquo;</a>
							</li>
						</ul>
					</div>
					
					<a class="toggle-link" href="#new-project"><i class="icon-plus"></i> 增加电影</a>
					<form id="new-project" class="form-horizontal hidden" method='post' action='addMovies'>
						<fieldset>
							<legend>增加电影</legend>
							<div class="control-group">
								<label class="control-label" for="input01" >电影名</label>
								
								<div class="controls">
									<input type="text" class="input-xlarge" name="name" id="input01" placeholder="电影名称"/>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="input01"  >电影时间</label>
								
								<div class="controls">
									<input type="text" class="input-xlarge" name="time" id="input01" placeholder="XXXX-YY-ZZ"/>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="input01"  >电影出版公司</label>
								
								<div class="controls">
									<input type="text" class="input-xlarge" name="company" id="input01" placeholder="电影出版公司"/>
								</div>
							</div>
							<!--<div class="control-group">
								<label class="control-label" for="select01">Client</label>
								<div class="controls">
									<select id="select01"> <option>-- Select client --</option> <option>Bad Robot</option> <option>Evil Genius</option> <option>Monsters Inc</option> </select>
								</div>
							</div>-->
							<div class="control-group">
								<label class="control-label" for="input01"  >电影导演</label>
								
								<div class="controls">
									<input type="text" class="input-xlarge" name="company" id="input01" placeholder="电影导演"/>
								</div>
							</div>
							<div class="form-actions">
								<button type="submit" class="btn btn-primary">Create</button> <button class="btn">Cancel</button>
							</div>
						</fieldset>
					</form>
				</div>
			</div>
		</div>
		<script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/site.js"></script>
	</body>
</html>
