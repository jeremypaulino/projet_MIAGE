$(document).ready(function() {
	$("#cp").on("input", function(e) {
		if (e.target.value.length > 4) {

			if ($(this).data("lastval") != $(this).val()) {

				$.ajax({
					url : "codepostaleAction",
					data : {
						term : $(this).val()
					}

				}).done(function(result) {
					$("#ville").parent().parent().hide();
					$("#result").parent().parent().hide();
					$("#result").parent().parent().after(result);
				});
			}
		}
	});

});

$(document).ready(function() {
	$("#search").on("input", function(e) {
		if ($(this).data("lastval") != $(this).val()) {

			$.ajax({
				url : "searchAction",
				data : {
					term : $(this).val()
				}

			}).done(function(result) {
				$("#result").html(result);
			});
		}
		
	});
});