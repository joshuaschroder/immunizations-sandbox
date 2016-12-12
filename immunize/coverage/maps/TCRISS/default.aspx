<?php
	$title= "Texas County Retrospective Immunization School Survey (TCRISS)" ;
	include '/home/codio/workspace/includes/header.html';
    include '/home/codio/workspace/includes/menus/coverage_menu.html'; 
?>

<p>The Texas County Retrospective Immunization School Survey (TCRISS) methodology was developed to fulfill a need for county specific vaccination coverage level estimates. This survey was designed to retrospectively assess the vaccination coverage levels of public school kindergarteners when they were 24 months of age (approximately three years prior to the survey date). The survey design is dependent on the population size of kindergartners in the county and the number of kindergarten schools. For counties with smaller populations, it may be necessary to include all kindergarten students in the survey. For medium and large counties, a sample of kindergarten students is taken.</p>

<p>The survey calculates the percentage of children that completed the 4-3-1-3-3, the 4-3-1-3-3-1 series, and the 4-3-1-3-3-1-4 series by 24 months of age.</p>

<p>The 4-3-1-3-3 series is composed of 4 doses of diphtheria-tetanus-pertussis- containing vaccine (DTaP/DTP or DT), 3 doses of polio vaccine, 1 dose of measles-mumps-rubella vaccine (MMR), 3 doses of Haemophilus influenzae type b vaccine (Hib), and 3 doses of hepatitis B vaccine (HepB). The 4-3-1-3-3-1 series is composed of the 4-3-1-3-3 series plus 1 dose of varicella vaccine on or after the 1st birthday and unadjusted for varicella disease history. The 4-3-1-3-3-1-4 series is composed of the 4-3-1-3-3-1 series plus 4 or more doses of pneumococcal conjugate vaccine (PCV).</p>

