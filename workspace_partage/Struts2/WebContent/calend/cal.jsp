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
			<div class="g6">
				
				<div id="eventCalendarHumanDate"></div>
				<script>
					$(document).ready(function() {
						$("#eventCalendarHumanDate").eventCalendar({
							//eventsjson: './event.humanDate.json.php',
							
							eventsjson: './events.json',
							jsonDateFormat: 'human'  // 'YYYY-MM-DD HH:MM:SS'
						});
					});
				</script>

		  </div>
		</div>
		
	</div>
	
</body>

<!--script src="js/jquery.timeago.js" type="text/javascript"></script-->
<!--<script src="js/jquery.eventCalendar.min.js" type="text/javascript"></script>-->
<script src="js/jquery.eventCalendar.js" type="text/javascript"></script>




</html>