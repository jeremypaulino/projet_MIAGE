<%@ taglib uri="/struts-tags" prefix="s"%>
<html>
<header>
<script>
		$(document).ready(function(){	
			$('.slider')._TMS({show:0,pauseOnHover:true,prevBu:false,nextBu:false,playBu:false,duration:1000,preset:'fade',pagination:true,	pagNums:false,slideshow:7000,numStatus:true,banners:'fromRight',waitBannerAnimation:false,rogressBar:false});$("footer").append('<iframe id="vidz" width="560" height="315" src="https://www.youtube.com/embed/dD40VXFkusw?controls=0&amp;showinfo=0&autoplay=1" frameborder="0" allowfullscreen></iframe>');	$("#vidz").hide();
		});
	</script>

	<h1>
		<a href="index.jsp"><img src="images/logo.png" alt=""></a>
	</h1>
	<section class="header-login">
		<ul>


			
				<li><a href="./identifier/espaceperso.jsp">Espace Professeur</a></li>
				<li><a href="logout">Se Deconnecter</a></li>

			<div id="loginmodal" style="display: none;">
				<h1 class="center">Entrez Vos Identifiants</h1>
				<s:form id="loginform" name="loginform" action="login.action">
					<p>
						<s:textfield label="Email" type="text" name="email"
							id="username" class="txtfield" tabindex="1"></s:textfield>
						<s:password label="Mot de Passe" type="password" name="mdp"
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
				<li><a href="about.jsp">A propos De Nous</a></li>
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

</html>
