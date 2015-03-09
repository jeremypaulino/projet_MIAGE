<script>
$(document).ready(function() {
	
	
	//lorque le popupcharge
	$.ajax({
		url : "statEleve",
		data : {
			term : "total"
		}

	}).done(function(result) {
		$("#result").html(result);
	});
	
	
	
	
// 	$("#").on("click", function(e) {
// 		if ($(this).data("lastval") != $(this).val()) {

// 			$.ajax({
// 				url : "searchProf",
// 				data : {
// 					term : $(this).val()
// 				}

// 			}).done(function(result) {
// 				$("#result").html(result);
// 			});
// 		}
		
// 	});
});

</script>

TEST
<div id="result">

</div>