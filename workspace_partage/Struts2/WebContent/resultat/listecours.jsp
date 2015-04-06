<%@ taglib uri="/struts-tags" prefix="s"%>
<s:if test="%{getListeAjaxCours().isEmpty()}">
	<s:include value="cssjs.jsp"></s:include>



	<ul id="cours" class="table list-1 p4 left-1">
		<li><a id=col1 class="acol" href="#"><strong>Nom Et Prénom Du Professeur</strong></a> <a id=col2 class="acol" href="#"><strong>Matière</strong></a>
			<a id=col3 class="acol" href="#"><strong>Plage Horaire</strong></a> <a id=col4 class="acol" href="#"><strong>Date</strong></a> <a id=col5
			class="acol" href="#"><strong>Avis</strong></a></li>
	</ul>

	<tr>
		<td colspan="9">Désolé nous n'avons trouvé aucun resultat pour cette recherche</td>
	</tr>
</s:if>


<s:else>

	<ul id="cours" class="table list-1 p4 left-1 test222">
		<li id="hduturfu">
		<a class="acol col1" id="trinom" ><strong class="hduturfu2">Professeur</strong><img class="trier" style="vertical-align:initial;" src="images/trier.png"/></a>
		<a class="acol col2" id="tridate" ><strong class="hduturfu2">Date</strong><img  class="trier" style="vertical-align:initial;" src="images/trier.png"/></a>
		<a class="acol col3" id="trihoraire" ><strong class="hduturfu2">Horaire</strong><img  class="trier" style="vertical-align:initial;" src="images/trier.png"/></a>
		<a class="acol col4" id="trimatiere" ><strong class="hduturfu2">Matière</strong><img  class="trier"  style="vertical-align:initial;" src="images/trier.png"/></a>
		<a class="acol col5" id="trimatiere" ><strong class="hduturfu2">Avis</strong><img class="trier"  style="vertical-align:initial;" src="images/trier.png"/></a>
		</li>


		<s:iterator value="listeAjaxCours" var="element">




			<li class = "lignecour">
			<a class="acol col1" href="#" id="<s:property value="idProf" />"  ><strong><s:property value="%{getProf(idProf)}" /></strong></a> 
			<a class="acol col2" href="#"  ><strong><s:property value="date" /></strong></a>
			<a class="acol col3" href="#"  id="<s:property value="creneaux" />" ><strong><s:property value="%{creneauxToHeure(creneaux)}" /></strong></a>
			<a class="acol col4" href="#"  ><strong><s:property value="matiere.nom" /></strong></a>
			
			<s:if test="note<25">
						<a id="<s:property value="note" />" class="rating acol col5"><span id="5" class="etoile"><img src="images/etoilevide.png"></span><span id="4" class="etoile"><img src="images/etoilevide.png"></span><span id="3" class="etoile"><img src="images/etoilevide.png"></span><span id="2" class="etoile"><img src="images/etoilevide.png"></span><span id="1" class="etoile"><img src="images/etoilevide.png"></span></a>
			</s:if>
			<s:elseif test="note>25 && note<75">
						<a id="<s:property value="note" />" class="rating acol col5"><span id="5" class="etoile"><img src="images/etoile1-2.png"></span><span id="4" class="etoile"><img src="images/etoilevide.png"></span><span id="3" class="etoile"><img src="images/etoilevide.png"></span><span id="2" class="etoile"><img src="images/etoilevide.png"></span><span id="1" class="etoile"><img src="images/etoilevide.png"></span></a>
			
			</s:elseif>
			<s:elseif test="note>75 && note<125">
						<a id="<s:property value="note" />" class="rating acol col5"><span id="5" class="etoile"><img src="images/etoilepleine.png"></span><span id="4" class="etoile"><img src="images/etoilevide.png"></span><span id="3" class="etoile"><img src="images/etoilevide.png"></span><span id="2" class="etoile"><img src="images/etoilevide.png"></span><span id="1" class="etoile"><img src="images/etoilevide.png"></span></a>
			
			</s:elseif>
			<s:elseif test="note>125 && note<175">
						<a id="<s:property value="note" />" class="rating acol col5"><span id="5" class="etoile"><img src="images/etoilepleine.png"></span><span id="4" class="etoile"><img src="images/etoile1-2.png"></span><span id="3" class="etoile"><img src="images/etoilevide.png"></span><span id="2" class="etoile"><img src="images/etoilevide.png"></span><span id="1" class="etoile"><img src="images/etoilevide.png"></span></a>
			
			</s:elseif>
			<s:elseif test="note>175 && note<225">
						<a id="<s:property value="note" />" class="rating acol col5"><span id="5" class="etoile"><img src="images/etoilepleine.png"></span><span id="4" class="etoile"><img src="images/etoilepleine.png"></span><span id="3" class="etoile"><img src="images/etoile1-2.png"></span><span id="2" class="etoile"><img src="images/etoilevide.png"></span><span id="1" class="etoile"><img src="images/etoilevide.png"></span></a>
			
			</s:elseif>
			<s:elseif test="note>225 && note<275">
						<a id="<s:property value="note" />" class="rating acol col5"><span id="5" class="etoile"><img src="images/etoilepleine.png"></span><span id="4" class="etoile"><img src="images/etoilepleine.png"></span><span id="3" class="etoile"><img src="images/etoilepleine.png"></span><span id="2" class="etoile"><img src="images/etoilevide.png"></span><span id="1" class="etoile"><img src="images/etoilevide.png"></span></a>
			
			</s:elseif>
			<s:elseif test="note>275 && note<325">
						<a id="<s:property value="note" />" class="rating acol col5"><span id="5" class="etoile"><img src="images/etoilepleine.png"></span><span id="4" class="etoile"><img src="images/etoilepleine.png"></span><span id="3" class="etoile"><img src="images/etoilepleine.png"></span><span id="2" class="etoile"><img src="images/etoilevide.png"></span><span id="1" class="etoile"><img src="images/etoilevide.png"></span></a>
			
			</s:elseif>
			<s:elseif test="note>325 && note<375">
						<a id="<s:property value="note" />" class="rating acol col5"><span id="5" class="etoile"><img src="images/etoilepleine.png"></span><span id="4" class="etoile"><img src="images/etoilepleine.png"></span><span id="3" class="etoile"><img src="images/etoilepleine.png"></span><span id="2" class="etoile"><img src="images/etoile1-2.png"></span><span id="1" class="etoile"><img src="images/etoilevide.png"></span></a>
			
			</s:elseif>
			<s:elseif test="note>375 && note<425">
						<a id="<s:property value="note" />" class="rating acol col5"><span id="5" class="etoile"><img src="images/etoilepleine.png"></span><span id="4" class="etoile"><img src="images/etoilepleine.png"></span><span id="3" class="etoile"><img src="images/etoilepleine.png"></span><span id="2" class="etoile"><img src="images/etoilepleine.png"></span><span id="1" class="etoile"><img src="images/etoilevide.png"></span></a>
			
			</s:elseif>
			<s:elseif test="note>425 && note<475">
						<a id="<s:property value="note" />" class="rating acol col5"><span id="5" class="etoile"><img src="images/etoilepleine.png"></span><span id="4" class="etoile"><img src="images/etoilepleine.png"></span><span id="3" class="etoile"><img src="images/etoilepleine.png"></span><span id="2" class="etoile"><img src="images/etoilepleine.png"></span><span id="1" class="etoile"><img src="images/etoile1-2.png"></span></a>
			
			</s:elseif>
			<s:elseif test="note>475 && note<501">
						<a id="<s:property value="note" />" class="rating acol col5"><span id="5" class="etoile"><img src="images/etoilepleine.png"></span><span id="4" class="etoile"><img src="images/etoilepleine.png"></span><span id="3" class="etoile"><img src="images/etoilepleine.png"></span><span id="2" class="etoile"><img src="images/etoilepleine.png"></span><span id="1" class="etoile"><img src="images/etoilepleine.png"></span></a>
			
			</s:elseif>
			<s:else>
					<a id="<s:property value="note" />" class="rating acol col5">Le professeur n'a pas encore reçu de notes</a>
			
			</s:else>
			
			
