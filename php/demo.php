<!-- create userchoices table -->
<?php
include "./dbconnect.php";


session_start();
$conn = createConn();
$userid = $_SESSION["uid"];

$query = "select * from books order by bookid DESC;";

$data = mysqli_query($conn, $query);

$result = mysqli_fetch_assoc($data);

$bookid = $result['bookid'];

$query1 = "select * from movies order by movieid DESC;";

$data1 = mysqli_query($conn, $query1);

$result1 = mysqli_fetch_assoc($data1);

$movieid = $result1['movieid'];

$query2 = "select * from music order by songid DESC;";

$data2 = mysqli_query($conn, $query2);

$result2 = mysqli_fetch_assoc($data2);

$songsid = $result2['songid'];

$query3 = "select * from sports order by sportid DESC;";

$data3 = mysqli_query($conn, $query3);

$result3 = mysqli_fetch_assoc($data3);

$sportsid = $result3['sportid'];

$query4 = "select * from travel order by travelid DESC;";

$data4 = mysqli_query($conn, $query4);

$result4 = mysqli_fetch_assoc($data4);

$travelsid = $result4['travelid'];

//Here the We'll verify whether user has clicked FindMatch Button
//if(isset($_POST['findMatch'])){
$uquery = "select * from userchoice where userid in (select userid from user where userid='$userid'); ";

$udata = mysqli_query($conn, $uquery);

$total = mysqli_num_rows($udata);

if ($total == 0) {

    $query9 = "INSERT INTO userchoice(userid,bookid,movieid,musicid,sportid,travelid) VALUE('$userid','$bookid','$movieid','$songsid','$sportsid','$travelsid');";

    $data9 = mysqli_query($conn, $query9);

    if ($data9) {
        // header('location:../html/Choices.html');
    } else {
        echo "Fail in demo line 68";
    }
} else {

  
   
    



    $updatequery = " UPDATE userchoice SET bookid = '$bookid' , movieid = '$movieid' , musicid = '$songsid' , sportid = '$sportsid' , travelid = '$travelsid' WHERE userid = '$userid'; ";

    $udta = mysqli_query($conn, $updatequery);

    if ($udta) {
        // header('location:../html/Choices.html');
    } else {
        echo "error in demo update line 79 ";
    }


    $deleteQuery = "DELETE FROM  books WHERE books.bookid NOT IN  (SELECT uc.bookid FROM userchoice uc);";
    mysqli_query($conn, $deleteQuery);

    $deleteQuery = "DELETE FROM  movies WHERE movies.movieid NOT IN  (SELECT uc.movieid FROM userchoice uc);";
    mysqli_query($conn, $deleteQuery);

    $deleteQuery = "DELETE from music where music.songid not in (SELECT uc.musicid from userchoice uc);";
    mysqli_query($conn, $deleteQuery);

    $deleteQuery = "DELETE from travel where travel.travelid not in (SELECT uc.travelid from userchoice uc);";
    mysqli_query($conn, $deleteQuery);


    $deleteQuery = "DELETE from sports where sports.sportid not in (SELECT uc.sportid from userchoice uc);";
    mysqli_query($conn, $deleteQuery);

}
//}
closeConn($conn);
header("location:./matching.php");
exit();
//query to delete the unwanted data from the databases 
// delete b from books b left join userchoice uc on uc.bookid=b.bookid where uc.bookid is null or 
//delete from books where books.bookid not in (select uc.bookid from userchoice uc)
?>