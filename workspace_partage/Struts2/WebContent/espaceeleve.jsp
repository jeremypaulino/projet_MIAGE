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
<script src="js/rechercheAjax.js"></script>

<style>
.rating {
  unicode-bidi: bidi-override;
  direction: rtl;
  text-align: center;
}
.rating > span {
  display: inline-block;
  position: relative;
}

.rating:not(.dejanote) > span:hover:before,
.rating:not(.dejanote)  > span:hover ~ span:before {
   content: url(images/etoilepleine.png);
   position: absolute;
   left: 0; 
}
</style>
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
							Bienvenue <s:property value="#session.email" />
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

							<a href="#modifmodal2" id="modaltrigger" class="button">Modifier mon profil</a>
							
							<div id="modifmodal2" style="display: none;">
				<h1 id="textfi1" class="center">Modifier mon profil</h1>
				
				<br>
				<!--<s:textfield class="txtfield" name = "prenom" label = "Prénom" value = "%{eleve.prenom}"/>
				<s:textfield class="txtfield" name = "nom" label = "Nom" value = "%{eleve.nom}"/>
				<s:textfield class="txtfield" name = "email" label = "Email" value = "%{eleve.mail}"/>
				<s:textfield class="txtfield" name = "mdp" label = "Mot de passe" value = "***********"/>-->
				
				<s:form id="loginform" name="loginform" action="modifEleve" class="jotform-form center">
				
						<s:textfield label="Pseudo" value = "%{eleve.pseudo}" type="text" name="pseudo" required="required" placeholder="Ex: Ibracadabra" pattern=".{3,45}" class="txtfield" tabindex="1"></s:textfield>
							
						<s:textfield label="Prenom" value = "%{eleve.prenom}" type="text" name="prenom" required="required" placeholder="Ex: Arnaud" pattern=".{3,45}" class="txtfield modiftext" tabindex="2"></s:textfield>

					    <s:textfield label="Nom" value = "%{eleve.nom}" type="text" name="nom" required="required" placeholder="Ex: Arnaud" pattern=".{3,45}" class="txtfield modiftext" tabindex="3"></s:textfield>

						<s:textfield label="Adresse" value = "%{eleve.adresse}" type="text" name="adresse" required="required" placeholder="Ex: 16 rue des arenes"	 class="txtfield modiftext" tabindex="4"></s:textfield>

						<s:textfield label="Complement d'adresse" type="text" name="complementadresse"  class="txtfield modiftext" tabindex="5"></s:textfield>

						<s:textfield label="Code Postal" value = "%{eleve.codepostale}"  id="cp" name="codepostale" required="required" placeholder="Ex: 92500" class="txtfield modiftext" tabindex="8"></s:textfield>
						
						<s:select  class="txtfield modiftext" id="result" tabindex="9" label="Ville" list="#{'Choisir':'Choisir'}" name="ville"></s:select>						
						
						<s:select id="modifpays" class="txtfield modiftext" tabindex="9" label="Pays" list="#{'France':'France', 'Belgique':'Belgique', 'Suisse':'Suisse', 'Canada':'Canada'}" name="pays"></s:select>

						<s:textfield label="Email" value = "%{eleve.mail}" type="email" name="mail" required="required" placeholder="adresse@mail.fr" class="txtfield modiftext" tabindex="10"></s:textfield>

						<s:password label="Mot de Passe" type="text" name="mdp" required="required"	class="txtfield modiftext" tabindex="11"></s:password>

						<s:password label="Confirmer votre mot de passe" type="text" required="required" id="mdpConfirm" class="txtfield modiftext" tabindex="12"></s:password>
							
						<s:select label="Niveau" class="txtfield modiftext" value = "%{eleve.niveau}" tabindex="13" list="#{'6e':'6e', '5e':'5e', '4e':'4e', '3e':'3e', '2nd':'2nd', '1ere':'1ere', 'Terminale':'Terminale', 'Bac+1':'Bac+1', 'Bac+2':'Bac+2', 'Bac+3':'Bac+3', 'Bac+4':'Bac+4', 'Bac+5':'Bac+5'}" name="niveau"></s:select>
				
				<s:submit name="loginbtn" id="loginbtn" class="flatbtn-blu hidemodal" value="Je Valide" tabindex="14"></s:submit>
			
						</s:form>	
						
					
			</div>

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
							<table id="table" class="tableEleve" >

								<s:iterator value="listecourfutur" var="element">

									<tr id="<s:property value="id" />">
										<td><s:property value="matiere.nom" /></td>
										<td><s:property value="date" /></td>
										<td id="<s:property value="creneaux" />"><s:property value="%{creneauxToHeure(creneaux)}" /></td>
										<td id="<s:property value="idProf" />"><s:property value="%{getProf(idProf)}" /></td>
										<td><img class="annulercours" src="images/annuler.png"></td>
										<td><img src="images/mp.png"></td>
									</tr>

								</s:iterator>

							</table>

							<a href="nos-offres" class="button">Chercher un cours</a>
						</div>
						<div id="dernierscours" class="last">
							<h3>Mes derniers cours</h3>
							<table id="table" class="tableEleve">
								<s:iterator value="listecourpasse" var="element">

									<tr id="<s:property value="id"/>">
										<td><s:property value="matiere.nom" /></td>
										<td><s:property value="date" /></td>
										<td id="<s:property value="creneaux" />"><s:property value="%{creneauxToHeure(creneaux)}" /></td>
										<td id="<s:property value="idProf" />"><s:property value="%{getProf(idProf)}" /></td>
										<td id="<s:property value="note" />" class="rating"><span id="5"><img src="images/etoilevide.png"></span><span id="4"><img src="images/etoilevide.png"></span><span id="3"><img src="images/etoilevide.png"></span><span id="2"><img src="images/etoilevide.png"></span><span id="1"><img src="images/etoilevide.png"></span></td>
										<td><img src="images/mp.png"></td>
									</tr>

								</s:iterator>

							</table>

							<a class="button">Historique</a>

						</div>
					</div>
					<div class="wrap block-1 pad-1">
						<div id="listedocuments" class="espacedoc img-border">
							<ul>
								<li>doc1</li>
								<li>doc2</li>

							</ul>
						</div>
						<s:include value="resultat/mesdocuments.jsp"></s:include>
					</div>
				</div>

			</div>
			<div class="clear"></div>

		</section>
	</div>

	<s:include value="footer.jsp"></s:include>

