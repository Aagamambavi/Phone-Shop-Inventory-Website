<?php
    require_once("phone.php");
    
    if (isset($_SESSION['login'])) {
        
        $phoneID = filter_input(INPUT_POST, 'phoneID', FILTER_VALIDATE_INT);
        $phoneTypeID = filter_input(INPUT_POST, 'phoneTypeID', FILTER_VALIDATE_INT);
        $phoneWholesalePrice = filter_input(INPUT_POST, 'phoneWholesalePrice', FILTER_VALIDATE_FLOAT);
        $phoneListPrice = filter_input(INPUT_POST, 'phoneListPrice', FILTER_VALIDATE_FLOAT);
        
        if (!$phoneID) {
            echo "<h2>Error: You must enter a valid numeric Phone ID.</h2>\n";
        } 
        else if (Phone::findPhone($phoneID)) {
             echo "<h2>Error: A phone with ID #$phoneID already exists.</h2>\n";
        }
        else if ($phoneTypeID === false || $phoneWholesalePrice === false || $phoneListPrice === false) {
            echo "<h2>Error: Price and Type ID must be valid numbers.</h2>\n";
        }
        else {
            $phoneCode = htmlspecialchars($_POST['phoneCode']);
            $phoneName = htmlspecialchars($_POST['phoneName']);
            $phoneDescription = htmlspecialchars($_POST['phoneDescription']);
            $OS = htmlspecialchars($_POST['OS']);
            $storageCapacity = htmlspecialchars($_POST['storageCapacity']);
            
            $phone = new Phone(
                $phoneID,
                $phoneCode,
                $phoneName,
                $phoneDescription,
                $OS,
                $storageCapacity,
                $phoneTypeID,
                $phoneWholesalePrice,
                $phoneListPrice
            );
            
            $result = $phone->savePhone();
            
            if ($result) {
                echo "<h2>New Phone #$phoneID successfully added</h2>\n";
            } else {
                echo "<h2>Sorry, there was a problem adding that phone.</h2>\n";
            }
        }
    } else {
        echo "<h2>Please log in first</h2>\n";
    }
?>