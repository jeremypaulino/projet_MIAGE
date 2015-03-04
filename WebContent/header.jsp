<%@ taglib uri="/struts-tags" prefix="s"%>
<html>
<header>

	<h1>
		<a href="index.jsp"><img src="images/logo.png" alt=""></a>
	</h1>
	<section class="header-login">
		<ul>


			<s:if test="%{#session.log=='true'}">
				<li><a href="espaceperso.jsp">Espace Personnel</a></li>
				<li><a href="logout">Se Deconnecter</a></li>
				<li class="header-panier"><a href="panier.jsp"><img	src="identifier/images/PAnier.png" alt=""></a></li>
				
			</s:if>

			<s:else>
				<li><a href="#loginmodal" id="modaltrigger">S'identifier</a></li>
				<li><a href=' <s:url action="pageInscrire"/> '>S'inscrire</a></li>
			</s:else>

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
