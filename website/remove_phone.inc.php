<?php
require_once("phone.php");
if (isset($_SESSION['login'])) {
    // 1. Check if ID exists
    if (!isset($_POST['phoneID'])) {
        echo "<h2>Error: No phone selected to delete.</h2>";
        echo '<a href="index.php?content=list_phones">List Phones</a>';
    } else {
        $phoneID = $_POST['phoneID'];
        $phone = Phone::findPhone($phoneID);
        if ($phone) {
            $result = $phone->removePhone();
            if ($result) {
                echo "<h2>Phone $phoneID removed successfully.</h2>\n";
            } else {
                echo "<h2>Sorry, problem removing phone $phoneID.</h2>\n";
            }
        } else {
            echo "<h2>Phone $phoneID not found. It may have already been deleted.</h2>";
        }
    }
} else {
    echo "<h2>Please login first</h2>\n";
}
?>