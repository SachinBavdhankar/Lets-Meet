<?php

include "dbconnect.php";

session_start();
//echo $_SESSION["uid"];
$conn = createConn();
if (isset($_POST["booksubmit"])) {

    $booklang = isset($_POST['booklanguage'])?$_POST['booklanguage']:' ';
    $bookgenre = isset($_POST['bookgenre'])?$_POST['bookgenre']:' ';
    $comic = isset($_POST['comicslike'])?$_POST['comicslike']:' ';
    $booksize = isset($_POST['bookSize'])?$_POST['bookSize']:' ';
    $favbook = isset($_POST['favBookName'])?$_POST['favBookName']:' ';
    $favauthor = isset($_POST['favauthorName'])?$_POST['favauthorName']:' ';

    $query = "INSERT INTO books(booklang,bookgenre,Comics,booksize,bookfav,bookauth) VALUE('$booklang','$bookgenre','$comic','$booksize','$favbook','$favauthor');";

    $data = mysqli_query($conn, $query);

    if ($data) {
        header('location:../html/Choices.html');
    } else {
        echo "Failed To Store Book Details";
    }

}

if (isset($_POST["songsubmit"])) {
    $songlang = isset($_POST['songslanguage']) ? $_POST['songslanguage'] : ' ';
    $songgenre = isset($_POST['songsgenre']) ? $_POST['songsgenre'] : ' ';
    $potery = isset($_POST['poterylike']) ? $_POST['poterylike'] : ' ';
    $concet = isset($_POST['concert']) ? $_POST['concert'] : ' ';
    $favsong = isset($_POST['favSongName']) ? $_POST['favSongName'] : ' ';
    $favsinger = isset($_POST['favSingerName']) ? $_POST['favSingerName'] : ' ';

    $query = "INSERT INTO music(songlang,songgenre,potery,concert,songfav,singerfav) VALUE('$songlang','$songgenre','$potery','$concet','$favsong','$favsinger');";

    $data = mysqli_query($conn, $query);

    if ($data) {
        header('location:../html/Choices.html');

    } else {
        echo "Failed To Store Song Details";
    }

}

if (isset($_POST["moviesubmit"])) {
    $movielang = isset($_POST['movielanguage'])? $_POST['movielanguage']: ' ';
    $moviegenre = isset($_POST['moviegenre'])?$_POST['moviegenre']: ' ';
    $animation = isset($_POST['animation'])?$_POST['animation']: ' ';
    $moviewhere = isset($_POST['moviewhere'])?$_POST['moviewhere']: ' ';
    $favmovie = isset($_POST['favmovieName'])?$_POST['favmovieName']: ' ';
    $favdirector = isset($_POST['favdirectorName']);

    $query = "INSERT INTO movies(movielang,moviegenre,animation,movielocation,favmovie,favdirector) VALUE ('$movielang','$moviegenre','$animation','$moviewhere','$favmovie','$favdirector');";

    $data = mysqli_query($conn, $query);

    //echo $_SESSION["bookid"];

    if ($data) {
        header('location:../html/Choices.html');

    } else {
        echo "Failed To Store Movie Details";
    }

}

if (isset($_POST["travelsubmit"])) {
    $traveltype = isset($_POST['traveltype'])?$_POST['traveltype']:' ';
    $travelgenre = isset($_POST['travelgenre'])?$_POST['travelgenre']:' ';
    $travellike = isset($_POST['travellike'])?$_POST['travellike']:' ';
    $travellocation = isset($_POST['travellocation'])?$_POST['travellocation']:' ';
    $favTravelLocation = isset($_POST['favTravelLocation'])?$_POST['favTravelLocation']:' ';
    $favTravelPersonName = isset($_POST['favTravelPersonName'])?$_POST['favTravelPersonName']:' ';

    $query = "INSERT INTO travel(travelpreferrence,travelplaces,travellike,travellocation,favlocation,favtraveller) VALUE('$traveltype','$travelgenre','$travellike','$travellocation','$favTravelLocation','$favTravelPersonName');";

    $data = mysqli_query($conn, $query);

    if ($data) {
        header('location:../html/Choices.html');

    } else {
        echo "Failed To Store Travel Details";
    }

}

if (isset($_POST["sportsubmit"])) {
    $sportlike = isset($_POST['sportlike'])?$_POST['sportlike']:' ';
    $sportgenre = isset($_POST['sportgenre'])?$_POST['sportgenre']:' ';
    $sportplayes = isset($_POST['sportplayes'])?$_POST['sportplayes']:' ';
    $sportwatch = isset($_POST['sportwatch'])?$_POST['sportwatch']:' ';
    $favSportName = isset($_POST['favSportName'])?$_POST['favSportName']:' ';
    $favSportPersonName = isset($_POST['favSportPersonName'])?$_POST['favSportPersonName']:' ';

    $query = "INSERT INTO sports(sporttype,sportgenre,sporttime,sportwatch,favsport,favsportsmen) VALUE('$sportlike','$sportgenre','$sportplayes','$sportwatch','$favSportName','$favSportPersonName');";

    $data = mysqli_query($conn, $query);

    //echo $_SESSION["bookid"];

    if ($data) {
        header('location:../html/Choices.html');

    } else {
        echo "Failed To Store Sports Details";
    }
}
if(isset($_POST['findMatch'])){
    header("location:./demo.php");
}
closeConn($conn);
?>