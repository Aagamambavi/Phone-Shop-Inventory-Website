<?php
require_once("phonetype.php");
$phoneTypeID = $_POST['phoneTypeID'];
$phoneType = phonetype::findPhoneType($phoneTypeID);
$result = $phoneType->removePhoneType();
if ($result) {
   echo "<h2>Phone Type $phoneTypeID removed</h2>\n";
} 
else {
   echo "<h2>Sorry, problem removing phone type $phoneTypeID</h2>\n";
}
?>