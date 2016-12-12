<?php
	$title= "HL7 and Meaningful Use - ImmTrac Immunization Registry" ;
	include '/home/codio/workspace/includes/header.html';
    include '/home/codio/workspace/includes/menus/immtrac_menu.html'; 
?>

<hr/>
<h2>Table of Contents</h2>
<ul>
	<li><a title="Meaningful Use (MU) Overview" href="#overview">Meaningful Use (MU) Overview</a></li>
	<li><a title="Meaningful Use Stage 1" href="#Stage1">Meaningful Use Stage 1</a></li>
	<li><a title="Meaningful Use Stage 2" href="#Stage2">Meaningful Use Stage 2</a></li>
	<li><a title="Helpful Documents" href="#docs">Helpful Documents</a></li>
	<li><a title="HL7 Frequently Asked Questions" href="#faq">HL7 Frequently Asked Questions</a></li>
</ul>
<hr/>

<a class="bookmark" title="overview" name="overview"></a>
<h2>Meaningful Use (MU) Overview</h2>
<p>As stated on <a title="www.cms.gov" href="http://www.cms.gov">www.cms.gov</a>, one of the goals of the American Reinvestment &amp; Recovery Act (ARRA or "the Stimulus Package"), enacted in February 2009, is to increase the "meaningful" use of Electronic Health Record (EHR) systems among medical providers. To attain this goal, The Centers for Medicare and Medicaid Services (CMS) have launched an incentive program using ARRA funds to encourage Eligible Providers (EPs), Eligible Hospitals (EHs), and Critical Access Hospitals (CAHs) to transition to the use of Electronic Health Record (EHR) systems.</p>
<p>The Medicare and Medicaid EHR Incentive Programs provide financial incentives to EPs, EHs, and CAHs for the "meaningful use" of certified EHR technology to improve patient care. To be approved as a recipient of an EHR incentive payment, providers must show they are "meaningfully using" their EHRs by meeting established CMS objectives. </p>
<p>The financial incentive programs are staged in three steps with increasing requirements for participation. CMS requirements are as follows: </p>
<ol>
	<li>All providers must meet Stage 1 requirements for a 90-day period in their first Meaningful Use year and a full year in their second Meaningful Use year. </li>
	<li>Providers must meet Stage 2 requirements for two full years.</li>
	<li>CMS is finalizing requirements for Stage 3.</li>
</ol>
<p>Although EPs participate in the program in accordance with the calendar year, EHs and CAHs participate following the federal fiscal year.</p>
<p><strong>CMS Criteria</strong></p>
<p>Using HL7 messaging standards for immunization, data is exchanged between the Texas Immunization Registry (ImmTrac) and the EHR.</p>
<p>To meet the meaningful use criteria, EPs, EHs, and CAHs </p>
<ul>
	<li>Must adopt certified EHR technology,</li>
	<li>Use it to achieve specific objectives, and</li>
	<li>Become meaningful users of certified EHRs to qualify for incentive payments through the Medicare EHR Incentive Program administered by CMS.</li>
</ul>
<p>You may also visit <a title="DSHS's Meaningful Use web page" href="http://www.dshs.state.tx.us/MU/">DSHS's Meaningful Use web page</a> for additional information. </p>

<hr>
<a class="bookmark" title="Stage1" name="Stage1"></a>
<h2>Meaningful Use Stage 1</h2>
<p>Electronic exchange of immunization data from a certified EHR to an immunization registry is one of the options to fulfill Meaningful Use Stage 1. This includes both the capability to submit electronic data to immunization registries or immunization information systems, and the actual submission of electronic data in compliance with applicable law and practice.</p>
<p>To meet the requirements, a provider must perform at least <strong>one test</strong> of the certified EHR technology's ability to submit electronic data to an immunization registry (ImmTrac) and continue to submit data if the test is successful. For more information about Meaningful Use Stage 1, see the <a title="Medicare and Medicaid EHR Incentive Program's web page" href="https://www.cms.gov/Regulations-and-Guidance/Legislation/EHRIncentivePrograms/Meaningful_Use.html">Medicare and Medicaid EHR Incentive Program's web page</a>. </p>

<h3>Stage 1 Readiness Questions</h3>
<p>Please answer the questions below <strong><em>before</em></strong> submitting a test message for Meaningful Use Stage 1. If the answer to either question is "No," then you are not ready to participate in Meaningful Use Stage 1 for immunizations with the Texas Immunization Registry (ImmTrac).</p>
<ol>
	<li><strong>Does your organization administer immunizations? </strong><ul>
		<li>Yes - proceed to question 2</li>
		<li><a title="No" href="#faq-1">No - see FAQs</a></li>
	</ul>
	</li>
	<li><strong>Is your organization ready to submit an HL7 test message today?</strong> <ul>
		<li>Yes - proceed to registration/submitting a test message for Stage 1</li>
		<li><a title="No" href="#faq-2">No - see FAQs</a></li>
	</ul>
	</li>
