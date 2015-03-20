<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html lang="fr">
<head>
<title>Home</title>
<meta charset="utf-8">
	<s:include value="cssjs.jsp"></s:include>
</head>

<script>
		$(document).ready(function(){	
			$('.slider')._TMS({show:0,pauseOnHover:true,prevBu:false,nextBu:false,playBu:false,duration:1000,preset:'fade',pagination:true,	pagNums:false,slideshow:7000,numStatus:true,banners:'fromRight',waitBannerAnimation:false,rogressBar:false});
		});
	</script>
<body>
	<div class="main">
		<!--==============================header=================================-->

		<s:include value="wrapheader.jsp"></s:include>


		<!--==============================content================================-->
		<section id="content">
			<div id="slide" class="box-shadow">
				<div class="slider">
					<ul class="items">
						<li><img src="images/slider-1.jpg" alt="" />
						<div class="banner">Le Succes Garantie Pour Vos études&nbsp;</div></li>
						<li><img src="images/slider-2.jpg" alt="" /><div class="banner">Des Professeurs Qualifiés à votre disposition&nbsp;</div></li>
						<li><img src="images/slider-3.jpg" alt="" /><div class="banner">Des Cours Personnalisés Selon vos besoins&nbsp;</div></li>
					</ul>
				</div>
			</div>
			<div class="container_12">
				<div class="grid_12">
					<div class="pad-0 border-1">
						<h2 class="top-1 p0">Nous Vous Ouvrons La Voie Du Succès!</h2>
						<p class="p2">iSchool est une plateforme interactive qui met
						à la disposition d'élève, un large panel de cours virtuels.
							Que vous soyez collègien ou étudiant en école d'ingénieur,
							iSchool est fait pour vous! En effet des professeurs de collège,
							de lycée et universitaire, séléctionnés par nos soins, vous
							attendent.</p>
					</div>
					<div class="wrap block-1 pad-1">
						<div>
							<h3>Les Meilleurs Pour Vous</h3>
							<img src="images/page1-img1.jpg" alt="" class="img-border">
							<p>Nous selectionnons nous même les professeurs présent sur
								le site. Ils sont choisis grâce à  leur experience.</p>
							<a href="inscription" class="button">Plus</a>
						</div>
						<div>
							<h3>Une Réussite Garantie </h3>
							<img src="images/page1-img2.jpg" alt="" class="img-border">
							<p>Mettez toutes les chances de votre côté pour réussir. Nos methodes d'enseignement sont spéctaculaires et efficaces.</p>
							<a href="inscription" class="button">Plus</a>
						</div>
						<div class="last">
							<h3>Des Cours Pour Tous</h3>
							<img src="images/page1-img3.jpg" alt="" class="img-border">
							<p>De l'école primaire jusqu'à l'enseignement supérieur. Avec autant de choix, il y en a pour tous les goûts.</p>
							<a href="inscription" class="button">Plus</a>
						</div>
					</div>
				</div>
<!-- 				<div class="clear"></div> -->
			</div>
			<div class="aside">
				<div class="container_12">
					<div class="grid_12">
						<div class="pad-2 block-2 wrap">
							<div>
								<h3 class="p3">Professeur Ou Enseignant</h3>
								<p class="p4">Déposez nous votre cv, nous étudierons votre canditature.</p>
								<a href="inscription" class="button">Plus</a>
							</div>
							<div class="last">
								<h3 class="p3">Un Complément De Revenu</h3>
								<p class="p4">Choisissez vos disponibilité, nous nous chargerons du reste.</p>
								<a href="inscription" class="button">Plus</a>
							</div>
						</div>
					</div>
					<div class="clear"></div>
				</div>
			</div>
		</section>
	</div>
	<!--==============================footer=================================-->
	<s:include value="footer.jsp"></s:include>
</body>

</html>





