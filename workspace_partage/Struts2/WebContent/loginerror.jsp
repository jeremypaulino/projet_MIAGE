<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Home</title>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" media="screen"
	href="css/reset.css">
<link rel="stylesheet" type="text/css" media="screen"
	href="css/style.css">
<link rel="stylesheet" type="text/css" media="screen"
	href="css/grid_12.css">
<link rel="stylesheet" type="text/css" media="screen"
	href="css/slider.css">
<link href='http://fonts.googleapis.com/css?family=Condiment'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Oxygen'
	rel='stylesheet' type='text/css'>

<script src="js/jquery-1.7.min.js"></script>
<script src="js/jquery.easing.1.3.js"></script>

<!-- A ajouter partour 
     
    <script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>-->
<script type="text/javascript" charset="utf-8"
	src="js/jquery.leanModal.min.js"></script>


<script src="js/tms-0.4.x.js"></script>
<script>
		$(document).ready(function(){				   	
			$('.slider')._TMS({
				show:0,
				pauseOnHover:true,
				prevBu:false,
				nextBu:false,
				playBu:false,
				duration:1000,
				preset:'fade',
				pagination:true,
				pagNums:false,
				slideshow:7000,
				numStatus:true,
				banners:'fromRight',
				waitBannerAnimation:false,
				progressBar:false
			})		
		});
	</script>
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
			<h1>
				<a href="index.jsp"><img src="images/logo.png" alt=""></a>
			</h1>
			<section class="header-login">
				<ul>
					<li><a href="#loginmodal" id="modaltrigger">S'identifier</a></li>
					<li><a href="inscription.jsp">S'inscrire</a></li>
					<li>L'email ou le mot de passe n'est pas valide, veuillez r�essayer</li>

					<div id="loginmodal" style="display: none;">
						<p>
						<h1 class="center">Entrez Vos Identifiants</h1>
						</p>
						<s:form id="loginform" name="loginform" action="loginprocess">
							<p>
								<s:textfield label="Email" type="text" name="username"
									id="username" class="txtfield" tabindex="1"></s:textfield>
								<s:password label="Mot de Passe" type="password" name="userpass"
									id="password" class="txtfield" tabindex="2"></s:password>
							</p>
							<p class="center">
								<s:submit name="loginbtn" id="loginbtn"
									class="flatbtn-blu hidemodal" value="Se Connecter" tabindex="3"></s:submit>
							</p>
						</s:form>
						
					</div>
					
					


				</ul>
				
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
						<span>Nous suivre:</span> <a href="#" class="icon-3"></a> <a
							href="#" class="icon-2"></a> <a href="#" class="icon-1"></a>
					</div>
					<div class="clear"></div>
				</div>
			</nav>
		</header>
		<!--==============================content================================-->
		<section id="content">
			<div id="slide" class="box-shadow">
				<div class="slider">
					<ul class="items">
						<li><img src="images/slider-1.jpg" alt="" />
						<div class="banner">Le Succes Garantie Pour Vos
								Études&nbsp;</div></li>
						<li><img src="images/slider-2.jpg" alt="" />
						<div class="banner">Des Professeurs Qualifiés Á Votre
								Disposition&nbsp;</div></li>
						<li><img src="images/slider-3.jpg" alt="" />
						<div class="banner">Des Cours Personnalisés Selon Vos
								Besoins&nbsp;</div></li>
					</ul>
				</div>
			</div>
			<div class="container_12">
				<div class="grid_12">
					<div class="pad-0 border-1">
						<h2 class="top-1 p0">Nous Vous Ouvrons La Voie Du Succès!</h2>
						<p class="p2">iSchool est une plateforme intéractive qui met
							à la disposition d'élève, un large panel de cours virtuels.
							Que vous soyez collègien ou étudiant en école d'ingénieur,
							iSchool est fait pour vous! En effet des professeurs de collège,
							de lycée et universitaire, séléctionnés par nos soins, vous
							attendent.</p>
					</div>
					<div class="wrap block-1 pad-1">
						<div>
							<h3>Les Meilleurs Pour Vous</h3>
							<img src="images/page1-img1.jpg" alt="" class="img-border">
							<p>Nous selectionnons nous même les professeurs présent sur
								le site. Ils sont choisis grâce à leur expérience.</p>
							<a href="#" class="button">Plus</a>
						</div>
						<div>
							<h3>deuxieme zone</h3>
							<img src="images/page1-img2.jpg" alt="" class="img-border">
							<p>blabla</p>
							<a href="#" class="button">Plus</a>
						</div>
						<div class="last">
							<h3>troisieme zone</h3>
							<img src="images/page1-img3.jpg" alt="" class="img-border">
							<p>blablabla</p>
							<a href="#" class="button">Plus</a>
						</div>
					</div>
				</div>
				<div class="clear"></div>
			</div>
			<div class="aside">
				<div class="container_12">
					<div class="grid_12">
						<div class="pad-2 block-2 wrap">
							<div>
								<h3 class="p3">blabla</h3>
								<p class="p4">fmvqjnfvùqnvùqknfvùlknfùvndsùf</p>
								<a href="#" class="button">Plus</a>
							</div>
							<div class="last">
								<h3 class="p3">blabla</h3>
								<p class="p4">blaazdmoznfmoenfmjnzeozerv</p>
								<a href="#" class="button">Plus</a>
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
		<p>© 2014 iSchool</p>
		<p>
			Website project by <a href="http://ibisc.fr" target="_blank"
				rel="nofollow">Evry University</a>
		</p>
	</footer>
</body>
</html>


<!--==============================JS utilis� sur CETTE page=================================-->
<script type="text/javascript">
     $(function(){
      $('#modaltrigger').leanModal(
    		  { top: 110, overlay: 0.45, closeButton: ".hidemodal" }
    		  );
     });
</script>
