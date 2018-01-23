<%@ page language="java" contentType="text/html; charset=utf-8"
	    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html>
<head>
	<!-- Basic Page Needs -->
        <meta charset="utf-8">
        <title>AMovie</title>
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
       <link href='http://fonts.useso.com/css?family=Roboto:400,100,700' rel='stylesheet' type='text/css'>
        <!-- Open Sans -->
      <link href='http://fonts.useso.com/css?family=Open+Sans:800italic' rel='stylesheet' type='text/css'>

    <!-- Stylesheets -->
<link rel="stylesheet" type="text/css" href="css/zzsc.css">
<link rel="stylesheet" type="text/css" href="starability-minified/starability-all.min.css"/>
        <!-- Mobile menu -->
        <link href="css/gozha-nav.css" rel="stylesheet" />
        <!-- Select -->
        <link href="css/external/jquery.selectbox.css" rel="stylesheet" />

        <!-- REVOLUTION BANNER CSS SETTINGS -->
        <link rel="stylesheet" type="text/css" href="rs-plugin/css/settings.css" media="screen" />
    
        <!-- Custom -->
        <link href="css/style.css?v=1" rel="stylesheet" />


        <!-- Modernizr --> 

    
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
            <img alt='top banner' src="images/banners/banner.jpg">
        </div>

        <!-- Header section -->
        <header class="header-wrapper header-wrapper--home">
            <div class="container">
                <!-- Logo link-->
                <a href='IndexImg' class="logo">
                    <img alt='logo' src="images/logo.png">
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
                                
                                <li class="menu__nav-item"><a href="404.html">404 错误</a></li>
                               
                            </ul>
                        </li>
                        <li>
                            <span class="sub-nav-toggle plus"></span>
                            <a href="page-elements.html">电影</a>
                            <ul>
                                <li class="menu__nav-item"><a href="404.html">404 错误</a></li>
                                <li class="menu__nav-item"><a href="404.html">404 错误</a></li>
                                <li class="menu__nav-item"><a href="404.html">404 错误</a></li>
                                <li class="menu__nav-item"><a href="404.html">404 错误</a></li>
                            </ul>
                        </li>
                        <li>
                            <span class="sub-nav-toggle plus"></span>
                            <a href="page-elements.html">订票页面查看</a>
                            <ul>
                               
                                <li class="menu__nav-item"><a href="404.html">404 错误2</a></li>
                                <li class="menu__nav-item"><a href="404.html">404 错误</a></li>
                                <li class="menu__nav-item"><a href="404.html">404 错误</a></li>
                                <li class="menu__nav-item"><a href="404.html">404 错误</a></li>
                            </ul>
                        </li>
                        <li>
                            <span class="sub-nav-toggle plus"></span>
                            <a href="gallery-four.html">图库</a>
                            <ul>
                                <li class="menu__nav-item"><a href="404.html">404 错误</a></li>
                                <li class="menu__nav-item"><a href="gallery-three.html">404 错误</a></li>
                                <li class="menu__nav-item"><a href="404.html">404 错误</a></li>
                            </ul>
                        </li>
                        <li>
                            <span class="sub-nav-toggle plus"></span>
                            <a href="news-left.html">新闻</a>
                            <ul>
                                <li class="menu__nav-item"><a href="404.html">404 错误</a></li>
                                <li class="menu__nav-item"><a href="404.html">404 错误</a></li>
                                <li class="menu__nav-item"><a href="404.html">404 错误</a></li>
                                <li class="menu__nav-item"><a href="404.html">404 错误</a></li>
                                <li class="menu__nav-item"><a href="404.html">404 错误</a></li>
                                <li class="menu__nav-item"><a href="404.html">404 错误</a></li>
                            </ul>
                        </li>
                       
                       
                    </ul>
                </nav>
                
                <!-- Additional header buttons / Auth and direct link to booking-->
                <div class="control-panel">
                    <div class="auth auth--home">
                      <div class="auth__show">
                      
                        <c:choose>
                        <c:when test="${sadasdsa==null}"><a style="color:#FFF" href='../login.jsp' >请登录</a>
                        </c:when>
                        <c:otherwise><p  style="color:#FFF;font-size:10px"><a style="color:#FFF " href="user/userOrder?u_id=${sadasdsa.u_id} ">${sadasdsa.u_name}</a> <a style="color:#FFF " href='Exit' >退出</a></p></c:otherwise>
                       </c:choose>
                      </div>
                      
                        <ul class="auth__function">
                            <li><a href="#" class="auth__function-item">Watchlist</a></li>
                            <li><a href="#" class="auth__function-item">Booked tickets</a></li>
                            <li><a href="#" class="auth__function-item">Discussion</a></li>
                            <li><a href="#" class="auth__function-item">Settings</a></li>
                        </ul>

                    </div>
                    <a href="#" class="btn btn-md btn--warning btn--book btn-control--home login-window">Book a ticket</a>
                </div>

            </div>
        </header>

        <!-- Slider -->
            <div id="photoer">
    <div class="photoOne">
   <div class="ck-slide">
			<ul class="ck-slide-wrapper">
			  <c:forEach items="${moviesList}" var="movies">
				<li>
					<a href="javascript:"><img src="images/rate/${movies.s_img}" alt=""></a>
				</li>
				</c:forEach>
