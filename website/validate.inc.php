<?php

require_once 'database.php';
$emailAddress = htmlspecialchars($_POST['emailAddress']);
$password = htmlspecialchars($_POST['password']);
if (filter_var($emailAddress, FILTER_VALIDATE_EMAIL)) {
    $query = "SELECT firstName, lastName, pronouns FROM PhoneManagers " .
             "WHERE emailAddress = ? AND password = SHA2(?, 256)";
    $db = getDB();
    $stmt = $db->prepare($query);
    $stmt->bind_param("ss", $emailAddress, $password);
    $stmt->execute();
    $stmt->bind_result($firstName, $lastName, $pronouns);
    if ($stmt->fetch()) {
        $_SESSION['login'] = true;
        $_SESSION['firstName'] = $firstName;
        $_SESSION['lastName'] = $lastName;
        $_SESSION['pronouns'] = $pronouns;
        header("Location: index.php");
    } else {
        echo "<h2>Sorry, incorrect login to Phone store page.</h2>";
        echo "<a href='index.php'>Please try again</a>";
    }
} else {
    echo "<h2>Sorry, Invalid Email Address Format.</h2>";
    echo "<a href='index.php'>Please try again</a>";
}
?>