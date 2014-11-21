<!DOCTYPE html>
<html lang="en">
<head>
    <title>Clients</title>
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
        <h1><a href="index.jsp"><img src="images/logo.png" alt=""></a>
        </h1>
        <section class="header-login">
        <form name="login" action="index_submit" method="get" accept-charset="utf-8">
        <ul>
       <li><a href="#loginmodal" id="modaltrigger">S'identifier</a></li>
       <li><a href="inscription.jsp">S'inscrire</a></li>
       
       
       <div id="loginmodal" style="display:none;">
       <center>
       <h1>Entrez Vos Identifiants</h1>
       </center>
       <br>
      
       <form id="loginform" name="loginform" method="post" action="index.jsp">
       
       <label for="username">Email:</label>
       <input type="text" name="username" id="username" class="txtfield" tabindex="1">
       
       <label for="password">Mot de passe:</label>
       <input type="password" name="password" id="password" class="txtfield" tabindex="2">
       
       <br>
       <center>
       <div class="center"><input type="submit" name="loginbtn" id="loginbtn" class="flatbtn-blu hidemodal" value="Se Connecter" tabindex="3"></div>
       </center>
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
                    <li class="home-page current"><a href="index.jsp"><span></span></a></li>
                    <li><a href="about.jsp">À Propos De Nous</a></li>
                    <li><a href="services.jsp">Nos Offres</a></li>
                    <li><a href="clients.jsp">Nos Partenaires</a></li>
                    <li><a href="contacts.jsp">Contacts</a></li>
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
            <div class="wrap pad-3">
                <div class="block-5">
                    <h3>Clients List</h3>
                     <ul class="list-1">
                    	<li><a href="#">At vero eos et accusam</a></li>
                        <li><a href="#">Justo duo dolores et ea rebum</a></li>
                        <li><a href="#">Stet clita kasd gubergren, no sea</a></li>
                        <li><a href="#">Takimata sanctus est lorem</a></li>
                        <li><a href="#">Lorem ipsum dolor sit</a></li>
                        <li><a href="#">Amet consetetur sadipscing elitr</a></li>
                        <li><a href="#">Sed diam nonumy eirmod</a></li>
                        <li><a href="#">Tempor invidunt ut labore et dolore</a></li>
                        <li><a href="#">Magna aliquyam erat sed diam</a></li>
                        <li><a href="#">Voluptua vero eos et accusam et</a></li>
                        <li><a href="#">Justo duo dolores et ea</a></li>
                    </ul>
                </div>
                <div class="block-6">
                    <h3 class="p6">Be Our Client!</h3>
                    <div class="wrap">
                    	<img src="images/page5-img1.jpg" alt="" class="img-border img-indent-2">
                        <div class="extra-wrap">
                            <p><a href="#" class="link"><strong>Ut wisi enim ad minim veniam, quis nostrud exerci tation</strong></a></p>
                            <p class="p6">Duis autem vel eum iriure dolor in hendrerit in vulputate velit diam voluptua. At vero eos et accusam esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto.</p>
                    	</div>
                    	<p class="p1">Odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet.</p>
                    	<a href="#" class="button">More</a>
                    </div>
                </div>
            </div>
          </div>
          <div class="clear"></div>
        </div>
        <div class="aside">
            <div class="container_12">	
                <div class="grid_12">
                    <div class="pad-2 wrap">
                        <h3 class="p5">Our Most Respected Clients</h3>
                        <div class="wrap box-2">
                        	<a href="#"><img src="images/banner-1.jpg" alt=""></a><a href="#"><img src="images/banner-2.jpg" alt=""></a><a href="#"><img src="images/banner-3.jpg" alt=""></a><a href="#"><img src="images/banner-4.jpg" alt=""></a><a href="#" class="last"><img src="images/banner-5.jpg" alt=""></a>
                        </div>	
                    </div>
                </div>
                <div class="clear"></div>
            </div>
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