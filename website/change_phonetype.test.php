<?php
require_once("phonetype.php");
$phoneTypeID = $_POST['phoneTypeID'];
$phoneType = phonetype::findPhoneType($phoneTypeID);
$phoneType->phoneTypeCode = $_POST['phoneTypeCode'];
$phoneType->phoneTypeName = $_POST['phoneTypeName'];
$phoneType->releaseYear = $_POST['releaseYear'];
$result = $phoneType->updatePhoneType();
if ($result) {
   echo "<h2>Phone Type $phoneTypeID updated</h2>\n";
} 
else {
   echo "<h2>Problem updating phone type $phoneTypeID</h2>\n";
}
?>