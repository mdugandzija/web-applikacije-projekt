<!doctype html>
<html>
  <head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body>
  	<div>
		<div class="hero-image"></div>
		<nav>
			<ul>
			  <li><a href="index.php?menu=1">Home</a></li>
			  <li><a href="index.php?menu=2">Gallery</a></li>
			  <li><a href="index.php?menu=3">About Us</a></li>
			  <li><a href="index.php?menu=4">Register</a></li>
			  <li><a href="index.php?menu=5">Log In</a></li>
			  <?php if(isset($_SESSION['user'])) { ?>
			  	<li><a href="index.php?menu=6">Log Out</a></li>
			  	<?php if($_SESSION['user']['role_id'] == 1) { ?>
			  		<li><a href="index.php?menu=7">Nova Vijest</a></li>
			  		<li><a href="index.php?menu=8">Admin</a></li>
			  	<?php } ?>
			  	<li><a href="index.php?menu=1"><?php print "| " . $_SESSION['user']['full_name']?></a></li>
			  <?php } ?>
			</ul>
		</nav>
	</div>
  </body>
 </html>