<%-- 			<a id="<s:property value="note" />" class="rating acol col5"><span id="5" class="etoile"><img src="images/etoilevide.png"></span><span id="4" class="etoile"><img src="images/etoilevide.png"></span><span id="3" class="etoile"><img src="images/etoilevide.png"></span><span id="2" class="etoile"><img src="images/etoilevide.png"></span><span id="1" class="etoile"><img src="images/etoilevide.png"></span></a> --%>
			<a id="btn" class="button col7 acol" >Réserver</a>
			</li>

			<!-- <tr>
				<td><s:property value="idProf" /></td>
				<td><s:property value="date" /></td>
				<td><s:property value="matiere.nom" /></td>
				<td><s:property value="creneaux" /></td>
				<td>RESERVER</td>
			</tr> -->
		</s:iterator>


	</ul>

</s:else>

<div id="erreur">

</div>


<script type="text/javascript">
// 	$(".button").hover(function() {
// 		//alert(this.id);
// 		if (document.getElementById(this.id).innerHTML == "9,99") {
// 			document.getElementById(this.id).innerHTML = "Réserver";
// 		} else {
// 			document.getElementById(this.id).innerHTML = "9,99";
// 		}
// 	});

	$(".button").hover(function() {
		var niveau = "<s:property value='#session.niveau' />";
		
		if(niveau == "6e" ||niveau == "5e"|| niveau == "4e"||niveau == "3e"){
			if ($(this).text() == "5") {
				$(this).text("Reserver");
			} else {
				$(this).text("5") ;
			}
			
		}
		else if(niveau == "2nd" ||niveau == "1ere"|| niveau == "Terminale"){
			if ($(this).text() == "10") {
				$(this).text("Reserver");
			} else {
				$(this).text("10") ;
			}
			
		}
		else if(niveau == "Bac+1" ||niveau == "Bac+2"|| niveau == "Bac+3"||niveau == "Bac+4"||niveau == "Bac+5"){
			if ($(this).text() == "15") {
				$(this).text("Reserver");
			} else {
				$(this).text("15") ;
			}
			
		}
		
	});
	
	
	$(".acol").click(function() {
		var tri = $(this).attr("id");
		chercher2(tri);
	});
	

	

	$(".lignecour").click(function() {

		var nomprenomprof = $(this).children("a").first().text();
		var matiere = $(this).children("a").eq(3).text();
		var date = $(this).children("a").eq(1).text();

		var creneaux = $(this).children("a").eq(2).attr('id');
		// pour les autres remplacé first par la fonction qui selectionne l'enfant 2 , l'enfant 3 ...
		var IdProf = $(this).children("a").eq(0).attr('id');
		//alert("j'ai cliqué sur une ligne , le prof est :"+ creneaux );
		var IdEleve = "<s:property value='#session.id' />";
// 	$.ajax({
// 			url : "inserercours",
// 			data : {

// 				date2 : date,
// 				creneaux : creneaux,
// 				IdProf : IdProf,
// 				IdEleve : IdEleve,
// 				matiere : matiere

// 			},
// 			dataType : "json",
// 			success : function(jsonResponse) {	
// 				//la reponse
// 				alert(jsonResponse.resultat);
// 			}
// 		})
		
		$.ajax({
			url : "inserercours",
			data : {
				date2 : date,
				creneaux : creneaux,
				IdProf : IdProf,
				IdEleve : IdEleve,
				matiere : matiere
			},
			dataType : "json",
			success : function(data) {
								
				if(data.resultat == true){
					var message = "Bravo vous avez bien réserver le cours !"
						$("#erreur").text(message);

						$("#erreur").dialog({
							width : 600,
							buttons : {
								"Fermer" : function() {
									$(this).dialog("close");
								},
								"Accéder à l'espace élève" : function() {
									location.href = './elevePage';
								}
							}
						});
				}
				else if(data.resultat == false){
					var message ="Désolé vous n'avez pas assez de crédit."
					$("#erreur").text(message);
					$("#erreur").dialog({
						width : 600,
						buttons : {
							"Fermer" : function() {
								$(this).dialog("close");
							},
							"Acheter des credits" : function() {
								location.href = './panier.jsp';
							}
						}
					});
				}
				
			}

		})
	});
</script>


