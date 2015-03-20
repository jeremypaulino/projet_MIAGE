

$(document).ready(function() {
	
	//l'id de la barre a autocomplete 
	$("#searchEmail").autocomplete({	
	source : function(request, response) {
		alert("coucou2");
		$.ajax({
			//l'action lancé par la fonction ajax, voir struts.xml

			url : "searchEmail",
			type : "POST",
			data : {
				//les données passé en parametres
				term : request.term
			},
			//le type de reponse
			dataType : "json",
			success : function(jsonResponse) {	
				//la reponse
				response(jsonResponse.listeAjaxEmail);
			}
			
		});
		},
		minLength: 1,
		select: function(event, ui) { 
			 if(ui.item){
			        $('div#filtresEmail:not(:contains('+ui.item.value+'))').each(function () {
			        	var nb = $('#filtresEmail').children("p").length;
			        	if(nb<5){
			        	
						 $("#filtresEmail").append("<p><a class='supprimer'>X</a> <span>"+ui.item.value+"</span></p>");
						 
			        	}
						 
						 
			        });
			 }    
		}
	});
	
	$("#filtresEmail").on('click', '.supprimer', function(){
        $(this).closest('p').remove();        
    });

});


