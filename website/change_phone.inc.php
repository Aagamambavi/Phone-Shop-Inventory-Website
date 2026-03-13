<?php
    require_once("phone.php");
    
    if (isset($_SESSION['login'])) {
        $phoneID = $_POST['phoneID'];
        $answer = $_POST['answer'];
        
        if ($answer == "Update Phone") {
            $phone = Phone::findPhone($phoneID);
            
            $typeID = filter_input(INPUT_POST, 'phoneTypeID', FILTER_VALIDATE_INT);
            $wholesale = filter_input(INPUT_POST, 'phoneWholesalePrice', FILTER_VALIDATE_FLOAT);
            $list = filter_input(INPUT_POST, 'phoneListPrice', FILTER_VALIDATE_FLOAT);
            
            if ($typeID === false || $wholesale === false || $list === false) {
                echo "<h2>Error: Phone Type ID and Prices must be valid numbers.</h2>";
                echo "<h3>Update Canceled for phone $phoneID</h3>";
            } 
            else {
                $phone->phoneCode = htmlspecialchars($_POST['phoneCode']);
                $phone->phoneName = htmlspecialchars($_POST['phoneName']);
                $phone->phoneDescription = htmlspecialchars($_POST['phoneDescription']);
                $phone->OS = htmlspecialchars($_POST['OS']);
                $phone->storageCapacity = htmlspecialchars($_POST['storageCapacity']);
                
                $phone->phoneTypeID = $typeID;
                $phone->phoneWholesalePrice = $wholesale;
                $phone->phoneListPrice = $list;

                $result = $phone->updatePhone();
                
                if ($result) {
                    echo "<h2>Phone $phoneID successfully updated</h2>\n";
                } else {
                    echo "<h2>Problem updating phone $phoneID</h2>\n";
                }
            }
        } else {
            echo "<h2>Update Canceled for phone $phoneID</h2>\n";
        }
    } else {
        echo "<h2>Please login first</h2>\n";
    }
?>