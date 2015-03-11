<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Home</title>
<meta charset="utf-8">
	<s:include value="cssjs.jsp"></s:include>
</head>
<body>
	<div class="main">
		<!--==============================header=================================-->
		<s:include value="header.jsp"></s:include>

		<!--==============================content================================-->
		<section id="content">
			<div id="slide" class="box-shadow">
				<div class="slider">
					<ul class="items">
						<li><img src="images/slider-1.jpg" alt="" />
						<div class="banner">Le Succes Garantie Pour Vos �tudes&nbsp;</div></li>
						<li><img src="images/slider-2.jpg" alt="" /><div class="banner">Des Professeurs Qualifi�s �� votre disposition&nbsp;</div></li>
						<li><img src="images/slider-3.jpg" alt="" /><div class="banner">Des Cours Personnalis�s Selon vos besoins&nbsp;</div></li>
					</ul>
				</div>
			</div>
			<div class="container_12">
				<div class="grid_12">
					<div class="pad-0 border-1">
						<h2 class="top-1 p0">Nous Vous Ouvrons La Voie Du Succ�s!</h2>
						<p class="p2">iSchool est une plateforme interactive qui met
							à la disposition d'�l�ve, un large panel de cours virtuels.
							Que vous soyez coll�gien ou �tudiant en �cole d'ing�nieur,
							iSchool est fait pour vous! En effet des professeurs de coll�ge,
							de lyc�e et universitaire, s�l�ctionn�s par nos soins, vous
							attendent.</p>
					</div>
					<div class="wrap block-1 pad-1">
						<div>
							<h3>Les Meilleurs Pour Vous</h3>
							<img src="images/page1-img1.jpg" alt="" class="img-border">
							<p>Nous selectionnons nous m�me les professeurs pr�sent sur
								le site. Ils sont choisis gr�ce � leur experience.</p>
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
			<div class="aside">
				<div class="container_12">
					<div class="grid_12">
						<div class="pad-2 block-2 wrap">
							<div>
								<h3 class="p3">blabla</h3>
								<p class="p4">fmvqjnfvùqnvùqknfvùlknfùvndsùf</p>
								<a href="#" class="button">Plus</a>
							</div>
							<div class="last">
								<h3 class="p3">blabla</h3>
								<p class="p4">blaazdmoznfmoenfmjnzeozerv</p>
								<a href="#" class="button">Plus</a>
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





