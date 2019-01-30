<!DOCTYPE html>
<div id="div-register">
<h1>Registration Form</h1>
<?php if ($_POST['_action_'] == FALSE) { ?>
	<form action="" id="registration_form" name="registration_form" method="POST">
		<input type="hidden" id="_action_" name="_action_" value="TRUE">
		
		<label for="first_name">First Name</label>
		<input type="text" id="first_name" name="first_name" placeholder="Your name.." required>

		<label for="last_name">Last Name</label>
		<input type="text" id="last_name" name="last_name" placeholder="Your last name.." required>
			
		<label for="email">E-mail</label>
		<input type="email" id="email" name="email" placeholder="Your e-mail.." required>

		<label for="birthday">Birthday:</label>
		<input type="text" id="birthday" name="birthday" placeholder="Birthday (yyyy-mm-dd)" required>
								
		<label for="password">Password:</label>
		<input type="password" id="password" name="password" required><br>

		<br><label for="country">Country:</label>
		<select name="country" id="country">
			<option value="">Please select</option>';
			<?php
			include "database/connection.php";
			$sql  = "SELECT id, country_code, country_name FROM countries";
			$result = $MySQL->query($sql);
			if ($result->num_rows > 0) {
				while($row = $result->fetch_assoc()) {
					print '<option value="' . $row['id'] . '">' . $row['country_name'] . '</option>';
				}
			}
			?>
		</select>

		<label for="username">City:</label>
		<input type="text" id="city_name" name="city_name" placeholder="City Name.." required><br>
		
		<label for="username">Street:</label>
		<input type="text" id="street_name" name="street_name" placeholder="Street Name.." required><br>
		
		<input type="submit" value="Submit">
	</form>
</div>
<?php } else if ($_POST['_action_'] == TRUE) {
		$first_name = $_POST['first_name'];
		$last_name = $_POST['last_name'];
		$email = $_POST['email'];
		$password = $_POST['password'];
		$country_id = $_POST['country'];
		$city_name = $_POST['city_name'];
		$street_name = $_POST['street_name'];
		$birthday = $_POST['birthday'];

		# Provjeri da li email vec postoji
		include "database/connection.php";
		$sql = "SELECT * FROM users WHERE email = '" . $email . "'";
		$result = $MySQL->query($sql);
		if ($result->num_rows > 0) {
			die('Email already exists, please use another one');
		}

		# Provjeri da li korisnik vec postoji
		$username = strtolower($first_name[0]) .  strtolower($last_name[0]);
		$sql = "SELECT * FROM users WHERE username = '" . $username . "'";
		$result = $MySQL->query($sql);
		while($result->num_rows != 0) {
			$username = $username . rand(0, 9);
			$sql = "SELECT * FROM users WHERE username = '" . $username . "'";
			$result = $MySQL->query($sql);
		}

		$password_hash = md5($password);
		# Validacija unesenih podataka je uspjesna, spremam u bazu
		$sql = "INSERT INTO `users` (`username`, `password`, `first_name`, `last_name`, `email`, `country_id`, `city`, `street`, `birthday`, `role_id`) VALUES ('" . $username . "', '" . $password_hash . "', '" . $first_name . "', '" . $last_name . "', '" . $email . "', " . $country_id . ", '" . $city_name . "', '" . $street_name . "', '" . $birthday . "', 3)";
		$MySQL->query($sql);
		$MySQL->close();

		print("Uspješno registriran korisnik: " . $username . ", " . $first_name . " " . $last_name);
	} ?>
