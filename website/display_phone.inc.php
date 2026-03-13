<?php
require_once("phone.php");

if (!isset($_REQUEST['phoneID']) or (!is_numeric($_REQUEST['phoneID']))) {
?>
    <h2>You did not select a valid phone ID to view.</h2>
    <a href="index.php?content=list_phones">List Phones</a>
<?php
} else {
    $phoneID = $_REQUEST['phoneID'];
    $phone = Phone::findPhone($phoneID);

    if ($phone) {
        echo $phone; 
    } else {
        echo "<h2>Sorry, phone $phoneID not found</h2>\n";
    }
}
?>