</ol>
<h3>Submitting a Test Message for Stage 1</h3>
<p>To submit a test message for Meaningful Use Stage 1 with the Texas Immunization Registry (ImmTrac):</p>
<ol>
	<li>Answer "Yes" to all of the Meaningful Use Stage 1 Readiness Questions (<em>Note: if any answer is "No," do not proceed; follow the directions displayed after answering "No"</em>) </li>
	<li><a title="Register with ImmTrac" href="https://www.immtrac.tdh.state.tx.us/outreach/SiteAgreement/SiteAgreement.aspx">Register with ImmTrac</a> </li>
	<li><a title="Log into the system" href="https://www.immtrac.tdh.state.tx.us/outreach/login/login.aspx">Log into the system</a> </li>
	<li>Select "Meaningful Use Stage 1: Submit Test Message"</li>
	<li>Complete the form</li>
	<li>Paste your HL7 test message into the HL7 message block</li>
	<li>Click "Test HL7 message;" immediate feedback will be displayed</li>
	<li>Print a copy of the page for your records</li>
	<li>ImmTrac staff will validate your message; you will be sent an e-mail verifying the results of your Meaningful Use Stage 1 test message</li>
</ol>
<p>For further instructions, see the <a title="Meaningful Use Quick Guide" href="http://www.dshs.state.tx.us/immunize/immtrac/docs/E11-14182.pdf">Meaningful Use Quick Guide</a>.</p>
<p>For Meaningful Use (HL7) resources specific to ImmTrac, please see the <a title="Helpful&nbsp;Documents section" href="#docs">Helpful&nbsp;Documents section</a> below.</p>
<p>If you have any questions, please email <a href="mailto:ImmTracMU@dshs.state.tx.us">ImmTracMU@dshs.state.tx.us</a>.</p>

<hr>
<a class="bookmark" title="Stage2" name="Stage2"></a>
<h2>Meaningful Use Stage 2</h2>
<p>Regular, on-going submission of immunization data to immunization registries is one of the requirements for Meaningful Use Stage 2. To accomplish this, providers can submit HL7 batch files to the Texas Immunization Registry (ImmTrac).</p>
<p>For more information about Meaningful Use Stage 2, see the <a title="CMS Stage 2 web page" href="https://www.cms.gov/Regulations-and-Guidance/Legislation/EHRIncentivePrograms/Stage_2.html">CMS Stage 2 web page</a>.</p>
<h3>Stage 2 Readiness Questions</h3>
<p>Please answer the questions below <strong><em>before</em></strong> registering intent for Meaningful Use Stage 2. If the answer to either question is "No," then you are not ready to participate in Meaningful Use Stage 2 for immunizations with the Texas Immunization Registry (ImmTrac).</p>
<ol>
	<li><strong>Does your organization administer immunizations?</strong> <ul>
		<li>Yes - proceed to question 2</li>
		<li><a title="No" href="#faq-1">No - see FAQs</a></li>
	</ul>
	</li>
	<li><strong>Is your organization ready to submit an HL7 test message today?</strong> <ul>
		<li>Yes - proceed to registration/attestation</li>
		<li><a title="No" href="#faq-2">No - see FAQs</a></li>
	</ul>
	</li>
</ol>
<p><strong>Meaningful Use Stage 2: Can I participate if I don't administer vaccinations?</strong></p>
<p>An EP, EH, or CAH who does not administer immunizations during the EHR reporting period may receive an exclusion from reporting immunizations.</p>
<p>For eligible provider exclusion information, refer to page 44568 of the <a title="CMS Final Rules" href="http://www.gpo.gov/fdsys/pkg/FR-2010-07-28/pdf/2010-17207.pdf">CMS Final Rules</a>, 42 Code of Federal Regulations (CFR) 495.6(e)(9)(iii).</p>
<p>For EH and CAH exclusion information, refer to page 44570 of the <a title="CMS Final Rules" href="http://www.gpo.gov/fdsys/pkg/FR-2010-07-28/pdf/2010-17207.pdf">CMS Final Rules</a>, 42 Code of Federal Regulations (CFR) 495.6(g)(8)(iii).</p>
<h3>Registering Intent to Participate in Stage 2</h3>
<p>To participate in Meaningful Use Stage 2:</p>
<ol>
	<li>Answer "Yes" to all of the Meaningful Use Stage 2 Readiness Questions</li>
	<li><a title="Register with ImmTrac" href="https://www.immtrac.tdh.state.tx.us/outreach/SiteAgreement/SiteAgreement.aspx">Register with ImmTrac</a> </li>
	<li><a title="Log into the system" href="https://www.immtrac.tdh.state.tx.us/outreach/login/login.aspx">Log into the system</a> </li>
	<li>Select "Meaningful Use Stage 2: Register Intent"</li>
	<li>Complete the form</li>
	<li>Print a copy of the page for your records</li>
	<li>Submit an HL7 2.5.1 formatted file to ImmTrac within 30 days*</li>
</ol>
<p>For further instructions, see the <a title="Meaningful Use Quick Guide" href="/immunize/immtrac/docs/E11-14182.pdf">Meaningful Use Quick Guide</a>.</p>

