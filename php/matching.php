<?php

include "dbconnect.php";

session_start();
$conn = createConn();
$user1id = $_SESSION["uid"];

$query1 = "select * from userchoice where userid = '$user1id' ";

$data1 = mysqli_query($conn, $query1);

$result1 = mysqli_fetch_assoc($data1);

$user1bookid = $result1['bookid'];

$user1movieid = $result1['movieid'];

$user1musicid = $result1['musicid'];

$user1sportid = $result1['sportid'];

$user1travelid = $result1['travelid'];

$query2 = "select * from books where bookid = '$user1bookid' ";

$data2 = mysqli_query($conn, $query2);

$result2 = mysqli_fetch_assoc($data2);

$user1booklang = $result2['booklang'];

$user1bookgenre = $result2['bookgenre'];

$user1comics = $result2['Comics'];

$user1booksize = $result2['booksize'];

//echo $user1booklang.$user1bookgenre.$user1comics.$user1booksize;

$query3 = "select * from movies where movieid = '$user1movieid' ";

$data3 = mysqli_query($conn, $query3);

$result3 = mysqli_fetch_assoc($data3);

$user1movielang = $result3['movielang'];

$user1moviegenre = $result3['moviegenre'];

$user1animation = $result3['animation'];

$user1movielocation = $result3['movielocation'];

//echo $user1movielang.$user1moviegenre.$user1animation.$user1movielocation;

$query4 = "select * from music where songid = '$user1musicid' ";

$data4 = mysqli_query($conn, $query4);

$result4 = mysqli_fetch_assoc($data4);

$user1songlang = $result4['songlang'];

$user1songgenre = $result4['songgenre'];

$user1potery = $result4['potery'];

$user1concert = $result4['concert'];

//echo $user1songlang.$user1songgenre.$user1potery.$user1concert;

$query5 = "select * from sports where sportid = '$user1sportid' ";

$data5 = mysqli_query($conn, $query5);

$result5 = mysqli_fetch_assoc($data5);

$user1sporttype = $result5['sporttype'];

$user1sportgenre = $result5['sportgenre'];

$user1sporttime = $result5['sporttime'];

$user1sportwatch = $result5['sportwatch'];

//echo $user1sporttype.$user1sportgenre.$user1sporttime.$user1sportwatch;

$query6 = "select * from travel where travelid = '$user1travelid' ";

$data6 = mysqli_query($conn, $query6);

$result6 = mysqli_fetch_assoc($data6);

$user1travelpreferrence = $result6['travelpreferrence'];

$user1travelplaces = $result6['travelplaces'];

$user1travellike = $result6['travellike'];

$user1travellocation = $result6['travellocation'];

//echo $user1travelpreferrence.$user1travelplaces.$user1travellike.$user1travellocation;

$query7 = "select * from books where (bookid <> '$user1bookid') and ((booklang = '$user1booklang' and bookgenre =
'$user1bookgenre' and Comics = '$user1comics' and booksize = 'user1booksize') or (booklang = '$user1booklang' and bookgenre = '$user1bookgenre' and Comics = '$user1comics') or (booklang = '$user1booklang' and bookgenre = '$user1bookgenre') or (booklang = '$user1booklang' and Comics = '$user1comics') or (booklang = '$user1booklang' and booksize = 'user1booksize' ) or (bookgenre = '$user1bookgenre' and booksize = '$user1booksize') )";

$data7 = mysqli_query($conn, $query7);

$result7 = mysqli_fetch_assoc($data7);

$total = mysqli_num_rows($data7);

$book2id = $result7['bookid'];

$query8 = "select * from userchoice where bookid = '$book2id' ";

$data8 = mysqli_query($conn, $query8);

$result8 = mysqli_fetch_assoc($data8);

$user2idbasedonbookid = $result8['userid'];

//echo $book2id;

$query9 = "select * from movies where (movieid <> '$user1movieid') and ((movielang = '$user1movielang' and moviegenre =
'$user1moviegenre' and animation = '$user1animation' and movielocation = 'user1movielocation') or (movielang = '$user1movielang' and moviegenre = '$user1moviegenre' and animation = '$user1animation') or (movielang = '$user1movielang' and moviegenre = '$user1moviegenre') or (movielang = '$user1movielang' and animation = '$user1animation') or (moviegenre = '$user1moviegenre' and animation = '$user1animation') or (moviegenre = '$user1moviegenre' and movielocation = 'user1movielocation') )";

$data9 = mysqli_query($conn, $query9);

$result9 = mysqli_fetch_assoc($data9);

$movie2id = $result9['movieid'];

