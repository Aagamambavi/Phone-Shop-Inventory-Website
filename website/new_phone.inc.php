<?php ?>

<h2>Enter New Phone Information</h2>
<form name="newphone" action="index.php" method="post">
    <table cellpadding="1" border="0">
        <tr>
            <td>Phone ID:</td>
            <td><input type="number" name="phoneID" min="1000" max="99999" required></td>
        </tr>
        <tr>
            <td>Phone Code:</td>
            <td><input type="text" name="phoneCode" minlength="3" maxlength="10" required></td>
        </tr>
        <tr>
            <td>Phone Name:</td>
            <td><input type="text" name="phoneName" minlength="10" maxlength="100" required></td>
        </tr>
        <tr>
            <td>Description:</td>
            <td><textarea name="phoneDescription" rows="4" cols="50" minlength="10" maxlength="255" required></textarea></td>
        </tr>
        <tr>
            <td>OS:</td>
            <td><input type="text" name="OS" required></td>
        </tr>
        <tr>
            <td>Storage Capacity:</td>
            <td><input type="text" name="storageCapacity" required></td>
        </tr>
        <tr>
            <td>Phone Type ID:</td>
            <td><input type="number" name="phoneTypeID" min="100" max="999" required></td>
        </tr>
        <tr>
            <td>Wholesale Price:</td>
            <td><input type="number" name="phoneWholesalePrice" step="0.01" min="0.01" required></td>
        </tr>
        <tr>
            <td>List Price:</td>
            <td><input type="number" name="phoneListPrice" step="0.01" min="0.01" required></td>
        </tr>
    </table><br>
    <input type="submit" value="Submit New Phone">
    <input type="hidden" name="content" value="add_phone">
</form>