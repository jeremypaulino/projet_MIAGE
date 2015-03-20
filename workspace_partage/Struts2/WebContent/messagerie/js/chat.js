$('document').ready(function(){
	
	
	
	
	

	
	var email_sess="nouveau@test.fr";
		$.ajax({
			url : "contactupdate",
			data : {
				email_sess : email_sess
			},
			dataType : "json",
			success : function(data) {	
		
				var  msg="gros con ";
				var string="";
				for( var i = 0 ; i<data.listeContact.length ; i++){			
					string = string + '<li><a class="list-group-item"> <img src="images/profiles/four.png" class="chat-user-avatar" alt=""> '+data.listeContact[i]+' '+ data.listeContact[i+1]+'<i class="fa fa-circle offline"></i></a></li>';
					i++;
					//$("#test").append("<p>"+data.listeContact[i] +"</p>");
				}
				lienclicable(string);

			}
		})

	
		//$("#mescontacts").append('<li><a class="list-group-item"> <img src="images/profiles/four.png" class="chat-user-avatar" alt=""> mat la bitch <i class="fa fa-circle offline"></i></a></li>');
					//	send_message('images/profile50x50.png','Philippe Declercq','WESH WESH MA GUEULE ');



		
		function lienclicable(string){
			
			$("#mescontacts").append(string);

			
			
		}
	
//			var nb = $("#mescontacts").children("li").length;
//		
//		alert(nb);
	
		
		
		
	
		setTimeout(function () {

		
		
	$('.contact a').click(function(){
		$('.contact a').removeClass('active');
		$(this).addClass('active');

		var vj=$(this).html();
		$('.recipient').html(vj);
		$('.conversation').html('');
		$('.write-message').focus();

		
		setTimeout(function() {
                  send_message('images/profile50x50.png','Philippe Declercq','Avez-vous étudié les documents postés hier ');
             }, 1500);

	});
	
	



	$('#send-message').click(function(){
		var vj=$('.write-message').val();
		send_message('images/profiles/one.png','Jeremy Paulino',vj);
		var Email_envoy= "nouveau@test.fr"
		var Email_dest="eleve@test.fr"
				
		//var email_e="<s:property value='#session.id' />";
		//alert("coucou");
		$.ajax({
			url : "envoimessage",
			data : {

				Email_envoy : Email_envoy,
				Email_dest : Email_dest,
				Text : vj

			},
			error : function(resultat, statut, erreur) {	
				//la reponse
			//alert("ca marche!!");
			}
		}).done(function(result) {
		
		});
		
	});

	document.getElementById('write-message').onkeypress = function(e) 
	{
		var event = e || window.event;
		var charCode = event.which || event.keyCode;

		if ( charCode == '13' ) 
		{
			var vj=$('.write-message').val();
			send_message('images/profiles/one.png','Jérémy Paulino',vj);
			var Email_envoy= "nouveau@test.fr"
				var Email_dest="eleve@test.fr"
			$.ajax({
				url : "envoimessage",
				data : {

					Email_envoy : Email_envoy,
					Email_dest : Email_dest,
					Text : vj

				},
				error : function(resultat, statut, erreur) {	
					//la reponse
				//alert("ca marche!!");
				}
			}).done(function(result) {
			
			});
	
		}
	}


	function send_message(image,username,message)
	{
		var d = new Date();
		var timeNow=d.getHours()+':'+d.getMinutes()+':'+d.getSeconds();
		
		var container = $('.conversation');
		container.append('<a class="list-group-item"><img src="'+image+'" class="chat-user-avatar" alt="" /><span class="username" >'+username+'<span class="time">'+timeNow+'</span> </span><p>'+message+'</p></a>');
		container.animate({ scrollTop: container.height()+900 },1000);
		$('.write-message').val('').focus();

	}
		},500);
	
});