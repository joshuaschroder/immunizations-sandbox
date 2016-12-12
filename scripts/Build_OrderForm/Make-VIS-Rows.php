<?php
	
	// THIS SCRIPT TAKES A CSV INPUT FILE AND RENDERS THE CELLS INTO HTML TABLE ROWS
	
	header('Content-Type: text/plain');
	
	// SET THE INPUT FILE
	$file = fopen('Publications-List-VIS.csv', 'r');
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
		echo "\t" . '<td data-title="Publication Title">' . "\n";
		echo "\t\t" . '<label for="Item' . $line[3] . '">' . "\n";
		echo "\t\t\t" . $line[1] . " - " . $line[2] . "\n" ;
		echo "\t\t" . '</label>' . "\n";
		echo "\t\t" . '<br/>' . "\n";
		
		// WRITE LINK FOR VIS 
		// if VIS column contains Ektron ID, then make into a DSHS link
		if(preg_match('/^[0-9]/',$line[8])) {
			echo "\t\t" . '<a title="' . $line[1] . " - " . $line[2] . '" href="http://www.dshs.texas.gov/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=' . $line[8] . '">Statement</a> | ' . "\n" ;
		// else if VIS column contains a full URL, use that instead
		} elseif (preg_match('/^http/',$line[8])) {
			echo "\t\t" . '<a title="' . $line[1] .  " - " . $line[2] . '" href="' . $line[8] . '">Statement</a> | ' . "\n" ;
		}
		//write link for addendums
		echo "\t\t" . '<a title="' . $line[1] . ' Addendum - ' . $line[2] . '" href="http://www.dshs.texas.gov/WorkArea/linkit.aspx?LinkIdentifier=id&amp;ItemID=' . $line[9] . '">Addendum</a>' . "\n" ;
		
		echo "\t" . '</td>' . "\n";
		echo "\t" . '<td data-title="Revision">' . $line[4] . '</td>' . "\n";
		echo "\t" . '<td data-title="Notes">' . $line[5] . '</td>' . "\n";
		echo "\t" . '<td data-title="Quantity">' . "\n";
		echo "\t\t" . '<div class="form-group">' . "\n";
		
		// DISPLAY STATUS BASED ON WHAT IS IN STOCK
		if ($line[7] == "InStock") {
			echo "\t\t\t" . 'Maximum Limit: ' . $line[6] . '<br/>' . "\n";
		} elseif ($line[7] == "Online") {
			echo "\t\t\t" . 'Available Online Only' . '<br/>' . "\n";
		} elseif ($line[7] == "CNA") {
			echo "\t\t\t" . 'Currently Not Available' . '<br/>' . "\n";
		}
		
		// DISPLAY OR HIDE INPUT FIELDS BASED ON WHETHER ITEM IS IN STOCK
		if ($line[7] == "InStock") {
			echo "\t\t\t" . '<input name="Items_' . $line[3] . '_Quantity" id="Item' . $line[3] . '" type="number" min="0" max="' . $line[6] . '" placeholder="Enter Qty. (Max ' . $line[6] . ')">' . "\n";
			echo "\t\t\t" . '<div class="help-block with-errors"></div>' . "\n"; 
			echo "\t\t\t" . '<div class="hidden">' . "\n";
			echo "\t\t\t\t" . '<input name="Items_' . $line[3] . '_Code" value="' . $line[0] . '" type="hidden">' . "\n";
			echo "\t\t\t\t" . '<input name="Items_' . $line[3] . '_Description" value="' . $line[1] . '" type="hidden">' . "\n";
			echo "\t\t\t" . '</div>' . "\n";
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
