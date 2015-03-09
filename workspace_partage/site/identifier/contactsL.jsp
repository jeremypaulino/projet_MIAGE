<!DOCTYPE html>
<html lang="en">
<head>
    <title>Contacts</title>
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
    <section id="content">
        <div class="container_12">	
          <div class="grid_12">
            <div class="wrap pad-3">
                <div class="block-5">
                    <h3 class="p5">Nous Contacter</h3>
                    <div class="map img-border">
                      <iframe width="425" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=fr&amp;geocode=&amp;q=evry+boulevard+de+france&amp;aq=&amp;sll=37.424915,-122.072205&amp;sspn=0.178586,0.37405&amp;ie=UTF8&amp;hq=&amp;hnear=Boulevard+de+France,+91000+%C3%89vry,+France&amp;t=m&amp;z=14&amp;ll=48.626974,2.439081&amp;output=embed"></iframe><br /><small><a href="https://maps.google.com/maps?f=q&amp;source=embed&amp;hl=fr&amp;geocode=&amp;q=evry+boulevard+de+france&amp;aq=&amp;sll=37.424915,-122.072205&amp;sspn=0.178586,0.37405&amp;ie=UTF8&amp;hq=&amp;hnear=Boulevard+de+France,+91000+%C3%89vry,+France&amp;t=m&amp;z=14&amp;ll=48.626974,2.439081" style="color:#0000FF;text-align:left"></a></small>
                    </div>
                    <dl>
                        <dt>IBISC - IBGBI - 2ème étage<br>23, Boulevard de France<br>91034 - EVRY</dt>
       
                        <dd><span>Telephone: </span>01 64 98 78 87</dd>
                        <dd><span>Fax: </span>01 64 98 78 88</dd>
                        <dd><span>E-mail: </span><a href="#" class="link">support@ischool.fr</a></dd>
                    </dl> 
                </div>
                <div class="block-6">
                    <!--<h3>Entrer En Contact</h3>
                    <form id="form" method="post" >
                      <fieldset>
                        <label><input type="text" value="Name" onBlur="if(this.value=='') this.value='Name'" onFocus="if(this.value =='Name' ) this.value=''"></label>
                        <label><input type="text" value="Email" onBlur="if(this.value=='') this.value='Email'" onFocus="if(this.value =='Email' ) this.value=''"></label>
                        <label><input type="text" value="Phone" onBlur="if(this.value=='') this.value='Phone'" onFocus="if(this.value =='Phone' ) this.value=''"></label>
                        <label><textarea onBlur="if(this.value==''){this.value='Message'}" onFocus="if(this.value=='Message'){this.value=''}">Message</textarea></label>
                        <div class="btns"><a href="#" class="button">Clear</a><a href="#" class="button" onClick="document.getElementById('form').submit()">Send</a></div>
                      </fieldset>  
                    </form> 
                    -->
                    <object type="text/html" data="./contactform2.html" width="650" height="1000">
                      <embed src="./contactform2.jsp" width="650" height="1000"></embed>
                    </object>
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