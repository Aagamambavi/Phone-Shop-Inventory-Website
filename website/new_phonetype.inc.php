<?php ?>

<h2>Enter New Phone Type Information</h2>
<form name="newphonetype" action="index.php" method="post">
    <table cellpadding="1" border="0">
        <tr>
            <td>Phone Type ID:</td>
            <td><input type="number" name="phoneTypeID" size="4" min="100" max="999" required></td>
        </tr>
        <tr>
            <td>Phone Type Code:</td>
            <td><input type="text" name="phoneTypeCode" size="20" minlength="3" maxlength="10" placeholder="e.g. SMART" required></td>
        </tr>
        <tr>
            <td>Phone Type Name:</td>
            <td><input type="text" name="phoneTypeName" size="50" minlength="3" required></td>
        </tr>
        <tr>
            <td>Release Year:</td>
            <td><input type="number" name="releaseYear" size="4" min="2000" max="2030" required></td>
        </tr>
    </table><br>
    <input type="submit" value="Submit New Phone Type">
    <input type="hidden" name="content" value="add_phonetype">
</form>