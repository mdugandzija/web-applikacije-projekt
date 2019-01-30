<!DOCTYPE html>
<div id="div-admin">
<h1>Admin</h1>
<?php if ($_POST['_action_'] == FALSE) {
	$all_roles = array();
	include "database/connection.php";
	$sql = "SELECT id, role_name from roles";
	$result = $MySQL->query($sql);
	if ($result->num_rows > 0) {
		while($row = $result->fetch_assoc()) {
			array_push($all_roles, array($row['id'], $row['role_name']));
		}
	}

	$sql = "SELECT users.id, first_name, last_name, email, role_name FROM users LEFT JOIN roles on users.role_id = roles.id";
	$result = $MySQL->query($sql);
	if ($result->num_rows > 0) {
		while($row = $result->fetch_assoc()) {
			print '<table>
				<tr><td>' . $row['first_name'] . ' ' . $row['last_name'] . ', ' . $row['email'] . '</td></tr>';
				foreach($all_roles as $role) {
	 				print '<tr><td><input type="radio" name="a" value="a">' . $role[1] . '</td></tr>';
		 		}	
			print '</br></table>';
		}
	}
} 
?>	
</div>