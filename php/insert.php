<?php
include("dbconnect.php");

if ($_POST['buttonSubmit']) {

    $conn = createConn();
    $fname = $_POST['txtFirstName'];
    $lname = $_POST['txtLastName'];
    $Uname = $_POST['txtUserName'];
    $password = $_POST['txtPassword'];
    $email = $_POST['emailAddress'];
    $date = $_POST['dateDob'];
    $gender = $_POST['rdGender'];
    $city = $_POST['cityName'];
    $fblink = $_POST['fbLink'];
    $instagram = $_POST['instagramLink'];

    $query = "INSERT INTO user(fname,lname,username,password,email,dob,gender,city,fblink,instagramlink) VALUE('$fname','$lname','$Uname','$password','$email','$date','$gender','$city','$fblink','$instagram');";

    $data = mysqli_query($conn, $query);
    closeConn($conn);
}

if ($data) {
    header('location:../html/Login.html');
} else {
    echo "Fail to Register Your Data ";
}
?>