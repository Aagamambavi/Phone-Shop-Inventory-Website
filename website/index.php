<?php
session_start();
?>
<!DOCTYPE html>
<html>
<head>
    <title>Phone Shop Inventory</title>
</head>
<body>
    <header>
        <?php include("header.inc.php"); ?>
    </header>
    <div style="width: 100%; overflow: hidden;">
        <nav>
            <?php include("nav.inc.php"); ?>
        </nav>
        <?php
        if (isset($_SESSION['login'])) {
            echo "<aside>";
            include("aside.inc.php");
            echo "</aside>";
        }
        ?>
        <main>
            <?php
            if (isset($_REQUEST['content'])) {
                include($_REQUEST['content'] . ".inc.php");
            } else {
                include("main.inc.php");
            }
            ?>
        </main>
    </div>
    <footer>
        <?php include("footer.inc.php"); ?>
    </footer>
</body>
</html>