$query10 = "select * from userchoice where movieid = '$movie2id' ";

$data10 = mysqli_query($conn, $query10);

$result10 = mysqli_fetch_assoc($data10);

$user2idbasedonmovieid = $result10['userid'];

$query11 = "select * from music where (songid <> '$user1musicid') and ((songlang = '$user1songlang' and songgenre = '$user1songgenre' and potery = '$user1potery' and concert = 'user1concert') or (songlang = '$user1songlang' and songgenre = '$user1songgenre' and potery = '$user1potery') or (songlang = '$user1songlang' and songgenre = '$user1songgenre') or (songlang = '$user1songlang' and potery = '$user1potery') or (songgenre = '$user1songgenre' and potery = '$user1potery') or (songgenre = '$user1songgenre' and concert = '$user1concert') )";

$data11 = mysqli_query($conn, $query11);

$result11 = mysqli_fetch_assoc($data11);

$totall = mysqli_num_rows($data11);

//echo $totall;

$music2id = $result11['songid'];

$query12 = "select * from userchoice where musicid = '$music2id' ";

$data12 = mysqli_query($conn, $query12);

$result12 = mysqli_fetch_assoc($data12);

$user2idbasedonmusicid = $result12['userid'];

//echo $user2idbasedonmusicid;

$query13 = "select * from sports where (sportid <> '$user1sportid') and ((sporttype = '$user1sporttype' and sportgenre =
'$user1sportgenre' and sporttime = '$user1sporttime' and sportwatch = 'user1sportwatch') or (sporttype = '$user1sporttype' and sportgenre = '$user1sportgenre' and sporttime = '$user1sporttime') or (sporttype = '$user1sporttype' and sportgenre = '$user1sportgenre') or (sporttype = '$user1sporttype' and sporttime = '$user1sporttime') or (sportgenre =
'$user1sportgenre' and sporttime = '$user1sporttime') or (sportgenre = '$user1sportgenre' and sportwatch = 'user1sportwatch'))";

$data13 = mysqli_query($conn, $query13);

$result13 = mysqli_fetch_assoc($data13);

$totals = mysqli_num_rows($data13);

$sport2id = $result13['sportid'];

$query14 = "select * from userchoice where sportid = '$sport2id' ";

$data14 = mysqli_query($conn, $query14);

$result14 = mysqli_fetch_assoc($data14);

$user2idbasedonsportid = $result14['userid'];

//echo $totals . $user2idbasedonsportid;

$query15 = "select * from travel where (travelid <> '$user1travelid') and ((travelpreferrence = '$user1travelpreferrence' and travelplaces = '$user1travelplaces' and travellike = '$user1travellike' and travellocation = 'user1travellocation') or (travelpreferrence = '$user1travelpreferrence' and travelplaces = '$user1travelplaces' and travellike = '$user1travellike') or (travelpreferrence = '$user1travelpreferrence' and travelplaces = '$user1travelplaces') or (travelpreferrence = '$user1travelpreferrence' and travellike = '$user1travellike' ) or (travelplaces = '$user1travelplaces' and travellike = '$user1travellike') or (travelpreferrence = '$user1travelpreferrence' and travellocation = 'user1travellocation') )"; /* or (travelpreferrence = '$user1travelpreferrence') )";*/

$data15 = mysqli_query($conn, $query15);

$result15 = mysqli_fetch_assoc($data15);

$totalt = mysqli_num_rows($data15);

$travel2id = $result15['travelid'];

$query16 = "select * from userchoice where travelid = '$travel2id' ";

$data16 = mysqli_query($conn, $query16);

$result16 = mysqli_fetch_assoc($data16);

$user2idbasedontravelid = $result16['userid'];

//echo $user2idbasedontravelid.$user2idbasedonsportid.$user2idbasedonmusicid.$user2idbasedonmovieid.$user2idbasedonbookid;

