<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>

<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="UTF-8">
<title>Panneau d'administration</title>

<s:include value="cssjs.jsp"></s:include>



<!-- Grid CSS File (only needed for demo page) -->
<link rel="stylesheet" href="calend/css/paragridma.css">

<!-- Core CSS File. The CSS code needed to make eventCalendar works -->
<link rel="stylesheet" href="calend/css/eventCalendar.css">

<!-- Theme CSS file: it makes eventCalendar nicer -->
<link rel="stylesheet" href="calend/css/eventCalendar_theme_responsive.css">

<script src="calend/js/test.js" type="text/javascript"></script>

<script src="calend/js/jquery.timeago.js" type="text/javascript"></script>

<script src="calend/js/jquery.eventCalendar.js" type="text/javascript"></script>


<script src="js/jquery-ui.js"></script>

<link rel="stylesheet" type="text/css" media="screen" href="css/dropzone.css">
<script src="js/dropzone.js"></script>


<script>
$(document).ready(function() {

	
    $('#popupUpload').click(function(){
    	var mail = $(this).parents("tr").attr("id");
    	
		alert("j'ai cliqué sur " + mail);
		
		$.ajax({
			url : "messagesession",
			data : {
				message : mail
			}
		})
		
		$("#resultatprof").show();
				
		$("#resultatprof").dialog({
			width : 400,
			show : 'fold',
			hide : 'fold',
			buttons : {
				"OK" : function() {
					$(this).dialog("close");
					$("#resultatprof").hide();
					$.ajax({
						url : "effacermessagesession"
					})
				}
			}
		});
    	
    });
});
	
</script>

