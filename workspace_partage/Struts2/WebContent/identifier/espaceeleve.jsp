<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags"%>
<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="UTF-8">
<title>Espace Eleve</title>

<s:include value="../cssjs.jsp"></s:include>
<script src="js/popupAjax.js"></script>
<script type="text/javascript" src="js/jquery-ui.js"></script>

<link rel="stylesheet" type="text/css" media="screen" href="css/dropzone.css">

<script src="js/dropzone.js"></script>

</head>
<body>
	<div class="main">

		<s:include value="headereleve.jsp"></s:include>
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
							<img src="../images/student.png" alt="" class="img-border">

							<table id="table" class="tableEleve">
								<tr>
									<td>Prenom :</td>
									<td>Mathieu</td>
								</tr>
								<tr>
									<td>Nom :</td>
									<td>Mathieu</td>

								</tr>
								<tr>
									<td>Email :</td>
									<td>Mathieu</td>
								</tr>
								<tr>
									<td>Pseudo :</td>
									<td>Killer91700</td>

								</tr>
								<tr>
									<td>Mot de passe :</td>
									<td>*********</td>
								</tr>
								<tr>
									<td>Adresse :</td>
									<td>15 allée des chenilles</td>
								</tr>
								<tr>
									<td>Code Postale :</td>
									<td>91700</td>
								</tr>
								<tr>
									<td>Ville :</td>
									<td>Sainte-Geneviève-Des-Bois</td>
								</tr>
								<tr>
									<td>Niveau :</td>
									<td>6e</td>
								</tr>

							</table>

							<a class="button">Modifier mon profil</a>

						</div>
						<div>
							<h3>Mes Contacts</h3>
							<img src="../images/contactbook.png" alt="" class="img-border">

							<table id="table" class="tableEleve">
								<tr>
									<td>Mathieu</td>
									<td>Sarlangue </td>
									<td>MP</td>
								</tr>
								<tr>
									<td>Jeremy</td>
									<td>Paulino</td>
									<td>MP</td>

								</tr>
								<tr>
									<td>Sabrina</td>
									<td>Cheurf</td>
									<td>MP</td>
								</tr>
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
						<s:include value="../resultat/mesdocuments.jsp"></s:include>
					</div>
				</div>

			</div>
				<div class="clear"></div>

		</section>
	</div>

	<s:include value="../footer.jsp"></s:include>

</body>


</html>