</body>

  <script type="text/javascript">
  
// 	$(document).ready(function() {

//         Dropzone.options.dropzoneForm = {
//             acceptedFiles: "image/*",
//             init: function () {
//                 var thisDropzone = this;

//                 //Call the action method to load the images from the server
//                 $.getJSON("getmesdocuments").done(function (data) {
//                     if (data.Data != '') {

//                         $.each(data.Data, function (index, item) {
//                                 //// Create the mock file:
//                                 var mockFile = {
//                                     name: item.AttachmentID,
//                                     size: 12345
//                                 };

//                                 // Call the default addedfile event handler
//                                 thisDropzone.emit("addedfile", mockFile);

//                                 // And optionally show the thumbnail of the file:
//                                 thisDropzone.emit("thumbnail", mockFile, item.Path);

//                                 // If you use the maxFiles option, make sure you adjust it to the
//                                 // correct amount:
//                                 //var existingFileCount = 1; // The number of files already uploaded
//                                 //myDropzone.options.maxFiles = myDropzone.options.maxFiles - existingFileCount;
//                         });
//                     }

//                 });

                
//             }
//         };
// });
    </script>
<script>
// Dropzone.autoDiscover = false;

// 	$(document).ready(function() {
// 		  // initialise
// 		  $('#file-dropzone').dropzone({ 
// 		    url: "upload",
// 		    //maxFilesize: 20,
// 		    paramName: "uploadfile",
// 		    //maxThumbnailFilesize: 5,
// 		    init: function() {
		    	
// 			      this.on('success', function(file) {
// 			    	  alert('bien ajoute ma gueule');
// 			      });

// // 			      this.on('addedfile', function(file) {
// // 			    	  alert('bien ajoute');

// // 			      });

// 			      this.on('drop', function(file) {
// 			        alert('file');
// 			      }); 
			      
		    	
// 		    	var thisDropzone = this;
		    	
// 		    	$.getJSON("getmesdocuments").done(function (data) {

//                   if (data.jsondoc != '') {

//                       $.each(data.jsondoc, function (index, item) {
//                               //// Create the mock file:
//                               var mockFile = {
//                                   name: item.FileName,
//                                   size: 95798
//                               };
                      

