<?php
require_once('database.php');
class Phone
{
   public $phoneID;
   public $phoneCode;
   public $phoneName;
   public $phoneDescription;
   public $OS;
   public $storageCapacity;
   public $phoneTypeID;
   public $phoneWholesalePrice;
   public $phoneListPrice;
   function __construct(
        $phoneID,
        $phoneCode,
        $phoneName,
        $phoneDescription,
        $OS,
        $storageCapacity,
        $phoneTypeID,
        $phoneWholesalePrice,
        $phoneListPrice
       ) {
       $this->phoneID = $phoneID;
       $this->phoneCode = $phoneCode;
       $this->phoneName = $phoneName;
       $this->phoneDescription = $phoneDescription;
       $this->OS = $OS;
       $this->storageCapacity = $storageCapacity;
       $this->phoneTypeID = $phoneTypeID;
       $this->phoneWholesalePrice = $phoneWholesalePrice;
       $this->phoneListPrice = $phoneListPrice;
   }
   function __toString()
   {
       $output = "<h2>Phone: $this->phoneName (ID: $this->phoneID)</h2>" .
            "<ul>" .
            "<li>Code: $this->phoneCode</li>" .
            "<li>OS: $this->OS</li>" .
            "<li>Storage: $this->storageCapacity</li>" .
            "<li>Description: $this->phoneDescription</li>" .
            "<li>List Price: $$this->phoneListPrice</li>" .
            "<li>Wholesale Price: $$this->phoneWholesalePrice</li>" .
            "<li>Type ID: $this->phoneTypeID</li>" .
            "</ul>";
       return $output;
   }
   function savePhone()
   {
       $db = getDB();
       $query = "INSERT INTO Phones (PhoneID, PhoneCode, PhoneName, PhoneDescription, OS, storageCapacity, PhoneTypeID, PhoneWholesalePrice, PhoneListPrice) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
       $stmt = $db->prepare($query);
       $stmt->bind_param(
           "isssssidd",
           $this->phoneID,     
           $this->phoneCode,   
           $this->phoneName, 
           $this->phoneDescription,
           $this->OS,
           $this->storageCapacity,
           $this->phoneTypeID, 
           $this->phoneWholesalePrice, 
           $this->phoneListPrice
       );
       $result = $stmt->execute();
       $db->close();
       return $result;
   }
   static function getPhones()
   {
       $db = getDB();
       $query = "SELECT * FROM Phones";
       $result = $db->query($query);
       if (mysqli_num_rows($result) > 0) {
           $phones = array();
           while ($row = $result->fetch_array(MYSQLI_ASSOC)) {
               $phone = new Phone(
                   $row['PhoneID'],
                   $row['PhoneCode'],
                   $row['PhoneName'],
                   $row['PhoneDescription'],
                   $row['OS'],
                   $row['storageCapacity'],
                   $row['PhoneTypeID'],
                   $row['PhoneWholesalePrice'],
                   $row['PhoneListPrice']
               );
               array_push($phones, $phone);
           }
           $db->close();
           return $phones;
       } else {
           $db->close();
           return NULL;
       }
   }
   static function findPhone($phoneID)
   {
       $db = getDB();
       $query = "SELECT * FROM Phones WHERE PhoneID = $phoneID";
       $result = $db->query($query);
       $row = $result->fetch_array(MYSQLI_ASSOC);
       if ($row) {
           $phone = new Phone(
               $row['PhoneID'],
               $row['PhoneCode'],
               $row['PhoneName'],
               $row['PhoneDescription'],
               $row['OS'],
               $row['storageCapacity'],
               $row['PhoneTypeID'],
               $row['PhoneWholesalePrice'],
               $row['PhoneListPrice']
           );
           $db->close();
           return $phone;
       } else {
           $db->close();
           return NULL;
       }
   }
   function updatePhone()
   {
       $db = getDB();
       $query = "UPDATE Phones SET PhoneCode = ?, ".
           "PhoneName = ?, PhoneDescription = ?, OS = ?, storageCapacity = ?, PhoneTypeID = ?, ".
           "PhoneWholesalePrice = ?, PhoneListPrice = ?
           WHERE PhoneID = ?";
       $stmt = $db->prepare($query);
       $stmt->bind_param(
           "sssssiddi",
           $this->phoneCode,
           $this->phoneName,
           $this->phoneDescription,
           $this->OS,
           $this->storageCapacity,
           $this->phoneTypeID,
           $this->phoneWholesalePrice,
           $this->phoneListPrice,
           $this->phoneID
       );
       $result = $stmt->execute();
       $db->close();
       return $result;
   }
   function removePhone()
   {
       $db = getDB();
       $query = "DELETE FROM Phones WHERE PhoneID = $this->phoneID";
       $result = $db->query($query);
       $db->close();
       return $result;
   }
   static function getTotalPhones()
   {
       $db = getDB();
       $query = "SELECT COUNT(PhoneID) FROM Phones";
       $result = $db->query($query);
       $row = $result->fetch_array();
       if ($row) {
           return $row[0];
       } else {
           return 0;
       }
   }
   static function getTotalListPrice()
   {
       $db = getDB();
       $query = "SELECT SUM(PhoneListPrice) FROM Phones";
       $result = $db->query($query);
       $row = $result->fetch_array();
       if ($row) {
           return number_format($row[0], 2);
       } else {
           return "0.00";
       }
   }
   static function getTotalWholesalePrice()
   {
       $db = getDB();
       $query = "SELECT SUM(PhoneWholesalePrice) FROM Phones";
       $result = $db->query($query);
       $row = $result->fetch_array();
       if ($row) {
           return number_format($row[0], 2);
       } else {
           return "0.00";
       }
   }
}
?>