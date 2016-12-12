$(document).ready(function() {
	// These functions add some basic WAI-ARIA support

	// Add ARIA 'role=search' to the filter input field
	$('.dataTables_filter input').attr('role', 'search');	
	
	// Add ARIA attribute 'aria-invalid' to input fields if the validator produces an error
	// For this to work, all validated input fields should have either the 'required' and/or 'min' attributes set
	// the #ShipAccount field is added separately since it is not marked with the 'required' attribute when the DOM loads
	
	$("input:required, input[min], #ShipAccount").blur(function() {
		// If an error message exists, add 'aria-invalid' attribute
		if ( $(this).next().find(".list-unstyled").hasClass ("list-unstyled") ) {
			$(this).attr("aria-invalid", "true");
		} 
		else {
			// If the error message is removed, delete the 'aria-invalid' attribute
			$(this).removeAttr("aria-invalid", "true");
		}
	});

	// If the shipping method is changed back to 'Standard Shipping,' then remove the 'aria-invalid' attribute
	$("#Shipping").change(function() {
		if ($("#Shipping").val() == "LL4") {
			$("#ShipAccount").removeAttr("aria-invalid", "true");
		} 
	});

});
