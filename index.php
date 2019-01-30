<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" href="style.css">
	</head>
	<body>
		<?php session_start(); ?>
		<?php include "header.php"; ?>
		<main>
			<?php
			if (isset($_GET['news_id'])) { include("news.php"); }
			else if (!isset($_GET['menu']) || $_GET['menu'] == 1) { include("home.php"); }
			else if ($_GET['menu'] == 2) { include("gallery.php"); }
			else if ($_GET['menu'] == 3) { include("about-us.php"); }
			else if ($_GET['menu'] == 4) { include("register.php"); }
			else if ($_GET['menu'] == 5) { include("login.php"); }
			else if ($_GET['menu'] == 6) { include("logout.php"); }
			else if ($_GET['menu'] == 7) { include("new-news.php"); }
			else if ($_GET['menu'] == 8) { include("admin.php"); }
			else { include("home.php"); }
			?>
		</main>
	<footer>
		<?php include "footer.php";?>
	</footer>
</body>
</html>
