<?php
    require_once("phonetype.php");
    if (isset($_SESSION['login'])) {
        $phoneTypeID = $_POST['phoneTypeID'];
        $answer = $_POST['answer'];
        if ($answer == "Update Phone Type") {
            $phoneType = phonetype::findPhoneType($phoneTypeID);
            $year = filter_input(INPUT_POST, 'releaseYear', FILTER_VALIDATE_INT);
            if ($year === false) {
                echo "<h2>Error: Release Year must be a valid number.</h2>";
                echo "<h3>Update Canceled for phone type $phoneTypeID</h3>";
            } 
            else {
                $phoneType->phoneTypeCode = htmlspecialchars($_POST['phoneTypeCode']);
                $phoneType->phoneTypeName = htmlspecialchars($_POST['phoneTypeName']);
                $phoneType->releaseYear = $year;
                $result = $phoneType->updatePhoneType();
                if ($result) {
                    echo "<h2>Phone Type $phoneTypeID successfully updated</h2>\n";
                } else {
                    echo "<h2>Problem updating phone type $phoneTypeID</h2>\n";
                }
            }
        } else {
            echo "<h2>Update Canceled for phone type $phoneTypeID</h2>\n";
        }
    } else {
        echo "<h2>Please login first</h2>\n";
    }
?>