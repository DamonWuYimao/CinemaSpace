
<%@ page language="java" contentType="text/html; charset=utf-8"
	    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html>
<head>

	<!-- Basic Page Needs -->
        <meta charset="utf-8">
        <title>AMovie - Movie page</title>
        <meta name="description" content="A Template by Gozha.net">
        <meta name="keywords" content="HTML, CSS, JavaScript">
        <meta name="author" content="Gozha.net">
       
<link rel="stylesheet" type="text/css" href="starability-minified/starability-all.min.css"/>
    <style type="text/css">
    html,body{margin:0;padding:0;}
    .iw_poi_title {color:#CC5522;font-size:14px;font-weight:bold;overflow:hidden;padding-right:13px;white-space:nowrap}
    .iw_poi_content {font:12px arial,sans-serif;overflow:visible;padding-top:4px;white-space:-moz-pre-wrap;word-wrap:break-word}
</style>
<script type="text/javascript" src="http://api.map.baidu.com/api?key=&v=1.1&services=true"></script>
    <!-- Mobile Specific Metas-->
    	<meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="telephone=no" name="format-detection">
    
    <!-- Fonts -->
        <!-- Font awesome - icon font -->
         <link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
        <!-- Roboto -->
        <link href='http://fonts.useso.com/css?family=Roboto:400,700' rel='stylesheet' type='text/css'> 
    
    <!-- Stylesheets -->
        <!-- jQuery UI --> 
<!--         <link rel="stylesheet" type="text/css" href="css/jquery-ui.css"/> -->
<link href="http://code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css" rel="stylesheet"> 

        <!-- Mobile menu -->
        <link href="css/gozha-nav.css" rel="stylesheet" />
        <!-- Select -->
        <link href="css/external/jquery.selectbox.css" rel="stylesheet" />
        <!-- Swiper slider -->
        <link href="css/external/idangerous.swiper.css" rel="stylesheet" />
        <!-- Magnific-popup -->
        <link href="css/external/magnific-popup.css" rel="stylesheet" />

    
        <!-- Custom -->
        <link href="css/style.css?v=1" rel="stylesheet" />

        <!-- Modernizr --> 
        <script src="js/external/modernizr.custom.js"></script>  
    
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
        <header class="header-wrapper">
            <div class="container">
                <!-- Logo link-->
                <a href='index.html' class="logo">
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
                    <c:choose>
                        <c:when test="${sadasdsa==null}"><a style="color:#FFF" href='../login.jsp' >请登录</a>
                        </c:when>
 <c:otherwise><p  style="color:#FFF;font-size:10px"><a style="color:#FFF " href="user/userOrder?u_id=${sadasdsa.u_id} ">${sadasdsa.u_name}</a> <a style="color:#FFF " href='Exit' >退出</a></p></c:otherwise>                       </c:choose>
                </div>
                

            </div>
        </header>
        
        <!-- Search bar -->
        <div class="search-wrapper">
            <div class="container container--add">
                <form id='search-form' method='post' class="search" action="searchMovie" >
                    <input type="text" class="search__field" placeholder="Search" name="search-input" />
                    <select name="sorting_item" id="search-sort" class="search__sort" tabindex="0">
                        <option value="1" selected='selected'>By Movie</option>
                     
                    </select>
                    <button type='submit' class="btn btn-md btn--danger search__button">search a movie</button>
                </form>
            </div>
        </div>
        
        <!-- Main content -->
        <section class="container">
            <div class="col-sm-8 col-md-9">
                <div class="movie">
                    <h2 class="page-heading">The Movie	:  ${ moviePage.m_name}</h2>
                    
                    <div class="movie__info">
                        <div class="col-sm-6 col-md-4 movie-mobile">
                            <div class="movie__images">
                                <span class="movie__rating">${movieAvg.m_avg }</span>
                                <img alt='' src="images/client-photo/${moviePage.x_img}">
                            </div>
                            	<form>
	<fieldset class="starability-grow"> 
		  <legend>Basic star rating:</legend>
         
		  <input type="radio" onclick="test()" id="rate5-3" name="rat" value="5" />
		  <label for="rate5-3" title="Amazing">5 stars</label>

		  <input type="radio"  onclick="test()" id="rate4-3" name="rat" value="4" />
		  <label for="rate4-3" title="Very good">4 stars</label>

		  <input type="radio"  onclick="test()" id="rate3-3" name="rat" value="3" />
		  <label for="rate3-3" title="Average">3 stars</label>

		  <input type="radio"  onclick="test()" id="rate2-3" name="rat" value="2" />
		  <label for="rate2-3" title="Not good">2 stars</label>

		  <input type="radio"  onclick="test()" id="rate1-3" name="rat" value="1" />
		  <label for="rate1-3" title="Terrible">1 star</label>
		  
		</fieldset>
	</form>
                            </div>

                        <div class="col-sm-6 col-md-8">
                            <p class="movie__time"> ${ moviePage.m_mtime}min</p>
<input type="hidden" id="id" name="id" value="${moviePage.m_id }"/>
                            <p class="movie__option"><strong>Country: </strong>${ moviePage.m_country}</p>
                            <p class="movie__option"><strong>Year: </strong>${ moviePage.m_time}</p>
                            <p class="movie__option"><strong>Company: </strong>${ moviePage.m_company}</p>
                            <p class="movie__option"><strong>Release date: </strong>${ moviePage.m_canceltime}</p>
                            <p class="movie__option"><strong>Director: </strong>${ moviePage.m_detail}</p>
                            <p class="movie__option"><strong>Actors: </strong>${ moviePage.m_actor}...</p>
                            <p class="movie__option"><strong>Language: </strong>${ moviePage.m_language}</p>
                           

                            

                            

                            <div class="share">
                                <span class="share__marker">Share: </span>
                                <div class="addthis_toolbox addthis_default_style ">
                                    <a class="addthis_button_facebook_like" fb:like:layout="button_count"></a>
                                    <a class="addthis_button_tweet"></a>
                                    <a class="addthis_button_google_plusone" g:plusone:size="medium"></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="clearfix"></div>
                    
                    <h2 class="page-heading">The plot</h2>

                    <p class="movie__describe">${ moviePage.m_com}  </p>

                    <h2 class="page-heading">photos &amp; videos</h2>
                    
                    <div class="movie__media">
                        <div class="movie__media-switch">
                            <a href="#" class="watchlist list--photo" data-filter='media-photo'>234 photos</a>
                            <a href="#" class="watchlist list--video" data-filter='media-video'>10 videos</a>
                        </div>

                        <div class="swiper-container">
                          <div class="swiper-wrapper">
                              <!--First Slide-->
                              <div class="swiper-slide media-video">
                                <a href='https://www.youtube.com/watch?v=Y5AehBA3IsE' class="movie__media-item ">
                                     <img alt='' src="images/new/java1.jpg">
                                </a>
                              </div>
                              
                              <!--Second Slide-->
                              <div class="swiper-slide media-video">
                                <a href='https://www.youtube.com/watch?v=Kb3ykVYvT4U' class="movie__media-item">
                                    <img alt='' src="images/new/java1.jpg">
                                </a>
                              </div>
                              
                              <!--Third Slide-->
                              <div class="swiper-slide media-photo"> 
                                    <a href='http://placehold.it/2100x1250' class="movie__media-item">
                                        <img alt='' src="images/new/java1.jpg">
                                     </a>
                              </div>

                              <!--Four Slide-->
                              <div class="swiper-slide media-photo"> 
                                    <a href='http://placehold.it/2100x1250' class="movie__media-item">
                                        <img alt='' src="images/new/java1.jpg">
                                     </a>
                              </div>

                              <!--Slide-->
                              <div class="swiper-slide media-photo"> 
                                    <a href='http://placehold.it/2100x1250' class="movie__media-item">
                                        <img alt='' src="images/new/java1.jpg">
                                     </a>
                              </div>

                              <!--Slide-->
                              <div class="swiper-slide media-photo"> 
                                    <a href='http://placehold.it/2100x1250' class="movie__media-item">
                                        <img alt='' src="http://placehold.it/400x240">
                                     </a>
                              </div>

                              <!--First Slide-->
                              <div class="swiper-slide media-video">
                                <a href='https://www.youtube.com/watch?v=Y5AehBA3IsE' class="movie__media-item ">
                                     <img alt='' src="http://placehold.it/400x240">
                                </a>
                              </div>
                              
                              <!--Second Slide-->
                              <div class="swiper-slide media-video">
                                <a href='https://www.youtube.com/watch?v=Kb3ykVYvT4U' class="movie__media-item">
                                    <img alt='' src="http://placehold.it/400x240">
                                </a>
                              </div>

                              <!--Slide-->
                              <div class="swiper-slide media-photo"> 
                                    <a href='http://placehold.it/2100x1250' class="movie__media-item">
                                        <img alt='' src="http://placehold.it/400x240">
                                     </a>
                              </div>

                              <!--Slide-->
                              <div class="swiper-slide media-photo"> 
                                    <a href='http://placehold.it/2100x1250' class="movie__media-item">
                                        <img alt='' src="http://placehold.it/400x240">
                                     </a>
                              </div>
                        
                          </div>
                        </div>

                    </div>

                </div>

                <h2 class="page-heading">showtime &amp; tickets</h2>
                <div class="choose-container">
                

                    <div class="datepicker">
                      <span class="datepicker__marker"><i class="fa fa-calendar"></i>Date</span>
                      <input type="text" id="datepicker" value='01/02/2016' class="datepicker__input" >
                      
                    </div>

                    <a href="#" id="map-switch" class="watchlist watchlist--map"><span class="show-map">Show cinemas on map</span><span  class="show-time">Show cinema time table</span></a>
                    
                    <div class="clearfix"></div>

                    <div class="time-select">
                        <div class="time-select__group group--first">
                            <div class="col-sm-4">
                                <p class="time-select__place">Cineworld</p>
                            </div>
                            <ul class="col-sm-8 items-wrap" id="parent">
                                <li class="time-select__item" data-time='09:40'>09:40</li>
                                <li class="time-select__item" data-time='13:45'>13:45</li>
                                <li class="time-select__item" data-time='15:45'>15:45</li>
                                <li class="time-select__item" data-time='19:50'>19:50</li>
                                <li class="time-select__item" data-time='21:50'>21:50</li>
                                   <li class="time-select__item" data-time='20:55'>20:55</li>
                                <li class="time-select__item" data-time='22:55'>22:55</li>
                                <li class="time-select__item" data-time='00:05'>00:05</li>
                                <li class="time-select__item" data-time='02:50'>02:50</li>
                           
                            </ul>
                        </div>
                    

                        
                    </div>
                    <div class="movie__btns">
                                <a id="ahrefid" href="setSeat?m_id=${ moviePage.m_id}&m_time=" class="btn btn-md btn--warning">book a ticket for this movie</a>
                               
                            </div>
                    
                    <!-- hiden maps with multiple locator--><br><br>
                    <div style="width:830px;height:430px;border:#ccc solid 1px;" id="dituContent"></div>

                    <h2 class="page-heading">comments (15)</h2>

                    <div class="comment-wrapper">
                        <form id="comment-form" class="comment-form" method='post' action="commetAction?u_id=${ sadasdsa.u_id}&m_id=${moviePage.m_id}		">
                            <textarea class="comment-form__text" placeholder='Add you comment here' name="comment"></textarea>
                            <label class="comment-form__info">250 characters left</label>
                             <c:choose>
                        <c:when test="${sadasdsa==null}"><a style="color:#000" href='../login.jsp' >点此登录后即可以评论</a>
                        </c:when>
                        <c:otherwise><button type='submit' class="btn btn-md btn--danger comment-form__btn">add comment</button> </c:otherwise>
                       </c:choose>
                            
                        </form>
<input type="hidden" value="${sadasdsa.u_id}" name="u_id"/>
                <input type="hidden" value="${moviePage.m_id}" name="m_id"/>
                        <div class="comment-sets">
         <c:forEach items="${ commentList}" var="clist">
                        <div class="comment">
                            <div class="comment__images">
                                <img alt='' src="images/trailers/t1.jpg">
                            </div>

                            <a href='#' class="comment__author"><span class="social-used fa fa-facebook"></span>${clist.u_id}</a>
                            <p class="comment__date">${clist.c_time}</p>
                            <p class="comment__message">${clist.comment}</p>
                            <a href='#' class="comment__reply">Reply</a>
                        </div>
</c:forEach>
                        <div class="comment">
                            <div class="comment__images">
                                <img alt='' src="images/trailers/t2.jpg">
                            </div>

                            <a href='#' class="comment__author"><span class="social-used fa fa-vk"></span>Olia Gozha</a>
                            <p class="comment__date">22.10.2013 | 14:40</p>
                            <p class="comment__message">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vitae enim sollicitudin, euismod erat id, fringilla lacus. Cras ut rutrum lectus. Etiam ante justo, volutpat at viverra a, mattis in velit. Morbi molestie rhoncus enim, vitae sagittis dolor tristique et.</p>
                            <a href='#' class="comment__reply">Reply</a>
                        </div>

                      

                        <div class="comment comment--last">
                            <div class="comment__images">
                                <img alt='' src="images/trailers/t2.jpg">
                            </div>

                            <a href='#' class="comment__author"><span class="social-used fa fa-facebook"></span>Sia Andrews</a>
                            <p class="comment__date"> 22.10.2013 | 12:31 </p>
                            <p class="comment__message">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vitae enim sollicitudin, euismod erat id, fringilla lacus. Cras ut rutrum lectus. Etiam ante justo, volutpat at viverra a, mattis in velit. Morbi molestie rhoncus enim, vitae sagittis dolor tristique et.</p>
                            <a href='#' class="comment__reply">Reply</a>
                        </div>

                        <div id='hide-comments' class="hide-comments">
                            <div class="comment">
                                <div class="comment__images">
                                    <img alt='' src="images/trailers/t2.jpg">
                                </div>

                                <a href='#' class="comment__author"><span class="social-used fa fa-facebook"></span>Roberta Inetti</a>
                                <p class="comment__date">today | 03:04</p>
                                <p class="comment__message">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vitae enim sollicitudin, euismod erat id, fringilla lacus. Cras ut rutrum lectus. Etiam ante justo, volutpat at viverra a, mattis in velit. Morbi molestie rhoncus enim, vitae sagittis dolor tristique et.</p>
                                <a href='#' class="comment__reply">Reply</a>
                            </div>

                            <div class="comment">
                                <div class="comment__images">
                                    <img alt='' src="images/trailers/t2.jpg">
                                </div>

                                <a href='#' class="comment__author"><span class="social-used fa fa-vk"></span>Olia Gozha</a>
                                <p class="comment__date">22.10.2013 | 14:40</p>
                                <p class="comment__message">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vitae enim sollicitudin, euismod erat id, fringilla lacus. Cras ut rutrum lectus. Etiam ante justo, volutpat at viverra a, mattis in velit. Morbi molestie rhoncus enim, vitae sagittis dolor tristique et.</p>
                                <a href='#' class="comment__reply">Reply</a>
                            </div>
                        </div>

                        <div class="comment-more">
                            <a href="#" class="watchlist">Show more comments</a>
                        </div>

                    </div>
                    </div>
                </div>
            </div>

            <aside class="col-sm-4 col-md-3">
                <div class="sitebar">
                    <div class="banner-wrap">
                        <img alt='banner' src="images/new/bqb.jpg">
                    </div>

                     <div class="banner-wrap">
                        <img alt='banner' src="images/new/bqb1.jpg">
                    </div>

                     <div class="banner-wrap banner-wrap--last">
                        <img alt='banner' src="images/new/bqb.jpg">
                    </div>

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

                    <div class="category category--discuss category--count marginb-sm mobile-category ls-cat">
                        <h3 class="category__title">the Most <br><span class="title-edition">discussed posts</span></h3>
                        <ol>
                            <li><a href="#" class="category__item">极品飞车</a></li>
                            <li><a href="#" class="category__item">天空之城</a></li>
                            <li><a href="#" class="category__item">秒速5厘米</a></li>
                            <li><a href="#" class="category__item">魔兽</a></li>
                            <li><a href="#" class="category__item">暴雪娱乐</a></li>
                            <li><a href="#" class="category__item">守望先锋</a></li>
                            <li><a href="#" class="category__item">炉石传说</a></li>
                            <li><a href="#" class="category__item">和家人一起生活</a></li>
                            <li><a href="#" class="category__item">惊天魔盗团</a></li>
                            <li><a href="#" class="category__item">不能说的秘密</a></li>
                        </ol>
                    </div>

                    <div class="category category--cooming category--count marginb-sm mobile-category rs-cat">
                        <h3 class="category__title">coming soon<br><span class="title-edition">movies</span></h3>
                        <ol>
                            <li><a href="#" class="category__item">极品飞车</a></li>
                            <li><a href="#" class="category__item">天空之城</a></li>
                            <li><a href="#" class="category__item">秒速5厘米</a></li>
                            <li><a href="#" class="category__item">不能说的秘密</a></li>
                            <li><a href="#" class="category__item">惊天魔盗团</a></li>
                            <li><a href="#" class="category__item">炉石传说</a></li>
                            <li><a href="#" class="category__item">暴雪娱乐</a></li>
                            <li><a href="#" class="category__item">尼克杨的故事</a></li>
                            <li><a href="#" class="category__item">恋曲1990</a></li>
                            <li><a href="#" class="category__item">大卫科波菲尔</a></li>
                        </ol>
                    </div>
                    
                   

                </div>
            </aside>

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
	       <script type="text/javascript">
	     
	       var ul = document.getElementById('parent');
	       var lis = ul.getElementsByTagName('li');
	      
	       for(var i=0;i<lis.length;i++){
	           lis[i].onclick = function(){
	        	   var psel = document.getElementById("datepicker");
	        	   
	            	// alert("获取到的value：" + );
	               alert("你选择的是"+psel.value+"   "+this.innerHTML+"的场次，请注意确认时间");
	             var timeR=psel.value+this.innerHTML;
	             var time = timeR.replace(/[^0-9]/ig,""); 
	             //alert(time);
	             document.getElementById('ahrefid').href="setSeat?m_id=${ moviePage.m_id}&s_time="+time+" ";
	               
	           }
	           
	       }
	       
function test()
{
  var temp = document.getElementsByName("rat");
  var intHot=null;
  for(var i=0;i<temp.length;i++)
  {
     if(temp[i].checked)
          intHot = temp[i].value;
  }
        
        
       var s =$("input[type='hidden']").val();
        
         $.post("button",{intHot:intHot,s:s},function(data){
        	 alert("vote success!~~~~Thank u ~");
        	 
        	 
         });
         $.post("movieAvg",{s:m_id},function(da){
   		 
   	      
   	   });
         };
         function getValue() {
             var t = mini.get("date2");

             alert(t.getValue());
         }
         
    
  

</script>
        <!-- jQuery 1.9.1--> 
        <script src="js/jquery-1.12.1.min.js"></script> 
        //<script>window.jQuery || document.write('<script src="js/external/jquery-1.10.1.min.js"><\/script>')</script>
        <!-- Migrate --> 
        //<script src="js/external/jquery-migrate-1.2.1.min.js"></script>
        <!-- jQuery UI -->
        <script src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
        <!-- Bootstrap 3--> 
        <script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.2/js/bootstrap.min.js"></script>

        <!-- Mobile menu -->
        <script src="js/jquery.mobile.menu.js"></script>
         <!-- Select -->
        <script src="js/external/jquery.selectbox-0.2.min.js"></script>

        <!-- Stars rate -->
        <script src="js/external/jquery.raty.js"></script>
        <!-- Swiper slider -->
        <script src="js/external/idangerous.swiper.min.js"></script>
        <!-- Magnific-popup -->
        <script src="js/external/jquery.magnific-popup.min.js"></script>  
 	

        <!-- Share buttons -->
        <script type="text/javascript">var addthis_config = {"data_track_addressbar":true};</script>
        <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-525fd5e9061e7ef0"></script>

        <!-- Form element -->
        <script src="js/external/form-element.js"></script>
        <!-- Form validation -->
        <script src="js/form.js"></script>

        <!-- Custom -->
        <script src="js/custom.js"></script>


		<script type="text/javascript">
            $(document).ready(function() {
            	init_MoviePage();
            	 
                
           });
		</script>
		
<script type="text/javascript">
    //创建和初始化地图函数：
    function initMap(){
        createMap();//创建地图
        setMapEvent();//设置地图事件
        addMapControl();//向地图添加控件
        addMarker();//向地图中添加marker
    }
    
    //创建地图函数：
    function createMap(){
        var map = new BMap.Map("dituContent");//在百度地图容器中创建一个地图
        var point = new BMap.Point(104.395206,31.098262);//定义一个中心点坐标
        map.centerAndZoom(point,18);//设定地图的中心点和坐标并将地图显示在地图容器中
        window.map = map;//将map变量存储在全局
    }
    
    //地图事件设置函数：
    function setMapEvent(){
        map.enableDragging();//启用地图拖拽事件，默认启用(可不写)
        map.enableScrollWheelZoom();//启用地图滚轮放大缩小
        map.enableDoubleClickZoom();//启用鼠标双击放大，默认启用(可不写)
        map.enableKeyboard();//启用键盘上下左右键移动地图
    }
    
    //地图控件添加函数：
    function addMapControl(){
        //向地图中添加缩放控件
	var ctrl_nav = new BMap.NavigationControl({anchor:BMAP_ANCHOR_TOP_LEFT,type:BMAP_NAVIGATION_CONTROL_SMALL});
	map.addControl(ctrl_nav);
        //向地图中添加缩略图控件
	var ctrl_ove = new BMap.OverviewMapControl({anchor:BMAP_ANCHOR_BOTTOM_RIGHT,isOpen:0});
	map.addControl(ctrl_ove);
        //向地图中添加比例尺控件
	var ctrl_sca = new BMap.ScaleControl({anchor:BMAP_ANCHOR_BOTTOM_LEFT});
	map.addControl(ctrl_sca);
    }
    
    //标注点数组
    var markerArr = [{title:"阆中",content:"我的备注",point:"115|28",isOpen:0,icon:{w:21,h:21,l:0,t:0,x:6,lb:5}}
		 ];
    //创建marker
    function addMarker(){
        for(var i=0;i<markerArr.length;i++){
            var json = markerArr[i];
            var p0 = json.point.split("|")[0];
            var p1 = json.point.split("|")[1];
            var point = new BMap.Point(p0,p1);
			var iconImg = createIcon(json.icon);
            var marker = new BMap.Marker(point,{icon:iconImg});
			var iw = createInfoWindow(i);
			var label = new BMap.Label(json.title,{"offset":new BMap.Size(json.icon.lb-json.icon.x+10,-20)});
			marker.setLabel(label);
            map.addOverlay(marker);
            label.setStyle({
                        borderColor:"#808080",
                        color:"#333",
                        cursor:"pointer"
            });
			
			(function(){
				var index = i;
				var _iw = createInfoWindow(i);
				var _marker = marker;
				_marker.addEventListener("click",function(){
				    this.openInfoWindow(_iw);
			    });
			    _iw.addEventListener("open",function(){
				    _marker.getLabel().hide();
			    })
			    _iw.addEventListener("close",function(){
				    _marker.getLabel().show();
			    })
				label.addEventListener("click",function(){
				    _marker.openInfoWindow(_iw);
			    })
				if(!!json.isOpen){
					label.hide();
					_marker.openInfoWindow(_iw);
				}
			})()
        }
    }
    //创建InfoWindow
    function createInfoWindow(i){
        var json = markerArr[i];
        var iw = new BMap.InfoWindow("<b class='iw_poi_title' title='" + json.title + "'>" + json.title + "</b><div class='iw_poi_content'>"+json.content+"</div>");
        return iw;
    }
    //创建一个Icon
    function createIcon(json){
        var icon = new BMap.Icon("http://app.baidu.com/map/images/us_mk_icon.png", new BMap.Size(json.w,json.h),{imageOffset: new BMap.Size(-json.l,-json.t),infoWindowOffset:new BMap.Size(json.lb+5,1),offset:new BMap.Size(json.x,json.h)})
        return icon;
    }
    
    initMap();//创建和初始化地图
</script>
</body>
</html>
