<?php
require_once("phone.php");
$phoneID = $_POST['phoneID'];
$phone = Phone::findPhone($phoneID);
$result = $phone->removePhone();
if ($result) {
   echo "<h2>Phone $phoneID removed</h2>\n";
} 
else {
   echo "<h2>Sorry, problem removing phone $phoneID</h2>\n";
}
?>