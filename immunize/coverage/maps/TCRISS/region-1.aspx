<?php
	$title= "Texas County Retrospective Immunization School Survey (TCRISS) - Region 1" ;
	include '/home/codio/workspace/includes/header.html';
    include '/home/codio/workspace/includes/menus/coverage_menu.html'; 
?>

<div class="Section" id="GoogleMap">
    <div id="map" style="width:100%; height:300px;"></div>
    <script type="text/javascript">
		function initAutocomplete() {
			// Add New Base Map
			var map = new google.maps.Map(document.getElementById('map'), {
				center: {lat: 34.5994605, lng: -99},
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
					where: "col1\x3e\x3e1 \x3d \x271\x27"
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
	<li><a title="2014 TCRISS Results for Moore County" href="/immunize/docs/coverage/TCRISS-2014/Moore-County-Summary_2014.pdf">Moore County</a> <span class="small">(PDF, 502KB)</span></li>
	<li><a title="2014 TCRISS Results for Terry County" href="/immunize/docs/coverage/TCRISS-2014/Terry-County-Summary_2014.pdf">Terry County</a> <span class="small">(PDF, 483KB)</span></li>
</ul>
<hr />
<h2>2007 TCRISS Survey Results</h2>
<ul>
	<li><a title="Armstrong County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59847">Armstrong County</a> <span class="small">(PDF, 12KB)</span></li>
	<li><a title="Bailey County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59850">Bailey County</a> <span class="small">(PDF, 86KB)</span></li>
	<li><a title="Briscoe County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59861">Briscoe County</a> <span class="small">(PDF, 79KB)</span></li>
	<li><a title="Carson County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59866">Carson County</a> <span class="small">(PDF, 80KB)</span></li>
	<li><a title="Castro County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59867">Castro County</a> <span class="small">(PDF, 80KB)</span></li>
	<li><a title="Childress County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59868">Childress County</a> <span class="small">(PDF, 79KB)</span></li>
	<li><a title="Cochran County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59869">Cochran County</a> <span class="small">(PDF, 79KB)</span></li>
	<li><a title="Collingsworth County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59872">Collingsworth County</a> <span class="small">(PDF, 79KB)</span></li>
	<li><a title="Crosby County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59877">Crosby County</a> <span class="small">(PDF, 80KB)</span></li>
	<li><a title="Dallam County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59881">Dallam County</a> <span class="small">(PDF, 79KB)</span></li>
	<li><a title="Dickens County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59886">Dickens County</a> <span class="small">(PDF, 80KB)</span></li>
	<li><a title="Donley County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59888">Donley County</a> <span class="small">(PDF, 12KB)</span></li>
	<li><a title="Deaf Smith County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59883">Deaf Smith County</a> <span class="small">(PDF, 79KB)</span></li>
	<li><a title="Garza County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59898">Garza County</a> <span class="small">(PDF, 79KB)</span></li>
	<li><a title="Gray County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59903">Gray County</a> <span class="small">(PDF, 12KB)</span></li>
	<li><a title="Floyd County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59893">Floyd County</a> <span class="small">(PDF, 80KB)</span></li>
	<li><a title="Hale County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59906">Hale County</a> <span class="small">(PDF, 80KB)</span></li>
	<li><a title="Hall County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59907">Hall County</a> <span class="small">(PDF, 80KB)</span></li>
	<li><a title="Hansford County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59909">Hansford County</a> <span class="small">(PDF, 80KB)</span></li>
	<li><a title="Hartley County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59910">Hartley County</a> <span class="small">(PDF, 80KB)</span></li>
	<li><a title="Hemphill County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59912">Hemphill County</a> <span class="small">(PDF, 80KB)</span></li>
	<li><a title="Hockley County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59915">Hockley County</a> <span class="small">(PDF, 80KB)</span></li>
	<li><a title="Hutchinson County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59917">Hutchinson County</a> <span class="small">(PDF, 12KB)</span></li>
	<li><a title="King County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59925">King County</a> <span class="small">(PDF, 79KB)</span></li>
	<li><a title="Lamb County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59927">Lamb County</a> <span class="small">(PDF, 80KB)</span></li>
	<li><a title="Lipscomb County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59933">Lipscomb County</a> <span class="small">(PDF, 80KB)</span></li>
	<li><a title="Lubbock County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59934">Lubbock County</a> <span class="small">(PDF, 80KB)</span></li>
	<li><a title="Lynn County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59935">Lynn County</a> <span class="small">(PDF, 80KB)</span></li>
	<li><a title="Moore County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59946">Moore County</a> <span class="small">(PDF, 80KB)</span></li>
	<li><a title="Motley County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59947">Motley County</a> <span class="small">(PDF, 80KB)</span></li>
	<li><a title="Ochiltree County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59950">Ochiltree County</a> <span class="small">(PDF, 80KB)</span></li>
	<li><a title="Oldham County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59951">Oldham County</a> <span class="small">(PDF, 80KB)</span></li>
	<li><a title="Parmer County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59952">Parmer County</a> <span class="small">(PDF, 80KB)</span></li>
	<li><a title="Potter County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59953">Potter County</a> <span class="small">(PDF, 80KB)</span></li>
	<li><a title="Randall County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59954">Randall County</a> <span class="small">(PDF, 80KB)</span></li>
	<li><a title="Roberts County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59956">Roberts County</a> <span class="small">(PDF, 78KB)</span></li>
	<li><a title="Sherman County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59963">Sherman County</a> <span class="small">(PDF, 79KB)</span></li>
	<li><a title="Swisher County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59965">Swisher County</a> <span class="small">(PDF, 80KB)</span></li>
	<li><a title="Terry County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59968">Terry County</a> <span class="small">(PDF, 79KB)</span></li>
	<li><a title="Wheeler County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59977">Wheeler County</a> <span class="small">(PDF, 80KB)</span></li>
	<li><a title="Yoakum County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59982">Yoakum County</a> <span class="small">(PDF, 80KB)</span></li>
</ul>

<?php include '/home/codio/workspace/includes/footer.html' ?>