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
					FROM news LEFT JOIN images on news.img_id = images.id";
			$result = $MySQL->query($sql);
			if ($result->num_rows == 0) {
				die('No news available.');
			}

			while($row = $result->fetch_assoc()) {
				print '
				<div class="home-news">
				<a href="index.php?news_id=' . $row['news_id'] . '"><img src="' . $row['img_path'] . '"/></a>
				<h2><a href="index.php?news_id=' . $row['news_id'] . '">' . $row['title'] . '</a></h2>
				<p>' . substr($row['text'], 0, 1300) . '...' . '</p>
				</div>
				</br>';
			}
			$MySQL->close();
			?>
		</main>
	</body>
</html>
