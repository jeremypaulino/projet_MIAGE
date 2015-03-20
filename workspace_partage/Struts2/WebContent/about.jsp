<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html lang="fr">
<head>
<title>About</title>
<meta charset="utf-8">
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
					<div class="wrap block-3 pad-2">
						<div>
							<h3 class="p5">Qui Somme Nous</h3>
							<img src="images/page2-img1.jpg" alt="" class="img-border">
							<p class="top-1">
								<a href="http://www.univ-evry.fr/" class="link"><strong>Universit� d'Evry</strong></a>
							</p>
							<p class="p6">Nous sommes des �tudiants en premiere ann�e de master informatique.</p>
							<p class="p4">Nous avons cr��s cette plateforme int�ractive lors d'un projet scolaire durant l'ann�e 2014-2015.</p>
							<a href="#" class="button">Plus</a>
						</div>
						<div>
							<h3 class="p6">Notre Histoire</h3>
							<div class="box-1">
								<span>2014 -</span>
								<p class="extra-wrap">Choix du sujet de projet et r�daction d'un cahier des charges.</p>
							</div>
							<div class="box-1">
								<span>2014 -</span>
								<p class="extra-wrap">Elaboration d'une phase de conception du projet et r�daction d'un rapport d�di� � cette phase.</p>
							</div>
							<div class="box-1">
								<span>2015 -</span>
								<p class="extra-wrap">Developpement du projet et r�daction d'un rapport de developpement.</p>
							</div>
							<div class="box-1 p4">
								<span>2015 -</span>
								<p class="extra-wrap">Pr�sentation du projet lors d'une soutenance.</p>
							</div>
							<a href="#" class="button">Plus</a>
						</div>
						<div class="last">
							<h3 class="p6">Notre Groupe</h3>
							<p class="p6">
								<a href="http://www.univ-evry.fr/" class="link"><strong>Universit� d'Evry</strong></a>
							</p>
							<p>Pour developper ce projet, nous �tions trois:</p>
							<ul class="list-1 p4 left-1">
								<li><a href="#">Sabrina Cheurf</a></li>
								<li><a href="#">Mathieu Sarlangue</a></li>
								<li><a href="#">J�r�my Paulino</a></li>
				
							</ul>
							<a href="#" class="button">Plus</a>
						</div>
					</div>
				</div>
				<div class="clear"></div>
			</div>
			<div class="aside">
				<div class="container_12">
					<div class="grid_12">
						<div class="pad-2 wrap">
							<h3 class="p5">Les Professeurs Du Mois</h3>
							<div class="wrap block-4">
								<div>
									<img src="images/page2-img2.jpg" alt="" class="img-border">
									<p>
										<a href="#" class="link"><strong>Mark Jameson</strong></a>
									</p>
									<p>Professeur dans l'enseignement sup�rieur de math�matique.</p>
								</div>
								<div>
									<img src="images/page2-img3.jpg" alt="" class="img-border">
									<p>
										<a href="#" class="link"><strong>Dylan Moore</strong></a>
									</p>
									<p>Professeur de coll�ge de physique-chimie.</p>
								</div>
								<div>
									<img src="images/page2-img4.jpg" alt="" class="img-border">
									<p>
										<a href="#" class="link"><strong>Sebastian Howard</strong></a>
									</p>
									<p>Enseignant de lyc�e d'histoire-g�ographie.</p>
								</div>
								<div class="last">
									<img src="images/page2-img5.jpg" alt="" class="img-border">
									<p>
										<a href="#" class="link"><strong>Stan Lee</strong></a>
									</p>
									<p>Professeur universitaire d'�conomie d'entreprise.</p>
								</div>
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