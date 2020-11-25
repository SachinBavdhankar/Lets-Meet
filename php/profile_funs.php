<?php
include './dbconnect.php';

function deleteChoices()
{
    $conn = createConn();
    $deleteQuery = "DELETE FROM  books WHERE books.bookid NOT IN  (SELECT uc.bookid FROM userchoice uc);";
    mysqli_query($conn, $deleteQuery);

    $deleteQuery = "DELETE FROM  movies WHERE movies.movieid NOT IN  (SELECT uc.movieid FROM userchoice uc);";
    mysqli_query($conn, $deleteQuery);

    $deleteQuery = "DELETE from music m where m.songid not in (SELECT uc.musicid from userchoice uc);";
    mysqli_query($conn, $deleteQuery);

    $deleteQuery = "DELETE from travel where travel.travelid not in (SELECT uc.travelid from userchoice uc);";
    mysqli_query($conn, $deleteQuery);


    $deleteQuery = "DELETE from sports s where s.sportid not in (SELECT uc.sportid from userchoice uc);";
    mysqli_query($conn, $deleteQuery);

    closeConn($conn);
}
function deleteUser($userid)
{
    $conn = createConn();
    $delq = "delete from usersmatch where user1id in (select userid from user where userid='$userid')";
    $deleteQuery = mysqli_query($conn, $delq) or die("Error While deleting from Usermatch " . mysqli_errno($conn) . " : " . mysqli_error($conn));

    $delq = "delete from userchoice where userid in (select userid from user where userid='$userid');";
    $deleteQuery = mysqli_query($conn, $delq) or die("Error While deleting from Userchoice " . mysqli_errno($conn) . " : " . mysqli_error($conn));

    $delq = "delete from user where userid='$userid';";
    $deleteQuery = mysqli_query($conn, $delq) or die("Error While deleting from User " . mysqli_errno($conn) . " : " . mysqli_error($conn));

    closeConn($conn);
}
