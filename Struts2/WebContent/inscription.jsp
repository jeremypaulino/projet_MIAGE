<%@ taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Clients</title>

<meta charset="utf-8">
<link rel="stylesheet" type="text/css" media="screen"
	href="css/reset.css">
<link rel="stylesheet" type="text/css" media="screen"
	href="css/style.css">
<link rel="stylesheet" type="text/css" media="screen"
	href="css/grid_12.css">
<link href='http://fonts.googleapis.com/css?family=Condiment'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Oxygen'
	rel='stylesheet' type='text/css'>
<script src="js/jquery-1.7.min.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" charset="utf-8"
	src="js/jquery.leanModal.min.js"></script>
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
			<s:include value="header.jsp"></s:include>
		</header>
		<!--==============================content================================-->


		<div class="container_form">

			<h1 class="center">Quelle type d'inscription souhaitez-vous:</h1>
			<br> <br>
			<ul class="segmented-control">
				<li id="eleve"><a href="#eleve">El�ve</a></li>

				<li id="prof"><a>Professeur</a></li>
			</ul>

			<br>
			<div id="formEleve">
				<s:form id="loginform" name="loginform" method="post"
					action="inscrireEleveProcess" class="jotform-form center">
					<p>
					<s:textfield label="Pseudo" type="text" name="eleve.pseudo" id="pseudo" required="required" placeholder="Ex: Ibracadabra" pattern=".{3,45}"
							class="txtfield" tabindex="1"></s:textfield>
							
						<s:textfield label="Prenom" type="text" name="eleve.prenom" id="prenom" required="required" placeholder="Ex: Arnaud" pattern=".{3,45}"
							class="txtfield" tabindex="2"></s:textfield>

						<s:textfield label="Nom de Famille" type="text" name="eleve.nom" required="required" placeholder="Ex: Buisson"
							id="nom" class="txtfield" tabindex="3"></s:textfield>

						<s:textfield label="Adresse" type="text" name="eleve.adresse" required="required" placeholder="Ex: 16 rue des arenes"
							id="addresse" class="txtfield" tabindex="4"></s:textfield>

						<s:textfield label="Complement d'adresse" type="eleve.complementAdresse"
							name="complementadresse" id="complementadresse" class="txtfield" tabindex="5"></s:textfield>

						<s:textfield label="Ville" type="text" name="ville" id="eleve.ville" required="required" placeholder="Ex: Lille"
							class="txtfield" tabindex="6"></s:textfield>

						<s:textfield label="Etat/Province" type="text" name="eleve.etat"
							id="etat" class="txtfield" tabindex="7"></s:textfield>

						<s:textfield label="Code Postal" type="text" name="eleve.codepostal" required="required" placeholder="Ex: 92500"
							id="codepostal" class="txtfield" tabindex="8"></s:textfield>

						<s:select class="txtfield" tabindex="9" label="Pays" list="#{'France':'France', 'Belgique':'Belgique', 'Suisse':'Suisse', 'Canada':'Canada'}" name="eleve.pays"></s:select>


						<s:textfield label="Email" type="email" name="email" id="eleve.mail" required="required" placeholder="adresse@mail.fr"
							class="txtfield" tabindex="10"></s:textfield>

						<s:password label="Mot de Passe" type="text" name="eleve.mdp" required="required"
							id="mdp" class="txtfield" tabindex="11"></s:password>

						<s:password label="Confirmer votre mot de passe" type="text" required="required"
							name="password" id="mdpConfirm" class="txtfield" tabindex="12"></s:password>
							
						<s:select label="Niveau" class="txtfield" tabindex="13" list="#{'6e':'6e', '5e':'5e', '4e':'4e', '3e':'3e', '2nd':'2nd', '1ere':'1ere', 'Terminale':'Terminale', 'Bac+1':'Bac+1', 'Bac+2':'Bac+2', 'Bac+3':'Bac+3', 'Bac+4':'Bac+4', 'Bac+5':'Bac+5'}" name="eleve.niveau"></s:select>
							
					</p>
					<p>
						<s:submit name="inscrireElevebtn" id="inscrireElevebtn" align="center" 
							class="flatbtn-blu hidemodal" value="S'inscrire" tabindex="14"></s:submit>
							
					</p>
				</s:form>
			</div>
			
			<div id="formProf"style="display: none;">
				<s:form id="loginform" name="loginform"
					action="inscrireProfProcess" class="jotform-form center">
					<p>
					
						<s:textfield label="Pseudo" type="text" name="pseudo" id="pseudo" required="required" placeholder="Ex: Ibracadabra" pattern=".{3,45}"
							class="txtfield" tabindex="1"></s:textfield>
							
						<s:textfield required="required" label="Prenom" type="text" name="prenom" id="prenom" placeholder="Ex: Arnaud"
							class="txtfield" tabindex="2"></s:textfield>

						<s:textfield required="required" label="Nom de Famille" type="text" name="nom" placeholder="Buisson"
							id="nom" class="txtfield" tabindex="3"></s:textfield>

						<s:textfield required="required" label="Adresse" type="text" name="addresse" placeholder="Ex: 16 rue des arenes"
							id="addresse" class="txtfield" tabindex="4"></s:textfield>

						<s:textfield label="Complement d'adresse" type="complementadresse"
							name="complementadresse" id="complementadresse" class="txtfield"
							tabindex="5"></s:textfield>

						<s:textfield required="required" label="Ville" type="text" name="ville" id="ville" placeholder="Ex: Lille"
							class="txtfield" tabindex="6"></s:textfield>

						<s:textfield label="Etat/Province" type="text" name="etat" placeholder="Ex: Quebec"
							id="etat" class="txtfield" tabindex="7"></s:textfield>

						<s:textfield required="required" label="Code Postal" type="text" name="codepostal" placeholder="Ex: 92500"
							id="codepostal" class="txtfield" tabindex="8"></s:textfield>

						<s:select class="txtfield" tabindex="9" label="Pays" list="#{'France':'France', 'Belgique':'Belgique', 'Suisse':'Suisse', 'Canada':'Canada'}" name="yourpays"></s:select>