</head>
<body>
	<div class="main">

		<s:include value="wrapheader.jsp"></s:include>

		<!--==============================content================================-->
		<section id="content">
			<div class="container_12">
				<div class="grid_12">


					<div class="wrap pad-3">

						<div id="resultatprof" style="display: none">
							<s:include value="resultat/mesdocuments.jsp"></s:include>
						</div>

						<div class="motie">
							<h3>Mon profil</h3>
							<img src="images/student.png" alt="" class="img-border">

							<table id="table" class="tableEleve">
								<tr>
									<td>Prenom :</td>
									<td><s:property value="professeur.prenom" /></td>
								</tr>
								<tr>
									<td>Nom :</td>
									<td><s:property value="professeur.nom" /></td>

								</tr>
								<tr>
									<td>Email :</td>
									<td><s:property value="professeur.mail" /></td>
								</tr>
								<tr>
									<td>Pseudo :</td>
									<td><s:property value="professeur.pseudo" /></td>

								</tr>
								<tr>
									<td>Mot de passe :</td>
									<td>*********</td>
								</tr>
								<tr>
									<td>Adresse :</td>
									<td><s:property value="professeur.adresse" /></td>
								</tr>
								<tr>
									<td>Code Postale :</td>
									<td><s:property value="professeur.codepostale" /></td>
								</tr>
								<tr>
									<td>Ville :</td>
									<td><s:property value="professeur.ville" />s</td>
								</tr>
								<tr>
									<td>Niveau :</td>
									<td>6e</td>
								</tr>

							</table>

							<a id="popupmodifprofilprof" class="button">Modifier mon profil</a>

						</div>
						<div class="motie">
							<h3>Mes Contacts</h3>
							<img src="images/contactbook.png" alt="" class="img-border">

							<table id="table" class="tableEleve">
								<s:iterator value="listecontact" var="element">

									<tr id="<s:property value="mail" />">
										<td><s:property value="nom" /> <s:property value="prenom" /> <s:property value="niveau" /> <a id="popupUpload">deposer doc</a></td>
									</tr>

								</s:iterator>

							</table>

							<a class="button">Modifier mon profil</a>

						</div>
						<!-- 						<div class="block-6" style="width:50%;"> -->



						<!--<h3>Entrer En Contact</h3>
                    <form id="form" method="post" >
                      <fieldset>
                        <label><input type="text" value="Name" onBlur="if(this.value=='') this.value='Name'" onFocus="if(this.value =='Name' ) this.value=''"></label>
                        <label><input type="text" value="Email" onBlur="if(this.value=='') this.value='Email'" onFocus="if(this.value =='Email' ) this.value=''"></label>
                        <label><input type="text" value="Phone" onBlur="if(this.value=='') this.value='Phone'" onFocus="if(this.value =='Phone' ) this.value=''"></label>
                        <label><textarea onBlur="if(this.value==''){this.value='Message'}" onFocus="if(this.value=='Message'){this.value=''}">Message</textarea></label>
                        <div class="btns"><a href="#" class="button">Clear</a><a href="#" class="button" onClick="document.getElementById('form').submit()">Send</a></div>
                      </fieldset>  
                    </form> 
                    -->
						<!-- 							  <object type="text/html" data="calend/contactform2.jsp" width="650" height="1000"> -->
						<!--                       <embed src="calend/contactform2.jsp" width="650" height="1000"></embed> -->
						<!--                     </object>   -->
						<div>
							<object type="text/html" data="calend/cal2.jsp" width="1000px" height="1000px">
								<embed src="calend/cal2.jsp" width="1000px" height="1000px"></embed>
							</object>
						</div>
						
						
						
						<div id="dernierscours" >
							<h3>Mes derniers cours</h3>
							<table id="table" class="tableEleve">
								<s:iterator value="listecourpasse" var="element">

									<tr id="<s:property value="id"/>">
										<td><s:property value="matiere.nom" /></td>
										<td><s:property value="date" /></td>
										<td id="<s:property value="creneaux" />"><s:property value="%{creneauxToHeure(creneaux)}" /></td>
										<td id="<s:property value="idEleve" />"><s:property value="%{getEleve(idEleve)}" /></td>
										<td id="<s:property value="note" />" class="rating"><span id="5"><img src="images/etoilevide.png"></span><span id="4"><img src="images/etoilevide.png"></span><span id="3"><img src="images/etoilevide.png"></span><span id="2"><img src="images/etoilevide.png"></span><span id="1"><img src="images/etoilevide.png"></span></td>
										<td class="inserercr"><img src="images/mp.png"></td>
										
									</tr>

								</s:iterator>

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
						
						
						
						
						
						
						<!-- 						</div> -->


						<!-- 						<div id="resultat2" > -->

						<!-- <div class="resultat3"> -->
						<!-- <div class="resultat4" > -->

						<!-- 							<table> -->
						<!-- 								<tr> -->
						<!-- 									<td><input type="checkbox" id="check"> <label -->
						<%-- 										for="check" class="loadcheck" id="loadcheck"> <span --%>
						<%-- 											class="entypo-cancel">&#10008;</span> <span class="load"></span> --%>
						<%-- 											<span class="load"></span> <span class="load"></span> <span --%>
						<%-- 											class="load"></span> <span class="load"></span> <span --%>
						<%-- 											class="entypo-check">&#10004;</span> --%>
						<!-- 									</label></td> -->
						<!-- 									<td>8h00 - 9h00</td> -->
						<!-- 								</tr> -->
						<!-- 								<tr> -->
						<!-- 									<td><input type="checkbox" id="check1"> <label -->
						<%-- 										for="check1" class="loadcheck" id="loadcheck"> <span --%>
						<%-- 											class="entypo-cancel">&#10008;</span> <span class="load"></span> --%>
						<%-- 											<span class="load"></span> <span class="load"></span> <span --%>
						<%-- 											class="load"></span> <span class="load"></span> <span --%>
						<%-- 											class="entypo-check">&#10004;</span> --%>
						<!-- 									</label></td> -->
						<!-- 									<td>9h00 - 10h00</td> -->
						<!-- 								</tr> -->
						<!-- 								<tr> -->
						<!-- 									<td><input type="checkbox" id="check2"> <label -->
						<%-- 										for="check2" class="loadcheck" id="loadcheck"> <span --%>
						<%-- 											class="entypo-cancel">&#10008;</span> <span class="load"></span> --%>
						<%-- 											<span class="load"></span> <span class="load"></span> <span --%>
						<%-- 											class="load"></span> <span class="load"></span> <span --%>
						<%-- 											class="entypo-check">&#10004;</span> --%>
						<!-- 									</label></td> -->
						<!-- 									<td>10h00 - 11h00</td> -->
						<!-- 								</tr> -->
						<!-- 								<tr> -->
						<!-- 									<td><input type="checkbox" id="check3"> <label -->
						<%-- 										for="check3" class="loadcheck" id="loadcheck"> <span --%>
						<%-- 											class="entypo-cancel">&#10008;</span> <span class="load"></span> --%>
						<%-- 											<span class="load"></span> <span class="load"></span> <span --%>
						<%-- 											class="load"></span> <span class="load"></span> <span --%>
						<%-- 											class="entypo-check">&#10004;</span> --%>
						<!-- 									</label></td> -->
						<!-- 									<td>11h00 - 12h00</td> -->
						<!-- 								</tr> -->
						<!-- 								<tr> -->
						<!-- 									<td><input type="checkbox" id="check4"> <label -->
						<%-- 										for="check4" class="loadcheck" id="loadcheck"> <span --%>
						<%-- 											class="entypo-cancel">&#10008;</span> <span class="load"></span> --%>
						<%-- 											<span class="load"></span> <span class="load"></span> <span --%>
						<%-- 											class="load"></span> <span class="load"></span> <span --%>
						<%-- 											class="entypo-check">&#10004;</span> --%>
						<!-- 									</label></td> -->
						<!-- 									<td>12h00 - 13h00</td> -->
						<!-- 								</tr> -->
						<!-- 								<tr> -->
						<!-- 									<td><input type="checkbox" id="check5"> <label -->
						<%-- 										for="check5" class="loadcheck" id="loadcheck"> <span --%>
						<%-- 											class="entypo-cancel">&#10008;</span> <span class="load"></span> --%>
						<%-- 											<span class="load"></span> <span class="load"></span> <span --%>
						<%-- 											class="load"></span> <span class="load"></span> <span --%>
						<%-- 											class="entypo-check">&#10004;</span> --%>
						<!-- 									</label></td> -->
						<!-- 									<td>13h00 - 14h00</td> -->
						<!-- 								</tr> -->
						<!-- 								<tr> -->
						<!-- 									<td><input type="checkbox" id="check6"> <label -->
						<%-- 										for="check6" class="loadcheck" id="loadcheck"> <span --%>
						<%-- 											class="entypo-cancel">&#10008;</span> <span class="load"></span> --%>
						<%-- 											<span class="load"></span> <span class="load"></span> <span --%>
						<%-- 											class="load"></span> <span class="load"></span> <span --%>
						<%-- 											class="entypo-check">&#10004;</span> --%>
						<!-- 									</label></td> -->
						<!-- 									<td>14h00 - 15h00</td> -->
						<!-- 								</tr> -->
						<!-- 								<tr> -->
						<!-- 									<td><input type="checkbox" id="check7"> <label -->
						<%-- 										for="check7" class="loadcheck" id="loadcheck"> <span --%>
						<%-- 											class="entypo-cancel">&#10008;</span> <span class="load"></span> --%>
						<%-- 											<span class="load"></span> <span class="load"></span> <span --%>
						<%-- 											class="load"></span> <span class="load"></span> <span --%>
						<%-- 											class="entypo-check">&#10004;</span> --%>
						<!-- 									</label></td> -->
						<!-- 									<td>15h00 - 16h00</td> -->
						<!-- 								</tr> -->
						<!-- 								<tr> -->
						<!-- 									<td><input type="checkbox" id="check8"> <label -->
						<%-- 										for="check8" class="loadcheck" id="loadcheck"> <span --%>
						<%-- 											class="entypo-cancel">&#10008;</span> <span class="load"></span> --%>
						<%-- 											<span class="load"></span> <span class="load"></span> <span --%>
						<%-- 											class="load"></span> <span class="load"></span> <span --%>
						<%-- 											class="entypo-check">&#10004;</span> --%>
						<!-- 									</label></td> -->
						<!-- 									<td>16h00 - 17h00</td> -->
						<!-- 								</tr> -->
						<!-- 								<tr> -->
						<!-- 									<td><input type="checkbox" id="check9"> <label -->
						<%-- 										for="check9" class="loadcheck" id="loadcheck"> <span --%>
						<%-- 											class="entypo-cancel">&#10008;</span> <span class="load"></span> --%>
						<%-- 											<span class="load"></span> <span class="load"></span> <span --%>
						<%-- 											class="load"></span> <span class="load"></span> <span --%>
						<%-- 											class="entypo-check">&#10004;</span> --%>
						<!-- 									</label></td> -->
						<!-- 									<td>17h00 - 18h00</td> -->
						<!-- 								</tr> -->
						<!-- 								<tr> -->
						<!-- 									<td><input type="checkbox" id="check10"> <label -->
						<%-- 										for="check10" class="loadcheck" id="loadcheck"> <span --%>
						<%-- 											class="entypo-cancel">&#10008;</span> <span class="load"></span> --%>
						<%-- 											<span class="load"></span> <span class="load"></span> <span --%>
						<%-- 											class="load"></span> <span class="load"></span> <span --%>
						<%-- 											class="entypo-check">&#10004;</span> --%>
						<!-- 									</label></td> -->
						<!-- 									<td>18h00 - 19h00</td> -->
						<!-- 								</tr> -->
						<!-- 								<tr> -->
						<!-- 									<td><input type="checkbox" id="check11"> <label -->
						<%-- 										for="check11" class="loadcheck" id="loadcheck"> <span --%>
						<%-- 											class="entypo-cancel">&#10008;</span> <span class="load"></span> --%>
						<%-- 											<span class="load"></span> <span class="load"></span> <span --%>
						<%-- 											class="load"></span> <span class="load"></span> <span --%>
						<%-- 											class="entypo-check">&#10004;</span> --%>
						<!-- 									</label></td> -->
						<!-- 									<td>19h00 - 20h00</td> -->
						<!-- 								</tr> -->

						<!-- 							</table> -->
						<!-- 							</div>	 -->
						<!-- 							</div> -->
						<!-- 						</div> -->



					</div>
				</div>
				<div class="clear"></div>
			</div>
		</section>
	</div>

	<!--==============================footer=================================-->
	<s:include value="footer.jsp"></s:include>

</body>
<script>
	$(document).ready(function() {
		$('.inserercr').click(function() {

			var note = $(this).attr("id");
			var ligne = $(this).parents("tr").attr("id");
			alert(ligne);

		});

	})
</script>

</html>

