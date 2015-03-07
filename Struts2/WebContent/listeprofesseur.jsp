<%@ taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Home</title>
<meta charset="utf-8">
<s:include value="cssjs.jsp"></s:include>

<script src="js/jquery-1.10.2.js"></script>
<script src="js/jquery-ui.js"></script>
<script src="js/rechercheAjax.js"></script>
<link rel="stylesheet" href="css/jquery-ui.css">

</head>
<body>
	<div class="main">
		<!--==============================header=================================-->
		<s:include value="header.jsp"></s:include>
		<!--==============================content================================-->
		<section id="content">

			<div class="container_12">
				<div class="grid_12">
				
				<h2>Liste complète des professeurs</h2>
				<div>
						<h3>Filtres</h3>

				<div class="search-container">
					<div class="ui-widget">
						<s:textfield id="search" class="txtfield" name="search" placeholder="example@yahoo.fr" />
					</div>
				</div>
					
					
					</div>
<!-- 					<table> -->
<!-- 					<tr> -->
<!-- 						<th>Prénom</th> -->
<!-- 						<th>Nom</th> -->
<!-- 						<th>E-mail</th> -->
<!-- 						<th>CV</th> -->
<!-- 						<th>Motivation</th> -->
<!-- 						<th>Statut</th> -->
<!-- 					</tr> -->
					
<%-- 						<s:iterator value="listeProf" var="element"> --%>
<!-- 							<tr> -->
<%-- 								<td><s:property value="prenom" /></td> --%>
<%-- 								<td><s:property value="nom" /> </td> --%>
<%-- 								<td><s:property value="mail" /></td> --%>
<%-- 								<td><s:property value="cv" /></td> --%>
<%-- 								<td><s:property value="motivations" /></td> --%>
<%-- 								<td><s:property value="statut" /></td> --%>
<!-- 							</tr> -->
<%-- 						</s:iterator> --%>
<!-- 					</table> -->

										
					<div id=result>
					
					
					</div>					
					
				</div>
			</div>
			<div class="clear"></div>
	</section>
	</div>
	<!--==============================footer=================================-->
	<s:include value="footer.jsp"></s:include>
</body>

</html>





