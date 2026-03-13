<?php
    require_once("phonetype.php");
    if (isset($_SESSION['login'])) {
        $phoneTypeID = filter_input(INPUT_POST, 'phoneTypeID', FILTER_VALIDATE_INT);
        $releaseYear = filter_input(INPUT_POST, 'releaseYear', FILTER_VALIDATE_INT);
        if ((trim($phoneTypeID) == '') || (!$phoneTypeID)) {
            echo "<h2>Error: You must enter a valid numeric Phone Type ID.</h2>\n";
        } 
        else if (phonetype::findPhoneType($phoneTypeID)) {
             echo "<h2>Error: A phone type with ID #$phoneTypeID already exists.</h2>\n";
        }
        else if ($releaseYear === false) {
            echo "<h2>Error: Release Year must be a valid number.</h2>\n";
        }
        else {
            $phoneTypeCode = htmlspecialchars($_POST['phoneTypeCode']);
            $phoneTypeName = htmlspecialchars($_POST['phoneTypeName']);            
            $phoneType = new phonetype(
                $phoneTypeID,
                $phoneTypeCode,
                $phoneTypeName,
                $releaseYear
            );
            $result = $phoneType->savePhoneType();
            if ($result) {
                echo "<h2>New Phone Type #$phoneTypeID successfully added</h2>\n";
            } else {
                echo "<h2>Sorry, there was a problem adding that phone type</h2>\n";
            }
        }
    } else {
        echo "<h2>Please log in first</h2>\n";
    }
?>