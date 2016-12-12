<?php
	$title= "Texas County Retrospective Immunization School Survey (TCRISS) - Region 7" ;
	include '/home/codio/workspace/includes/header.html';
    include '/home/codio/workspace/includes/menus/coverage_menu.html'; 
?>

<div class="Section" id="GoogleMap">
    <div id="map" style="width:100%; height:300px;"></div>
    <script type="text/javascript">
		function initAutocomplete() {
			// Add New Base Map	
			var map = new google.maps.Map(document.getElementById('map'), {
				center: {lat: 30.9, lng: -97},
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
					where: "col1\x3e\x3e1 \x3d \x277\x27"
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
	<li><a title="2014 Bosque County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=8590006817">2014 Bosque County</a> <span class="small">(PDF, 100KB)</span></li>
	<li><a title="2014 Burleson County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=8590006816">2014 Burleson County</a> <span class="small">(PDF, 108KB)</span></li>
	<li><a title="2014 Freestone County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=8590006820">2014 Freestone County</a> <span class="small">(PDF, 100KB)</span></li>
	<li><a title="2014 Grimes County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=8590006818">2014 Grimes County</a> <span class="small">(PDF, 95KB)</span></li>
	<li><a title="2014 Lee County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=8590006822">2014 Lee County</a> <span class="small">(PDF, 91KB)</span></li>
	<li><a title="2014 McLennan County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=8590006821">2014 McLennan County</a> <span class="small">(PDF, 76KB)</span></li>
	<li><a title="2014 Milam County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=8590006819">2014 Milam County</a> <span class="small">(PDF, 99KB)</span></li>
</ul>
<hr />
<h2>2013 TCRISS Survey Results</h2>
<ul>
	<li><a title="2013 Caldwell County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=8589961880">2013 Caldwell County</a> <span class="small">(PDF, 416KB)</span></li>
	<li><a title="2013 Falls County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=8589961884">2013 Falls County</a> <span class="small">(PDF, 416KB)</span></li>
	<li><a title="2013 Llano County" href="/immunize/docs/coverage/TCRISS_llano.pdf">2013 Llano County</a> <span class="small">(PDF, 416KB)</span></li>
	<li><a title="2013 Robertson County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=8589961879">2013 Robertson County</a> <span class="small">(PDF, 416KB)</span></li>
	<li><a title="2013 Washington County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=8589961877">2013 Washington County</a> <span class="small">(PDF, 416KB)</span></li>
</ul>
<hr />
<h2>2012 TCRISS Survey Results</h2>
<ul>
	<li><a title="2012 Bastrop County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=8589986858">2012 Bastrop County</a> <span class="small">(PDF, 63KB)</span></li>
	<li><a title="2012 Bell County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=8589986857">2012 Bell County</a> <span class="small">(PDF, 63KB)</span></li>
	<li><a title="2012 Fayette County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=8589986860">2012 Fayette County</a> <span class="small">(PDF, 63KB)</span></li>
	<li><a title="2012 Hays County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=8589986856">2012 Hays County</a> <span class="small">(PDF, 63KB)</span></li>
	<li><a title="2012 Hill County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=8589986862">2012 Hill County</a> <span class="small">(PDF, 63KB)</span></li>
	<li><a title="2012 Leon County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=8589986861">2012 Leon County</a> <span class="small">(PDF, 63KB)</span></li>
	<li><a title="2012 Madison County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=8589986863">2012 Madison County</a> <span class="small">(PDF, 63KB)</span></li>
	<li><a title="2012 Mills County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=8589986864">2012 Mills County</a> <span class="small">(PDF, 63KB)</span></li>
	<li><a title="2012 San Saba County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=8589986865">2012 San Saba County</a> <span class="small">(PDF, 63KB)</span></li>
</ul>
<hr />
<h2>2011 TCRISS Survey Results</h2>
<ul>
	<li><a title="2011 Blanco County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=8589974958">2011 Blanco County</a> <span class="small">(PDF, 13KB)</span></li>
	<li><a title="2011 Brazos County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=8589974959">2011 Brazos County</a> <span class="small">(PDF, 13KB)</span></li>
	<li><a title="2011 Burnet County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=8589974960">2011 Burnet County</a> <span class="small">(PDF, 13KB)</span></li>
	<li><a title="2011 Coryell County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=8589974952">2011 Coryell County</a> <span class="small">(PDF, 13KB)</span></li>
	<li><a title="2011 Hamilton County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=8589974953">2011 Hamilton County</a> <span class="small">(PDF, 13KB)</span></li>
	<li><a title="2011 Lampasas County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=8589974954">2011 Lampasas County</a> <span class="small">(PDF, 13KB)</span></li>
	<li><a title="2011 Limestone County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=8589974955">2011 Limestone County</a> <span class="small">(PDF, 13KB)</span></li>
	<li><a title="2011 Travis County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=8589974956">2011 Travis County</a> <span class="small">(PDF, 13KB)</span></li>
	<li><a title="2011 Williamson County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=8589974957">2011 Williamson County</a> <span class="small">(PDF, 13KB)</span></li>
</ul>
<hr />
<h2>2010 TCRISS Survey Results</h2>
<ul>
	<li><a title="2010 Bosque County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=8589961885">2010 Bosque County</a> <span class="small">(PDF, 17KB)</span></li>
	<li><a title="2010 Burleson County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=8589961881">2010 Burleson County</a> <span class="small">(PDF, 17KB)</span></li>
	<li><a title="2010 Caldwell County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=8590000001">2010 Caldwell County</a> <span class="small">(PDF, 17KB)</span></li>
	<li><a title="2010 Falls County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=8590000002">2010 Falls County</a> <span class="small">(PDF, 17KB)</span></li>
	<li><a title="2010 Freestone County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=8589961882">2010 Freestone County</a> <span class="small">(PDF, 17KB)</span></li>
	<li><a title="2010 Grimes County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=8589961878">2010 Grimes County</a> <span class="small">(PDF, 17KB)</span></li>
	<li><a title="2010 Lee County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=8589961876">2010 Lee County</a> <span class="small">(PDF, 17KB)</span></li>
	<li><a title="2010 Llano County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=8590000003">2010 Llano County</a> <span class="small">(PDF, 17KB)</span></li>
	<li><a title="2010 McLennan County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=8589961883">2010 McLennan County</a> <span class="small">(PDF, 17KB)</span></li>
	<li><a title="2010 Milam County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59943">2010 Milam County</a> <span class="small">(PDF, 17KB)</span></li>
	<li><a title="2010 Robertson County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=8590000005">2010 Robertson County</a> <span class="small">(PDF, 17KB)</span></li>
	<li><a title="2010 Washington County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=8590000004">2010 Washington County</a> <span class="small">(PDF, 17KB)</span></li>
</ul>
<hr />
<h2>2008 TCRISS Survey Results</h2>
<ul>
	<li><a title="2008 Bastrop County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59852">2008 Bastrop County</a> <span class="small">(PDF, 15KB)</span></li>
	<li><a title="2008 Bell County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59854">2008 Bell County</a> <span class="small">(PDF, 15KB)</span></li>
	<li><a title="2008 Fayette County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59892">2008 Fayette County</a> <span class="small">(PDF, 15KB)</span></li>
	<li><a title="2008 Hays County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59911">2008 Hays County</a> <span class="small">(PDF, 17KB)</span></li>
	<li><a title="2008 Hill County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59914">2008 Hill County</a> <span class="small">(PDF, 15KB)</span></li>
	<li><a title="2008 Leon County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59930">2008 Leon County</a> <span class="small">(PDF, 15KB)</span></li>
	<li><a title="2008 Madison County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59936">2008 Madison County</a> <span class="small">(PDF, 15KB)</span></li>
	<li><a title="2008 Mills County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59945">2008 Mills County</a> <span class="small">(PDF, 15KB)</span></li>
	<li><a title="2008 San Saba County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59959">2008 San Saba County</a> <span class="small">(PDF, 17KB)</span></li>
</ul>
<hr />
<h2>2007 TCRISS Survey Results</h2>
<ul>
	<li><a title="2007 Blanco County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59857">2007 Blanco County</a> <span class="small">(PDF, 79KB)</span></li>
	<li><a title="2007 Brazos County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59860">2007 Brazos County</a> <span class="small">(PDF, 86KB)</span></li>
	<li><a title="2007 Burnet County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59863">2007 Burnet County</a> <span class="small">(PDF, 80KB)</span></li>
	<li><a title="2007 Coryell County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59876">2007 Coryell County</a> <span class="small">(PDF, 80KB)</span></li>
	<li><a title="2007 Hamilton County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59908">2007 Hamilton County</a> <span class="small">(PDF, 80KB)</span></li>
	<li><a title="2007 Travis County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59970">2007 Travis County</a> <span class="small">(PDF, 78KB)</span></li>
	<li><a title="2007 Williamson County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59979">2007 Williamson County</a> <span class="small">(PDF, 78KB)</span></li>
</ul>
<hr />
<h2>2006 TCRISS Survey Results</h2>
<ul>
	<li><a title="2006 Limestone County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59932">2006 Limestone County</a> <span class="small">(PDF, 90KB)</span></li>
	<li><a title="2006 Milam County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59944">2006 Milam County</a> <span class="small">(PDF, 91KB)</span></li>
	<li><a title="2006 Williamson County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59980">2006 Williamson County</a> <span class="small">(PDF, 91KB)</span></li>
</ul>
<hr />
<h2>2005 TCRISS Survey Results</h2>
<ul>
	<li><a title="2005 McLennan County" href="/immunize/coverage/2005_McLennan.pdf">2005 McLennan County</a> <span class="small">(PDF, 18KB)</span></li>
</ul>
<hr/>

<?php include '/home/codio/workspace/includes/footer.html' ?>