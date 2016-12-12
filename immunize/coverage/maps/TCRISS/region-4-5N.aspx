<?php
	$title= "Texas County Retrospective Immunization School Survey (TCRISS) - Region 4/5" ;
	include '/home/codio/workspace/includes/header.html';
    include '/home/codio/workspace/includes/menus/coverage_menu.html'; 
?>

<div class="Section" id="GoogleMap">
    <div id="map" style="width:100%; height:300px;"></div>
    <script type="text/javascript">
		function initAutocomplete() {
			// Add New Base Map
			var map = new google.maps.Map(document.getElementById('map'), {
				center: {lat: 32.3, lng: -95.5},
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
					where: "col1\x3e\x3e1 \x3d \x274/5N\x27"
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
<li><a title="2014 TCRISS Results for Red River County" href="/immunize/docs/coverage/TCRISS-2014/Red-River-County-Summary_2014.pdf">Red River County</a> <span class="small">(PDF, 504KB)</span></li>
</ul>
<hr />
<h2>2008 TCRISS Survey Results</h2>
<ul>
	<li><a title="Bowie County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59858">Bowie County</a> <span class="small">(PDF, 15KB)</span></li>
	<li><a title="Franklin County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59895">Franklin County</a> <span class="small">(PDF, 15KB)</span></li>
	<li><a title="Hopkins County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59916">Hopkins County</a> <span class="small">(PDF, 83KB)</span></li>
	<li><a title="Newton County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59949">Newton County</a> <span class="small">(PDF, 15KB)</span></li>
	<li><a title="Sabine County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59958">Sabine County</a> <span class="small">(PDF, 15KB)</span></li>
	<li><a title="Shelby County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59962">Shelby County</a> <span class="small">(PDF, 79KB)</span></li>
	<li><a title="Van Zandt County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59973">Van Zandt County</a> <span class="small">(PDF, 80KB)</span></li>
</ul>
<hr />
<h2>2007 TCRISS Survey Results</h2>
<ul>
<li><a title="Franklin County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59895">Franklin County</a> <span class="small">(PDF, 15KB)</span></li>
</ul>
<?php include '/home/codio/workspace/includes/footer.html' ?>