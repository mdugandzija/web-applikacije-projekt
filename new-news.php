<!DOCTYPE html>
<div id="div-new-news">
<h1>Login Form</h1>
<?php if ($_POST['_action_'] == FALSE) { ?>
	<form action="" id="login_form" name="login_form" method="POST">
		<input type="hidden" id="_action_" name="_action_" value="TRUE">
		
		<label for="title">Title</label>
		<input type="text" id="title" name="title" placeholder="News title" required>

		<label for="title">Description</label>
		<input type="text" id="description" name="description" placeholder="News description" required>

		</br><input type="submit" value="Submit">
	</form>
<?php } else if ($_POST['_action_'] == TRUE) {
	$title = $_POST['title'];
	$description = $_POST['description'];
	$current_date = date('Y-m-d');

	include "database/connection.php";
	$sql = "INSERT INTO news (img_id, title, text, date_created) 
			VALUES (1, '$title', '$description', '$current_date')";
	print '<div>' . $sql . '</div>';
	$result = $MySQL->query($sql);
	$MySQL->close();
	header("Location: index.php?menu=1");
} ?>
</div><p></p>