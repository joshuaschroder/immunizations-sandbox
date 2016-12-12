<?php
	$title= "Texas County Retrospective Immunization School Survey (TCRISS) - Region 9/10" ;
	include '/home/codio/workspace/includes/header.html';
    include '/home/codio/workspace/includes/menus/coverage_menu.html'; 
?>

<div class="Section" id="GoogleMap">
    <div id="map" style="width:100%; height:300px;"></div>
    <script type="text/javascript">
		function initAutocomplete() {
			// Add New Base Map
			var map = new google.maps.Map(document.getElementById('map'), {
				center: {lat: 31.225, lng: -101.948},
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
					where: "col1\x3e\x3e1 \x3d \x279/10\x27"
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
	<li><a title="2014 Presidio County" href="/immunize/docs/coverage/TCRISS-2014/Presidio-County-Summary_2014.pdf ">2014 Presidio County</a> <span class="small">(PDF, 63KB)</span></li>
	<li><a title="2014 Winkler County" href="/immunize/docs/coverage/TCRISS-2014/Winkler-County-Summary_2014.pdf ">2014 Winkler County</a> <span class="small">(PDF, 64KB)</span></li>
</ul>
<hr />
<h2>2008 TCRISS Survey Results</h2>
<ul>
	<li><a title="2008 Coke County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59870">2008 Coke County</a> <span class="small">(PDF, 15KB)</span></li>
	<li><a title="2008 Dawson County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59882">2008 Dawson County</a> <span class="small">(PDF, 17KB)</span></li>
	<li><a title="2008 Ector County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59889">2008 Ector County</a> <span class="small">(PDF, 15KB)</span></li>
	<li><a title="2008 El Paso County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59891">2008 El Paso County</a> <span class="small">(PDF, 15KB)</span></li>
	<li><a title="2008 Gaines County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59897">2008 Gaines County</a> <span class="small">(PDF, 15KB)</span></li>
	<li><a title="2008 Glasscock County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59900">2008 Glasscock County</a> <span class="small">(PDF, 15KB)</span></li>
	<li><a title="2008 Mason County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59937">2008 Mason County</a> <span class="small">(PDF, 15KB)</span></li>
	<li><a title="2008 Menard County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59941">2008 Menard County</a> <span class="small">(PDF, 15KB)</span></li>
	<li><a title="2008 Schleicher County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59960">2008 Schleicher County</a> <span class="small">(PDF, 15KB)</span></li>
	<li><a title="2008 Sterling County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59964">2008 Sterling County</a> <span class="small">(PDF, 15KB)</span></li>
	<li><a title="2008 Tom Green County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59969">2008 Tom Green County</a> <span class="small">(PDF, 17KB)</span></li>
</ul>
<hr />
<h2>2007 TCRISS Survey Results</h2>
<ul>
	<li><a title="2007 Andrews County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59846">2007 Andrews County</a> <span class="small">(PDF, 78KB)</span></li>
	<li><a title="2007 Midland County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59942">2007 Midland County</a> <span class="small">(PDF, 78KB)</span></li>
	<li><a title="2007 Terrell County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59967">2007 Terrell County</a> <span class="small">(PDF, 76KB)</span></li>
</ul>


<?php include '/home/codio/workspace/includes/footer.html' ?>