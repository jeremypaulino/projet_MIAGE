
$(document).ready(function() {
	
	var $loading = $('#spinner').hide();
	$(document)
	.ajaxStart(function () {
	  $loading.show();
	})
	.ajaxStop(function () {
	  $loading.hide();
	});
	
	
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



	$("#search").ready(function(){
		
		$.ajax({
			url : "searchProf",
			data : {
				term : $(this).val()
			}
		}).done(function(result) {
			$("#resultprof").html(result);
		});
	});
	
	$("#search").on("input", function(e) {

		if ($(this).data("lastval") != $(this).val()) {

			$.ajax({
				url : "searchProf",
				data : {
					term : $(this).val()
				}

			}).done(function(result) {
				$("#resultprof").html(result);
			});
		}
		
	});
	

	
//
//	 var statut = [];
//
//	
//	 $("checkstatutprof").live('click', function(){
//	$(".checkstatutprof").each(function() {
//		var id = $(this).attr('id');
//		statut.push(id);
//
//	});
//
//	for (var i = 0; i < statut.length; i++) {
//		console.log(statut[i]);
//	}
//	 });
	

});