<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="UTF-8">
<title>Panneau d'administration</title>

<s:include value="../cssjs.jsp"></s:include>
<script>
	$(document).ready(function() {
		$('.sucess:empty').hide();
	});
	</script>
</head>
<body>
	<div class="main">

		<s:include value="headeradmin.jsp"></s:include>
		<!--==============================content================================-->
		<section id="content">
			<div class="container_12">
				<div class="grid_12">
					<div class="pad-0 border-1">
						<h2 class="top-1 p0">
							Bienvenue
							<s:property value="#session.email" />
						</h2>
						<h3>Le panneau d'administration</h3>

						<s:if test="%{#session.message != ''}">
							<div class="success">
								<s:property value="#session.message" />
							</div>
						</s:if>


					</div>
					<div class="wrap block-1 pad-1">
						<div>
							<h3>Les professeurs a valider</h3>
							<img src="images/professeur.png" alt="" class="img-border">
							<p>
								Derniers inscrits :
							</p>
							<table id="table">
								<s:iterator value="listeProf" var="element">
									<tr>
										<td><s:property value="nom" /> <s:property
												value="prenom" /></td>
										<td><a href="<s:property value="cv" /><">CV</a></td>
										<td><a
											href="<s:url action="accepterProf"><s:param  name="email" value="mail" /></s:url>"><img
												src="images/valid.png" /></a></td>
										<td><a
											href="<s:url action="refuserProf"><s:param  name="email" value="mail" /></s:url>"><img
												src="images/invalid.png" /></a></td>
									</tr>
								</s:iterator>
							</table>							
							<a class="button" href="<s:url action="voirProf"></s:url>">Tout les professeurs</a>
						</div>
						<div>
							<h3>Les cheques a valider</h3>
							<img src="images/cheques.png" alt="" class="img-border">
							<p>
								Derniers cheque confirme par le client :
							</p>
							<table>
							
								<s:iterator value="listeChequesEnAttente" var="element">
									<tr>
										<td><s:property value="nom" /> <s:property value="prenom" /></td>
										
										<td><s:property value="montant" />e</td>
																				<td><s:property value="dateString" /></td>
										
										
										<td><a href="<s:url action="accepterCheque"><s:param  name="id" value="id" /></s:url>"><img src="images/valid.png" /></a></td>
										<td><a href="<s:url action="refuserCheque"><s:param  name="id" value="id" /></s:url>"><img src="images/invalid.png" /></a></td>
									</tr>
								</s:iterator>
							</table>
							
							<a href="#" class="button">Tout les cheques non valid&eacute;s</a>
						</div>
						<div class="last">
							<h3>Les &eacute;l&egrave;ves</h3>
							<img src="images/student.png" alt="" class="img-border">
							<p>
								Derniers inscrits :
							</p>
							<table>
								<tr>
									<s:iterator value="listeEleves" var="element">
										<td><s:property value="nom" /> <s:property value="prenom" /> <s:property value="niveau" /></td>
										<td><a href="<s:url action="supprimerEleve"><s:param  name="email" value="mail" /></s:url>"><img src="images/delete.png" /></a></td>
									</s:iterator>
							</table>
							<a href="#" class="button">Tout les &eacute;l&egrave;ves</a>
						</div>
					</div>
					<div class="wrap block-1 pad-1">
						<div>
							<h3>Les administrateurs</h3>

							<img src="images/admin.png" alt="" class="img-border">
							<p>
								Liste des administrateur :
							</p>
							<table>
								<tr>
									<s:iterator value="listeAdmin" var="element">
										<td><s:property />
										</td>
									<td><a href="<s:url action="supprimerAdmin"><s:param  name="email" value="element" /></s:url>"><img src="images/delete.png" /></a>
									</td>
									</s:iterator>						
							</table>
							<p>
								<s:form action="addAdminAction" >
								  <s:textfield class="txtfield petit"  name="administrateur.email" label="email" type="email" required="required" placeholder="adresse@mail.fr"/>
								  <s:submit align="center" class="flatbtn-blu hidemodal"/>
								</s:form>
							</p>
						</div>
						<div>
							<h3>Les Prix</h3>
							<img src="images/prix.png" alt="" class="img-border">
							<p>
								Derniers cheque confirme par le client :
							</p>
							<p>1/ Prenom Nom 40e <a href="">Confirmer</a></p>
							<a href="#" class="button">Plus</a>
						</div>
						<div class="last">
							<h3>Les Matieres</h3>
							<img src="images/sujets.png" alt="" class="img-border">
							<p>
								Liste des mati&egrave;res :
							</p>
							<table>
								<s:iterator value="listeMatieres" var="element">
									<tr>
										<td><s:property /></td>
										<td><a
											href="<s:url action="supprimerMatiere"><s:param  name="matiere" value="element" /></s:url>"><img
												src="images/delete.png" /></a></td>
									</tr>
								</s:iterator>
							</table>
							<p>
								<s:form action="addMatiereAction" >
								  <s:textfield class="txtfield petit"  name="matiere.nom" label="Matiere" type="text" required="required" placeholder="Histoire"/>
								  <s:submit align="center" class="flatbtn-blu hidemodal"/>
								</s:form>
							</p>
						</div>
					</div>
				</div>
				<div class="clear"></div>
			</div>
			<div class="aside">
				<div class="container_12">
					<div class="grid_12">
						<div class="pad-2 block-2 wrap">
						<h2>Les Stats</h2>
<!-- 						Pareil pour semaine mois , année -->
							<div>
								<h3 class="p3">CA de la journ&eacute;e</h3>
								<h4>Aujourd'hui</h4>
								<p class="p4">25 451 e</p>
								<a href="#" class="button">semaine</a>
								<a href="#" class="button">mois</a>
								<a href="#" class="button">annee</a>
							</div>
							<div class="last">
								<h3 class="p3">Nombre d'eleves</h3>
								<p class="p4">1 458 eleves</p>
								<a href="#" class="button">Plus</a>
							</div>
							
							<div>
								<h3 class="p3">Nombre de professeurs</h3>
								<p class="p4">56 professeurs</p>
								<a href="#" class="button">Plus</a>
							</div>
							<div class="last">
								<h3 class="p3">Heures de cours pr&eacute;vus</h3>
								<h4>Aujourd'hui</h4>
								<p class="p4">145 h</p>
								<a href="#" class="button">semaine</a>
								<a href="#" class="button">mois</a>
								<a href="#" class="button">annee</a>
							</div>
						</div>
					</div>
					<div class="clear"></div>
				</div>
			</div>
		</section>
	</div>
	
	<s:include value="footer.jsp"></s:include>
	
</body>
</html>