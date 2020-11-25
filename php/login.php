<?php

include "./dbconnect.php";

if ($_POST['logins']) {
    $conn = createConn();

    $uname = $_POST['txtUsername'];
    $passw = $_POST['txtPassword'];

    $query = "select * from user where username = '$uname' && password = '$passw' ";

    $data = mysqli_query($conn, $query);

    $check_query = "select * from userchoice where userid in (SELECT userid from user where username='$uname')";

    $check = mysqli_query($conn, $check_query);

    $checkcnt = mysqli_num_rows($check);

    $total = mysqli_num_rows($data);

    $result = mysqli_fetch_assoc($data);

    $id = $result['userid'];

    // echo "Number of Rows : (" . gettype($checkcnt) . ") " . $checkcnt;
    closeConn($conn);
}
if ($checkcnt != 0) {
    session_start();

    $_SESSION["uid"] = $id;

    header('location:../html/Profile.html');
} elseif ($total == 1) {
    session_start();

    $_SESSION["uid"] = $id;

    header('location:../html/Choices.html');
} else {
    header('location:../html/Login.html');
}
?>