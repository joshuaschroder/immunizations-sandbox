<?php
	$title= "Texas County Retrospective Immunization School Survey (TCRISS) - Region 8" ;
	include '/home/codio/workspace/includes/header.html';
    include '/home/codio/workspace/includes/menus/coverage_menu.html'; 
?>
<div class="Section" id="GoogleMap">
	
    <div id="map" style="width:100%; height:300px;"></div>
    <script type="text/javascript">
		
		function initAutocomplete() {
			
			var map = new google.maps.Map(document.getElementById('map'), {
				center: {lat: 29.3, lng: -98.45},
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
					where: "col1\x3e\x3e1 \x3d \x278\x27"
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
<h2>2012 TCRISS Survey Results</h2>
<ul>
	<li><a title="2012 TCRISS Survey Results for Bandera County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=8589986866">Bandera County</a> <span class="small">(PDF, 63KB)</span></li>
	<li><a title="2012 TCRISS Survey Results for Bexar County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=8589986859">Bexar County</a> <span class="small">(PDF, 63KB)</span></li>
	<li><a title="2012 TCRISS Survey Results for Edwards County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=8589986867">Edwards County</a> <span class="small">(PDF, 63KB)</span></li>
	<li><a title="2012 TCRISS Survey Results for Frio County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=8589986851">Frio County</a> <span class="small">(PDF, 63KB)</span></li>
	<li><a title="2012 TCRISS Survey Results for Gillespie County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=8589986855">Gillespie County</a> <span class="small">(PDF, 63KB)</span></li>
	<li><a title="2012 TCRISS Survey Results for Kinney County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=8589986852">Kinney County</a> <span class="small">(PDF, 63KB)</span></li>
	<li><a title="2012 TCRISS Survey Results for Lavaca County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=8589986853">Lavaca County</a> <span class="small">(PDF, 63KB)</span></li>
	<li><a title="2012 TCRISS Survey Results for Real County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=8589986854">Real County</a> <span class="small">(PDF, 62KB)</span></li>
</ul>

<hr/>
<h2>2009 TCRISS Survey Results</h2>
<ul>
	<li><a title="2009 TCRISS Survey Results for Gonzales County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=8589986890">Gonzales County</a> <span class="small">(PDF, 19KB)</span></li>	
</ul>

<hr/>
<h2>2008 TCRISS Survey Results</h2>
<ul>
	<li><a title="2008 TCRISS Survey Results for Calhoun County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59864">Calhoun County</a> <span class="small">(PDF, 15KB)</span></li>	
	<li><a title="2008 TCRISS Survey Results for Comal County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59874">Comal County</a> <span class="small">(PDF, 15KB)</span></li>
	<li><a title="2008 TCRISS Survey Results for DeWitt County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59885">DeWitt County</a> <span class="small">(PDF, 15KB)</span></li>
	<li><a title="2008 TCRISS Survey Results for Jackson County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59918">Jackson County</a> <span class="small">(PDF, 15KB)</span></li>
	<li><a title="2008 TCRISS Survey Results for Victoria County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59974">Victoria County</a> <span class="small">(PDF, 15KB)</span></li>
</ul>

<hr/>
<h2>2007 TCRISS Survey Results</h2>
<ul>
	<li><a title="2007 TCRISS Survey Results for Atascosa County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59848">Atascosa County</a> <span class="small">(PDF, 15KB)</span></li>
	<li><a title="2007 TCRISS Survey Results for Dimmit County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59887">Dimmit County</a> <span class="small">(PDF, 78KB)</span></li>
	<li><a title="2007 TCRISS Survey Results for Goliad County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59901">Goliad County</a> <span class="small">(PDF, 85KB)</span></li>
	<li><a title="2007 TCRISS Survey Results for Guadalupe County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59905">Guadalupe County</a> <span class="small">(PDF, 79KB)</span></li>
	<li><a title="2007 TCRISS Survey Results for Karnes County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59921">Karnes County</a> <span class="small">(PDF, 84KB)</span></li>
	<li><a title="2007 TCRISS Survey Results for LaSalle County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59928">LaSalle County</a> <span class="small">(PDF, 77KB)</span></li>
	<li><a title="2007 TCRISS Survey Results for Medina County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59940">Medina County</a> <span class="small">(PDF, 85KB)</span></li>
	<li><a title="2007 TCRISS Survey Results for Uvalde County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59971">Uvalde County</a> <span class="small">(PDF, 78KB)</span></li>
	<li><a title="2007 TCRISS Survey Results for Val Verde County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59972">Val Verde County</a> <span class="small">(PDF, 15KB)</span></li>
	<li><a title="2007 TCRISS Survey Results for Wilson County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59981">Wilson County</a> <span class="small">(PDF, 79KB)</span></li>
	<li><a title="2007 TCRISS Survey Results for Zavala County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59983">Zavala County</a> <span class="small">(PDF, 79KB)</span></li>
</ul>

<hr/>
<h2>2006 TCRISS Survey Results</h2>
<ul>
	<li><a title="2006 TCRISS Survey Results for Kendall County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59923">Kendall County</a> <span class="small">(PDF, 95KB)</span></li>	
	<li><a title="2006 TCRISS Survey Results for Kerr County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59924">Kerr County</a> <span class="small">(PDF, 91KB)</span></li>
	<li><a title="2006 TCRISS Survey Results for Maverick County" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=59939">Maverick County</a> <span class="small">(PDF, 91KB)</span></li>
</ul>



<?php include '/home/codio/workspace/includes/footer.html' ?>