<%@ taglib uri="/struts-tags" prefix="s"%>
<script src="js/jquery-ui.js"></script>

<script src="js/rechercheAjax.js"></script>

<script src="js/autocompleteMatiere.js"></script>

<script type="text/javascript">
// 	$(document).ready(
// 			function() {

// 				var steps = [ "6e", "5e", "4e", "3e", "2nde", "1ere",
// 						"Terminale", "Bac +1", "Bac +2", "Bac +3", "Bac +4",
// 						"Bac +5"

// 				];

// 				$("#slider-range").slider(
// 						{
// 							range : true,
// 							min : 0,
// 							max : 11,
// 							step : 1,
// 							values : [ 0, 4 ],
// 							slide : function(event, ui) {
// 								$("#amount").val(
// 										steps[ui.values[0]] + " - "
// 												+ steps[ui.values[1]]);
// 							}
// 						});
// 				$("#amount")
// 						.val(
// 								steps[$("#slider-range").slider("values", 0)]
// 										+ " - "
// 										+ steps[$("#slider-range").slider(
// 												"values", 1)]);

				
				

// 			});
	

</script>
<div class="grid_12">

	<h2>Liste compl�te des professeurs</h2>

	<h3>Filtres</h3>


	<div class="filtresdroite">
		<div class="search-container">
			<div class="ui-widget">
				<s:textfield id="search" label="Email" class="txtfield" name="search" placeholder="example@yahoo.fr" />
			</div>
		</div>

			
			
			<div id="date" class="filtrespopup">
				<p>Date:</p>
			</div>

		<div id="" class="filtrespopup">

			<label>Mati�res :</label>

			<div class="search-container">
				<div class="ui-widget">
					<s:textfield id="searchMatiere" class="txtfield" placeholder="Fran�ais" name="searchMatiere" />
				</div>
			</div>
			<div id="filtresMatieres"></div>

		</div>

	</div>


	<div id="resultprof"></div>


</div>

