<?php

session_start();

if (!isset($_SESSION['logged_in'])) {
    $nav ='includes/nav.php';
}

elseif($_SESSION['logged_in'] == 'True') {
  header('Location: index');
}

else{
  $nav ='includes/navconnected.php';
  $idsess = $_SESSION['id'];
}
error_reporting(0);

 require 'includes/header.php';
 require $nav; ?>



<div class="container-fluid center-align sign">
  <div class="container">

  <div class="row">
    <div class="col s12">
       <ul class="tabs">

        <li class="tab col s3"><a href="#test2">  Verified! you can register now</a></li>
       </ul>
   </div>

<div class="container forms">
 <div class="row">

<div id="test2" class="col s12 left-align">
     <div class="card">
       <div class="row">

    <form class="col s12" method="POST" enctype="multipart/form-data">
      <div class="row">

        <div class="input-field col s6">
          <i class="material-icons prefix">email</i>
          <input id="icon_prefix" type="text" name="email" class="validate" required>
          <label for="icon_prefix">Email</label>
        </div>

        <div class="input-field col s6">
          <select class="icons" name="residence">
      <option value=""  disabled selected>Choose your residence hall</option>
      <option value="SH1">Sh1</option>
      <option value="SH2">sh2</option>
      <option value="SH3">sh3</option>
    </select>
    <label>Residence Hall</label>
        </div>

        <div class="input-field col s6">
          <i class="material-icons prefix">account_circle</i>
          <input id="icon_prefix" type="text" name="firstname" class="validate" required>
          <label for="icon_prefix">First Name</label>
        </div>

        <div class="input-field col s6">
          <i class="material-icons prefix">perm_identity</i>
          <input id="icon_prefix" type="text" name="lastname" class="validate" required>
          <label for="icon_prefix">Last Name</label>
        </div>

        <div class="input-field col s6">
          <i class="material-icons prefix">fingerprint</i>
          <input id="icon_prefix" type="password" name="password" class="validate value1" required>
          <label for="icon_prefix">Password</label>
        </div>

        <div class="input-field col s6">
          <i class="material-icons prefix">fingerprint</i>
          <input id="icon_prefix" type="password" name="confirmation" class="validate value2" required>
          <label for="icon_prefix">Confirm Password</label>
        </div>

        <div class="input-field col s6">
          <i class="material-icons prefix">directions</i>
          <input id="icon_prefix" type="text" name="floor" class="validate" required>
          <label for="icon_prefix">Floor</label>
        </div>

        <div class="input-field col s6 meh">
          <i class="material-icons prefix">airline_seat_individual_suite</i>
          <input id="icon_prefix" type="text" name="roomnumber" class="validate" required>
          <label for="icon_prefix">Room Number</label>
        </div>


<?php require 'includes/signupconfirmation.php'; ?>
          

            <p>By Registering, you agree that you've read and accepted our <a href="">User Agreement</a>,
              you're at least 18 years old, and you consent to our <a href="">Privacy Notice and receiving</a>
              marketing communications from us.</p>
      </div>
    </form>
  </div>
     </div>
     </div>

      </div>
      </div>
   </div>
  </div>
</div>


  <?php require 'includes/footer.php'; ?>
