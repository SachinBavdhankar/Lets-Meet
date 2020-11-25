<?php
include './profile_funs.php';
session_start();
$userid = $_SESSION['uid'];
deleteUser($userid);
deleteChoices();
session_destroy();
header("location:../html/LMHome.html");
exit();
?>