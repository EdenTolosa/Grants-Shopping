<?php
if (isset($_POST['signup'])) {

  $email = $_POST['email'];
  $firstname = $_POST['firstname'];
  $lastname = $_POST['lastname'];
  $password = $_POST['password'];
  $roomnumber = $_POST['roomnumber'];
  $floor = $_POST['floor'];
  $residence = $_POST['residence'];

  $encryptedpass = md5($password);


  include 'db.php';

  //connecting & inserting data

  $query = "INSERT INTO users(email,
firstname,
lastname,
password,
roomnumber,
floor,
residence,
role) VALUES ('$email',
'$firstname',
'$lastname',
'$encryptedpass',
'$roomnumber',
'$floor',
'$residence',
'client')";

if ($connection->query($query) === TRUE) {


         echo "<div class='center-align'>
         <h5 class='black-text'>Welcome <span class='green-text'>$firstname</span> Please Log In</h5><br><br>
         <a href='sign' class='button-rounded btn waves-effects waves-light'>Log In</a>
         </div>";

     } else {
         echo "<h5 class='red-text'>Error: " . $query . "</h5>" . $connection->error;
     }

     $connection->close();

}

?>