<!-- 				<li style="display:none"> -->
<!-- 					<a href="javascript:"><img src="images/rate/movie-logo2.jpg" alt=""></a> -->
<!-- 				</li> -->
<!-- 				<li style="display:none"> -->
<!-- 					<a href="javascript:"><img src="images/rate/movie-logo3.jpg" alt=""></a> -->
<!-- 				</li> -->
<!-- 				<li style="display:none"> -->
<!-- 					<a href="javascript:"><img src="images/rate/movie-logo4.jpg" alt=""></a> -->
<!-- 				</li> -->
<!-- 				<li style="display:none"> -->
<!-- 					<a href="javascript:"><img src="images/rate/movie-logo5.jpg" alt=""></a> -->
<!-- 				</li> -->
			</ul>
			<a href="javascript:;" class="ctrl-slide ck-prev">上一张</a> <a href="javascript:;" class="ctrl-slide ck-next">下一张</a>
			<div class="ck-slidebox">
				<div class="slideWrap">
					<ul class="dot-wrap">
						<li class="current"><em>1</em></li>
						<li><em>2</em></li>
						<li><em>3</em></li>
						<li><em>4</em></li>
						<li><em>5</em></li>
						<li><em>6</em></li>
						<li><em>7</em></li>
						<li><em>8</em></li>
						
					</ul>
				</div>
			</div>
		</div>
		
     </div>
     </div>

        <!--end slider -->
        
        
        <!-- Main content -->
        <section class="container">
            <div class="movie-best">
                 <div class="col-sm-10 col-sm-offset-1 movie-best__rating" >今日最佳影片</div>
                 <div class="col-sm-12 change--col">
                 <c:forEach items="${ topList}" var="top">
                     <div class="movie-beta__item ">
                        <img alt='' src="images/movie/${top.l_img}">
                         <span class="best-rate">5.0</span>

                         <ul class="movie-beta__info">
                             <li><span class="best-voted">71 people voted today</span></li>
                             <li>
                                <p class="movie__time">${top.m_mtime} min</p>
                                <p>${top.m_detail} </p>
                                <p>${top.m_time}</p>
                             </li>
                             <li class="last-block">
                                 <a href="moviePage?m_id=${top.m_id }" class="slide__link">more</a>
                             </li>
                         </ul>
                     </div>
                  </c:forEach>
                 </div>
                <div class="col-sm-10 col-sm-offset-1 movie-best__check">check all movies now playing</div>
            </div>

            <div class="col-sm-12">
                <div class="mega-select-present mega-select-top mega-select--full">
                    <div class="mega-select-marker">
                        <div class="marker-indecator location">
                            <p class="select-marker"><span>movie to watch now</span> <br>in your city</p>
                        </div>

                        <div class="marker-indecator cinema">
                            <p class="select-marker"><span>find your </span> <br>cinema</p>
                        </div>

                        <div class="marker-indecator film-category">
                            <p class="select-marker"><span>find movie due to </span> <br> your mood</p>
                        </div>

                        <div class="marker-indecator actors">
                            <p class="select-marker"><span> like particular stars</span> <br>find them</p>
                        </div>

                        <div class="marker-indecator director">
                            <p class="select-marker"><span>admire personalities - find </span> <br>by director</p>
                        </div>

                        <div class="marker-indecator country">
                            <p class="select-marker"><span>search for movie from certain </span> <br>country?</p>
                        </div>
                    </div>
