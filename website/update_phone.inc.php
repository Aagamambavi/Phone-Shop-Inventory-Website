<?php
    require_once("phone.php");
    if (!isset($_POST['phoneID']) or (!is_numeric($_POST['phoneID']))) {
?>
        <h2>You did not enter a valid phone ID to search for.</h2>
        <a href="index.php?content=list_phones">List Phones</a>
<?php
    } else {
        $phoneID = $_POST['phoneID'];
        $phone = Phone::findPhone($phoneID);
        
        if ($phone) {
?>
            <h2>Update Phone <?php echo $phoneID; ?></h2><br>
            <form name="phones" action="index.php" method="post">
                <table cellpadding="1" border="0">
                    <tr>
                        <td>Phone ID:</td>
                        <td><?php echo $phone->phoneID; ?></td>
                    </tr>
                    <tr>
                        <td>Phone Code:</td>
                        <td><input type="text" name="phoneCode" value="<?php echo $phone->phoneCode; ?>" minlength="3" maxlength="10" required></td>
                    </tr>
                    <tr>
                        <td>Name:</td>
                        <td><input type="text" name="phoneName" value="<?php echo $phone->phoneName; ?>" minlength="10" maxlength="100" required></td>
                    </tr>
                    <tr>
                        <td>Description:</td>
                        <td><textarea name="phoneDescription" rows="4" cols="50" minlength="10" maxlength="255" required><?php echo $phone->phoneDescription; ?></textarea></td>
                    </tr>
                    <tr>
                        <td>OS:</td>
                        <td><input type="text" name="OS" value="<?php echo $phone->OS; ?>" required></td>
                    </tr>
                    <tr>
                        <td>Storage:</td>
                        <td><input type="text" name="storageCapacity" value="<?php echo $phone->storageCapacity; ?>" required></td>
                    </tr>
                    <tr>
                        <td>Type ID:</td>
                        <td><input type="number" name="phoneTypeID" value="<?php echo $phone->phoneTypeID; ?>" min="100" max="999" required></td>
                    </tr>
                    <tr>
                        <td>Wholesale Price:</td>
                        <td><input type="number" name="phoneWholesalePrice" value="<?php echo $phone->phoneWholesalePrice; ?>" step="0.01" min="0.01" required></td>
                    </tr>
                    <tr>
                        <td>List Price:</td>
                        <td><input type="number" name="phoneListPrice" value="<?php echo $phone->phoneListPrice; ?>" step="0.01" min="0.01" required></td>
                    </tr>
                </table><br>
                <input type="submit" name="answer" value="Update Phone">
                <input type="submit" name="answer" value="Cancel">
                <input type="hidden" name="phoneID" value="<?php echo $phone->phoneID; ?>">
                <input type="hidden" name="content" value="change_phone">
            </form>
<?php
        } else {
            echo "<h2>Sorry, phone $phoneID not found</h2>";
            echo '<a href="index.php?content=list_phones">List Phones</a>';
        }
    }
?>