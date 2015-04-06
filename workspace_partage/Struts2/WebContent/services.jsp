<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html lang="fr">
<head>
<title>Services</title>
<meta charset="utf-8">
<s:include value="cssjs.jsp"></s:include>
<script src="js/jquery-ui.js"></script>
<%--<link href="css/normalize.css" rel="stylesheet" type="text/css"/>
<link href="css/datepicker.css" rel="stylesheet" type="text/css"/>	
 <script src="js/rechercheAjax.js"></script> --%>

<script src="js/autocompleteMatiere.js"></script>

<script>
	$(function() {

		
		$.datepicker.setDefaults({
			altField: "#datepicker",
			closeText: 'Fermer',
			prevText: 'Pr�c�dent',
			nextText: 'Suivant',
			currentText: 'Aujourd\'hui',
			monthNames: ['Janvier', 'F�vrier', 'Mars', 'Avril', 'Mai', 'Juin', 'Juillet', 'Ao�t', 'Septembre', 'Octobre', 'Novembre', 'D�cembre'],
			monthNamesShort: ['Janv.', 'F�vr.', 'Mars', 'Avril', 'Mai', 'Juin', 'Juil.', 'Ao�t', 'Sept.', 'Oct.', 'Nov.', 'D�c.'],
			dayNames: ['Dimanche', 'Lundi', 'Mardi', 'Mercredi', 'Jeudi', 'Vendredi', 'Samedi'],
			dayNamesShort: ['Dim.', 'Lun.', 'Mar.', 'Mer.', 'Jeu.', 'Ven.', 'Sam.'],
			dayNamesMin: ['D', 'L', 'M', 'M', 'J', 'V', 'S'],
			weekHeader: 'Sem.',
			dateFormat: 'yy-mm-dd',
			showOn : "both",
			buttonImageOnly : true,
			buttonImage : "images/calendar.png",
			buttonText : "Choisissez une date",
			defaultDate : "+1w",
			changeMonth : true,
			numberOfMonths : 1,
			dateFormat : "dd/mm/yy",

		});

		$("#from").datepicker({
			onClose : function(selectedDate) {
				$("#to").datepicker("option", "minDate", selectedDate);
			}
		});
		$("#to").datepicker({
			onClose : function(selectedDate) {
				$("#from").datepicker("option", "maxDate", selectedDate);
			}
		});
				
		
		$( "#from,#to" ).change(function() {			  
			  chercher2("tridate");
			});
		
	});
	
	


	function chercher2(tri) {

		var stringmatiere = "";

		var datedebut = "";
		
		var datefin ="";

		if ($("#from").val().length > 0) {
			datedebut = $("#from").val();
		}
		if ($("#to").val().length > 0) {
			datefin = $("#to").val();
		}

		$(".checkstatutprof:checked").each(function() {
			var id = $(this).attr('id');
			stringstatut = id + "#" + stringstatut;
		});

		$("div#filtresMatieres").children("p").children("span").each(
				function() {
					//var id = $(this).attr('id');

					var id = $(this).text();
					stringmatiere = id + "#" + stringmatiere;

				});

		if ($("#search").val()) {

			term = $("#search").val();

		}


		$.ajax({
			url : "searchCours",
			data : {
				stringmatiere : stringmatiere,
				datedebut : datedebut,
				datefin : datefin,
				tri : tri

			}
		}).done(function(result) {
			$("#resultprof").html(result);
		});

	}

	$("#search").ready(function() {
		// si la div matiere change
		$("#filtresMatieres").change(function() {
			chercher2("tridate");
		});

		//Des que l'input est modifier on lance une recherche
		$("#search").on("input", function(e) {
			if ($(this).data("lastval") != $(this).val()) {
				chercher2("tridate");
			}
		});
	});
	


	function testmapoule() {

		$('.col7').hover(function() {
			//alert($('.idb0').val());
			if (document.getElementById(this.id).innerHTML == "9,99 euros") {
				document.getElementById(this.id).innerHTML = "R�server";
			} else {
				document.getElementById(this.id).innerHTML = "9,99 euros";
			}
		})

		$('.col7').click(function() {
			//alert("coucou");
			var bntid = this.id;
			if (bntid.length == 5) {
				if (bntid.length == 6) {
					var id = bntid[3] + bntid[4] + bntid[5];
				} else {
					var id = bntid[3] + bntid[4];
				}
			} else {
				var id = bntid[3];
			}
			// alert("Votre Cours est bien r�serv�");
			var ligne = document.getElementById("idli" + id).innerHTML;

			alert(ligne);
		})

	}
</script>


</head>
<body>
	<div class="main">
		<!--==============================header=================================-->


		<s:include value="wrapheader.jsp"></s:include>
		<!--==============================content================================-->
		<section id="content">
			<div class="container_12">
				<div class="grid_12">
					<div class="wrap pad-3">

						<div>


<!-- 							<div class="search-container"> -->
<!-- 								<div class="ui-widget"> -->
<%-- 									<s:textfield id="searchMatiere" class="txtfield" placeholder="Fran�ais" name="searchMatiere" /> --%>
<!-- 								</div> -->
<!-- 							</div> -->


							<p>
								<a href="nous-contacter" class="link"><strong>Si vous ne trouvez pas votre bonheur, n'h�sitez pas a nous le faire savoir.</strong></a>
							</p>
							<br>
							<div id="date" style="width:400px;display:inline-block;" class="filtrespopup">
								<label for="from">Entre</label>
								<input class="txtfield" type="text" id="from" name="from">
								<label for="to">et</label>
								<input class="txtfield" type="text" id="to" name="to">

							</div>

							<div id="cherche_matiere" class="filtrespopup">

								<label>Mati�res :</label>

								<div class="search-container">
									<div class="ui-widget">
										<s:textfield id="searchMatiere" class="txtfield" placeholder="Fran�ais" name="searchMatiere" />
									</div>
								</div>
								<div id="filtresMatieres"></div>

							</div>
							
							<div id="resultprof"></div>
							
							
<!-- 							<ul id="cours" class="list-1 p4 left-1"> -->
<%-- 								<li><a id=col1 class="acol" href="#"><strong>Nom Et Pr�nom Du Professeur</strong></a> <a id=col2 class="acol" href="#"><strong>Mati�re</strong></a> --%>
<%-- 									<a id=col3 class="acol" href="#"><strong>Plage Horaire</strong></a> <a id=col4 class="acol" href="#"><strong>Date</strong></a> <a id=col5 --%>
<%-- 									class="acol" href="#"><strong>Avis</strong></a></li> --%>
<!-- 							</ul> -->
							<!--  <a href="#" class="button">R�server</a> -->
						</div>
					</div>
				</div>
				<div class="clear"></div>
			</div>
		
		</section>
	</div>
	<!--==============================footer=================================-->
	<s:include value="footer.jsp"></s:include>




</body>
</html>