<%-- 						<s:textfield required="required" label="Pays" type="text" name="pays" id="pays"  --%>
<%-- 							class="txtfield" tabindex="8"></s:textfield> --%>

						<s:textfield required="required" label="Email" type="email" name="email" id="email" placeholder="adresse@mail.fr"
							class="txtfield" tabindex="10"></s:textfield>

						<s:password required="required"  label="Mot de Passe" type="text" name="confirmemail"
							id="confirmemail" class="txtfield" tabindex="11"></s:password>

						<s:password required="required"  label="Confirmer votre mot de passe" type="text"
							name="password" id="password" class="txtfield" tabindex="12"></s:password>
							
						<s:textarea required="required"  class="txtfield" type="text" label="Motivation" name="motivation" cols="40" rows="10" tabindex="13"/>
						
					 	<s:file required="required"  id="cv" name="cv" label="CV" tabindex="14" size="10"></s:file> 
							
					</p>
					<p>
						<s:submit name="inscrireProfbtn" id="inscrireProfbtn" align="center"
							class="flatbtn-blu hidemodal" value="S'inscrire" tabindex="15"></s:submit>
					</p>
				</s:form>
			</div>
		</div>
	</div>


	<!--==============================footer=================================-->
	<s:include value="footer.jsp"></s:include>

</body>

<!--  form eleve ou prof  -->
<script>
// par defaut
	$( document ).ready(function() {
		$(location).attr('href',"#eleve");
	})
	
	//si clik btn prof
	$("#prof").click(function() {
		$("#formEleve").hide();
		$("#formProf").show();
		
		$(location).attr('href',"#prof");

		
	});

// di clik btn eleve
	$("#eleve").click(function() {
		$("#formProf").hide();
		$("#formEleve").show();
		
		$(location).attr('href',"#eleve");

	});
</script>
</html>