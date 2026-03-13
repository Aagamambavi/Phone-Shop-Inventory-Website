<?php
    require_once("phonetype.php");
    if (!isset($_POST['phoneTypeID']) or (!is_numeric($_POST['phoneTypeID']))) {
?>
        <h2>You did not select a valid phone type ID.</h2>
        <a href="index.php?content=list_phonetypes">List Phone Types</a>
<?php
    } else {
        $phoneTypeID = $_POST['phoneTypeID'];
        $phoneType = phonetype::findPhoneType($phoneTypeID);
        if ($phoneType) {
?>
            <h2>Update Phone Type <?php echo $phoneTypeID; ?></h2><br>
            <form name="phonetype" action="index.php" method="post">
                <table cellpadding="1" border="0">
                    <tr>
                        <td>Phone Type ID:</td>
                        <td><?php echo $phoneType->phoneTypeID; ?></td>
                    </tr>
                    <tr>
                        <td>Phone Type Code:</td>
                        <td><input type="text" name="phoneTypeCode" value="<?php echo $phoneType->phoneTypeCode; ?>" minlength="3" maxlength="10" required></td>
                    </tr>
                    <tr>
                        <td>Phone Type Name:</td>
                        <td><input type="text" name="phoneTypeName" value="<?php echo $phoneType->phoneTypeName; ?>" minlength="3" required></td>
                    </tr>
                    <tr>
                        <td>Release Year:</td>
                        <td><input type="number" name="releaseYear" value="<?php echo $phoneType->releaseYear; ?>" min="2000" max="2030" required></td>
                    </tr>
                </table><br>
                <input type="submit" name="answer" value="Update Phone Type">
                <input type="submit" name="answer" value="Cancel">
                <input type="hidden" name="phoneTypeID" value="<?php echo $phoneType->phoneTypeID; ?>">
                <input type="hidden" name="content" value="change_phonetype">
            </form>
<?php
        } else {
            echo "<h2>Sorry, phone type $phoneTypeID not found</h2>";
            echo '<a href="index.php?content=list_phonetypes">List Phone Types</a>';
        }
    }
?>