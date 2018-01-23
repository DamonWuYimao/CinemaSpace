<%@ page language="java" contentType="text/html; charset=utf-8"
	    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html>
<head>
	<!-- Basic Page Needs -->
        <meta charset="utf-8">
        <title>AMovie - Booking step 2</title>
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
        <link href="css/gozha-nav.css" rel="stylesheet" />
        <!-- Select -->
        <link href="css/external/jquery.selectbox.css" rel="stylesheet" />
    
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
    <div class="wrapper place-wrapper">
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
 <c:otherwise><p  style="color:#FFF;font-size:10px"><a style="color:#FFF " href="user/userOrder?u_id=${sadasdsa.u_id} ">${sadasdsa.u_name}</a> <a style="color:#FFF " href='Exit' >退出</a></p></c:otherwise>               
         </c:choose>
                </div>

            </div>
        </header>
        
        <!-- Search bar -->
        <div class="search-wrapper">
            <div class="container container--add">
                <form id='search-form' method='get' class="search">
                    <input type="text" class="search__field" placeholder="Search">
                    <select name="sorting_item" id="search-sort" class="search__sort" tabindex="0">
                        <option value="1" selected='selected'>By title</option>
                        <option value="2">By year</option>
                        <option value="3">By producer</option>
                        <option value="4">By title</option>
                        <option value="5">By year</option>
                    </select>
                    <button type='submit' class="btn btn-md btn--danger search__button">search a movie</button>
                </form>
            </div>
        </div>
        
        <!-- Main content -->
        <div class="place-form-area">
        <section class="container">
            <div class="order-container">
                <div class="order">
                    <img class="order__images" alt='' src="images/tickets.png">
                    <p class="order__title">Book a ticket <br><span class="order__descript">and have fun movie time</span></p>
                    <div class="order__control">
                        <a href="#" class="order__control-btn active">Purchase</a>
                        <a href="#" class="order__control-btn">Reserve</a>
                    </div>
                </div>
            </div>
                <div class="order-step-area">
                    <div class="order-step first--step order-step--disable ">1. What &amp; Where &amp; When</div>
                    <div class="order-step second--step">2. Choose a sit</div>
                </div>
            
            <div class="choose-sits">
                <div class="choose-sits__info choose-sits__info--first">
                    <ul>
                        <li class="sits-price marker--none"><strong>Price</strong></li>
                        <li class="sits-price sits-price--cheap">$10</li>
                        <li class="sits-price sits-price--middle">$20</li>
                        <li class="sits-price sits-price--expensive">$30</li>
                    </ul>
                </div>

                <div class="choose-sits__info">
                    <ul>
                        <li class="sits-state sits-state--not">Not available</li>
                        <li class="sits-state sits-state--your">Your choice</li>
                    </ul>
                </div>
                
                <div class="col-sm-12 col-lg-10 col-lg-offset-1">
                <div class="sits-area hidden-xs">
                    <div class="sits-anchor">screen</div>

                    <div class="sits">
                        <aside class="sits__line">
                            <span class="sits__indecator">A</span>
                            <span class="sits__indecator">B</span>
                            <span class="sits__indecator">C</span>
                            <span class="sits__indecator">D</span>
                            <span class="sits__indecator">E</span>
                            <span class="sits__indecator">F</span>
                            <span class="sits__indecator">G</span>
                            <span class="sits__indecator">I</span>
                            <span class="sits__indecator additional-margin">J</span>
                            <span class="sits__indecator">K</span>
                            <span class="sits__indecator">L</span>
                        </aside>
                       
  <div id="divdd">
                            <div id="divd" class="sits__row" style="width:400px;align:center;margin: 0 auto;">
                            <c:forEach items="${seatList}" var="seat">
                            
 <c:choose>
                        <c:when test="${seat.s_state==1 }">
                        <span class="sits__place sits-price--cheap" data-place='${seat.s_seat}' data-price='10' title='${ seat.s_state}' >${seat.s_seat}</span>
                        </c:when>
                        <c:otherwise>
                        <span class="sits__place sits-price--cheap sits-state--not" data-place='${seat.s_seat}' data-price='10' title='${ seat.s_state}' >${seat.s_seat}</span>
                        </c:otherwise>
                        </c:choose>
                            </c:forEach>
                                
                                
                     	
                          
  
                            
                                
                           


                       </div>

                        <aside class="sits__checked">
                            <div class="checked-place">
                                
                            </div>
                            <div class="checked-result">
                                $0
                            </div>
                        </aside>
                        
                    </div>
                </div>
            </div>
            
            <div class="col-sm-12 visible-xs"> 
                <div class="sits-area--mobile">
                    <div class="sits-area--mobile-wrap">
                        <div class="sits-select">
                            <select name="sorting_item" class="sits__sort sit-row" tabindex="0">
                                    <option value="1" selected='selected'>A</option>
                                    <option value="2">B</option>
                                    <option value="3">C</option>
                                    <option value="4">D</option>
                                    <option value="5">E</option>
                                    <option value="6">F</option>
                                    <option value="7">G</option>
                                    <option value="8">I</option>
                                    <option value="9">J</option>
                                    <option value="10">K</option>
                                    <option value="11">L</option>	
                            </select>
 
                            <select name="sorting_item" class="sits__sort sit-number" tabindex="1">
                                    <option value="1" selected='selected'>1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                    <option value="6">6</option>
                                    <option value="7">7</option>
                                    <option value="8">8</option>
                                    <option value="9">9</option>
                                    <option value="10">10</option>
                                    <option value="11">11</option>
                                    <option value="12">12</option>
                                    <option value="13">13</option>
                                    <option value="14">14</option>
                                    <option value="15">15</option>
                                    <option value="16">16</option>
                                    <option value="17">17</option>
                                    <option value="18">18</option>
                            </select>

                            <a href="#" class="btn btn-md btn--warning toogle-sits">Choose sit</a>
                        </div>
                    </div>

                    <a href="#" class="watchlist add-sits-line">Add new sit</a>

                    <aside class="sits__checked">
                            <div class="checked-place">
                                <span class="choosen-place"></span>
                            </div>
                            <div class="checked-result">
                                $0
                            </div>
                    </aside>

                    <img alt="" src="images/components/sits_mobile.png">
                </div>
            </div>   
                
            </div>

            </div>
        </section>
        </div>
        
        

        <div class="clearfix"></div>
        <form id='film-and-time' class="booking-form" method='post' action='user/ticketAction'>

            <input type='text' name='choosen-number' class="choosen-number">
            <input type='text' name='choosen-number--cheap' class="choosen-number--cheap">
            <input type='text' name='choosen-number--middle' class="choosen-number--middle">
            <input type='text' name='choosen-number--expansive' class="choosen-number--expansive">
            <input type='text' name='choosen-cost' class="choosen-cost">
            <input type='text' name='choosen-sits' class="choosen-sits">


            <div class="booking-pagination booking-pagination--margin">
                    <a href="book1.html" class="booking-pagination__prev">
                        <span class="arrow__text arrow--prev">prev step</span>
                        <span class="arrow__info">what&amp;where&amp;when</span>
                    </a>
                    <input type="hidden" id="m_id" name="m_id" value="${m_id}"/>
                    <input type="hidden" id="s_time" name="s_time" value="${s_time}"/>
                    
                    <a  id="ahrefid" onclick="document.getElementById('film-and-time').submit();" class="booking-pagination__next">
                        <span class="arrow__text arrow--next">next step</span>
                        <span class="arrow__info">checkout</span>
                    </a>
            </div>
        </form>
        
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
                    <form id="login-form" class="UserLogin" method='post' novalidate=''>
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
       <script src="js/jquery-1.8.3.min.js"></script> 
        <script>window.jQuery || document.write('<script src="js/external/jquery-1.10.1.min.js"><\/script>')</script>
        <!-- Migrate --> 
        <script src="js/external/jquery-migrate-1.2.1.min.js"></script>
        <!-- Bootstrap 3--> 
        <script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.2/js/bootstrap.min.js"></script>

        <!-- Mobile menu -->
        <script src="js/jquery.mobile.menu.js"></script>
         <!-- Select -->
        <script src="js/external/jquery.selectbox-0.2.min.js"></script>

        <!-- Form element -->
        <script src="js/external/form-element.js"></script>
        <!-- Form validation -->
        <script src="js/form.js"></script>

        <!-- Custom -->
        <script src="js/custom.js"></script>
		<script  type="text/javascript">
		//function test(){
			
			//var v=$("span").data ("peace") 
			//alert(v);
			//var nodeList=new Array();
           // var d = document.getElementById("divdd");  
           // var nodeList = d.getElementsByTagName("span"); 
         
           // alert(nodeList.length);
           
            
           // for( i = 0;i<nodeList.length;i++){  
           // 	$(nodeList[i]).val(nodeList[i].innerHTML);	
            	
          //  	
          //  };
         //  alert(nodeList[0]);
         //   $.ajax({  
                      //  type:'post',  
                      //  traditional :true,  
                      //  url:'setSeat',  
                     //   data:{'nodeList':nodeList},  
                     //   success:function(data){  
                     //       refreshRmb(1);  
                     //   }  
                 //  });  
             //$.post("setSeat",{nodeList:"nodeList[]"},fun	ction(da){
             	//alert(da);
           // });
            //};</script>
		<script type="text/javascript">
            $(document).ready(function() {
                init_BookingTwo();
               
                
              //  var state=
               // if(state!=1){
                //	$(this).addClass('sits-state--not');
               // }
               
            });
        
            
		</script>

</body>
</html>
