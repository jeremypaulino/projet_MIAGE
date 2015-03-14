
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
		
		var test='test';
		
		var listematiere = "matiere1#matiere2";
		var test = "statut1#statut2";
		var term = "test";
		


		

		
		
		$.ajax({
			url : "searchProf",
			data : {
				term:term,
				test:test
			}
		}).done(function(result) {
			$("#resultprof").html(result);
		});

	$("#search").on("input", function(e) {

		if ($(this).data("lastval") != $(this).val()) {

			$.ajax({
				url : "searchProf",
				data : {
					term:term,
					test:test
				}
				
			

			}).done(function(result) {
				$("#resultprof").html(result);
			});
		}
		
	});
		
	});
	

	$("#searcheleve").ready(function(){
		$.ajax({
			url : "searchEleve",
			data : {
				term : $(this).val()
			}
		}).done(function(result) {
			$("#resulteleve").html(result);
		});
	});

	$("#searcheleve").on("input", function(e) {
		
		if ($(this).data("lastval") != $(this).val()) {
			
			$.ajax({
				url : "searchEleve",
				data : {
					term : $(this).val()
				}
			

			}).done(function(result) {
				$("#resulteleve").html(result);
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