//                               // Call the default addedfile event handler
//                               thisDropzone.emit("addedfile", mockFile);

//                               // And optionally show the thumbnail of the file:
                            	  
                            	  
//                               //thisDropzone.emit("thumbnail", mockFile, item.Path);
                              

//                               // If you use the maxFiles option, make sure you adjust it to the
//                               // correct amount:
//                               //var existingFileCount = 1; // The number of files already uploaded
//                               //myDropzone.options.maxFiles = myDropzone.options.maxFiles - existingFileCount;
//                       });
//                   }

//               });


		      
		      
// 		    }
// 		  });	
// 	});
	
	$(".rating").each(function(){  
		
		var note = parseInt($(this).attr("id"));
		
		for ( var i = 1 ; i < note+1 ; i++){
			$(this).children("#"+i).children("img").attr("src","images/etoilepleine.png");
			
			$(this).addClass("dejanote");
		}		
	});
	
	
	$(".rating:not(.dejanote) > span").click(function(){
		
		var note = $(this).attr("id");
		var ligne= $(this).parents("tr").attr("id");
		
		var dejanote = $(this).parent("td").addClass("dejanote");
		for ( var i = 1 ; i < parseInt(note)+1 ; i++){
			$(this).parents("td").children("#"+i).children("img").attr("src","images/etoilepleine.png");
		}
		
		$.ajax({
			url : "noterCours",
			data : {
				note : note,
				id : ligne
			}
		})
		
	});
	
	$(".dejanote > span").click(function(){
		
		alert("tu l'as déjà noté ma gueule");
		
	});
	
	
	

	$(".annulercours")
			.click(
					function() {

						var dateheure = $(this).parents("tr").children("td").eq(1).text()
								+ " "
								+ $(this).parents("tr").children("td").eq(2)
										.text().split(" - ")[0];

						var test = $.datepicker.parseDate('dd/mm/yy', dateheure);

						var d = new Date();
						var month = d.getMonth() + 1;
						var day = d.getDate() + 2;
						var output = (('' + day).length < 2 ? '0' : '') + day
								+ '/' + (('' + month).length < 2 ? '0' : '')
								+ month + '/' + d.getFullYear();

						var aujd = $.datepicker.parseDate('dd/mm/yy', output);
						
						var matiere = $(this).parents("tr").children("td").eq(0).text();
						var date = $(this).parents("tr").children("td").eq(1).text();
						var heure = $(this).parents("tr").children("td").eq(2).text().split(" - ")[0];
						var idprof = parseInt($(this).parents("tr").children("td").eq(3).attr("id"));
						var ligne= $(this).parents("tr").attr("id");
						var date2 = date + " "+heure.split("h")[0]+":00";						
						if (test > aujd) {
							
							
							$("#resultat").text("Etes vous sur de vouloir annuler le cours de "
											+ matiere
											+ " du "
											+ date
											+ " à "
											+ heure + " ? 3 \u20AC seront débités de votre compte en guise de pénalité.");
							$("#resultat").dialog({
								width : 400,
								show : 'fold',
								hide : 'fold',
								buttons : {
									"Oui" : function() {
										$.ajax({
											url : "annulerCours",
											data : {
												matiere : matiere,
												date : date2,
												idprof : idprof,
												id : ligne
											}
										}).done(function() {
											$("#resultat").text("Vous avez bien annuler le cours, le professeur sera automatiquement avertit.");
											$("#resultat").dialog({
												width : 400,
												show : 'fold',
												hide : 'fold',
												buttons : {
													"OK" : function() {
														$(this).dialog("close");
													}
												}
											});
											
											// on retire la ligne en JS
											$("#"+ligne).remove();
											//ligne.remove();
										});
									},
									"Annuler" : function() {
										$(this).dialog("close");
									}
								}
							});
						} else {
							$("#resultat")
									.text(
											"Nous sommes désolé, vous ne pouvez pas annuler le cours de "+ matiere
													+ " du "
													+ date
													+ " à "
													+ heure
													+ " , nous vous rappellons qu'un cours doit être annuler au moins 2 jours avant sa date prévu.");
							$("#resultat").dialog({
								width : 600,
								show : 'fold',
								hide : 'fold',
								buttons : {
									"Fermer" : function() {
										$(this).dialog("close");
									}
								}
							});
						}

					});
</script>

</html>