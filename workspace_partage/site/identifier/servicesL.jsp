<!DOCTYPE html>
<html lang="en">
<head>
    <title>Services</title>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" media="screen" href="css/reset.css">
    <link rel="stylesheet" type="text/css" media="screen" href="css/style.css">
    <link rel="stylesheet" type="text/css" media="screen" href="css/grid_12.css">
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
     
  
    <!--==============================header=================================-->
  
  
  
     <header>
        <h1><a href="index.jsp"><img src="images/logo.png" alt=""></a>
        </h1>
        <section class="header-login">
        <form name="login" action="index_submit" method="get" accept-charset="utf-8">
        <ul>
       <li><a href="espaceperso.jsp">Espace Personnel</a></li>
       <li><a href="../index.jsp">Se déconnecter</a></li>
     <!-- <li><button type="submit"><img> Text</button></li>
       <li class="header-panier"><a href="index.jsp"></a></li>-->
       <li class="header-panier"><a href="panier.jsp"><img src="images/PAnier.png" alt=""></a></li>
       
       
       
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
                    <li><a href="aboutL.jsp">À Propos De Nous</a></li>
                    <li><a href="servicesL.jsp">Nos Offres</a></li>
                    <li><a href="clientsL.jsp">Nos Partenaires</a></li>
                    <li><a href="contactsL.jsp">Contacts</a></li>
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
                    <h3>Marketing Services</h3>
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
                    <h3 class="p6">High Achievement Always Takes Place in the <strong>Framework of Expectation</strong></h3>
                    <p><a href="#" class="link"><strong>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat</strong></a></p>
                    <p class="p6">Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. </p>
                    <p class="p1">Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.</p>
                    <a href="#" class="button">More</a>
                </div>
            </div>
          </div>
          <div class="clear"></div>
        </div>
        <div class="aside">
            <div class="container_12">	
                <div class="grid_12">
                    <div class="pad-2 wrap">
                        <h3 class="p6">Our Main Services Overview</h3>
                        <div class="wrap">
                        	<div class="block-7">
                            	<div class="wrap">
                                    <img src="images/page3-img1.png" alt="" class="img-indent">
                                    <div class="extra-wrap">
                                        <p><a href="#" class="link"><strong>Nam liber tempor</strong></a></p>
                                        <p>Cum suta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum lorem ipsum dolor sit amet, consectetuer.</p>
                                    </div>
                                </div>
                                <div class="wrap top-2">
                                    <img src="images/page3-img4.png" alt="" class="img-indent">
                                    <div class="extra-wrap">
                                        <p><a href="#" class="link"><strong>Sed diam nonummy</strong></a></p>
                                        <p>Nibh euismod tincidunt laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam uis nostrud exerci tation ullamcorper.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="block-7">
                            	<div class="wrap">
                                    <img src="images/page3-img2.png" alt="" class="img-indent">
                                    <div class="extra-wrap">
                                        <p><a href="#" class="link"><strong>Adipiscing elit sed</strong></a></p>
                                        <p>Diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci.</p>
                                    </div>
                                </div>
                                <div class="wrap top-2">
                                    <img src="images/page3-img5.png" alt="" class="img-indent">
                                    <div class="extra-wrap">
                                        <p><a href="#" class="link"><strong>Consetetur sadipscing</strong></a></p>
                                        <p>Sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="block-7 last">
                            	<div class="wrap">
                                    <img src="images/page3-img3.png" alt="" class="img-indent">
                                    <div class="extra-wrap">
                                        <p><a href="#" class="link"><strong>Nam liber tempor</strong></a></p>
                                        <p>Cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Lorem ipsum dolor sit amet.</p>
                                    </div>
                                </div>
                                <div class="wrap top-2">
                                    <img src="images/page3-img6.png" alt="" class="img-indent">
                                    <div class="extra-wrap">
                                        <p><a href="#" class="link"><strong>Stet clita kasd</strong></a></p>
                                        <p>Qubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy.</p>
                                    </div>
                                </div>
                            </div>
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