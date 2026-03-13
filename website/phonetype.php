<?php
require_once('database.php');
class phonetype
{
   public $phoneTypeID;
   public $phoneTypeCode;
   public $phoneTypeName;
   public $releaseYear;
   function __construct($phoneTypeID, $phoneTypeCode, $phoneTypeName, $releaseYear)
   {
       $this->phoneTypeID = $phoneTypeID;
       $this->phoneTypeCode = $phoneTypeCode;
       $this->phoneTypeName = $phoneTypeName;
       $this->releaseYear = $releaseYear;
   }
   function __toString()
   {
       $output = "<h2>Phone Type Number: $this->phoneTypeID</h2>\n" .
           "<h2>$this->phoneTypeCode, $this->phoneTypeName, $this->releaseYear</h2>\n";
       return $output;
   }
   function savePhoneType()
   {
       $db = getDB();
       $query = "INSERT INTO PhoneTypes (PhoneTypeID, PhoneTypeCode, PhoneTypeName, releaseYear) VALUES (?, ?, ?, ?)";
       $stmt = $db->prepare($query);
       $stmt->bind_param(
           "issi",
           $this->phoneTypeID,
           $this->phoneTypeCode,
           $this->phoneTypeName,
           $this->releaseYear
       );
       $result = $stmt->execute();
       $db->close();
       return $result;
   }
   static function getPhoneTypes()
   {
       $db = getDB();
       $query = "SELECT * FROM PhoneTypes";
       $result = $db->query($query);
       if (mysqli_num_rows($result) > 0) {
           $phoneTypes = array();
           while ($row = $result->fetch_array(MYSQLI_ASSOC)) {
               $phoneType = new phonetype(
                   $row['PhoneTypeID'],
                   $row['PhoneTypeCode'],
                   $row['PhoneTypeName'],
                   $row['releaseYear']
               );
               array_push($phoneTypes, $phoneType);
               unset($phoneType);
           }
           $db->close();
           return $phoneTypes;
       } else {
           $db->close();
           return NULL;
       }
   }
   static function findPhoneType($phoneTypeID)
   {
       $db = getDB();
       $query = "SELECT * FROM PhoneTypes WHERE PhoneTypeID = $phoneTypeID";
       $result = $db->query($query);
       $row = $result->fetch_array(MYSQLI_ASSOC);
       if ($row) {
           $phoneType = new phonetype(
               $row['PhoneTypeID'],
               $row['PhoneTypeCode'],
               $row['PhoneTypeName'],
               $row['releaseYear']
           );
           $db->close();
           return $phoneType;
       } else {
           $db->close();
           return NULL;
       }
   }
   function updatePhoneType()
   {
       $db = getDB();
       $query = "UPDATE PhoneTypes SET PhoneTypeCode = ?, PhoneTypeName = ?, " .
           "releaseYear = ? " .
           "WHERE PhoneTypeID = ?";
       $stmt = $db->prepare($query);
       $stmt->bind_param(
           "ssii",
           $this->phoneTypeCode,
           $this->phoneTypeName,
           $this->releaseYear,
           $this->phoneTypeID
       );
       $result = $stmt->execute();
       $db->close();
       return $result;
   }
   function removePhoneType()
   {
       $db = getDB();
       $query = "DELETE FROM PhoneTypes WHERE PhoneTypeID = $this->phoneTypeID";
       $result = $db->query($query);
       $db->close();
       return $result;
   }
   static function getTotalPhoneTypes()
   {
       $db = getDB();
       $query = "SELECT COUNT(PhoneTypeID) FROM PhoneTypes";
       $result = $db->query($query);
       $row = $result->fetch_array();
       if ($row) {
           return $row[0];
       } else {
           return 0;
       }
   }
}
?>