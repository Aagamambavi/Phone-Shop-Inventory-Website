<?php
   if (isset($_SESSION['login'])) {
   ?>
    <div class="navigation" style="float: left; height: 100%; min-width: 175px; width: auto;">
      <table width="100%" cellpadding="3">
        <?php
         echo "<td><h3>Welcome, {$_SESSION['firstName']}</h3></td>";
         ?>
        <tr>
          <td><a href="index.php"><strong>Home</strong></a></td>
        </tr>
        <tr>
          <td><strong>Phone Types</strong></td>
        </tr>
        <tr>
          <td>&nbsp;&nbsp;&nbsp;<a href="index.php?content=list_phonetypes">
              <strong>List Phone Types</strong></a></td>
        </tr>
        <tr>
          <td>&nbsp;&nbsp;&nbsp;<a href="index.php?content=new_phonetype">
              <strong>Add New Phone Type</strong></a></td>
        </tr>
        <tr>
          <td><strong>Phones</strong></td>
        </tr>
        <tr>
          <td>&nbsp;&nbsp;&nbsp;<a href="index.php?content=list_phones">
              <strong>List Phones</strong></a></td>
        </tr>
        <tr>
          <td>&nbsp;&nbsp;&nbsp;<a href="index.php?content=new_phone">
              <strong>Add New Phone</strong></a></td>
        </tr>
        <tr>
          <td><hr /></td>
        </tr>
        <tr>
          <td><a href="index.php?content=logout">
              <strong>Logout</strong></a></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>
            <form action="index.php" method="post">
              <label>Search for Phone:</label><br>
              <input type="text" name="phoneID" size="14" />
              <input type="submit" value="find" />
              <input type="hidden" name="content" value="update_phone" />
            </form>
          </td>
        </tr>
        <tr>
          <td>
            <form action="index.php" method="post">
              <label>Search for Phone Type:</label><br>
              <input type="text" name="phoneTypeID" size="14" />
              <input type="submit" value="find" />
              <input type="hidden" name="content" value="display_phonetype" />
            </form>
          </td>
        </tr>
      </table>
    </div>
  <?php
   }
   ?>