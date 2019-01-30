<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" href="style.css">
	</head>
	<body>
		<main>
			<?php 
			include "database/connection.php";
			$sql = "SELECT news.id as news_id, news.title, news.text, images.path as img_path 
					FROM news left join images on news.img_id = images.id 
					WHERE news.id = " . $_GET["news_id"];
			$result = $MySQL->query($sql);
			if ($result->num_rows == 0) {
				header("Location: index.php?menu=1");
			}

			while($row = $result->fetch_assoc()) {
				print '
				</br>
				<div class="news">
					<h2>' . $row['title'] . '</h2>
					<img src="' . $row['img_path'] . '"/>
					<p>' . $row['text'] . '</p>
					</hr>
				</div>
				</br>';
			}
			?>
		</main>
</body>
</html>
