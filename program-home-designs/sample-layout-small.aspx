<?php
	$title= "Sample Program Homepage - Small Programs" ;
	include '/home/codio/workspace/includes/header.html';
	include '/home/codio/workspace/includes/menus/sample_small_menu.html'; 
?>

<div id="Introduction">
	<p>This is an excellent place to describe what the program does. Take this opportunity to describe the program's mission as well as the intended population that the program serves. Keep in mind that this description should make sense to people who are unfamiliar with the program.</p>
	<p>The content sections below may be mixed, matched, and re-arranged to meet the needs of individual programs.</p>
</div>

<div id="TopTopics">
	<div class="layout-50">
		<hr/>
		<h2>Topic One</h2>
		<p>Use these sections for the most frequently accessed topics in your program, which can be determined from web analytics reports.<a class="readmore blue" title="Section One Title Text" href="#">Continue Reading</a></p>
		<br/>
	</div>
	
	<div class="layout-50">
		<hr/>
		<h2>Topic Two</h2>
		<p>Site visitors will look at these areas first -- before even looking at the navigation menus. Only put info here if it's really important.<a class="readmore blue" title="Section Two Title Text" href="#">Continue Reading</a></p>
		<br/>
	</div>
	
</div>

<div id="ContactInfo">
	<hr/>
	<h2>Sign up for Email Updates</h2>
	<p>Sign up to receive email updates about important changes to this program. This feature will serve as a tool to increase communication with license holders regarding new information added to the website, updates to administrative rules, and urgent updates.
	</p>
	<p><a title="sign up for email updates" href="https://public.govdelivery.com/accounts/TXHHSC/subscriber/new?topic_id=TXHHSC_XXX"><img src="https://dshs.texas.gov/uploadedImages/Common/button-govdelsq.gif" alt="sign up for email updates" title="sign up for email updates"></a></p>
	<br/>	
<!--h2>Contact Information</h2>
	<p style="margin-left:20px;">
		Email: <a title="program-name@dshs.texas.gov" href="mailto:program-name@dshs.texas.gov">ProgramName@dshs.texas.gov</a><br/>
		Phone: (512) 555-1212<br/>
		Fax: (512) 555-2121<br/>
</p-->
</div>

<style>

	.layout-50 {
		width:47%; 
		margin-right:3%; 
		float:left;
	}
	
	.layout-33 {
		width:30%; 
		margin-right:3%; 
		float:left;
	}
	
	.layout-66 {
		width:63%; 
		margin-right:3%; 
		float:left;
	}
	
	.news-item {
		margin-left:20px;
	}
	
	.news-item h3 {
		margin:35px 0 5px 0;
	}
	
	.news-item .date {
		display:block;
		font-style: italic;
		margin-bottom:5px;
	}
	
	.readmore {
		border:1px solid #496FAB; 
		color: #496FAB;
		display:block; 
		margin:10px 0; 
		padding:10px; 
		text-align:center;
		text-decoration:none;
		width:125px; 
	}
	
	.readmore:hover {
		background-color:#496FAB;
		color: #FFF;
		text-decoration:none;	
	}
	
	.blue {
		background-color:#496FAB;
		color: #FFFFFF;
	}
	
</style>

<?php include '/home/codio/workspace/includes/footer.html' ?>