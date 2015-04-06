$(document).ready(function() {
	
	
		
		
//		$( "#searchEmail" ).mouseover(function() {
			
			var $searchBox = $('#searchEmail');
			
			
			// l'id de la barre a autocomplete
			$searchBox.autocomplete({
				source : function(request, response) {
					$.ajax({
						// l'action lancé par la fonction ajax, voir struts.xml
						url : "searchEmail",
						type : "POST",
						data : {
							// les données passé en parametres
							term : request.term
						},
//						// le type de reponse
						dataType : "json",
						success : function(jsonResponse) {
							// la reponse
							response(jsonResponse.listeAjaxEmail);
						}
					});
				}
			});
			  
//			});	

	

});
