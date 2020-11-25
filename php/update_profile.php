<?php
    include('./dbconnect.php');

    session_start();
    // echo $_SESSION['uid'];
    function updateProfile($user_id,$fname,$lname,$uname,$pass)
    {
        $conn=createConn();

        $query="UPDATE user SET user.fname='$fname',user.lname='$lname',user.username='$uname',user.password='$pass' where user.userid='$user_id';" ;
        mysqli_query($conn,$query) or 
        die("Couldn't Update Your Profile because ".mysqli_errno($conn)." : " . mysqli_error($conn));

        closeConn($conn);
    }

    if($_POST['btnSubmit']){
        $userid=$_SESSION['uid'];
        $firstname=$_POST['txtFirstname'];
        $lastname=$_POST['txtLastname'];
        $username=$_POST['txtUsername'];
        $password=$_POST['txtPassword'];
        updateProfile($userid,$firstname,$lastname,$username,$password);
    }
