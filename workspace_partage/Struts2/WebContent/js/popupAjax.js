$(document).ready(function() {


	
	
	$( "#popupProf" ).click(function() {
		$( "#resultat" ).load( "resultat/listeprofesseur.jsp" );
		$( "#resultat" ).dialog({
			width: 850,show :'fold',hide:'fold'
		});
		});
	
	
	$( "#popupEleve" ).click(function() {
		$( "#resultat" ).load( "resultat/listeeleve.jsp" );
		$( "#resultat" ).dialog({
			width: 850,show :'fold',hide:'fold'
		});
		});
	
	$( "#popupStatEleve" ).click(function() {
		$( "#resultat" ).load( "resultat/stateleve.jsp" );
		$( "#resultat" ).dialog({
			width: 850,show :'fold',hide:'fold'
		});
		
		});
	


		
		

});

