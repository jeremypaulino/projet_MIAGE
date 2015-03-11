<%@ taglib uri="/struts-tags" prefix="s"%>

<script src="js/rechercheAjax.js"></script>



<div id="blockeleve">
<h2>Liste complète des élèves</h2>

	<h3>Filtres</h3>

	<div class="search-container">
		<div class="ui-widget">
			<s:textfield id="searcheleve" class="txtfield" name="searcheleve"
				placeholder="example@yahoo.fr" />
		</div>
	</div>
		
	<div id="resulteleve">

<div class="spinner">
			<div class="spinner-container container1">
				<div class="circle1"></div>
				<div class="circle2"></div>
				<div class="circle3"></div>
				<div class="circle4"></div>
			</div>
		</div>
	</div>

</div>




