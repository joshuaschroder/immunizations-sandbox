<?php
	$title= "Texas County Retrospective Immunization School Survey (TCRISS) - Region 11" ;
	include '/home/codio/workspace/includes/header.html';
    include '/home/codio/workspace/includes/menus/coverage_menu.html'; 
?>

<div class="Section" id="GoogleMap">
    <div id="map" style="width:100%; height:300px;"></div>
    <script type="text/javascript">
		function initAutocomplete() {
			// Add New Base Map
			var map = new google.maps.Map(document.getElementById('map'), {
				center: {lat: 27.3, lng: -97.9},
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
					where: "col1\x3e\x3e1 \x3d \x2711\x27"
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
	<li><a title="2014 TCRISS Results for Live Oak County" href="/immunize/docs/coverage/TCRISS-2014/Live-Oak-County-Summary_2014.pdf">Live Oak County</a> <span class="small">(PDF, 501KB)</span></li>
	<li><a title="2014 TCRISS Results for Refugio County" href="/immunize/docs/coverage/TCRISS-2014/Refugio-County-Summary_2014.pdf">Refugio County</a> <span class="small">(PDF, 480KB)</span></li>
</ul>
<hr />
<h2>2008 TCRISS Survey Results</h2>
<ul>
	<li><a title="2007 TCRISS Results for Cameron County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59865">Cameron County</a> <span class="small">(PDF, 80KB)</span></li>
	<li><a title="2007 TCRISS Results for Hidalgo County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59913">Hidalgo County</a> <span class="small">(PDF, 15KB)</span></li>
	<li><a title="2007 TCRISS Results for Webb County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59976">Webb County</a> <span class="small">(PDF, 15KB)</span></li>
</ul>
<hr />
<h2>2007 TCRISS Survey Results</h2>
<ul>
	<li><a title="2007 TCRISS Results for Bee County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59853">Bee County</a> <span class="small">(PDF, 80KB)</span></li>
	<li><a title="2007 TCRISS Results for Jim Wells County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59920">Jim Wells County</a> <span class="small">(PDF, 15KB)</span></li>
</ul>

<?php include '/home/codio/workspace/includes/footer.html' ?>