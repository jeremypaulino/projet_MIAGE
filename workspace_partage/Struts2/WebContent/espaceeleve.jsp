<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags"%>
<!DOCTYPE html>
<html lang="fr">
<head>

<meta charset="UTF-8">

<title>Espace Eleve</title>

<s:include value="cssjs.jsp"></s:include>

<link rel="stylesheet" type="text/css" media="screen" href="css/dropzone.css">

<script src="js/dropzone.js"></script>

<%-- <script src="js/jquery-ui.js"></script> --%>

<script src="js/popupAjax.js"></script>


</head>
<body>
	<div class="main">

		<s:include value="wrapheader.jsp"></s:include>
		<!--==============================content================================-->

		<section id="content">
			<div class="container_12">
				<div class="grid_12">
					<div class="pad-0 border-1">
						<h2 class="top-1 p0">
							Bienvenue
							<s:property value="#session.email" />
						</h2>
						<h3>La page élève</h3>
						<div id="resultat"></div>

					</div>
					<div class="wrap block-1 pad-1">
						<div>
							<h3>Mon profil</h3>
							<img src="images/student.png" alt="" class="img-border">

							<table id="table" class="tableEleve">
								<tr>
									<td>Prenom :</td>
									<td><s:property value="eleve.prenom" /></td>
								</tr>
								<tr>
									<td>Nom :</td>
									<td><s:property value="eleve.nom" /></td>

								</tr>
								<tr>
									<td>Email :</td>
									<td><s:property value="eleve.mail" /></td>
								</tr>
								<tr>
									<td>Pseudo :</td>
									<td><s:property value="eleve.pseudo" /></td>

								</tr>
								<tr>
									<td>Mot de passe :</td>
									<td>*********</td>
								</tr>
								<tr>
									<td>Adresse :</td>
									<td><s:property value="eleve.adresse" /></td>
								</tr>
								<tr>
									<td>Code Postale :</td>
									<td><s:property value="eleve.codepostale" /></td>
								</tr>
								<tr>
									<td>Ville :</td>
									<td><s:property value="eleve.ville" /></td>
								</tr>
								<tr>
									<td>Niveau :</td>
									<td><s:property value="eleve.niveau" /></td>
								</tr>

							</table>

							<a class="button">Modifier mon profil</a>

						</div>
						<div>
							<h3>Mes Contacts</h3>
							<img src="images/contactbook.png" alt="" class="img-border">

							<table id="table" class="tableEleve">
								<s:iterator value="listecontact" var="element">

									<tr>
										<td><s:property value="nom" /> <s:property value="prenom" /> <s:property value="niveau" /></td>
									</tr>
								</s:iterator>
							</table>

							<a class="button">Modifier mon profil</a>

						</div>
						<div id="dernierscours">
							<h3>Mes cours prévus</h3>
							<table id="table" class="tableEleve">
								<tr>
									<td>Mathematiques</td>
									<td>14/12/2014</td>
									<td>18h00 - 19h00</td>
									<td>Demis Lefkas</td>
									<td>MP</td>
								</tr>

							</table>

							<a id="popupProfByEleve" class="button">Chercher un cours</a>
						</div>
						<div id="dernierscours" class="last">
							<h3>Mes derniers cours</h3>
							<table id="table" class="tableEleve">
								<tr>
									<td>Mathematiques</td>
									<td>14/12/2014</td>
									<td>Demis Lefkas</td>
									<td>MP</td>
									<td>Compte rendu</td>
									<td>* * * * *</td>
								</tr>

							</table>

							<a class="button">Historique</a>

						</div>
					</div>
					<div class="wrap block-1 pad-1">
						<s:include value="resultat/mesdocuments.jsp"></s:include>
					</div>
				</div>

			</div>
				<div class="clear"></div>

		</section>
	</div>

	<s:include value="footer.jsp"></s:include>

</body>
<script>
// $(document).ready(function() {
// 	  // initialise
// 	  $('#file-dropzone').dropzone({ 
// 	    url: "upload",
// 	    maxFilesize: 20,
// 	    paramName: "uploadfile",
// 	    maxThumbnailFilesize: 5,
// 	    init: function() {
	      
// 	      this.on('success', function(file) {
// 	    	  alert('bien ajoute ma gueule');
// 	      });
	      
// 	      this.on('addedfile', function(file) {
// 	    	  alert('bien ajoute');
	        
// 	      });
	      
// 	      this.on('drop', function(file) {
// 	        alert('file');
// 	      }); 
// 	    }
// 	  });	
	
	
	
// });
</script>

</html>