<h2>DSHS Health Service Regions Map</h2>
<div class="Section" id="GoogleMap">
	
    <input id="pac-input" class="controls" type="text" placeholder="Search Locations" />
    <div id="map" style="width:100%; height:600px;"></div>
    <script type="text/javascript">
		
		function initAutocomplete() {
			
			// Create a new base map
			var map = new google.maps.Map(document.getElementById('map'), {
				center: {lat: 31.5994605, lng: -99},
				zoom: 6,
				mapTypeId: google.maps.MapTypeId.ROADMAP
			});		
			
			// MODIFY Title and text of your legend. Match color names and labels to the Google Fusion Table map marker icons you already created.
			// To display link to source data, insert the URL of your Google Fusion Table.
			var legend = document.createElement('div');
			legend.id = 'legend';
			var content = [];
			content.push('<h2>Legend</h2>');
			content.push('<p><div class="color cyan"></div><a href="/immunize/coverage/maps/TCRISS/region-1.aspx">HSR 1</a></p>');
			content.push('<p><div class="color yellow"></div><a href="/immunize/coverage/maps/TCRISS/region-2-3.aspx">HSR 2/3</a></p>');
			content.push('<p><div class="color fuschia"></div><a href="/immunize/coverage/maps/TCRISS/region-4-5N.aspx">HSR 4/5N</a></p>');
			content.push('<p><div class="color blue"></div><a href="/immunize/coverage/maps/TCRISS/region-6-5S.aspx">HSR 6/5S</a></p>');
			content.push('<p><div class="color orange"></div><a href="/immunize/coverage/maps/TCRISS/region-7.aspx">HSR 7</a></p>');
			content.push('<p><div class="color green"></div><a href="/immunize/coverage/maps/TCRISS/region-8.aspx">HSR 8</a></p>');
			content.push('<p><div class="color red"></div><a href="/immunize/coverage/maps/TCRISS/region-9-10.aspx">HSR 9/10</a></p>');
			content.push('<p><div class="color purple"></div><a href="/immunize/coverage/maps/TCRISS/region-11.aspx">HSR 11</a></p>');
			legend.innerHTML = content.join('');
			legend.index = 1;
			map.controls[google.maps.ControlPosition.RIGHT_BOTTOM].push(legend);
			
			// Add FusionTables Layer for Counties
			layer = new google.maps.FusionTablesLayer({
				map: map,
				heatmap: { enabled: false },
				query: {
				select: "col0\x3e\x3e0",
				from: "1xcV_hpMD7UuLMoAr4JWIsyWGbOYAoofwVQ0xIdr-",
				where: ""
				},
				options: {
					styleId: 3,
					templateId: 3
				}
			});
			layer.setMap(map);
			
			// Create the search box and link it to the UI element.
			var input = document.getElementById('pac-input');
			var searchBox = new google.maps.places.SearchBox(input);
			map.controls[google.maps.ControlPosition.TOP_LEFT].push(input);
			
			// Bias the SearchBox results towards current map's viewport.
			map.addListener('bounds_changed', function() {
				searchBox.setBounds(map.getBounds());
			});
			
			var markers = [];
			// Listen for the event fired when the user selects a prediction and retrieve more details for that place.
			searchBox.addListener('places_changed', function() {
				var places = searchBox.getPlaces();
				
				if (places.length == 0) {
					return;
				}
				
				// Clear out the old markers.
				markers.forEach(function(marker) {
					marker.setMap(null);
				});
				markers = [];
				
				// For each place, get the icon, name and location.
				var bounds = new google.maps.LatLngBounds();
				places.forEach(function(place) {
					var icon = {
						url: place.icon,
						size: new google.maps.Size(71, 71),
						origin: new google.maps.Point(0, 0),
						anchor: new google.maps.Point(17, 34),
						scaledSize: new google.maps.Size(25, 25)
					};
					
					// Create a marker for each place.
					markers.push(new google.maps.Marker({
						map: map,
						icon: icon,
						title: place.name,
						position: place.geometry.location
					}));
					
					// Only geocodes have viewport.
					if (place.geometry.viewport) {
						bounds.union(place.geometry.viewport);
						} else {
						bounds.extend(place.geometry.location);
					}
				});
				
				// Set zoom level after a location search
				map.fitBounds(bounds);
				var listener = google.maps.event.addListener(map, "idle", function() { 
					if (map.getZoom() > 7) map.setZoom(7);
					google.maps.event.removeListener(listener); 
				});			
			});
		}
		
	</script>
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?v=3?key=AIzaSyCQUmW2p95-3FpEWaInqu9mbyEPmIUJI_M&libraries=places&callback=initAutocomplete"></script>
	<style type="text/css">
		.controls {
			margin-top: 10px;
			border: 1px solid transparent;
			border-radius: 2px 0 0 2px;
			box-sizing: border-box;
			-moz-box-sizing: border-box;
			height: 32px;
			outline: none;
			box-shadow: 0 2px 6px rgba(0, 0, 0, 0.3);
		}
		#pac-input {
			background-color: #fff;
			font-family: Roboto;
			font-size: 15px;
			font-weight: 300;
			margin-left: 12px;
			padding: 0 11px 0 13px;
			text-overflow: ellipsis;
			width: 400px;
		}
		#pac-input:focus {
			border-color: #4d90fe;
		}
		.pac-container {
			font-family: Roboto;
		}
		#type-selector {
			color: #fff;
			background-color: #4d90fe;
			padding: 5px 11px 0px 11px;
		}
		#type-selector label {
			font-family: Roboto;
			font-size: 13px;
			font-weight: 300;
		}
		#target {
			width: 345px;
		}
		#legend {
			background: #FFF;
			padding: 10px;
			margin: 5px;
			font-size: 12px;
			font-family: Arial, sans-serif;
		}
		.color {
			border: 1px solid;
			height: 12px;
			width: 12px;
			margin-right: 3px;
			float: left;
		}
		.orange {background-color: #ff9900;}
		.yellow {background-color: #ffff00;}
		.cyan {background-color: #00ffff;}
		.blue {background-color: #0000ff;}
		.purple {background-color: #9900ff;}
		.red {background-color: #ff0000;}
		.green {background-color: #00ff00;}
		.fuschia {background-color: #ff00ff;}
	</style>
	
</div>

<hr/>
<h2>TCRISS Results by Region</h2>
<ul>
	<li><a title="TCRISS Results for HSR 1" href="/immunize/coverage/TCRISS/region-1.aspx">TCRISS Results for HSR 1</a></li>
	<li><a title="TCRISS Results for HSR 2/3" href="/immunize/coverage/TCRISS/region-2-3.aspx">TCRISS Results for HSR 2/3</a></li>
	<li><a title="TCRISS Results for HSR 4/5N" href="/immunize/coverage/TCRISS/region-4-5N.aspx">TCRISS Results for HSR 4/5N</a></li>
	<li><a title="TCRISS Results for HSR 6/5S" href="/immunize/coverage/TCRISS/region-6-5S.aspx">TCRISS Results for HSR 6/5S</a></li>
	<li><a title="TCRISS Results for HSR 7" href="/immunize/coverage/TCRISS/region-7.aspx">TCRISS Results for HSR 7</a></li>
	<li><a title="TCRISS Results for HSR 8" href="/immunize/coverage/TCRISS/region-8.aspx">TCRISS Results for HSR 8</a></li>
	<li><a title="TCRISS Results for HSR 9/10" href="/immunize/coverage/TCRISS/region-9-10.aspx">TCRISS Results for HSR 9/10</a></li>
	<li><a title="TCRISS Results for HSR 11" href="/immunize/coverage/TCRISS/region-11.aspx">TCRISS Results for HSR 11</a></li>
</ul>

<?php include '/home/codio/workspace/includes/footer.html' ?>