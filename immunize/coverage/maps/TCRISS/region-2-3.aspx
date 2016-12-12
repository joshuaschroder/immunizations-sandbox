<?php
	$title= "Texas County Retrospective Immunization School Survey (TCRISS) Region 2/3" ;
	include '/home/codio/workspace/includes/header.html';
    include '/home/codio/workspace/includes/menus/coverage_menu.html'; 
?>

<div class="Section" id="GoogleMap">
    <div id="map" style="width:100%; height:300px;"></div>
    <script type="text/javascript">
		function initAutocomplete() {
			// Add New Base Map
			var map = new google.maps.Map(document.getElementById('map'), {
				center: {lat: 33, lng: -98.5},
				zoom: 6,
				mapTypeId: google.maps.MapTypeId.ROADMAP
			});
			// Add FusionTables Layer for Counties
			layer = new google.maps.FusionTablesLayer({
				map: map,
				heatmap: { enabled: false },
				query: {
					select: "col0\x3e\x3e0",
					from: "1xcV_hpMD7UuLMoAr4JWIsyWGbOYAoofwVQ0xIdr-",
					where: "col1\x3e\x3e1 \x3d \x272/3\x27"
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

<hr/>
<h2>2008 TCRISS Survey Results</h2>
<ul>
	<li><a title="Brown County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59862">Brown County</a> <span class="small">(PDF, 15KB)</span></li>
	<li><a title="Collin County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59871">Collin County</a> <span class="small">(PDF, 15KB)</span></li>
	<li><a title="Comanche County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59875">Comanche County</a> <span class="small">(PDF, 15KB)</span></li>
	<li><a title="Denton County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59884">Denton County</a> <span class="small">(PDF, 15KB)</span></li>
	<li><a title="Grayson County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59904">Grayson County</a> <span class="small">(PDF, 15KB)</span></li>
	<li><a title="Navarro County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59948">Navarro County</a> <span class="small">(PDF, 17KB)</span></li>
	<li><a title="Runnels County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59957">Runnels County</a> <span class="small">(PDF, 15KB)</span></li>
	<li><a title="Shackelford County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59961">Shackelford County</a> <span class="small">(PDF, 89KB)</span></li>
	<li><a title="Taylor County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59966">Taylor County</a> <span class="small">(PDF, 15KB)</span></li>
	<li><a title="Wichita County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59978">Wichita County</a> <span class="small">(PDF, 15KB)</span></li>
</ul>


<?php include '/home/codio/workspace/includes/footer.html' ?>