$( document ).ready(function() {
	$( ".show_details_link" ).bind( "click", function() {
		$(this).parent().find(".line_items").toggle();
		if ($(this).text().indexOf("Show") != -1) {
			$(this).text("Hide Details");	
		} else {
			$(this).text("Show Details");
		}
		
	});
});
    
