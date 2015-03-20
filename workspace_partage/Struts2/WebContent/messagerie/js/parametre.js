

$(document).ready(function(event,response) {
	var email_sess2 = '<s:property />';
	
	
	var email_sess="nouveau@test.fr";

	
		$.ajax({
			url : "contactupdate",
			data : {

				email_sess : email_sess

			},
			dataType : "json",
			success : function(data) {	
		
				var  msg="gros con ";
				for( var i = 0 ; i<data.listeContact.length ; i++){
					
					
					$("#mescontacts").append('<li><a class="list-group-item"> <img src="images/profiles/four.png" class="chat-user-avatar" alt=""> '+data.listeContact[i]+" "+ data.listeContact[i+1]+' <i class="fa fa-circle offline"></i></a></li>');
					i++;
					//$("#test").append("<p>"+data.listeContact[i] +"</p>");
					
				
					
				}
				
				


			    
				
			}
			
		})
		
		
	});