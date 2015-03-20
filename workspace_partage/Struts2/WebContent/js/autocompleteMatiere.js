//VERSION QUI MARCHE
//
//$(document).ready(function() {
//	
//		$("#searchMatiere").autocomplete({
//		source : function(request, response) {
//			$.ajax({
//				url : "searchMatiere",
//				type : "POST",
//				data : {
//					term : request.term
//				},
//				dataType : "json",
//				success : function(jsonResponse) {					
//					response(jsonResponse.listeAjaxMatiere);
//				}
//			});
//			}
//		});
//
//});

//MARCHE A MOITIE
//$(document).ready(function() {
//	
//		$("#searchMatiere").autocomplete({
//		source : function(request, response) {
//			$.ajax({
//				url : "searchMatiere",
//				type : "POST",
//				data : {
//					term : request.term
//				},
//				dataType : "json",
//				success : function(jsonResponse) {					
//					response(jsonResponse.listeAjaxMatiere);
//				}
//				
//			});
//			}
//		});
//		
//		$("#searchMatiere").autocomplete({
//		    source: ['Chimie', 'bye', 'foo', 'bar'],
//		    change: function(event, ui) {
//		        if (ui.item) {
//		            alert(ui.item.value);
//		            
//		            alert("dans la liste");
//
//		        } else {
//		        	alert("pas dans la liste");
//		        }
//		    }
//		});
//
//});

$(document).ready(function() {
	
	//l'id de la barre a autocomplete 
	$("#searchMatiere").autocomplete({	
	source : function(request, response) {
		$.ajax({
			//l'action lancé par la fonction ajax, voir struts.xml

			url : "searchMatiere",
			type : "POST",
			data : {
				//les données passé en parametres
				term : request.term
			},
			//le type de reponse
			dataType : "json",
			success : function(jsonResponse) {	
				//la reponse
				response(jsonResponse.listeAjaxMatiere);
			}
			
		});
		},
		minLength: 1,
		select: function(event, ui) { 
			 if(ui.item){
			        $('div#filtresMatieres:not(:contains('+ui.item.value+'))').each(function () {
			        	var nb = $('#filtresMatieres').children("p").length;
			        	if(nb<5){
			        	
						 $("#filtresMatieres").append("<p><a class='supprimer'>X</a> <span>"+ui.item.value+"</span></p>");
						 $("#filtresMatieres").change();// pour signaler que la div a changer pour chercherprof JS
			        	}
						 
						 
			        });
			 }    
		}
	});
	
	$("#filtresMatieres").on('click', '.supprimer', function(){
		
		$("#filtresMatieres").change();// pour signaler que la div a changer pour chercherprof JS
        $(this).closest('p').remove();        
    });
	
	

});


