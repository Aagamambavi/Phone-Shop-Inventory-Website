<?php
ob_start();
require_once("phonetype.php");
require_once("phone.php");
$totalPhoneTypes = phonetype::getTotalPhoneTypes();
$totalPhones = Phone::getTotalPhones();
$totalListPrice = Phone::getTotalListPrice();
$totalWholesalePrice = Phone::getTotalWholesalePrice();
$doc = new DOMDocument("1.0");
$inventoryElement = $doc->createElement("inventory");
$inventoryElement = $doc->appendChild($inventoryElement);
$typesElement = $doc->createElement("phonetypes", $totalPhoneTypes);
$typesElement = $inventoryElement->appendChild($typesElement);
$itemsElement = $doc->createElement("phones", $totalPhones);
$itemsElement = $inventoryElement->appendChild($itemsElement);
$listPriceElement = $doc->createElement("listpricetotal", $totalListPrice);
$listPriceElement = $inventoryElement->appendChild($listPriceElement);
$wholesalePriceElement = $doc->createElement("wholesalepricetotal", $totalWholesalePrice);
$wholesalePriceElement = $inventoryElement->appendChild($wholesalePriceElement);
$output = $doc->saveXML();
header("Content-type: application/xml");
ob_end_clean();
echo $output;
?>