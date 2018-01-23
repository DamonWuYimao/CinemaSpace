<%@ page language="java" contentType="text/html; charset=utf-8"
	    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<!-- Basic Page Needs -->
        <meta charset="utf-8">
        <title>AMovie - Login</title>
        <meta name="description" content="A Template by Gozha.net">
        <meta name="keywords" content="HTML, CSS, JavaScript">
        <meta name="author" content="Gozha.net">
    
    <!-- Mobile Specific Metas-->
    	<meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="telephone=no" name="format-detection">
    
    <!-- Fonts -->
        <!-- Font awesome - icon font -->
        <link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
        <!-- Roboto -->
        <link href='http://fonts.useso.com/css?family=Roboto:400,700' rel='stylesheet' type='text/css'>
    
    <!-- Stylesheets -->

        <!-- Mobile menu -->
        <link href="Cinema/css/gozha-nav.css" rel="stylesheet" />
        <!-- Select -->
        <link href="Cinema/css/external/jquery.selectbox.css" rel="stylesheet" />
    
        <!-- Custom -->
        <link href="Cinema/css/style.css?v=1" rel="stylesheet" />

        <!-- Modernizr --> 
        <script src="Cinema/js/external/modernizr.custom.js"></script>
    
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries --> 
    <!--[if lt IE 9]> 
    	<script src="http://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7/html5shiv.js"></script> 
		<script src="http://cdnjs.cloudflare.com/ajax/libs/respond.js/1.3.0/respond.js"></script>		
    <![endif]-->
</head>

