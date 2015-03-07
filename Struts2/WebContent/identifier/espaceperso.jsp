<!DOCTYPE html>
<html lang="en">
<head>
    <title>Clients</title>
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
        
       </div>
       
   
<!--==============================footer=================================-->
    <footer>
        <p>© 2012 Global</p>
        <p>Website template by <a href="http://www.templatemonster.com/" target="_blank" rel="nofollow">www.templatemonster.com</a></p>
    </footer>	    
</body>
</html>