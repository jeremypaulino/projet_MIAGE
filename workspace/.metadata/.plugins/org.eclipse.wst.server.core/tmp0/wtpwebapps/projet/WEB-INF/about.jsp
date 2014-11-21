<!DOCTYPE html>
<html lang="en">
<head>
    <title>About</title>
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
            <div class="wrap block-3 pad-2">
                <div>
                    <h3 class="p5">Qui Somme Nous</h3>
                    <img src="images/page2-img1.jpg" alt="" class="img-border">
                    <p class="top-1"><a href="#" class="link"><strong>Duis autem eum iriure dolor</strong></a></p>
                    <p class="p6">Hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros.</p>
                    <p class="p4">Accumsan et iusto odio dignissim qui blandit praesent luptatum zril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer.</p>
                    <a href="#" class="button">More</a>
                </div>
                <div>
                    <h3 class="p6">Our History</h3>
                    <div class="box-1">
                        <span>2001 -</span>
                        <p class="extra-wrap">Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invid aliquyam erat.</p>
                    </div>
                    <div class="box-1">
                        <span>2004 -</span>
                        <p class="extra-wrap">At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est lorem ipsum.</p>
                    </div>
                    <div class="box-1">
                        <span>2009 -</span>
                        <p class="extra-wrap">Lorem ipsum dolor sit amet, conse tetur sadipscing elitr, sed diam nonumy eirmod.</p>
                    </div>
                    <div class="box-1 p4">
                        <span>2012 -</span>
                        <p class="extra-wrap">Tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores etea.</p>
                    </div>
                    <a href="#" class="button">More</a>
                </div>
                <div class="last">
                    <h3 class="p6">Job Opportunities</h3>
                    <p class="p6"><a href="#" class="link"><strong>Duis autem vel eum iriure dolor in hendrerit in vulputate</strong></a></p>
                    <p>Velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan:</p>
                    <ul class="list-1 p4 left-1">
                    	<li><a href="#">Lusto odio dignissim qui</a></li>
                        <li><a href="#">Blandit praesent luptatum zzril</a></li>
                        <li><a href="#">Delenit augue duis dolore</a></li>
                        <li><a href="#">Lorem ipsum dolor sit amet</a></li>
                        <li><a href="#">Consectetuer adipiscing elit sed</a></li>
                        <li><a href="#">Diam nonummy nibh</a></li>
                        <li><a href="#">Euismod tincidunt ut laoreet</a></li>
                    </ul>
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
                        <h3 class="p5">The Best Professionals</h3>
                        <div class="wrap block-4">
                        	<div>
                            	<img src="images/page2-img2.jpg" alt="" class="img-border">
                                <p><a href="#" class="link"><strong>Mark Jameson</strong></a></p>
                                <p>Soluta nobis eleifend option congue nihil imperdiet doming id quod mazim.</p>
                            </div>
                            <div>
                            	<img src="images/page2-img3.jpg" alt="" class="img-border">
                                <p><a href="#" class="link"><strong>Dylan Moore</strong></a></p>
                                <p>Placerat facer possim assumom ipsum dolor sit amet, contetuer adipiscing.</p>
                            </div>
                            <div>
                            	<img src="images/page2-img4.jpg" alt="" class="img-border">
                                <p><a href="#" class="link"><strong>Sebastian Howard</strong></a></p>
                                <p>Sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam.</p>
                            </div>
                            <div class="last">
                            	<img src="images/page2-img5.jpg" alt="" class="img-border">
                                <p><a href="#" class="link"><strong>Stan Lee</strong></a></p>
                                <p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis.</p>
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