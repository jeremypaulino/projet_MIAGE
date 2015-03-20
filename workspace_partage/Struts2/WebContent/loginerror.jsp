<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html lang="fr">
<meta charset="UTF-8">
<head>
	<s:include value="cssjs.jsp"></s:include>

</head>
<body>
	<div class="main">
		<!--==============================header=================================-->

				<s:include value="wrapheader.jsp"></s:include>


		<!--==============================content================================-->
		<section id="content">
			
			<div class="container_12">
				<div class="grid_12">
					
					<div class="wrap block-1 pad-1">
					<h2 class="top-1 p0">Désolé, votre login ou mot de passe est faux</h2>
					
						<div>
							<h3>Pas encore inscrit ?</h3>
							<img src="images/page1-img2.jpg" alt="" class="img-border">
							<a href="inscription" class="button">Inscrivez-vous !</a>
						</div>
						<div class="last">
							<h3>Mot de passe oublié ?</h3>
							<img src="images/page1-img3.jpg" alt="" class="img-border">
							<a href="#" class="button">Recuperer mon mot de passe</a>
						</div>
					</div>
					<div class="wrap block-1 pad-1">
						<div>
							<h3>Les Meilleurs Pour Vous</h3>
							<img src="images/page1-img1.jpg" alt="" class="img-border">
							<p>Nous selectionnons nous même les professeurs présent sur
								le site. Ils sont choisis grâce à leur expérience.</p>
							<a href="#" class="button">Plus</a>
						</div>
						<div>
							<h3>deuxieme zone</h3>
							<img src="images/page1-img2.jpg" alt="" class="img-border">
							<p>blabla</p>
							<a href="#" class="button">Plus</a>
						</div>
						<div class="last">
							<h3>troisieme zone</h3>
							<img src="images/page1-img3.jpg" alt="" class="img-border">
							<p>blablabla</p>
							<a href="#" class="button">Plus</a>
						</div>
					</div>
				</div>
				<div class="clear"></div>
			</div>

		</section>
	</div>
	<!--==============================footer=================================-->
	<s:include value="footer.jsp"></s:include>
</body>
</html>