<form id="search" method="post" action="searchMovie">
                      <div class="mega-select pull-right">
                          <span class="mega-select__point">Search by</span>
                          <ul class="mega-select__sort">
                              <li class="filter-wrap"><a href="#" class="mega-select__filter filter--active" data-filter='location'>Movies</a></li>
                            
                          </ul>
                        

                          <input name="search-input" type='text' class="select__field">
                             <div class="login__control">
                        <button type='submit' class="btn btn-md btn--warning btn--wider">Search</button>
                        
                      
                    </div>
                    
                          
            </div>
            </form>
            <div class="clearfix"></div>

            <h2 id='target' class="page-heading heading--outcontainer">Now in the cinema</h2>
              <div class="col-sm-12">
                <div class="row">
         
          
                    <div class="col-sm-8 col-md-9">
                    <c:forEach items="${moviesList}" var="movies">
                        <!-- Movie variant with time -->
                            <div class="movie movie--test movie--test--dark movie--test--left">
                                <div class="movie__images">
                                    <a href="moviePage?m_id=${movies.m_id }" class="movie-beta__link">
                                        <img alt='' src="images/movie/${ movies.m_img}">
                                    </a>
                                </div>

                                <div class="movie__info">
                                    <a href='movie-page-left.html' class="movie__title">${ movies.m_name}  </a>

                                    <p class="movie__time">${movies.m_mtime}min</p>
                                    <p class="movie__option">导演: ${movies.m_detail}</p>
                                    <p class="movie__option">演员: ${movies.m_actor}</p>
                                    

   
                                            
                                </div>
                            </div>
                            </c:forEach>
                            <a href="IndexImg?page=${pager.prePage }" class="btn read-more post--btn">Last Page</a>
                            <p style="float:right;"><a href="IndexImg?page=${pager.nextPage }" class="btn read-more post--btn">Next Page</a></p>
                            
                         <!-- Movie variant with time -->

                        
                        </div>
                        
                    

                    <aside class="col-sm-4 col-md-3">
                     

                            <div class="promo marginb-sm">
                              <div class="promo__head">A.Movie app</div>
                              <div class="promo__describe">for all smartphones<br> and tablets</div>
                              <div class="promo__content">
                                  <ul>
                                      <li class="store-variant"><a href="#"><img alt='' src="images/apple-store.svg"></a></li>
                                      <li class="store-variant"><a href="#"><img alt='' src="images/google-play.svg"></a></li>
                                      <li class="store-variant"><a href="#"><img alt='' src="images/windows-store.svg"></a></li>
                                  </ul>
                              </div>
                          </div>
      </aside>
                        </div>
                  
                </div>
            </div>

            <div class="col-sm-12">
                <h2 class="page-heading">Latest news</h2>

                <div class="col-sm-4 similar-wrap col--remove">
                    <div class="post post--preview post--preview--wide">
                        <div class="post__image">
                            <img alt='' src="images/slides/post-thor.jpg">
                            <div class="social social--position social--hide">
                                <span class="social__name">Share:</span>
                                <a href='#' class="social__variant social--first fa fa-facebook"></a>
                                <a href='#' class="social__variant social--second fa fa-twitter"></a>
                                <a href='#' class="social__variant social--third fa fa-vk"></a>
                            </div>
                        </div>
                        <p class="post__date">22 October 2013 </p>
                        <a href="single-page-left.html" class="post__title">"Thor: The Dark World" - World Premiere</a>
                        <a href="single-page-left.html" class="btn read-more post--btn">read more</a>
                    </div>
                </div>
                <div class="col-sm-4 similar-wrap col--remove">
                    <div class="post post--preview post--preview--wide">
                        <div class="post__image">
                            <img alt='' src="images/slides/post-annual.jpg">
                            <div class="social social--position social--hide">
                                <span class="social__name">Share:</span>
                                <a href='#' class="social__variant social--first fa fa-facebook"></a>
                                <a href='#' class="social__variant social--second fa fa-twitter"></a>
                                <a href='#' class="social__variant social--third fa fa-vk"></a>
                            </div>
                        </div>
                        <p class="post__date">22 October 2013 </p>
                        <a href="single-page-left.html" class="post__title">30th Annual Night Of Stars Presented By The Fashion Group International</a>
                        <a href="single-page-left.html" class="btn read-more post--btn">read more</a>
                    </div>
                </div>
                <div class="col-sm-4 similar-wrap col--remove">
                    <div class="post post--preview post--preview--wide">
                        <div class="post__image">
                            <img alt='' src="images/slides/post-awards.jpg">
                            <div class="social social--position social--hide">
                                <span class="social__name">Share:</span>
                                <a href='#' class="social__variant social--first fa fa-facebook"></a>
                                <a href='#' class="social__variant social--second fa fa-twitter"></a>
                                <a href='#' class="social__variant social--third fa fa-vk"></a>
                            </div>
                        </div>
                        <p class="post__date">22 October 2013 </p>
                        <a href="single-page-left.html" class="post__title">Hollywood Film Awards 2013</a>
                        <a href="single-page-left.html" class="btn read-more post--btn">read more</a>
                    </div>
                </div>
            </div>
                
        </section>
        
        <div class="clearfix"></div>

        <footer class="footer-wrapper">
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
    </div>

    <!-- open/close -->
        <div class="overlay overlay-hugeinc">
            
            <section class="container">

                <div class="col-sm-4 col-sm-offset-4">
                    <button type="button" class="overlay-close">Close</button>
                    <form id="login-form" class="login" method='get' novalidate=''>
                        <p class="login__title">sign in <br><span class="login-edition">welcome to A.Movie</span></p>

                        <div class="social social--colored">
                                <a href='#' class="social__variant fa fa-facebook"></a>
                                <a href='#' class="social__variant fa fa-twitter"></a>
                                <a href='#' class="social__variant fa fa-tumblr"></a>
                        </div>

                        <p class="login__tracker">or</p>
                        
                        <div class="field-wrap">
                        <input type='email' placeholder='Email' name='user-email' class="login__input">
                        <input type='password' placeholder='Password' name='user-password' class="login__input">

                        <input type='checkbox' id='#informed' class='login__check styled'>
                        <label for='#informed' class='login__check-info'>remember me</label>
                         </div>
                        
                        <div class="login__control">
                            <button type='submit' class="btn btn-md btn--warning btn--wider">sign in</button>
                            <a href="#" class="login__tracker form__tracker">Forgot password?</a>
                        </div>
                    </form>
                </div>

            </section>
        </div>

	<!-- JavaScript-->
        <!-- jQuery 1.9.1--> 
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="js/external/jquery-1.10.1.min.js"><\/script>')</script>
        <!-- Migrate --> 
        <script src="../js/external/jquery-migrate-1.2.1.min.js"></script>
        <!-- Bootstrap 3--> 
        <script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.2/js/bootstrap.min.js"></script>

        <!-- jQuery REVOLUTION Slider -->
        <script type="text/javascript" src="../rs-plugin/js/jquery.themepunch.plugins.min.js"></script>
        <script type="text/javascript" src="../rs-plugin/js/jquery.themepunch.revolution.min.js"></script>

        <!-- Mobile menu -->
        <script src="js/jquery.mobile.menu.js"></script>
         <!-- Select -->
        <script src="js/external/jquery.selectbox-0.2.min.js"></script>
        <!-- Stars rate -->
        <script src="js/external/jquery.raty.js"></script>
        
        <!-- Form element -->
        <script src="js/external/form-element.js"></script>
        <!-- Form validation -->
        <script src="js/form.js"></script>

        <!-- Twitter feed -->
        <script src="js/external/twitterfeed.js"></script>

        <!-- Custom -->
        <script src="js/custom.js"></script>
		
	      <script type="text/javascript">
              $(document).ready(function() {
                init_Home();
              });
		    </script>
			        <script src="js/external/modernizr.custom.js"></script>
        	<script src="js/jquery-1.8.3.min.js"></script>
		<script src="js/slide.js"></script>
		<script>
			$('.ck-slide').ckSlide({
				autoPlay: true
			});
		</script>
				<script>
		
		</script>
		

</body>
</html>
