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
				<script src="js/jquery.selectlist.js"></script>



	<link rel="stylesheet" type="text/css" href="css/jquery.selectlist.css">
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

					
					<form id="new-project" class="form-horizontal" method='post' action='roAction' onsubmit="return sumbit_sure()"> 
						<fieldset>
							<legend>电影排片管理</legend>
							<div class="control-group">
								<label class="control-label" for="input01" >电影名</label>
								<input type="hidden" name="id" value="${sellMovie.m_id }"/>
								<input type="hidden" name="m_name" value="${sellMovie.m_name }"/>
								<div class="controls">
									<input type="text" class="input-xlarge" name="name" id="input01" value="${sellMovie.m_name}" disabled="disabled"/>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="input01"  >电影时间</label>
									<div class="controls">
							<p><input type="text" name="datepicker" id="datepicker"  value="01/01/2016" id="input01"></p>
							</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="input01"  >电影时间</label>
								
								<div class="controls">

<select id="salary" name="salary">
  <option value="0940">09：40</option>
  <option value="1345">13：45</option>
  <option value="1545">15：45</option>
  <option value="1950">19: 50</option>
  <option value="2150">21：50</option>
  <option value="2055">20：55</option>
  <option value="2255">22：55</option>
  <option value="0005">00：05</option>
  <option value="0250">02：50</option>

</select>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="input01"  >电影房间</label>
								
								<div class="controls">
									<select id="edu" name="edu">
  <option value="40">1号厅</option>
  <option value="42">2号厅</option>
  <option value="44">3号厅</option>
  <option value="46">4号厅</option>
  <option value="50">5号厅</option>
  <option value="48">6号厅</option>

</select>
								</div>
							</div>
							<!--<div class="control-group">
								<label class="control-label" for="select01">Client</label>
								<div class="controls">
									<select id="select01"> <option>-- Select client --</option> <option>Bad Robot</option> <option>Evil Genius</option> <option>Monsters Inc</option> </select>
								</div>
							</div>-->
							<div class="control-group">
								<label class="control-label" for="input01"  >电影票价</label>
								
								<div class="controls">
									<input type="text" class="input-xlarge" name="company" id="input01" placeholder="票价"/>元
								</div>
							</div>
							<div class="form-actions">
								<button type="submit" class="btn btn-primary">Create</button> <button class="btn">Cancel</button>
							</div>
						</fieldset>
					</form>
				</div>
		
    





		
				
				
					
					</body>


		<script src="js/jquery-1.9.1.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/site.js"></script>
		
		   <link rel="stylesheet" href="//apps.bdimg.com/libs/jqueryui/1.10.4/css/jquery-ui.min.css">
  <script src="//apps.bdimg.com/libs/jquery/1.10.2/jquery.min.js"></script>
  <script src="//apps.bdimg.com/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
  		<script>
function sumbit_sure(){
var gnl=confirm("确定要排片?");
if (gnl==true){
return true;
}else{
return false;
}
}
</script>
<script type="text/javascript">
	  $(function() {
    $( "#datepicker" ).datepicker({
      changeMonth: true,
      changeYear: true
    });
 
  });
	  </script>
<script type="text/javascript">
	$(function(){
		$('select').selectlist({
			zIndex: 10,
			width: 300,
			height: 40
		});		
	});
    	$("#salary").change(function(){
        var timeR=$("#salary option:selected").attr("value");

        var psel = document.getElementById("datepicker");
        //alert(timeR);
        //alert(psel.value);
        var timeC=psel.value+timeR;
        var time = timeC.replace(/[^0-9]/ig,""); 
       // alert(time);
        $("#edu").change(function(){
            var seat=$("#edu option:selected").attr("value");
           // alert(seat);
        });
});

</script>

       

	
</html>
