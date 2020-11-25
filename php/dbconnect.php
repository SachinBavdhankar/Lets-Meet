<?php

function createConn()
{
    $username = "root";
    $servername = "localhost";
    $password = "";
    $dbname = "letmeet";
    $conn = mysqli_connect($servername, $username, $password, $dbname) or
        die("Connection failed because \nError Number " . mysqli_errno($conn) . " : " . mysqli_connect_error());
    return $conn;
}

function closeConn($conn)
{
    mysqli_close($conn);
}
?>