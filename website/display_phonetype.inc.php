<?php
    require_once("phonetype.php"); // You don't need phone.php for this version

    if (!isset($_REQUEST['phoneTypeID']) or (!is_numeric($_REQUEST['phoneTypeID']))) {
?>
        <h2>You did not select a valid phone type ID to view.</h2>
        <a href="index.php?content=list_phonetypes">List Phone Types</a>
<?php
    } else {
        $phoneTypeID = $_REQUEST['phoneTypeID'];
        $phoneType = phonetype::findPhoneType($phoneTypeID);

        if ($phoneType) {
            echo $phoneType; // This uses your __toString() method to display the single type
        } else {
            echo "<h2>Sorry, phone type <?php echo $phoneTypeID; ?> not found</h2>\n";
        }
    }
?>