<%@ taglib uri="/struts-tags" prefix="s"%>
<html>

<script>


var Email_envoy= "<s:property value='#session.email' />";


$.ajax({
	url : "voirnouvmess2",
	data : {

		Email_envoy : Email_envoy
		

	},
	dataType : "json",
	success : function(data) {	
			//alert(data.nvxmess);
			nouvmessupdate(data.nvxmess);
			
	}
	
})


function nouvmessupdate(nvxmess){
	//document.getElementById('credit').innerHTML=credit;
	
	//$("#test2").append('<li><a href="chat"><img src="./images/message.png">'+nvxmess+'</a></li>');
	
	$("#test2").append('<a href="chat"><img src="./images/message.png">'+nvxmess+'</a>');
}

</script>


<header>

	<h1>
		<a href="index.jsp"><img src="images/logo.png" alt=""></a>
	</h1>
	<section class="header-login">
		<ul>


				<li id="test2"></li>
				<li><a href="profPage">Espace Professeur</a></li>
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
		<s:include value="menuhorizontal.jsp"></s:include>	

</header>

</html>
