<?php
    require_once("phonetype.php");
    $phoneTypes = phonetype::getPhoneTypes();
?>
<script language="javascript">
   function listbox_dblclick() {
       document.phonetypes.displaybutton.click()
   }
   function button_click(target) {
       var userConfirmed = true;
       if (target == 1) {
           userConfirmed = confirm("Are you sure you want to remove this phone type?");
       }
       if (userConfirmed) {
           if (target == 0) phonetypes.action = "index.php?content=display_phonetype";
           if (target == 1) phonetypes.action = "index.php?content=remove_phonetype";
           if (target == 2) phonetypes.action = "index.php?content=update_phonetype";
       } else {
           alert("Action canceled.");
       }
   }
</script>
<?php
    if ($phoneTypes) {
?>
    <h2>Select Phone Type</h2>
    <form name="phonetypes" method="post">
        <select name="phoneTypeID" size="20" ondblclick="listbox_dblclick()">
            <?php
                foreach ($phoneTypes as $phoneType) {
                    $id = $phoneType->phoneTypeID;
                    $name = $id . " - " . $phoneType->phoneTypeCode . " - " . $phoneType->phoneTypeName;
                    echo "<option value=\"$id\">$name</option>\n";
                }
            ?>
        </select>
        <br>
        <input type="submit" value="View Phone Type" name="displaybutton" onClick="button_click(0)">
        <input type="submit" value="Delete Phone Type" name="deletebutton" onClick="button_click(1)">
        <input type="submit" value="Update Phone Type" name="updatebutton" onClick="button_click(2)">
    </form>
<?php
    } else {
        echo "<h2>No phone types found.</h2>";
    }
?>