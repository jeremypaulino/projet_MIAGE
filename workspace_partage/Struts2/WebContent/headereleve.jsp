<%@ taglib uri="/struts-tags" prefix="s"%>
<html>
<header>

	<h1>
		<a href="index.jsp"><img src="images/logo.png" alt=""></a>
	</h1>
	<section class="header-login">
		<ul>


				<li><a href="chat"><img src="./images/message.png">1</a></li>
				<li><a href="elevePage">Espace Eleve</a></li>
				<li><a href="logout">Se Deconnecter</a></li>
				<li class="header-panier"><a href="panier.jsp"><img src="images/PAnier.png" alt=""></a></li>
				

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
		<s:include value="menuhorizontal.jsp"></s:include>	

</header>

</html>
