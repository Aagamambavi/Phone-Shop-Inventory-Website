<?php
    require_once("phone.php");
    $phones = Phone::getPhones();
?>
<script language="javascript">
   function listbox_dblclick() {
       document.phones.displaybutton.click()
   }
   function button_click(target) {
       var userConfirmed = true;
       if (target == 1) {
           userConfirmed = confirm("Are you sure you want to remove this phone?");
       }
       if (userConfirmed) {
           if (target == 0) phones.action = "index.php?content=display_phone";
           if (target == 1) phones.action = "index.php?content=remove_phone";
           if (target == 2) phones.action = "index.php?content=update_phone";
       } else {
           alert("Action canceled.");
       }
   }
</script>
<?php
    if ($phones) {
?>
    <h2>Select Phone</h2>
    <form name="phones" method="post">
        <select name="phoneID" size="20" ondblclick="listbox_dblclick()">
        <?php
            foreach ($phones as $phone) {
                $id = $phone->phoneID;
                $name = $id . " - " . $phone->phoneName . " - $" . $phone->phoneListPrice;
                echo "<option value=\"$id\">$name</option>\n";
            }
        ?>
        </select>
        <br>
        <input type="submit" value="View Phone" name="displaybutton" onClick="button_click(0)">
        <input type="submit" value="Delete Phone" name="deletebutton" onClick="button_click(1)">
        <input type="submit" value="Update Phone" name="updatebutton" onClick="button_click(2)">
    </form>
<?php
    } else {
        echo "<h2>No phones found.</h2>";
    }
?>