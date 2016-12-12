<?php
	$title= "Texas County Retrospective Immunization School Survey (TCRISS) - Region 6/5S" ;
	include '/home/codio/workspace/includes/header.html';
    include '/home/codio/workspace/includes/menus/coverage_menu.html'; 
?>

<div class="Section" id="GoogleMap">
    <div id="map" style="width:100%; height:300px;"></div>
    <script type="text/javascript">
		function initAutocomplete() {
			// Add New Base Map
			var map = new google.maps.Map(document.getElementById('map'), {
				center: {lat: 29.7, lng: -95.3},
				zoom: 7,
				mapTypeId: google.maps.MapTypeId.ROADMAP
			});		
			// Add FusionTables Layer for Counties
			layer = new google.maps.FusionTablesLayer({
				map: map,
				heatmap: { enabled: false },
				query: {
					select: "col0\x3e\x3e0",
					from: "1xcV_hpMD7UuLMoAr4JWIsyWGbOYAoofwVQ0xIdr-",
					where: "col1\x3e\x3e1 \x3d \x276/5S\x27"
				},
				options: {
					styleId: 2,
					templateId: 2
				}
			});
			layer.setMap(map);
		}
	</script>
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?v=3?key=AIzaSyCPPbIcRptaONtbQS-YvmJuMBRRfDe3e6o&libraries=places&callback=initAutocomplete"></script>
</div>
<br/>

<hr />
<h2>2014 TCRISS Survey Results</h2>
<ul>
	<li><a title="2014 Chambers County" href="/immunize/docs/coverage/TCRISS-2014/Chambers-County-Summary_2014.pdf ">2014 Chambers County</a> <span class="small">(PDF, 63KB)</span></li>
	<li><a title="2014 Waller County" href="/immunize/docs/coverage/TCRISS-2014/Waller-County-Summary_2014.pdf ">2014 Waller County</a> <span class="small">(PDF, 64KB)</span></li>
</ul>
<hr />
<h2>2008 TCRISS Survey Results</h2>
<ul>
	<li><a title="2008 Austin County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59849">2008 Austin County</a> <span class="small">(PDF, 15KB)</span></li>
	<li><a title="2008 Colorado County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59873">2008 Colorado County</a> <span class="small">(PDF, 17KB)</span></li>
	<li><a title="2008 Liberty County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59931">2008 Liberty County</a> <span class="small">(PDF, 15KB)</span></li>
</ul>
<hr />
<h2>2007 TCRISS Survey Results</h2>
<ul>
	<li><a title="2007 Fort Bend County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59894">2007 Fort Bend County</a> <span class="small">(PDF, 80KB)</span></li>
	<li><a title="2007 Jefferson County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59919">2007 Jefferson County</a> <span class="small">(PDF, 85KB)</span></li>
	<li><a title="2007 Matagorda County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59938">2007 Matagorda County</a> <span class="small">(PDF, 15KB)</span></li>
	<li><a title="2007 Walker County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59975">2007 Walker County</a> <span class="small">(PDF, 15KB)</span></li>
</ul>
<hr />

<?php include '/home/codio/workspace/includes/footer.html' ?>