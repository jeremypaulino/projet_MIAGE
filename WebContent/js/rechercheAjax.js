//$(document).ready(function() {
//
//	$(function() {
//		$('#search').on("keypress", function(e) {
//			$.ajax({
//				url : "searchAction",
//				data : {
//					term : e.key
//				}
//
//			}).done(function(result) {
//				$("#result").html(result);
//			});
//		});
//	});
//});

//$(document).ready(function() {
//	
//
//	$(function() {
//		$('#search').on("input", function(e) {
//			
//			// on verifie qu'il s'agit bien d'une lettre qui est tapé 
//			$.ajax({
//				url : "searchAction",
//				data : {
//					term : e.key
//				}
//
//			}).done(function(result) {
//				$("#result").html(result);
//			});
//		
//		
//		    
//		
//		
//		});
//	});
//	
//	
//});

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
		;
	});
});