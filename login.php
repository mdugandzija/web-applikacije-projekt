<!DOCTYPE html>
<div id="div-login">
<h1>Login Form</h1>
<?php if ($_POST['_action_'] == FALSE) { ?>
	<form action="" id="login_form" name="login_form" method="POST">
		<input type="hidden" id="_action_" name="_action_" value="TRUE">
		
		<label for="email">Email</label>
		<input type="text" id="email" name="email" placeholder="Email.." required>

		<label for="password">Password</label>
		<input type="password" id="password" name="password" required></br>
			
		</br><input type="submit" value="Submit">
	</form>
<?php } else if ($_POST['_action_'] == TRUE) {
	$email = $_POST['email'];
	$password = $_POST['password'];

	# Provjeri da li je korisnik unio krivi email
	include "database/connection.php";
	$sql = "SELECT * FROM users WHERE email = '" . $email . "'";
	$result = $MySQL->query($sql);
	if ($result->num_rows == 0) {
		die('Email does not exist, please try again.');
	}

	while($row = $result->fetch_assoc()) {
		$username = $row['username'];
		$first_name = $row['first_name'];
		$last_name = $row['last_name'];
		$role_id = $row['role_id'];
		$stored_password_hash = $row['password'];
		break;
	}
	# Provjeri password
	$password_hash = md5($password);
	if(strcmp(trim($password_hash), trim($stored_password_hash)) != 0) {
		die('Invalid password, please try again.');	
	}

	# Sessijske varijable
	$_SESSION['user']['username'] = $username;
	$_SESSION['user']['full_name'] = $first_name . " " . $last_name;
	$_SESSION['user']['role_id'] = $role_id;
	header("Location: index.php?menu=1");
} ?>
</div>