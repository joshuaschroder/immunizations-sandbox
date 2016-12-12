<?php
	
	// THIS SCRIPT TAKES A CSV INPUT FILE AND RENDERS THE CELLS INTO HTML TABLE ROWS
	
	header('Content-Type: text/plain');
	
	// SET THE INPUT FILE
	$file = fopen('Publications-List-2.csv', 'r');
	// SET THE ROW COUNTER TO 1
	$row = 1;
	
	// START THE LOOP
	while (($line = fgetcsv($file)) !== FALSE) {
		
		// SKIP THE FIRST ROW OF TABLE HEADERS
		if($row == 1){ $row++; continue; }
		
		// BEGIN WRITING HTML
		echo "<tr>" . "\n" ;
		echo "\t" . '<td data-title="Stock Number">' . $line[0] . '</td>' . "\n" ;
		
		// DISPLAY OR HIDE LABEL FOR INPUT BASED ON WHETHER ITEM IS IN STOCK
		if ($line[6] == "InStock") {
				echo "\t" . '<td data-title="Publication Title">' . "\n";
				echo "\t\t" . '<label for="Item' . $line[2] . '">' . "\n";
				if (empty($line[7])) {
					echo "\t\t\t" . $line[1] . "\n" ;
				} else {
					echo "\t\t\t" . '<a title="' . $line[1] . '" href="http://www.dshs.texas.gov/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=' . $line[7] . '">' . $line[1] . ' (PDF)</a>' . "\n";
				}
				echo "\t\t" . '</label>' . "\n";
				echo "\t" . '</td>' . "\n";
		} elseif (($line[6] == "Online") || ($line[6] == "CNA")) {
			echo "\t" . '<td data-title="Publication Title">' . "\n";
			echo "\t\t" . '<!--label for="Item' . $line[2] . '"-->' . "\n";
			if (empty($line[7])) {
				echo "\t\t\t" . $line[1] . "\n" ;
			} else {
				echo "\t\t\t" . '<a title="' . $line[1] . '" href="http://www.dshs.texas.gov/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=' . $line[7] . '">' . $line[1] . ' (PDF)</a>' . "\n";
			}
			echo "\t\t" . '<!--/label-->' . "\n";
			echo "\t" . '</td>' . "\n";
		}
		
		echo "\t" . '<td data-title="Revision">' . $line[3] . '</td>' . "\n";
		echo "\t" . '<td data-title="Notes">' . $line[4] . '</td>' . "\n";
		echo "\t" . '<td data-title="Quantity">' . "\n";
		echo "\t\t" . '<div class="form-group">' . "\n";
		
		// DISPLAY STATUS BASED ON WHAT IS IN STOCK
		if ($line[6] == "InStock") {
			echo "\t\t\t" . 'Maximum Limit:' . $line[5] . '<br/>' . "\n";
		} elseif ($line[6] == "Online") {
			echo "\t\t\t" . 'Available Online Only' . '<br/>' . "\n";
		} elseif ($line[6] == "CNA") {
			echo "\t\t\t" . 'Currently Not Available' . '<br/>' . "\n";
		}
		
		// DISPLAY OR HIDE INPUT FIELDS BASED ON WHETHER ITEM IS IN STOCK
		if ($line[6] == "InStock") {
			echo "\t\t\t" . '<input name="Items_' . $line[2] . '_Quantity" id="Item' . $line[2] . '" type="number" min="0" max="' . $line[5] . '" placeholder="Enter Qty. (Max ' . $line[5] . ')">' . "\n";
			echo "\t\t\t" . '<div class="help-block with-errors"></div>' . "\n"; 
			echo "\t\t\t" . '<div class="hidden">' . "\n";
			echo "\t\t\t\t" . '<input name="Items_' . $line[2] . '_Code" value="' . $line[0] . '" type="hidden">' . "\n";
			echo "\t\t\t\t" . '<input name="Items_' . $line[2] . '_Description" value="' . $line[1] . '" type="hidden">' . "\n";
			echo "\t\t\t" . '</div>' . "\n";
		} elseif (($line[6] == "Online") || ($line[6] == "CNA")) {
			echo "\t\t\t" . '<!--input name="Items_' . $line[2] . '_Quantity" id="Item' . $line[2] . '" type="number" min="0" max="' . $line[5] . '" placeholder="Enter Qty. (Max ' . $line[5] . ')"-->' . "\n";
			echo "\t\t\t" . '<!--div class="help-block with-errors"></div-->' . "\n"; 
			echo "\t\t\t" . '<!--div class="hidden"-->' . "\n";
			echo "\t\t\t\t" . '<!--input name="Items_' . $line[2] . '_Code" value="' . $line[0] . '" type="hidden"-->' . "\n";
			echo "\t\t\t\t" . '<!--input name="Items_' . $line[2] . '_Description" value="' . $line[1] . '" type="hidden"-->' . "\n";
			if (empty($line[7])) {
				echo "\t\t\t\t" . '<!--input name="Items_' . $line[2] . '_ProductURI" value="http://www.dshs.texas.gov/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=EKTRON_ID_GOES_HERE" type="hidden"-->' . "\n";
			} else {
				echo "\t\t\t\t" . '<!--input name="Items_' . $line[2] . '_ProductURI" value="http://www.dshs.texas.gov/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=' . $line[7] . '" type="hidden"-->' . "\n";
			}
			echo "\t\t\t" . '<!--/div-->' . "\n";
		}

		echo "\t\t" . '</div>' . "\n";
		echo "\t" . '</td>' . "\n";
		echo '</tr>' . "\n" ;
		echo "\n" ;
		echo "\n" ;
		
		// INCREMENT THE ROW COUNTER
		// needed for skipping first row of table headers
		$row++;
	}
	fclose($file);
	
?> 
