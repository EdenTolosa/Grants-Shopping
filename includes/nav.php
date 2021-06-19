 <div class="navbar-fixed">
  <nav class="navblack">
    <div class="nav-wrapper nav-wrapper-2 container white">
    <ul class="left hide-on-med-and-down">
      <li><a href="index" class="brand"></a></li>
      <li><a href="index" class="dark-text">Grants</a></li>

    </ul>

    <ul class="center hide-on-large-only">
      <li><a href="index" class="dark-text">Grants</a></li>

    </ul>

      <header>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="https://cdn.rawgit.com/oauth-io/oauth-js/c5af4519/dist/oauth.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-social/4.12.0/bootstrap-social.min.css">
  </header>

    <ul  class="right hide-on-med-and-down">
        <li><a href="index" class="dark-text">Home</a></li>
      <li><a href="sign" class="waves-effect waves-light btn button-rounded">Log In</a></li>
      <li><a href="gindex" class="waves-effect waves-light btn button-rounded"  id="google-button" i class="fa fa-google"  >Verify and Register</a></li>
      <li><a href="cart" class="dark-text baskett"><i class="material-icons">shopping_cart</i>
      <li><a href="wishlist" class="dark-text baskett"><i class="material-icons">favorite</i>
        <li><a href="trending" class="dark-text baskett"><i class="material-icons">smoking_rooms</i>
        <span class="badge <?php if(!isset($_SESSION['item']) OR $_SESSION['item'] == 0) echo'hide'; ?>"><?= $_SESSION['item']; ?></span></a></li>
    </ul>
  </div>
  </nav>
</div>