<h3>Meaningful Use Stage 2: HL7 v2.5.1 Formatted Batch Files</h3>
<p>Once you submit your Registration of Intent for Meaningful Use with ImmTrac, you will be contacted within <strong>one week</strong> to begin the testing process. Please do not register your intent to participate in Meaningful Use Stage 2 for immunizations until your organization is ready to submit HL7 v2.5.1 formatted batch files. <strong>ImmTrac expects you to submit your first test file within 30 days of registering to on-board for Meaningful Use Stage 2</strong>. If you do not submit your first test file within this time period, then ImmTrac may require you to register again and restart the onboarding process. Please work with your EHR vendor in order to attain this capability.</p>

<p>For Meaningful Use (HL7) resources specific to ImmTrac, please see the <a title="Helpful Documents section" href="#docs">Helpful Documents section</a> below or visit the <a title="DSHS Support for Meaningful Use of EHRs web page" href="http://www.dshs.state.tx.us/mu/">DSHS Support for Meaningful Use of EHRs web page</a>.</p>
<p>If you have any further questions, please email <a href="mailto:ImmTracMU@dshs.state.tx.us">ImmTracMU@dshs.state.tx.us</a>.</p>
<hr>

<a class="bookmark" title="docs" name="docs"></a>
<h2>Helpful Documents</h2>
<table border="1" cellspacing="0" summary="MU helpful links" cellpadding="0" width="100%">
	<tbody>
		<tr>
			<td valign="top"><strong>Document</strong> </td>
			<td valign="top"><p><strong>Description</strong></p>
			</td>
		</tr>
		<tr>
			<td valign="top"><p><a title="HL7 Implementation Guide" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=8589979090">HL7 Implementation Guide</a> </p>
			</td>
			<td valign="top"><p>Contains the specifications for the HL7 data file.</p>
			</td>
		</tr>
		<tr>
			<td valign="top"><p><a title="HL7 File Processing" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=8589979097">HL7 File Processing</a> </p>
			</td>
			<td valign="top"><p>Slide deck that walks through the processing steps your files go through after ImmTrac receives them.</p>
			</td>
		</tr>
		<tr>
			<td valign="top"><p><a title="HL7 Common Errors and FAQs" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=8589979095">HL7 Common Errors and FAQs</a> </p>
			</td>
			<td valign="top"><p>Contains descriptions of the most common errors that files and messages encounter, as well as an FAQ section for questions that are often asked by providers during the HL7 on-boarding process.</p>
			</td>
		</tr>
		<tr>
			<td valign="top"><p><a title="CVX Vaccination Code List" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=8589979094">CVX Vaccination Code List</a> </p>
			</td>
			<td valign="top"><p>Lists each CDC vaccination code and corresponding CPT code, if available. The legend on K1 indicates inactive codes and codes not accepted by the Texas Immunization Registry.</p>
			</td>
		</tr>
		<tr>
			<td valign="top"><p><a title="Job Aid for Fixing Errors" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=8589979091">Job Aid for Fixing Errors</a> </p>
			</td>
			<td valign="top"><p>Runs through several examples of locating and fixing errors.</p>
			</td>
		</tr>
		<tr>
			<td valign="top"><p><a title="HL7 Error/Issue List" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=8589979096">HL7 Error/Issue List</a> </p>
			</td>
			<td valign="top"><p>Helps you determine the exact location of the errors and warnings received in your file so you can analyze and fix them.</p>
			</td>
		</tr>
		<tr>
			<td valign="top"><p><a title="Return Notification File Job Aid" href="/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=8589979092">Return Notification File Job Aid</a> </p>
			</td>
			<td valign="top"><p>Helps you understand the file that is produced for you after your data has been processed by the Texas Immunization Registry.</p>
			</td>
		</tr>
	</tbody>
</table>

<hr/>
<a class="bookmark" title="faq" name="faq"></a>
<h2>HL7 Frequently Asked Questions</h2>
<br/>
<a class="bookmark" title="faq-1" name="faq-1"></a>
<p><strong>Can I Participate in Meaningful Use If I Don't Administer Vaccinations?</strong></p>
<p>Reporting of immunizations is one of three public health measures to choose from to complete Meaningful Use Stage 1 requirements. If you do not administer immunizations, you can select another public health measure or claim an exclusion for immunizations. Please visit the <a title="DSHS Support for Meaningful Use of EHRs" href="http://www.dshs.state.tx.us/mu/">DSHS Support for Meaningful Use of EHRs</a> page or the <a title="Submitting Electronic Immunization Information to DSHS" href="http://www.dshs.state.tx.us/mu/immunizations.aspx">Submitting Electronic Immunization Information to DSHS</a> page if you would like to learn more about other public health measures or need more information about exclusions.</p>
<hr/>

<a class="bookmark" title="faq-2" name="faq-2"></a>
<p><strong>Are HL7 Formatted Test Messages Required?</strong></p>
<p>HL7 formatted test messages are required for Meaningful Use Stage 1. Please return when you are able to submit an HL7-formatted test message.</p>
<hr/>


<?php include '/home/codio/workspace/includes/footer.html' ?>