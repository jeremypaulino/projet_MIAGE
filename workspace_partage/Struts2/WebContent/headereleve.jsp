<%@ taglib uri="/struts-tags" prefix="s"%>
<html>

<script>


var Email_envoy= "<s:property value='#session.email' />";
var idSession2 = "<s:property value='#session.id' />";
//alert(idSession2);
$.ajax({
	url : "voirnouvmess",
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


$.ajax({
	url : "voircredit",
	data : {

		idEleve : idSession2
		

	},
	dataType : "json",
	success : function(data) {	
			//alert(data.credit);
			creditupdate(data.credit);
			
	}
	
})
function creditupdate(credit){
	//document.getElementById('credit').innerHTML=credit;
	
	$("#test").append('<li id="paniercss" class="header-panier"> <a id="credit" href="panier.jsp"><img src="images/PAnier.png" alt="">'+credit+'</a></li>');
}
</script>
<header>

	<h1>
		<a href="index.jsp"><img src="images/logo.png" alt=""></a>
	</h1>
	<section class="header-login">
		<ul>

<div id="test">

				<li id="test2"></li>
				
				
				<li><a href="elevePage">Espace Eleve</a></li>
				<li><a href="logout">Se Deconnecter</a></li>
				<!-- <li id="paniercss" class="header-panier"> <a id="credit" href="panier.jsp"><img src="images/PAnier.png" alt=""></a></li>
				 <li id="paniercss" class="header-panier"><input id="credit" class="cart_quantity_input champmain" type="text" name="quantity" value="0" autocomplete="off" size="2" disabled>
</li>	 -->							
</div>
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
