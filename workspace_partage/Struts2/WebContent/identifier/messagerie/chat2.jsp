<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">

<link href="css/bootstrap.css" rel="stylesheet">


<link href="css/font-awesome.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet" type="text/css">

<link href="less/style.less" rel="stylesheet" title="lessCss" id="lessCss">


<link href="css/custom.css" rel="stylesheet">

<link rel="shortcut icon" href="images/favicon.ico">

<!-- 	HTML5 shim, for IE6-8 support of HTML5 elements. All other JS at the end of file. -->
<!--       [if lt IE 9]>
      <script src="js/html5shiv.js"></script>
<!--       <![endif] -->

	
	<script src="js/jquery-1.10.2.min.js"></script>
	<script src="js/jquery-ui-1.10.3.custom.min.js"></script>
	<script src="js/less-1.5.0.min.js"></script>
	<script src="js/jquery.ui.touch-punch.min.js"></script>



</head>
<body>




	<div class="site-holder">


		
		<div class="box-holder">



						<div class="test"></div>

			
			<div class="row chat-box">
				<div class="col-md-2">
					<div class="panel panel-cascade contacts-box">
						<div class="panel-heading">
							<h5 class="panel-title ">
								<i class="fa fa-user"></i> Contacts
							</h5>
						</div>
						<div class="panel-body nopadding">
						<div class="test"></div>
							<ul class="list-group contact" id="mescontacts">
								<li>
								<a id="Name" class="list-group-item"> <img src="images/profiles/one.png" class="chat-user-avatar" alt="" >Mathieu Sarlangue<i class="fa fa-circle"></i>
								</a> 
								</li>
								<li>
								<a class="list-group-item contact"> <img src="images/profiles/two.png" class="chat-user-avatar" alt=""> Sabrina Cheurf <i class="fa fa-circle online"></i>
								</a>
								</li>
								<li>
								 
								<a class="list-group-item contact"> <img src="images/profiles/three.png" class="chat-user-avatar" alt=""> Jérémy Paulino <i	class="fa fa-circle busy"></i>
								</a> 
								</li>
								<li>
								<a class="list-group-item"> <img src="images/profiles/four.png" class="chat-user-avatar" alt=""> Christopher Boudier <i class="fa fa-circle offline"></i>
								</a>
								</li>
				
							<li>
								<a class="list-group-item"> <img src="images/profiles/four.png" class="chat-user-avatar" alt=""> Christopher Boudier <i class="fa fa-circle offline"></i>
								</a>
								</li>
								
								<!-- ajouter contact -->
							</ul>
						</div>
					</div>

				</div>
				<div class="col-md-10">
					<div class="panel panel-cascade recipient-box">
						<div class="panel-heading">
							<h3 class="panel-title ">
								<span class="recipient"> <img src="images/profile50x50.png" class="chat-user-avatar" alt=""> Philippe Declercq <i
									class="fa fa-circle"></i>
								</span>
								<div class="btn-group pull-right">
									<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
										Options <span class="caret"></span>
									</button>
									<ul class="dropdown-menu options" role="menu">
										<li><a href="#">Envoyer Message Privé</a></li>
										<li><a href="#">Envoyer Message</a></li>
										<li><a href="#">Ajouter A Un Groupe</a></li>
										<li class="divider"></li>
										<li><a href="#">Bloquer Cet Utilisateur</a></li>
									</ul>
								</div>
							</h3>
						</div>

						<div class="panel-body nopadding">
							<div class="list-group conversation"></div>
							<div class="input-group">
								<input type="text" class="form-control write-message" id="write-message" placeholder="Entrer votre message ici"> <span
									class="input-group-btn">
									<button class="btn text-white bg-primary" type="button" id="send-message">Envoyer</button>
								</span>

							</div>
							<!-- /input-group -->

						</div>
					</div>
				</div>
			</div>

		</div>
		<!-- /.content -->

		<!-- .right-sidebar -->
		<div class="right-sidebar right-sidebar-hidden">
			<div class="right-sidebar-holder">

				<!-- @Demo part only The part from here can be removed till end of the @demo  -->
				<a href="screens.html" class="btn btn-danger btn-block">Logout </a>


				<h4 class="page-header text-primary text-center">
					Theme Options <a href="#" class="theme-panel-close text-primary pull-right"><strong><i class="fa fa-times"></i></strong></a>
				</h4>

				<ul class="list-group theme-options">
					<li class="list-group-item" href="#">
						<div class="checkbox">
							<label> <input type="checkbox" id="fixedNavbar" value=""> Fixed Top Navbar
							</label>
						</div>
						<div class="checkbox">
							<label> <input type="checkbox" id="fixedNavbarBottom" value=""> Fixed Bottom Navbar
							</label>
						</div>
						<div class="checkbox">
							<label> <input type="checkbox" id="boxed" value=""> Boxed Version
							</label>
						</div>

						<div class="form-group backgroundImage hidden">
							<label class="control-label">Paste Image Url and then hit enter</label> <input type="text" class="form-control" id="backgroundImageUrl" />
						</div> <!-- 
				<div class="checkbox">
					<label>
						<input type="checkbox" id="responsive" value=""> Disable Responsiveness
					</label>
				</div> 
			-->
					</li>
					<li class="list-group-item" href="#">Predefined Themes
						<ul class="list-inline predefined-themes">
							<li><a class="badge" style="background-color: #54b5df" data-color-primary="#54b5df" data-color-secondary="#2f4051"
								data-color-link="#FFFFFF"> &nbsp; </a></li>
							<li><a class="badge" style="background-color: #d85f5c" data-color-primary="#d85f5c" data-color-secondary="#f0f0f0"
								data-color-link="#474747"> &nbsp; </a></li>
							<li><a class="badge" style="background-color: #3d4a5d" data-color-primary="#3d4a5d" data-color-secondary="#edf0f1"
								data-color-link="#777e88"> &nbsp; </a></li>
							<li><a class="badge" style="background-color: #A0B448" data-color-primary="#A0B448" data-color-secondary="#485257"
								data-color-link="#AFB5AA"> &nbsp; </a></li>
							<li><a class="badge" style="background-color: #2FA2D1" data-color-primary="#2FA2D1" data-color-secondary="#484D51"
								data-color-link="#A5B1B7"> &nbsp; </a></li>
							<li><a class="badge" style="background-color: #2f343b" data-color-primary="#2f343b" data-color-secondary="#525a65"
								data-color-link="#FFFFFF"> &nbsp; </a></li>
						</ul>
					</li>
					<li class="list-group-item" href="#">Change Primary Color
						<div class="input-group colorpicker-component bscp" data-color="#54728c" data-color-format="hex" id="colr">
							<span class="input-group-addon"><i style="background-color: #54728c"></i></span> <input type="text" value="#54728c" id="primaryColor" readonly
								class="form-control" />

						</div>
					</li>
					<li class="list-group-item" href="#">Change LeftSidebar Background
						<div class="input-group colorpicker-component bscp" data-color="#f9f9f9" data-color-format="hex" id="Scolr">
							<span class="input-group-addon"><i style="background-color: #f9f9f9"></i></span> <input type="text" value="#f9f9f9" id="secondaryColor"
								readonly class="form-control" />

						</div>
					</li>
					<li class="list-group-item" href="#">Change Leftsidebar Link Color
						<div class="input-group colorpicker-component bscp" data-color="#54728c" data-color-format="hex" id="Lcolr">
							<span class="input-group-addon"><i style="background-color: #54728c"></i></span> <input type="text" value="#54728c" id="linkColor" readonly
								class="form-control" />

						</div>
					</li>
					<li class="list-group-item" href="#">Change RightSidebar Background
						<div class="input-group colorpicker-component bscp" data-color="#f9f9f9" data-color-format="hex" id="Rcolr">
							<span class="input-group-addon"><i style="background-color: #f9f9f9"></i></span> <input type="text" value="#f9f9f9" id="rightsidebarColor"
								readonly class="form-control" />

						</div>
					</li>
					</li>
				</ul>
			
				<div id="bic_calendar_right" class="bg-white"></div>

				<h4 class="page-header text-primary">Current Projects</h4>

				<div class="list-group projects">
					<a class="list-group-item" href="#">
						<p>
							Archon <span class="pull-right label bg-success">90%</span>
						</p>
						<div class="progress progress-mini">
							<div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 90%;">
								<span class="sr-only">90% Complete</span>
							</div>
						</div>

					</a> <a class="list-group-item" href="#">
						<p>
							Banshee <span class="pull-right label bg-warning">40%</span>
						</p>
						<div class="progress progress-mini">
							<div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 40%;">
								<span class="sr-only">40% Complete</span>
							</div>
						</div>

					</a> <a class="list-group-item" href="#">
						<p>
							Cascade <span class="pull-right label bg-primary">40%</span>
						</p>
						<div class="progress progress-mini">
							<div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 75%;">
								<span class="sr-only">75% Complete</span>
							</div>
						</div>
					</a>
				</div>
				<h4 class="page-header">Contacts</h4>
				<div class="list-group contact-list">
					<a class="list-group-item"> <img src="images/profiles/one.png" class="chat-user-avatar" alt=""> Mathieu Sarlangue <i
						class="fa fa-circle"></i>
					</a> <a class="list-group-item contact"> <img src="images/profiles/two.png" class="chat-user-avatar" alt=""> Sabrina Cheurf <i
						class="fa fa-circle online"></i>
					</a> <a class="list-group-item contact"> <img src="images/profiles/three.png" class="chat-user-avatar" alt=""> Jérémy Paulino <i
						class="fa fa-circle busy"></i>
					</a> <a class="list-group-item"> <img src="images/profiles/four.png" class="chat-user-avatar" alt=""> Christopher Boudier <i
						class="fa fa-circle offline"></i>
					</a>
				</div>
			</div>


		</div>
		
	</div>
	

	
	<script src="js/bootstrap.min.js"></script>
	<script src="js/bootstrap-select.js"></script>
	<script src="js/bootstrap-switch.js"></script>
	<script src="js/jquery.tagsinput.js"></script>
	<script src="js/jquery.placeholder.js"></script>
	<script src="js/bootstrap-typeahead.js"></script>
	<script src="js/application.js"></script>
	<script src="js/moment.min.js"></script>
	<script src="js/jquery.dataTables.min.js"></script>
	<script src="js/jquery.sortable.js"></script>
	<script type="text/javascript" src="js/jquery.gritter.js"></script>
	<script src="js/jquery.nicescroll.min.js"></script>
	<script src="js/skylo.js"></script>
	<script src="js/prettify.min.js"></script>
	<script src="js/jquery.noty.js"></script>
	<script src="js/bic_calendar.js"></script>
	<script src="js/jquery.accordion.js"></script>
	<script src="js/theme-options.js"></script>

	<script src="js/bootstrap-progressbar.js"></script>
	<script src="js/bootstrap-progressbar-custom.js"></script>
	<script src="js/bootstrap-colorpicker.min.js"></script>
	<script src="js/bootstrap-colorpicker-custom.js"></script>


