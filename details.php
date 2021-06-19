<?php
  session_start();

 if (!isset($_SESSION['logged_in'])) {
     header('Location: sign');
 }

else {
 $idsess = $_SESSION['id'];
}
 require 'includes/header.php';
 ?>

 <div class="container print">
   <table>
      <thead>
        <tr>
            <th data-field="name">Item Name</th>
            <th data-field="category">quantity</th>
            <th data-field="price">price</th>
            <th data-field="quantity">user</th>
            <th data-field="residence">residence</th>
            <th data-field="floor">floor</th>
            <th data-field="roomnumber">room number</th>
        </tr>
      </thead>
      <tbody class="scroll">
        <?php
         include 'db.php';
        //get detailss
        $querydetails = "SELECT * FROM details_command WHERE id_user = '$idsess' AND statut ='ready'";
        $result = $connection->query($querydetails);
        if ($result->num_rows > 0) {
        // output data of each row
        while($rowdetails = $result->fetch_assoc()) {
          $id_details = $rowdetails['id'];
          $product_details = $rowdetails['product'];
          $quantity_details = $rowdetails['quantity'];
          $price_details = $rowdetails['price'];
          $user_details = $rowdetails['user'];
          $residence_details = $rowdetails['residence'];
          $floor_details = $rowdetails['floor'];
          $roomnumber_details = $rowdetails['roomnumber'];
          $idcmdd = $rowdetails['id_command'];

          ?>
        <tr>
          <td><?= $product_details; ?></td>
          <td><?= $quantity_details; ?></td>
          <td>$ <?= $price_details; ?></td>
          <td><?= $user_details; ?></td>
          <td><?= $residence_details; ?></td>
          <td><?= $floor_details; ?></td>
          <td><?= $roomnumber_details; ?></td>
        </tr>
      <?php }} ?>
      <div class="left-align">
        <?php

        $querycmd = "SELECT id FROM command WHERE id = '$idcmdd'";
        $getid = mysqli_query($connection, $querycmd);
        $rowcmd = mysqli_fetch_array($getid);
        $idcmd = $rowcmd['id'];

        ?>
        <h5>Invoice #<?= $idcmd; ?></h5>
      </div>
      </tbody>
    </table>
    <div class="right-align">
      <p>You are always welcome © Grants Inc <?= date('Y'); ?></p>
    </div>

    <form method="post">
      <button type="submit" name="done" class="button-rounded waves-effect waves-light btn">Home</button>
      <!--<button type="submit" name="done2" class="blue waves-effect waves-light btn">
      save as pdf <i class="fa fa-print"></i></button>-->
      <?php

        if (isset($_POST['done'])) {



          $queryupdate = "UPDATE details_command SET statut = 'done' WHERE id_user = '$idsess' AND statut = 'ready'";
          $queryupdate = mysqli_query($connection, $queryupdate);

          echo "<meta http-equiv='refresh' content='0;url=index' />";
        }

       ?>
    </form>
 </div>

<?php require 'includes/footer.php'; ?>
