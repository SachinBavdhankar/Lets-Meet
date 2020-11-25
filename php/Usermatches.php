<?php
include "dbconnect.php";

session_start();
$conn = createConn();
$user1id = $_SESSION["uid"];

$query1 = "select * from user where userid = '$user1id' ";

$data1 = mysqli_query($conn, $query1);

$result1 = mysqli_fetch_assoc($data1);

$user1fname = $result1['fname'];

$user1lname = $result1['lname'];

$user1fblink = $result1['fblink'];

$user1instagramlink = $result1['instagramlink'];

$query2 = "select * from usersmatch where user1id = '$user1id' ";

$data2 = mysqli_query($conn, $query2);

$result2 = mysqli_fetch_assoc($data2);

$userid2 = $result2['user2id'];

$query3 = "select * from user where userid = '$userid2' ";

$data3 = mysqli_query($conn, $query3);

$result3 = mysqli_fetch_assoc($data3);

$user2fname = $result3['fname'];

$user2lname = $result3['lname'];

$user2fblink = $result3['fblink'];

$user2instagramlink = $result3['instagramlink'];
closeConn($conn);
?>

<!DOCTYPE html>
<html>

<head>
  <link rel="stylesheet" href="../css/profile.css">
   
    
    
</head>

<body class="user_body">
   

  <table class="content-table">
    <thead>
      <tr>
        <th>You</th>
        <th>Matched Friend</th>
      </tr>
    </thead>
    <tr>
      <td><?php echo $user1fname ?></td>
      <td><?php echo $user2fname ?></td>
    </tr>
    <tr>
      <td><?php echo $user1lname ?></td>
      <td><?php echo $user2lname ?></td>
    </tr>
    <tr>
      <td><?php echo $user1fblink ?></td>
      <td><?php echo $user2fblink ?></td>
    </tr>
    <tr>
      <td><?php echo $user1instagramlink ?></td>
      <td><?php echo $user2instagramlink ?></td>
    </tr>
  </table>

  <button class="btn profile" name="profilebtn" onclick="window.location.href='../html/LMHome.html'">Home</button>

</body>

</html>