<script>

$('document').ready(function(){
	
	
	
	
	

	
	var email_sess="nouveau@test.fr";
		$.ajax({
			url : "contactupdate",
			data : {
				email_sess : email_sess
			},
			dataType : "json",
			success : function(data) {	
		
				
				var string="";
				for( var i = 0 ; i<data.listeContact.length ; i++){			
					string = string + '<li><a class="list-group-item"> <img src="images/profiles/four.png" class="chat-user-avatar" alt=""> '+data.listeContact[i]+' '+ data.listeContact[i+1]+'<i class="fa fa-circle offline"></i></a></li>';
					
					i++;
					i++;
					
					
				}
				lienclicable(string);
				

			}
		})

	
		


		
		function lienclicable(string){
			
			$("#mescontacts").append(string);

			
			
		}
	
			
		
		
	
		setTimeout(function () {

		
		
	$('.contact a').click(function(){
		$('.contact a').removeClass('active');
		$(this).addClass('active');

		var vj=$(this).html();
		//alert(vj);
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
		var Email_envoy= "<s:property value='#session.email' />"
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
			var Email_envoy= "<s:property value='#session.email' />"
				var Email_dest="eleve@test.fr"
			$.ajax({
				url : "envoimessage",
				data : {

					Email_envoy : Email_envoy,
					Email_dest : Email_dest,
					Text : vj

				},
				error : function(resultat, statut, erreur) {	
				
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

</script>












	<!--<script src="js/chat.js"></script>-->
	<script src="js/core.js"></script>

		<!--<script src="js/parametre.js" type="text/javascript"></script>
	-->
	

</body>
</html>