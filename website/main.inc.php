<?php

if (!isset($_SESSION['login'])) {
?>
    <h2>Please Login to the Phone Shop Inventory Website</h2>
    <form name="login" action="index.php" method="post">
        <label>Email:</label>
        <input type="text" name="emailAddress" size="20">
        <br>
        <br>
        <label>Password:</label>
        <input type="password" name="password" size="20">
        <br>
        <br>
        <input type="submit" value="Login">
        <input type="hidden" name="content" value="validate">
    </form>
<?php
} else {
?>
    <h2>Welcome <?php echo "{$_SESSION['firstName']} {$_SESSION['lastName']} ({$_SESSION['pronouns']})"; ?></h2>
    <br><br>
    <p>This is your phone store inventory management home page.</p>
    <a href="index.php?content=logout"><strong>Logout</strong></a>
<?php
}
?>