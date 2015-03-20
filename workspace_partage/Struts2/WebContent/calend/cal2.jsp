<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags"%>


<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />

	<!-- Set the viewport width to device width for mobile -->
	<meta name="viewport" content="width=device-width" />

	<title>jQuery Event Calendar Demo Page</title>
	<link rel="shortcut icon" href="images/favicon.ico" />

	<!-- Grid CSS File (only needed for demo page) -->
	<link rel="stylesheet" href="css/paragridma.css">

	<!-- Core CSS File. The CSS code needed to make eventCalendar works -->
	<link rel="stylesheet" href="css/eventCalendar.css">

	<!-- Theme CSS file: it makes eventCalendar nicer -->
	<link rel="stylesheet" href="css/eventCalendar_theme_responsive.css">

	<!--<script src="js/jquery.js" type="text/javascript"></script>-->
	<script src="js/test.js" type="text/javascript"></script>

</head>

<body id="responsiveDemo">


	
	
	<div class="container">
		<div class="row">
			<div class="g6" style="width:400px;">
				
				<div id="eventCalendarHumanDate2"></div>
				<script>
				
					$(document).ready(
							function() {
						$("#eventCalendarHumanDate2").eventCalendar({
							eventsjson: './event.humanDate.json.php2',
							jsonDateFormat: 'human2'  // 'YYYY-MM-DD HH:MM:SS'
						});

					});
					
				</script>
				
			
				

		  </div>
		</div>
		
	</div>

	<div id="resultat2" class="eventCalendar-wrap">
		<div class="eventsCalendar-currentTitle " style="margin-top: 10px;">
			<div class="monthTitle" id="titre">Vos disponibilit&eacute;s </div>
				
		</div>
		<div id="date"></div>
		<table>
			<tr>
				<td><input type="checkbox" class="checkbox" id="check" name="test1"> <label
					for="check" class="loadcheck" id="loadcheck"> <span
						class="entypo-cancel">&#10008;</span> <span class="load"></span> <span
						class="load"></span> <span class="load"></span> <span class="load"></span>
						<span class="load"></span> <span class="entypo-check">&#10004;</span>
				</label></td>
				<td>8h00 - 9h00</td>
			</tr>
			<tr>
				<td><input type="checkbox"class="checkbox" id="check1"> <label
					for="check1" class="loadcheck" id="loadcheck"> <span
						class="entypo-cancel">&#10008;</span> <span class="load"></span> <span
						class="load"></span> <span class="load"></span> <span class="load"></span>
						<span class="load"></span> <span class="entypo-check">&#10004;</span>
				</label></td>
				<td>9h00 - 10h00</td>
			</tr>
			<tr>
				<td><input type="checkbox" class="checkbox" id="check2"> <label
					for="check2" class="loadcheck" id="loadcheck"> <span
						class="entypo-cancel">&#10008;</span> <span class="load"></span> <span
						class="load"></span> <span class="load"></span> <span class="load"></span>
						<span class="load"></span> <span class="entypo-check">&#10004;</span>
				</label></td>
				<td>10h00 - 11h00</td>
			</tr>
			<tr>
				<td><input type="checkbox" class="checkbox" id="check3"> <label
					for="check3" class="loadcheck" id="loadcheck"> <span
						class="entypo-cancel">&#10008;</span> <span class="load"></span> <span
						class="load"></span> <span class="load"></span> <span class="load"></span>
						<span class="load"></span> <span class="entypo-check">&#10004;</span>
				</label></td>
				<td>11h00 - 12h00</td>
			</tr>
			<tr>
				<td><input type="checkbox" class="checkbox" id="check4"> <label
					for="check4" class="loadcheck" id="loadcheck"> <span
						class="entypo-cancel">&#10008;</span> <span class="load"></span> <span
						class="load"></span> <span class="load"></span> <span class="load"></span>
						<span class="load"></span> <span class="entypo-check">&#10004;</span>
				</label></td>
				<td>12h00 - 13h00</td>
			</tr>
			<tr>
				<td><input type="checkbox" class="checkbox" id="check5"> <label
					for="check5" class="loadcheck" id="loadcheck"> <span
						class="entypo-cancel">&#10008;</span> <span class="load"></span> <span
						class="load"></span> <span class="load"></span> <span class="load"></span>
						<span class="load"></span> <span class="entypo-check">&#10004;</span>
				</label></td>
				<td>13h00 - 14h00</td>
			</tr>
			<tr>
				<td><input type="checkbox" class="checkbox" id="check6"> <label
					for="check6" class="loadcheck" id="loadcheck"> <span
						class="entypo-cancel">&#10008;</span> <span class="load"></span> <span
						class="load"></span> <span class="load"></span> <span class="load"></span>
						<span class="load"></span> <span class="entypo-check">&#10004;</span>
				</label></td>
				<td>14h00 - 15h00</td>
			</tr>
			<tr>
				<td><input type="checkbox" class="checkbox" id="check7"> <label
					for="check7" class="loadcheck" id="loadcheck"> <span
						class="entypo-cancel">&#10008;</span> <span class="load"></span> <span
						class="load"></span> <span class="load"></span> <span class="load"></span>
						<span class="load"></span> <span class="entypo-check">&#10004;</span>
				</label></td>
				<td>15h00 - 16h00</td>
			</tr>
			<tr>
				<td><input type="checkbox" class="checkbox" id="check8"> <label
					for="check8" class="loadcheck" id="loadcheck"> <span
						class="entypo-cancel">&#10008;</span> <span class="load"></span> <span
						class="load"></span> <span class="load"></span> <span class="load"></span>
						<span class="load"></span> <span class="entypo-check">&#10004;</span>
				</label></td>
				<td>16h00 - 17h00</td>
			</tr>
			<tr>
				<td><input type="checkbox" class="checkbox" id="check9"> <label
					for="check9" class="loadcheck" id="loadcheck"> <span
						class="entypo-cancel">&#10008;</span> <span class="load"></span> <span
						class="load"></span> <span class="load"></span> <span class="load"></span>
						<span class="load"></span> <span class="entypo-check">&#10004;</span>
				</label></td>
				<td>17h00 - 18h00</td>
			</tr>
			<tr>
				<td><input type="checkbox" class="checkbox" id="check10"> <label
					for="check10" class="loadcheck" id="loadcheck"> <span
						class="entypo-cancel">&#10008;</span> <span class="load"></span> <span
						class="load"></span> <span class="load"></span> <span class="load"></span>
						<span class="load"></span> <span class="entypo-check">&#10004;</span>
				</label></td>
				<td>18h00 - 19h00</td>
			</tr>
			<tr>
				<td><input type="checkbox" class="checkbox" id="check11"> <label
					for="check11" class="loadcheck" id="loadcheck"> <span
						class="entypo-cancel">&#10008;</span> <span class="load"></span> <span
						class="load"></span> <span class="load"></span> <span class="load"></span>
						<span class="load"></span> <span class="entypo-check">&#10004;</span>
				</label></td>
				<td>19h00 - 20h00</td>
			</tr>

		</table>
	</div>



