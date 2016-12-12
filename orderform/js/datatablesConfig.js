$(document).ready(function() {
	// Configuration for the jQuery DataTables plugin (https://datatables.net/)
	$('#pub-table').DataTable( {
		// disable paginated tables
		"paging":   false,
		// disable sorting
		"ordering": false,
		// disable number of records at bottom of table
		"info": false,
		// enable floating header
		"fixedHeader": true,
		// set search field text
		"language": {
			search: "Search Publications: ",
			searchPlaceholder: "Enter a title, stock number, language, or revision date"
		}
	} );

} );	
