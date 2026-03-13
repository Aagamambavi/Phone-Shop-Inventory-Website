<?php
require_once("phonetype.php");
if (isset($_SESSION['login'])) {
    if (!isset($_POST['phoneTypeID'])) {
        echo "<h2>Error: No phone type selected to delete.</h2>";
        echo '<a href="index.php?content=list_phonetypes">List Phone Types</a>';
    } else {
        $phoneTypeID = $_POST['phoneTypeID'];
        $phoneType = phonetype::findPhoneType($phoneTypeID);
        if ($phoneType) {
            $result = $phoneType->removePhoneType();
            if ($result) {
                echo "<h2>Phone Type $phoneTypeID removed successfully.</h2>\n";
            } else {
                echo "<h2>Sorry, problem removing phone type $phoneTypeID.</h2>\n";
            }
        } else {
            echo "<h2>Phone Type $phoneTypeID not found.</h2>";
        }
    }
} else {
    echo "<h2>Please login first</h2>\n";
}
?>