</body>
<!--script src="js/jquery.timeago.js" type="text/javascript"></script-->
<!--<script src="js/jquery.eventCalendar.min.js" type="text/javascript"></script>-->
<script src="js/jquery.eventCalendar.js" type="text/javascript"></script>

<script type="text/javascript">
	$(document).ready(function() {
		refire();
	});

	function refire() {

		$(document).ready(
				function() {
					$("#resultat2").hide();

					$(".arrow").click(function() {
						refire();
					});

					var datefinale;
					var elmt = document.getElementById("dayList_21");
					elmt.style.backgroundColor = "#ff0";

					$(".eventsCalendar-day").click(
							
							function(event,response) {
								var elmt = document.getElementById("dayList_21");
								var idjour = $(event.target).parent()
										.attr("id").replace("dayList_", "");

								var idmoisanne = $(".monthTitle:not(#titre)")
										.text();
								var idmois = idmoisanne.split(" ")[0];
								var idannee = idmoisanne.split(" ")[1];
								var idnummois;

								if (idjour == 1) {
									idjour = "01";
								}

								if (idjour == 2) {
									idjour = "02";
								}

								if (idjour == 3) {
									idjour = "03";
								}

								if (idjour == 4) {
									idjour = "04";
								}

								if (idjour == 5) {
									idjour = "05";
								}

								if (idjour == 6) {
									idjour = "06";
								}

								if (idjour == 7) {
									idjour = "07";
								}

								if (idjour == 8) {
									idjour = "08";
								}

								if (idjour == 9) {
									idjour = "09";
								}

								if (idmois == "Janvier") {
									idnummois = "01";
								}

								if (idmois == "Fevrier") {
									idnummois = "02";
								}

								if (idmois == "Mars") {
									idnummois = "03";
								}

								if (idmois == "Avril") {
									idnummois = "04";
								}

								if (idmois == "Mai") {
									idnummois = "05";
								}

								if (idmois == "Juin") {
									idnummois = "06";
								}

								if (idmois == "Juillet") {
									idnummois = "07";
								}

								if (idmois == "Aout") {
									idnummois = "08";
								}

								if (idmois == "Septembre") {
									idnummois = "09";
								}

								if (idmois == "Octobre") {
									idnummois = "10";
								}

								if (idmois == "Novembre") {
									idnummois = "11";
								}

								if (idmois == "Decembre") {
									idnummois = "12";
								}

								$("#date").text(idjour + " " + idmoisanne);

								//alert("vous avez clicker sur " + idjour + " "+ idmoisanne+ " " );

								
								
								var idSession2 = "<s:property value='#session.id' />";
								
								datefinale = idannee + "-" + idnummois + "-"
										+ idjour;
								
								//alert(idSession2)
								

								$.ajax({
									url : "disponibilite3",
									data : {

										idProf : idSession2,
										date : datefinale

									},
									dataType : "json",
									success : function(data) {	
										//la reponse
										
										//alert("OKAY J SUIS AL MA GUEULE");
										for(var ii=0; ii<12;ii++){
											if(ii==0){
												$("#check").prop("checked", false);
											}else{
											$("#check"+ii).prop("checked", false);
											}
										}
										
										for(var i =0 ; i<data.list.length;i++){
										//	alert(data.list[i]);
											if(data.list[i]==1){
												$("#check").prop("checked", true);
											}else{
										$("#check"+(data.list[i]-1)).prop("checked", true);
											}
										}
										//alert(data.list[0]-1);
									//	alert(data.list[3]);
										
										//response(jsonResponse.listeAjaxMatiere);
									}
									
								})
								
								$("#resultat2").show();
							});

					$(".checkbox").click(function(event) {
						var idSession = "<s:property value='#session.id' />";

						if ($(this).is(":checked")) {
							//alert(idSession);

							var idjour = $(event.target).attr("id");
							var idjourint;
							//	alert(idjour);
							// alert(datefinale);
							if (idjour == "check") {
								idjourint = 1;
							}
							if (idjour == "check1") {
								idjourint = 2;
							}
							if (idjour == "check2") {
								idjourint = 3;
							}
							if (idjour == "check3") {
								idjourint = 4;
							}
							if (idjour == "check4") {
								idjourint = 5;
							}
							if (idjour == "check5") {
								idjourint = 6;
							}
							if (idjour == "check6") {
								idjourint = 7;
							}
							if (idjour == "check7") {
								idjourint = 8;
							}
							if (idjour == "check8") {
								idjourint = 9;
							}
							if (idjour == "check9") {
								idjourint = 10;
							}
							if (idjour == "check10") {
								idjourint = 11;
							}
							if (idjour == "check11") {
								idjourint = 12;
							}
								alert(datefinale);
							$.ajax({
								url : "disponibilite",
								data : {

									idProf : idSession,
									creneaux : idjourint,
									date : datefinale

								},
								error : function(resultat, statut, erreur) {	
									//la reponse
								//alert("ca marche!!");
								}
							}).done(function(result) {
							
								alert(result);
								$("#resultprof").html(result);
							});
							
							

						} else {
							//	alert("coucou");
							var idjour = $(event.target).attr("id");
							var idjourint;
							//	alert(idjour);
							//	 alert(datefinale);
							if (idjour == "check") {
								idjourint = 1;
							}
							if (idjour == "check1") {
								idjourint = 2;
							}
							if (idjour == "check2") {
								idjourint = 3;
							}
							if (idjour == "check3") {
								idjourint = 4;
							}
							if (idjour == "check4") {
								idjourint = 5;
							}
							if (idjour == "check5") {
								idjourint = 6;
							}
							if (idjour == "check6") {
								idjourint = 7;
							}
							if (idjour == "check7") {
								idjourint = 8;
							}
							if (idjour == "check8") {
								idjourint = 9;
							}
							if (idjour == "check9") {
								idjourint = 10;
							}
							if (idjour == "check10") {
								idjourint = 11;
							}
							if (idjour == "check11") {
								idjourint = 12;
							}
							$.ajax({
								url : "disponibilite2",
								data : {
									idProf : idSession,
									creneaux : idjourint,
									date : datefinale

								}
							}).done(function(result) {

								alert(result);

								$("#resultprof").html(result);
							});
						}
					});

				});
	}

	
</script>


</html>