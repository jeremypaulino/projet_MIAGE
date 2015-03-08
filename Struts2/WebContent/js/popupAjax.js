$(document).ready(function() {

	
	
	$( "#popupProf" ).click(function() {
//		$( "#resultat" ).html("sniiiiiiif");
		$( "#resultat" ).load( "listeprofesseur.jsp" );
		$( "#resultat" ).dialog({
			width: 700
		});
		});
	
	
	$( "#popupEleve" ).click(function() {
		$( "#resultat" ).load( "listeeleve.jsp" );
		$( "#resultat" ).dialog({
			width: 700
		});
		});
});