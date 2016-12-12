<?php
	$title= "Info for Parents - Texas Vaccines for Children" ;
	include '/home/codio/workspace/includes/header.html';
    include '/home/codio/workspace/includes/menus/tvfc_menu.html'; 
?>

<style>
	/* Always set the map height explicitly to define the size of the div
	* element that contains the map. */
	#map {
	width:770px;
	height: 500px;
	}
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
	padding: 20px !important;
	text-overflow: ellipsis;
	width: 400px;
	left:-10px !important;
	z-index:999 !important;
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
</style>

<p>Your child may be eligible for low-cost vaccines through the Texas Vaccines for Children (TVFC) program. TVFC is a state-operated program funded with federal and state money to provide low-cost vaccines to eligible children from birth through 18 years of age.</p>
<p>Infants are particularly vulnerable to infectious diseases; that is why it is critical to protect them through immunization. Completing the full series of vaccines for your child or children is important to ensure they have the best protection against serious childhood diseases and dangerous complications. Getting all of the suggested vaccines in their first year is a great start. Immunization is one of the most important things a parents can do to protect their children's health. Failure to vaccinate may mean putting children at risk for serious diseases.</p>


<input id="pac-input" class="controls" type="text" placeholder="Search Addresses, Cities, Counties, Zip Codes, Etc.">
<div id="map"></div>
<script>
	function initMap() {
		var map = new google.maps.Map(document.getElementById('map'), {
			center: {lat: 31.531498486083862, lng: -100.27687670158696},
			zoom: 5
		});
		
		var layer = new google.maps.FusionTablesLayer({
			query: {
				select: "col1",
				from: '10sn_DVam7jrIiRR0eT4zvcEtGkTZzvP0U-Wa64lR'
			},
			options: {
				styleId: 2,
				templateId: 2
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
		// Listen for the event fired when the user selects a prediction and retrieve
		// more details for that place.
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
				if (!place.geometry) {
					console.log("Returned place contains no geometry");
					return;
				}
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
				
				if (place.geometry.viewport) {
					// Only geocodes have viewport.
					bounds.union(place.geometry.viewport);
					} else {
					bounds.extend(place.geometry.location);
				}
			});
			map.fitBounds(bounds);
			var listener = google.maps.event.addListener(map, "idle", function() { 
				if (map.getZoom() > 14) map.setZoom(14); 
				google.maps.event.removeListener(listener); 
			});
			
		});
	}
	
</script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAjfSy6iR_62YEzd20oFvz1isF_6y9SmrU&libraries=places&callback=initMap" async defer></script>


<p>To locate a TVFC provider, please call the DSHS Immunizations Unit at <strong>(800) 252-9152</strong>.</p>
<p>You may also view our <a title="Spreadsheet of TVFC Providers" href="http://www.dshs.state.tx.us/immunize/tvfc/docs/TVFC-Public-Providers_06-08-2016.xls">Spreadsheet of TVFC Providers (XLS)</a>.</p>

<hr/>
<h2>Who is Eligible?</h2>
<p>Children 0-18 years of age are eligible if they meet one or more of the following criteria:</p>
<ul>
	<li>Eligible for participation in the <a title="Medicaid program" href="https://yourtexasbenefits.hhsc.texas.gov/programs/health/child/childrens-medicaid">Medicaid program</a></li>
	<li>Enrolled in the <a title="Children's Health Insurance Program (CHIP)" href="https://yourtexasbenefits.hhsc.texas.gov/programs/health/child/chip">Children's Health Insurance Program (CHIP)</a> <sup>1</sup></li>
	<li>American Indians or Alaskan natives</li>
	<li>Uninsured Children: Children who do not have health insurance</li>
	<li>Underinsured Children: Children with private insurance but coverage <sup>2</sup>:
		<ul>
			<li>Does not include vaccines</li>
			<li>Only includes select vaccines</li>
			<li>Caps vaccine coverage at a certain amount</li>
		</ul>
	</li>
</ul>
<p><sup>1.</sup> Though children whose insurance pays for vaccines do not qualify for TVFC vaccine, CHIP children do qualify by special arrangement.</p>
<p><sup>2. </sup> Underinsured children must be seen by a FQHC or deputized clinic.</p>
<hr/>
<h2>Which Vaccines are Offered?</h2>
<table style="width: 100%;">
	<tbody>
		<tr>
			<td style="width: 30%;"><ul>
				<li>DTaP</li>
				<li>Hepatitis A</li>
				<li>Hepatitis B</li>
				<li>Hib</li>
				<li>HPV</li>
			</ul>
			</td>
			<td style="width: 30%;"><ul>
				<li>Influenza</li>
				<li>Measles, Mumps and Rubella </li>
				<li>MMRV</li>
				<li>Meningococcal</li>
				<li>Pneumococcal</li>
			</ul>
			</td>
			<td style="width: 30%;"><ul>
				<li>Polio</li>
				<li>Rotavirus</li>
				<li>Tdap/Td</li>
				<li>Varicella (Chickenpox)</li>
				<li>Zoster (Shingles)</li>
			</ul>
			</td>
		</tr>
	</tbody>
</table>

<hr/>
<h2 style="clear: both;">Which Vaccines do I Need?</h2>
<p>Contact your healthcare provider to determine which vaccines are needed for your child.</p>
<p>Also see the CDC's Recommended Vaccine Schedules:</p>
<ul>
	<li><a href="http://www.cdc.gov/vaccines/parents/downloads/parent-ver-sch-0-6yrs.pdf">Recommended Immunizations for Children (Birth through 6 years) (PDF)<br/><img title="Recommended Immunizations for Children (Birth through 6 years)" src="/immunize/tvfc/img/2016-parent-ver-sch-0-6yrs_Page_1.png" alt="Recommended Immunizations for Children (Birth through 6 years)" style="border:1px solid #3f64ab;" /></a><br/><br/></li>
	<li><a href="http://www.cdc.gov/vaccines/who/teens/downloads/parent-version-schedule-7-18yrs.pdf">Recommended Immunizations for Preteens and Teens (7-18 years) (PDF)<br/><img title="Recommended Immunizations for Preteens and Teens (7-18 years)" src="/immunize/tvfc/img/2016-parent-version-schedule-7-18yrs_Page_1.png" alt="Recommended Immunizations for Preteens and Teens (7-18 years)" style="border:1px solid #3f64ab;" /></a></li>
</ul>


<?php include '/home/codio/workspace/includes/footer.html' ?>				