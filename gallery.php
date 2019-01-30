<!DOCTYPE html>
<html>
	<head>	
		<link rel="stylesheet" href="style.css">
		<title>Gallery</title>
	</head>
<body>
	<main>
		<h1>Gallery</h1>
		<div id="gallery">
			<?php 
			include "database/connection.php";
			$sql = "SELECT * FROM images";
			$result = $MySQL->query($sql);
			if ($result->num_rows == 0) {
				die('No news available.');
			}

			while($row = $result->fetch_assoc()) {
				print '</br><div class="images">
					<img src="' . $row['path'] . '"/>
				</div></br>';
			}
			?>
		</div>
	</main>
</body>
</html>
