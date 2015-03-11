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
	
	$("#searchMatiere").autocomplete({
		
	source : function(request, response) {
		$.ajax({
			url : "searchMatiere",
			type : "POST",
			data : {
				term : request.term
			},
			dataType : "json",
			success : function(jsonResponse) {					
				response(jsonResponse.listeAjaxMatiere);
			}
			
		});
		},
		minLength: 1,
		select: function(event, ui) { 
//			var matiere = "event : " + $(this).attr("id");
			 if(ui.item){
				 
				  $("#filtresMatieres").append("<p>"+ui.item.value+"</p>");

				 
		        }

		}
	});


});


