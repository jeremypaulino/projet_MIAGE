
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
	
	
	
//	====================RECHERCHE d'UN PROF================



	$("#search").ready(function() {
				
		$(".checkstatutprof").live('click', function() {
			$(".checkstatutprof").each(function() {
				var id = $(this).attr('id');
				stringstatut = id + "#" + stringstatut;
				alert("chercher");
			});

		});

		$("#filtresMatieres").change(function() {
			$("#filtresMatieres>span").each(function() {
				var id = $(this).attr('id');
				stringmatiere = id + "#" + stringmatiere;
				alert("chercher matiere");
			});
		});
		
		
		var stringmatiere = "";
		var stringstatut = "";
		var term = $(this).val();
		alert("statut :" + stringstatut + " et matiere: " + stringmatiere);

		$.ajax({
			url : "searchProf",
			data : {
				term : term,
				stringmatiere : stringmatiere,
				stringstatut : stringstatut
			}
		}).done(function(result) {
			$("#resultprof").html(result);
		});

		$("#search").on("input", function(e) {

			$(".checkstatutprof").live('click', function() {
				$(".checkstatutprof").each(function() {
					var id = $(this).attr('id');
					stringstatut = id + "#" + stringstatut;

				});

			});
			$("#filtresMatieres").on('change', function() {
				$("#filtresMatieres>span").each(function() {
					var id = $(this).attr('id');
					stringmatiere = id + "#" + stringmatiere;

				});

			});
			alert("statut :" + stringstatut + " et matiere: " + stringmatiere);

			if ($(this).data("lastval") != $(this).val()) {

				$.ajax({
					url : "searchProf",
					data : {
						term : term,
						stringmatiere : stringmatiere,
						stringstatut : stringstatut

					}
				})
			}

		});

	});


	




//	====================RECHERCHE d'UN ELEVE================


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
	


	

});