if (($user2idbasedonbookid == $user2idbasedonmovieid) && ($user2idbasedonbookid == $user2idbasedonmusicid) && ($user2idbasedonbookid == $user2idbasedonsportid) && ($user2idbasedonbookid == $user2idbasedontravelid)) {
    $user2id = $user2idbasedonbookid;
} elseif (($user2idbasedonmovieid == $user2idbasedonbookid) && ($user2idbasedonmovieid == $user2idbasedonmusicid) && ($user2idbasedonmovieid == $user2idbasedonsportid) && ($user2idbasedonmovieid == $user2idbasedontravelid)) {
    $user2id = $user2idbasedonmovieid;
} elseif (($user2idbasedonmusicid == $user2idbasedonbookid) && ($user2idbasedonmusicid == $user2idbasedonbookid) && ($user2idbasedonmusicid == $user2idbasedonsportid) && ($user2idbasedonmusicid == $user2idbasedontravelid)) {
    $user2id = $user2idbasedonmusicid;
} elseif (($user2idbasedonsportid == $user2idbasedonbookid) && ($user2idbasedonsportid == $user2idbasedonbookid) && ($user2idbasedonsportid == $user2idbasedonbookid) && ($user2idbasedonsportid == $user2idbasedontravelid)) {
    $user2id = $user2idbasedonsportid;
} elseif (($user2idbasedontravelid == $user2idbasedonbookid) && ($user2idbasedontravelid == $user2idbasedonbookid) && ($user2idbasedontravelid == $user2idbasedonbookid) && ($user2idbasedontravelid == $user2idbasedonbookid)) {
    $user2id = $user2idbasedontravelid;
} elseif (($user2idbasedonbookid == $user2idbasedonmovieid) && ($user2idbasedonbookid == $user2idbasedonmusicid) && ($user2idbasedonbookid == $user2idbasedonsportid)) {
    $user2id = $user2idbasedonbookid;
} elseif (($user2idbasedonmovieid == $user2idbasedonbookid) && ($user2idbasedonmovieid == $user2idbasedonmusicid) && ($user2idbasedonmovieid == $user2idbasedonsportid)) {
    $user2id = $user2idbasedonmovieid;
} elseif (($user2idbasedonmusicid == $user2idbasedonbookid) && ($user2idbasedonmusicid == $user2idbasedonbookid) && ($user2idbasedonmusicid == $user2idbasedonsportid)) {
    $user2id = $user2idbasedonmusicid;
} elseif (($user2idbasedonsportid == $user2idbasedonbookid) && ($user2idbasedonsportid == $user2idbasedonbookid) && ($user2idbasedonsportid == $user2idbasedonbookid)) {
    $user2id = $user2idbasedonsportid;
} elseif (($user2idbasedontravelid == $user2idbasedonbookid) && ($user2idbasedontravelid == $user2idbasedonbookid) && ($user2idbasedontravelid == $user2idbasedonbookid)) {
    $user2id = $user2idbasedontravelid;
} elseif (($user2idbasedonbookid == $user2idbasedonmovieid) && ($user2idbasedonbookid == $user2idbasedonmusicid)) {
    $user2id = $user2idbasedonbookid;
} elseif (($user2idbasedonmovieid == $user2idbasedonbookid) && ($user2idbasedonmovieid == $user2idbasedonmusicid)) {
    $user2id = $user2idbasedonmovieid;
} elseif (($user2idbasedonmusicid == $user2idbasedonbookid) && ($user2idbasedonmusicid == $user2idbasedonbookid)) {
    $user2id = $user2idbasedonmusicid;
} elseif (($user2idbasedonsportid == $user2idbasedonbookid) && ($user2idbasedonsportid == $user2idbasedonbookid)) {
    $user2id = $user2idbasedonsportid;
} elseif (($user2idbasedontravelid == $user2idbasedonbookid) && ($user2idbasedontravelid == $user2idbasedonbookid)) {
    $user2id = $user2idbasedontravelid;
} elseif (($user2idbasedonbookid == $user2idbasedonmovieid)) {
    $user2id = $user2idbasedonbookid;
} elseif (($user2idbasedonmovieid == $user2idbasedonbookid)) {
    $user2id = $user2idbasedonmovieid;
} elseif (($user2idbasedonmusicid == $user2idbasedonbookid)) {
    $user2id = $user2idbasedonmusicid;
} elseif (($user2idbasedonsportid == $user2idbasedonbookid)) {
    $user2id = $user2idbasedonsportid;
} elseif (($user2idbasedontravelid == $user2idbasedonbookid)) {
    $user2id = $user2idbasedontravelid;
}

echo $user1id.$user2id;

$query162019 = "select * from usersmatch where user1id = '$user1id' ";

$data162019 = mysqli_query($conn, $query162019);

$total162019 = mysqli_num_rows($data162019);

if($total162019 != 1)
{
$query20 = "INSERT INTO usersmatch VALUE('$user1id','$user2id')";

$data20 = mysqli_query($conn, $query20);

if ($data20) {
    header('location:./Usermatches.php');

} else {
    echo "faliure to find match";
}
}

else
{
	$query2019 = "update usersmatch set user2id = '$user2id' where user1id = '$user1id' ";

	$data2019 = mysqli_query($conn, $query2019);

if ($data2019) {
    header('location:./Usermatches.php');

} else {
    echo "faliure to find match";
}

}



closeConn($conn);

?>