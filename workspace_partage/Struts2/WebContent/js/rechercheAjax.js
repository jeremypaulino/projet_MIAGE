
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


	
	
	function chercher2(){
		
		var stringmatiere = "";
		var stringstatut = "";
		var term = "";
		var niveau  = ["6e","5e","4e","3e","2nde","1ere","Terminale","Bac+1","Bac+2","Bac+3","Bac+4","Bac+5"];
		var stringniveau ="";
		
		$(".checkstatutprof:checked").each(function() {
			var id = $(this).attr('id');
			stringstatut = id + "#" + stringstatut;
		});	
		
		$("div#filtresMatieres").children("p").children("span").each(function() {
			//var id = $(this).attr('id');
			
			var id = $(this).text()
			stringmatiere = id + "#" + stringmatiere;
		});
		
		if($("#search").val()){
			
			term = $("#search").val();
			
		}
		
		
//		================ a decommenter marche a peu pres pour admin============
//		var str = $("#amount").val();
//		
//		var debutstring  = str.replace(/\s+/g,"").split("-")[0];
//		var finstring  = str.replace(/\s+/g,"").split("-")[1];
//		
//		
//		
//		
//		
//		var debut = niveau.indexOf(debutstring);
//		var fin = niveau.indexOf(finstring);
		
		
//	===========================================================	
		
		
		//alert(debut +"/"+fin );
		
		
		
		//alert(niveau.slice(debut,fin+1));
		
//		
//		$( "#slider-range" ).slider({
//			  change: function( event, ui ) {
//				  
//				  	stringniveau = niveau.slice(ui.values[0],ui.values[1]+1);
//				  	
//				  	var n="";
//				  	
//				  	for(var i = 0 ; i <stringniveau.length;i++ ){
//				  		n = stringniveau[i] + "#" + n;
//					}
//				  	
//				  	stringniveau = n ;
//					//alert(stringniveau);
//				  }
//				
//				
//			});
		
		$.ajax({
			url : "searchProf",
			data : {
				term : term,
				stringmatiere : stringmatiere,
				stringstatut : stringstatut,
				stringniveau : stringniveau
			}
		}).done(function(result) {
			$("#resultprof").html(result);
		});
				
	}

	$("#search").ready(function() {
		chercher2();
		
		

		// Si on clicke sur les check
		$(".checkstatutprof").live('click', function() {
//			alert($("#amount").val());
			
			chercher2();
		});
		
		
		
			$( "#slider-range" ).slider({
				  change: function( event, ui ) {
						//alert("niveau");

					  chercher2();
				  }
			});
				  
		
		// si la div matiere change
		$("#filtresMatieres").change(function() {
			//alert("matiere");
			chercher2();
		});


		
//		Des que l'input mail est modifier on lance une recherche

		$("#search").on("input", function(e) {

			if ($(this).data("lastval") != $(this).val()) {
				//alert("term");

				chercher2();
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