<!DOCTYPE html>
<html lang="en">
<head>
    <title>Projects</title>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" media="screen" href="../inc/css/reset.css">
    <link rel="stylesheet" type="text/css" media="screen" href="../inc/css/style.css">
    <link rel="stylesheet" type="text/css" media="screen" href="../inc/css/grid_12.css">
    <link href='http://fonts.googleapis.com/css?family=Condiment' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>
    <script src="js/jquery-1.7.min.js"></script>
    <script src="js/jquery.easing.1.3.js"></script>
    
     <script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" charset="utf-8" src="js/jquery.leanModal.min.js"></script>
	<!--[if lt IE 8]>
       <div style=' clear: both; text-align:center; position: relative;'>
         <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
           <img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
        </a>
      </div>
    <![endif]-->
    <!--[if lt IE 9]>
   		<script type="text/javascript" src="js/html5.js"></script>
    	<link rel="stylesheet" type="text/css" media="screen" href="css/ie.css">
	<![endif]-->
</head>
<body>
  <div class="main">
  <!--==============================header=================================-->
     <header>
        <h1><a href="index.html"><img src="images/logo.png" alt=""></a>
        </h1>
        <section class="header-login">
        <form name="login" action="index_submit" method="get" accept-charset="utf-8">
        <ul>
       <li><a href="#loginmodal" id="modaltrigger">S'identifier</a></li>
       <li><a href="indentifier.html">S'inscrire</a></li>
       
       
       <div id="loginmodal" style="display:none;">
       <h1>User Login</h1>
       <form id="loginform" name="loginform" method="post" action="index.html">
       <label for="username">Username:</label>
       <input type="text" name="username" id="username" class="txtfield" tabindex="1">
       
       <label for="password">Password:</label>
       <input type="password" name="password" id="password" class="txtfield" tabindex="2">
       
       <div class="center"><input type="submit" name="loginbtn" id="loginbtn" class="flatbtn-blu hidemodal" value="Log In" tabindex="3"></div>
       </form>
       </div>
       <script type="text/javascript">
       $(function(){
       $('#loginform').submit(function(e){
       return false;
       });
       
       $('#modaltrigger').leanModal({ top: 110, overlay: 0.45, closeButton: ".hidemodal" });
       });
       </script>

        
        
        
        
        
        </ul>
        </form>
        </section>
        
        <div class="clear"></div>    
        <nav class="box-shadow">
            <div>
                <ul class="menu">
                    <li class="home-page current"><a href="index.html"><span></span></a></li>
                    <li><a href="about.html">À Propos De Nous</a></li>
                    <li><a href="services.html">Services</a></li>
                    <li><a href="projects.html">Projects</a></li>
                    <li><a href="clients.html">Clients</a></li>
                    <li><a href="contacts.html">Contacts</a></li>
                </ul>
                <div class="social-icons">
                    <span>Nous suivre:</span>
                    <a href="#" class="icon-3"></a>
                    <a href="#" class="icon-2"></a>
                    <a href="#" class="icon-1"></a>
                </div>
                <div class="clear"></div>
            </div>
        </nav>
    </header>   
  <!--==============================content================================-->
    <section id="content">
        <div class="container_12">	
          <div class="grid_12">
                <div class="pad-3">
                    <h3 class="p5">Our Projects</h3>
                     <div class="block-8 wrap">
                     	<div>
                        	<img src="images/page4-img1.jpg" alt="" class="img-border">
                        	<p class="top-1"><a href="#" class="link"><strong>Lorem ipsum dolor sit amet</strong></a></p>
                    		<p>Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna erat... <a href="#" class="link">Read More</a></p>
                        </div>
                        <div>
                        	<img src="images/page4-img2.jpg" alt="" class="img-border">
                        	<p class="top-1"><a href="#" class="link"><strong>Lorem ipsum dolor sit amet</strong></a></p>
                    		<p>Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna erat... <a href="#" class="link">Read More</a></p>
                        </div>
                        <div class="last">
                        	<img src="images/page4-img3.jpg" alt="" class="img-border">
                        	<p class="top-1"><a href="#" class="link"><strong>Lorem ipsum dolor sit amet</strong></a></p>
                    		<p>Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna erat... <a href="#" class="link">Read More</a></p>
                        </div>
                     </div>
                     <div class="block-8 wrap top-3">
                     	<div>
                        	<img src="images/page4-img4.jpg" alt="" class="img-border">
                        	<p class="top-1"><a href="#" class="link"><strong>Lorem ipsum dolor sit amet</strong></a></p>
                    		<p>Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna erat... <a href="#" class="link">Read More</a></p>
                        </div>
                        <div>
                        	<img src="images/page4-img5.jpg" alt="" class="img-border">
                        	<p class="top-1"><a href="#" class="link"><strong>Lorem ipsum dolor sit amet</strong></a></p>
                    		<p>Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna erat... <a href="#" class="link">Read More</a></p>
                        </div>
                        <div class="last">
                        	<img src="images/page4-img6.jpg" alt="" class="img-border">
                        	<p class="top-1"><a href="#" class="link"><strong>Lorem ipsum dolor sit amet</strong></a></p>
                    		<p>Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna erat... <a href="#" class="link">Read More</a></p>
                        </div>
                     </div>
                </div>
          </div>
          <div class="clear"></div>
        </div>
    </section> 
  </div>    
<!--==============================footer=================================-->
    <footer>
        <p>© 2012 Global</p>
        <p>Website template by <a href="http://www.templatemonster.com/" target="_blank" rel="nofollow">www.templatemonster.com</a></p>
    </footer>	    
</body>
</html>