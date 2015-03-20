<%@ taglib uri="/struts-tags" prefix="s"%>
<html>
<header>

	<h1>
		<a href="index.jsp"><img src="images/logo.png" alt=""></a>
	</h1>
	<section class="header-login">
		<ul>


			<li><a href="#loginmodal" id="modaltrigger">S'identifier</a></li>
			<li><a href="inscription">S'inscrire</a></li>





			<div id="loginmodal" style="display: none;">
				<h1 class="center">Entrez Vos Identifiants</h1>

				<s:form id="loginform" name="loginform" action="login.action">
					<p>
						<s:textfield label="Email" type="text" name="email" id="username" class="txtfield" tabindex="1"></s:textfield>
						<s:password label="Mot de Passe" type="password" name="mdp" id="password" class="txtfield" tabindex="2"></s:password>
					</p>

					<p class="center">
						<s:submit name="loginbtn" id="loginbtn" class="flatbtn-blu hidemodal" value="Se Connecter" tabindex="3"></s:submit>
					</p>
					<p>
					  <input type="checkbox" value="remember-me" id="remember_me"> Se souvenir de moi	
					</p>
				</s:form>
			</div>
		</ul>
	</section>

	<div class="clear"></div>
	<s:include value="menuhorizontal.jsp"></s:include>
</header>
<script>
	$(function() {

		if (localStorage.chkbx && localStorage.chkbx != '') {
			$('#remember_me').attr('checked', 'checked');
			$('#username').val(localStorage.usrname);
			$('#password').val(localStorage.pass);
		} else {
			$('#remember_me').removeAttr('checked');
			$('#username').val('');
			$('#password').val('');
		}

		$('#remember_me').click(function() {

			if ($('#remember_me').is(':checked')) {
				//on sauvegarde le username ert mdp
				localStorage.usrname = $('#username').val();
				localStorage.pass = $('#password').val();
				localStorage.chkbx = $('#remember_me').val();
			} else {
				localStorage.usrname = '';
				localStorage.pass = '';
				localStorage.chkbx = '';
			}
		});
	});
</script>
</html>
