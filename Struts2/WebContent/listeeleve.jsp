<%@ taglib uri="/struts-tags" prefix="s"%>

<script src="js/rechercheAjax.js"></script>




<h2>Liste complète des élèves</h2>
<div>
	<h3>Filtres</h3>

	<div class="search-container">
		<div class="ui-widget">
			<s:textfield id="searcheleve" class="txtfield" name="searcheleve"
				placeholder="example@yahoo.fr" />
		</div>
	</div>

	<div id=result></div>

</div>




