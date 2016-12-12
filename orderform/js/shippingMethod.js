$(document).ready(function() {
	
	// This function controls the behavior of the 'Your Account Number' field
	
	$("#Shipping").change(function() {
		
		// Enable the account number field and add the 'required' attribute when standard shipping is NOT selected
		if ($(this).val() != "LL4") {
			$("#ShipAccount").removeAttr("disabled", "disabled").prop("required", true);
		} 
		// Disable the account number field and remove the 'required' attribute if standard shipping is selected again
		else {
			$("#ShipAccount").prop("required", false).attr("disabled", "disabled");
		}
	});
	
});
