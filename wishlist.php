<?php
session_start();

if ($_SESSION['item'] < 1 OR !isset($_SESSION['logged_in'])) {
    header('Location: sign');
}

else {
  $nav ='includes/navconnected.php';
  $idsess = $_SESSION['id'];
}



 require 'includes/header.php';
 require $nav;?>
 <div class="container-fluid product-page">
   <div class="container current-page">
      <nav>
        <div class="nav-wrapper">
          <div class="col s12">
            <a href="index" class="breadcrumb">Home</a>
            <a href="cart" class="breadcrumb">Wishlist</a>
          </div>
        </div>
      </nav>
    </div>
   </div>

   <div class="container scroll info">
     <table class="highlight">
        <thead>
          <tr>
              <th data-field="name">Item Name</th>
              <th data-field="category">Category</th>
              <th data-field="price">Price</th>
              <th data-field="quantity">Quantity</th>
              <th data-field="total">Total</th>
          </tr>
        </thead>
        <tbody>
          <?php
           include 'db.php';
          //get products
          $wqueryproduct = "SELECT product.name as 'name',
          product.id as 'id', product.price as 'price',
          category.name as 'category', command.id_user, command.statut,
          command.quantity as 'quantity'
FROM category, product, command
WHERE command.id_produit = product.id AND product.id_category = category.id AND command.statut = 'wishlisted'";
          $result1 = $connection->query($wqueryproduct);
          if ($result1->num_rows > 0) {
          // output data of each row
          while($rowproduct = $result1->fetch_assoc()) {
            $id_productdb = $rowproduct['id'];
            $name_product = $rowproduct['name'];
            $category_product = $rowproduct['category'];
            $quantity_product = $rowproduct['quantity'];
            $price_product = $rowproduct['price'];

            ?>


<?php

            if (isset($_POST['buy'])) {

               if (!isset($_SESSION['logged_in'])) {
                 echo "<meta http-equiv='refresh' content='0;url=http://localhost/Grants/sign' />";
               }

               else {
              $quantity = $_POST['quantity'];

              //inserting into command
              include 'db.php';

              $querybuy = "INSERT INTO command(id_produit, quantity, statut, id_user)
              VALUES ('$id_productdb','$quantity','ordered', '$idsess')";

            if ($connection->query($querybuy) === TRUE) {
                     $_SESSION['item'] += 1;

                     echo "<meta http-equiv='refresh' content='0;url=product.php?id=$id_productdb' />";
                 } else {
                     echo "<h5 class='text-red'>Error: " . $querybuy . "</h5><br><br><br>" . $connection->error;
                 }
                 $connection->close();
                 }
                }

            ?>





            
          <tr>
            <td><?= $name_product; ?></td>
            <td><?= $category_product; ?></td>
            <td><?= $price_product; ?></td>
            <td><?= $quantity_product; ?></td>
            <td><?= $price_product*$quantity_product; ?></td>
            <td><a href="deletecommand.php?id=<?= $id_productdb; ?>"><i class="material-icons red-text">close</i></a></td>
            <td><a href="product.php?id=<?= $id_productdb; ?>" button type="submit" name="buy" class="btn-large meh button-rounded waves-effect waves-light ">Add to Cart</button></a></td>
          </tr>
        <?php }}?>
        </tbody>
      </table>
  
   <?php
    require 'includes/secondfooter.php';
    require 'includes/footer.php'; ?>
