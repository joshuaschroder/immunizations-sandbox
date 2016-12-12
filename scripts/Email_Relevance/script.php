<?php
	$title= "Immunizations Newsletter Feedback" ;
	include '/home/codio/workspace/includes/header_plain.html';
    include '/home/codio/workspace/includes/menus/no_menu.html'; 
?>
		
		<?php
			date_default_timezone_set('America/Chicago');

			$varRelevant = $_GET["relevant"];
			$varArticle = $_GET["article"];
			$varUserID = $_GET["userID"];
			$varCampaignID = $_GET["campaignID"];
			$varDate = date("Y-m-d H:i:s");
			$varOutput = "file.csv";
			
			if (!empty($varArticle)) {
				
				/* Begin Routine if Value Exists for Article */
				
				/* Create Array */
				$list = array (
					array($varRelevant, $varArticle, $varUserID, $varCampaignID, $varDate)
				);
				
				/* Write Array to the File */
				$fp = fopen($varOutput, 'a');
				foreach ($list as $fields) {
					fputcsv($fp, $fields);
				}
				fclose($fp);
				
				/* Output Response for Non-Relevant Articles */
				if ($varRelevant=="No") {
					echo "<p>Thank you for letting us know that <i>\"" . $varArticle . "\"</i> wasn't relevant to you. We'll take this into account in selecting future articles for your newsletter.<p>" ;
					
				/* Output Response for Relevant Articles */
				} elseif ($varRelevant=="Yes") {
					echo "<p>Thank you for letting us know that you liked <i>\"" . $varArticle . "\"</i>. We'll try to add more articles like this when creating your newsletter.<p>" ;
					
				/* Output Error Message if No Value Exists for Relevance */					
				} else {
					echo "<p>Something has gone wrong and may be broken. Please contact <a href=\"mailto:Joshua.Schroder@dshs.texas.gov\">Joshua.Schroder@dshs.texas.gov</a>.</p>";
					echo "<p>Error: No relevance specified.</p>";
				}
				
			/* Output Error Message if No Value Exists for Article */
			} else {
				echo "<p>Something has gone wrong and may be broken. Please contact <a href=\"mailto:Joshua.Schroder@dshs.texas.gov\">Joshua.Schroder@dshs.texas.gov</a>.</p>";
				echo "<p>Error: No article specified.</p>";
			}
		?>
		
<?php include '/home/codio/workspace/includes/footer_plain.html' ?>