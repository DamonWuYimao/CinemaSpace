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
textarea {
    resize: none;
    fieldset:height:100%;
    .controls:height:110px;
}
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
								<a href="userTask"><i class="icon-check"></i> 查询会员信息</a>
							</li>
							<li>
								<a href="comPage"><i class="icon-envelope"></i>留言管理 </a>
							</li>
							<li>
								<a href="orders"><i class="icon-file"></i> 订单处理</a>
							</li>
							<li>
								<a href="../Cinema/404.html"><i class="icon-list-alt"></i> 统计</a>
							</li>
							<li class="nav-header">
								Your Account
							</li>
							<li>
								<a href="../Cinema/404.html"><i class="icon-user"></i> Profile</a>
							</li>
							<li>
								<a href="../Cinema/404.html"><i class="icon-cog"></i> 设置</a>
							</li>
							<li class="divider">
							</li>
							<li>
								<a href="../Cinema/404.html"><i class="icon-info-sign"></i> 帮助</a>
							</li>
							<li class="nav-header">
								Bonus Templates
							</li>
							<li>
								<a href="../Cinema/404.html"><i class="icon-picture"></i> 电影图片管理</a>
							</li>
							<li>
								<a href="../Cinema/404.html"><i class="icon-stop"></i> 404</a>
							</li>
						</ul>
					</div>
				</div>
				<div class="span9">
					
					
					<form id="new-project" class="form-horizontal" method='post' action='updateMovies?m_id=${updateMovies.m_id }' onsubmit="return sumbit_sure()">
						<fieldset>
						<input type='hidden' name='id' value='${updateMovies.m_id}'/>
							<legend>增加电影</legend>
							<div class="control-group">
								<label class="control-label" for="input01" >电影名    </label>
								
								<div class="controls">
									<input type="text" class="input-xlarge" name="m_name"  id="input01" value="${updateMovies.m_name }"/>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="input01"  >电影时间</label>
								<div class="controls">
							<p><input type="text" id="datepicker" name="m_time" value="${updateMovies.m_time }"></p>
							</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="input01"  >电影出版公司</label>
								
								<div class="controls">
									<input type="text" class="input-xlarge" name="m_company" id="input01" value="${updateMovies.m_company }"/>
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
									<input type="text" class="input-xlarge" name="m_detail" id="input01" value="${updateMovies.m_detail }"/>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="input01"  >出演演员</label>
								
								<div class="controls">
									<input type="text" class="input-xlarge" name="m_actor" id="input01" value="${updateMovies.m_actor }"/>
								</div>
							</div>
							
							<div class="control-group">
								<label class="control-label" for="input01"  >下架时间</label>
									<div class="controls">
							<p><input type="text" id="datepickerOne" name="m_canceltime" value="${updateMovies.m_canceltime }" id="input01"></p>
							</div>
								
							</div>
							<div class="control-group">
								<label class="control-label" for="input01"  >制片国家/地区</label>
								
								<div class="controls">
									<input type="text" class="input-xlarge" name="m_country" id="input01" value="${updateMovies.m_country }"/>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="input01"  >语言</label>
								
								<div class="controls">
									<input type="text" class="input-xlarge" name="m_language" id="input01" value="${updateMovies.m_language }"/>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="input01"  >片长</label>
								
								<div class="controls">
									<input type="text" class="input-xlarge" name="m_mtime" id="input01" value="${updateMovies.m_mtime }"/>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="textarea">电影介绍详情</label>
								<div class="controls">
									<textarea class="input-xlarge" id="textarea" name="textarea" rows="6" >${updateMovies.m_com }</textarea>
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
 		<script>
function sumbit_sure(){
var gnl=confirm("确定要修改?");
if (gnl==true){
return true;
}else{
return false;
}
}
</script>
 
   <link rel="stylesheet" href="//apps.bdimg.com/libs/jqueryui/1.10.4/css/jquery-ui.min.css">
  <script src="//apps.bdimg.com/libs/jquery/1.10.2/jquery.min.js"></script>
  <script src="//apps.bdimg.com/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
  <link rel="stylesheet" href="jqueryui/style.css">
  <script>
  $(function() {
    $( "#datepicker" ).datepicker({
      changeMonth: true,
      changeYear: true
    });
    $( "#datepickerOne" ).datepicker({
        changeMonth: true,
        changeYear: true
      });
  });
  </script>

 
	</body>
</html>
