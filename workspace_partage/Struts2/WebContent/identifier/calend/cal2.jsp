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

<script>


$(document).ready(function() {



	
	$("#resultat2").hide();
	$(".eventsCalendar-day").click(function(event) {
		
		var idjour = $(event.target).parent().attr("id").replace("dayList_","");
 		var idmois;
 		
 		var idmoisanne = $(".monthTitle:not(#titre)").text();
		
//  		split(" ")[1];         <-------- pour recuperer la partie apres l'espace // [0] pour apres l'espace


		$("#date").text(idjour + " "+ idmoisanne);
		
		alert("vous avez clicker sur " + idjour + " "+ idmoisanne+ " " );
		
		$("#resultat2").show();

	});
	

	
	$(".checkbox").click(function(event) {
		if($(".checkbox").is(":checked")){
			var idjour = $(event.target).attr("id");
			alert(idjour);		
		}
		
		
	});
	
});
</script>


</html>