<body>
    <div class="wrapper">
        <!-- Banner -->
        <div class="banner-top">
            <img alt='top banner' src="Cinema/images/banners/banner.jpg">
        </div>

        <!-- Header section -->
        <header class="header-wrapper">
            <div class="container">
                <!-- Logo link-->
                <a href='index.html' class="logo">
                    <img alt='logo' src="Cinema/images/logo.png">
                </a>
                
                <!-- Main website navigation-->
                <nav id="navigation-box">
                    <!-- Toggle for mobile menu mode -->
                    <a href="#" id="navigation-toggle">
                        <span class="menu-icon">
                            <span class="icon-toggle" role="button" aria-label="Toggle Navigation">
                              <span class="lines"></span>
                            </span>
                        </span>
                    </a>
                    
                    <!-- Link navigation -->
                    <ul id="navigation">
                        <li>
                            <span class="sub-nav-toggle plus"></span>
                             <a href="#">页面</a>
                            <ul>
                                
                                <li class="menu__nav-item"><a href="Cinema/404.html">404 错误</a></li>
                               
                            </ul>
                        </li>
                        <li>
                            <span class="sub-nav-toggle plus"></span>
                            <a href="page-elements.html">电影</a>
                            <ul>
                                <li class="menu__nav-item"><a href="Cinema/404.html">404 错误</a></li>
                                <li class="menu__nav-item"><a href="Cinema/404.html">404 错误</a></li>
                                <li class="menu__nav-item"><a href="Cinema/404.html">404 错误</a></li>
                                <li class="menu__nav-item"><a href="Cinema/404.html">404 错误</a></li>
                            </ul>
                        </li>
                        <li>
                            <span class="sub-nav-toggle plus"></span>
                            <a href="page-elements.html">订票页面查看</a>
                            <ul>
                               
                                <li class="menu__nav-item"><a href="Cinema/404.html">404 错误2</a></li>
                                <li class="menu__nav-item"><a href="Cinema/404.html">404 错误</a></li>
                                <li class="menu__nav-item"><a href="Cinema/404.html">404 错误</a></li>
                                <li class="menu__nav-item"><a href="Cinema/404.html">404 错误</a></li>
                            </ul>
                        </li>
                        <li>
                            <span class="sub-nav-toggle plus"></span>
                            <a href="gallery-four.html">图库</a>
                            <ul>
                                <li class="menu__nav-item"><a href="Cinema/404.html">404 错误</a></li>
                                <li class="menu__nav-item"><a href="Cinema/404.html">404 错误</a></li>
                                <li class="menu__nav-item"><a href="Cinema/404.html">404 错误</a></li>
                            </ul>
                        </li>
                        <li>
                            <span class="sub-nav-toggle plus"></span>
                            <a href="news-left.html">新闻</a>
                            <ul>
                                <li class="menu__nav-item"><a href="Cinema/404.html">404 错误</a></li>
                                <li class="menu__nav-item"><a href="Cinema/404.html">404 错误</a></li>
                                <li class="menu__nav-item"><a href="Cinema/404.html">404 错误</a></li>
                                <li class="menu__nav-item"><a href="Cinema/404.html">404 错误</a></li>
                                <li class="menu__nav-item"><a href="Cinema/404.html">404 错误</a></li>
                                <li class="menu__nav-item"><a href="Cinema/404.html">404 错误</a></li>
                            </ul>
                        </li>
                       
                       
                    </ul>
                </nav>
                
                <!-- Additional header buttons / Auth and direct link to booking-->
                <div class="control-panel">
              <c:choose>
                        <c:when test="${sadasdsa==null}"><a style="color:#FFF" href='../login.jsp' >请登录</a>
                        </c:when>
                        <c:otherwise><p  style="color:#FFF;font-size:10px">${sadasdsa.u_name} <a style="color:#FFF " href='Exit' >退出</a></p></c:otherwise>
                       </c:choose>
                </div>

            </div>
        </header>
        
        <!-- Search bar -->
   
        
        <!-- Main content --> 
                  <form id="login-form" name="login-form" class="login" method='post' action='UserLogin' onsubmit="return checkForm()">
                    <p class="login__title">sign in <br><span class="login-edition">welcome to A.Movie</span></p>

                    <div class="social social--colored">
                            <a href='#' class="social__variant fa fa-facebook"></a>
                            <a href='#' class="social__variant fa fa-twitter"></a>
                            <a href='#' class="social__variant fa fa-tumblr"></a>
                    </div>

                    <p class="login__tracker">or</p>
                    <p class="login__tracker"><a href="AdminLogin.jsp">AdminLogin</a></p>
                    
                    <div class="field-wrap">
                  <label for="searchKey" id="lbSearch"></label> 
                    <input type='text'  id="id" name='id' class="login__input">
                    <input type='Password' id="pass" name='pass' class="login__input">
        

               
                    
                    <div class="login__control">
                        <button type='submit' class="btn btn-md btn--warning btn--wider">sign in</button>
                          <p class="login__tracker"><a href="/CinemaServlet/Cinema/register.jsp">Click here to Register</a></p>
                      
                    </div>
                    </div>
                </form>
                
        
        
        <div class="clearfix"></div>
    </div>

    <footer class="footer-wrapper footer-wrapper--mod">
            <section class="container">
                <div class="col-xs-4 col-md-2 footer-nav">
                    <ul class="nav-link">
                        <li><a href="#" class="nav-link__item">Cities</a></li>
                        <li><a href="movie-list-left.html" class="nav-link__item">Movies</a></li>
                        <li><a href="trailer.html" class="nav-link__item">Trailers</a></li>
                        <li><a href="rates-left.html" class="nav-link__item">Rates</a></li>
                    </ul>
                </div>
                <div class="col-xs-4 col-md-2 footer-nav">
                    <ul class="nav-link">
                        <li><a href="coming-soon.html" class="nav-link__item">Coming soon</a></li>
                        <li><a href="cinema-list.html" class="nav-link__item">Cinemas</a></li>
                        <li><a href="offers.html" class="nav-link__item">Best offers</a></li>
                        <li><a href="news-left.html" class="nav-link__item">News</a></li>
                    </ul>
                </div>
                <div class="col-xs-4 col-md-2 footer-nav">
                    <ul class="nav-link">
                        <li><a href="#" class="nav-link__item">Terms of use</a></li>
                        <li><a href="gallery-four.html" class="nav-link__item">Gallery</a></li>
                        <li><a href="contact.html" class="nav-link__item">Contacts</a></li>
                        <li><a href="page-elements.html" class="nav-link__item">Shortcodes</a></li>
                    </ul>
                </div>
                <div class="col-xs-12 col-md-6">
                    <div class="footer-info">
                        <p class="heading-special--small">A.Movie<br><span class="title-edition">in the social media</span></p>

                        <div class="social">
                            <a href='#' class="social__variant fa fa-facebook"></a>
                            <a href='#' class="social__variant fa fa-twitter"></a>
                            <a href='#' class="social__variant fa fa-vk"></a>
                            <a href='#' class="social__variant fa fa-instagram"></a>
                            <a href='#' class="social__variant fa fa-tumblr"></a>
                            <a href='#' class="social__variant fa fa-pinterest"></a>
                        </div>
                        
                        <div class="clearfix"></div>
                        <p class="copy">&copy; A.Movie, 2013. All rights reserved. Done by Olia Gozha</p>
                    </div>
                </div>
            </section>
        </footer>

	<!-- JavaScript-->
        <!-- jQuery 1.9.1--> 
        <script src="http://ajax.useso.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="Cinema/js/external/jquery-1.10.1.min.js"><\/script>')</script>
        <!-- Migrate --> 
        <script src="Cinema/js/external/jquery-migrate-1.2.1.min.js"></script>
        <!-- Bootstrap 3--> 
        <script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.2/js/bootstrap.min.js"></script>

        <!-- Mobile menu -->
        <script src="Cinema/js/jquery.mobile.menu.js"></script>
         <!-- Select -->
        <script src="Cinema/js/external/jquery.selectbox-0.2.min.js"></script>
        <!-- Form element -->
<!--         <script src="Cinema/js/external/form-element.js"></script> -->
        <!-- Form validation -->
<!--         <script src="Cinema/js/form.js"></script> -->

        <!-- Custom -->
        <script src="Cinema/js/custom.js"></script>
    <script language="javascript"> 
function checkForm(){ 
	function checkForm()
	{
	   if (login-form.id.value=="") {
	      alert("账号不能为空。");
	      login-form.id.focus();
	      return false;
	   }
	   {
	  
	  if (login-form.pass.value=="") {
	     alert("密码不能为空。");
	     login-form.pass.focus();
	     return false;
	   }
	  
	
	   }
	   }
	}
	
</script> 
        

</body>
</html>