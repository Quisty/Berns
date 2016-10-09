<?php 
require_once 'core/init.php';
$user = new User(); //Current
if(!$user->isLoggedIn()) {
	Redirect::to('login.php');
} else if($user->hasPermission('admin')) {
?>
<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
	<link href="https://fonts.googleapis.com/css?family=Lato:300" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" href="css/animate.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap/bootstrap.css">
	<title></title>
</head>
<body>
	<div class="container-fluid">
		<div class="table-scroller">
			<div class="table-responsive">
				<table class="table table-hover table-bordered">
					<thead>
						<tr>
							<th>ID</th>
							<th>Navn</th>
							<th>Fødselsdag</th>
							<th>Land</th>
							<th>Elevnr.</th>
							<th>Linjefag</th>
							<th><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></th>
							<th><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></th>
						</tr>
					</thead>
					<tbody>
							<?php
							$servername = "localhost";
							$username = "root";
							$password = "";
							$dbname = "berns";

							$conn = new mysqli($servername, $username, $password, $dbname);

							if ($conn->connect_error) {
								die("Connection failed: " . $conn->connect_error);
							} 
							$sql = "SELECT * FROM elever";
							$result = $conn->query($sql);

							if ($result->num_rows > 0) {

								while($row = $result->fetch_assoc()) {
									echo "<tr>";
										echo "<td>" . $row["id"]. "</td>";
										echo "<td>" . $row["firstname"]. " " . $row["lastname"] . "</td>";
										echo "<td>" . $row["birth"]. "</td>";
										echo "<td>" . $row["country"]. "</td>";
										echo "<td>" . $row["number"]. "</td>";
										echo "<td>" . $row["special"]. "</td>";
										echo "<td><button class='btn btn-warning'><span class='glyphicon glyphicon-pencil' aria-hidden='true'></span></button></td>";
										echo "<td><button class='btn btn-danger'><span class='glyphicon glyphicon-trash' aria-hidden='true'></span></button></td>";
									echo "</tr>";
								}
							}
							?>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>
<?php
} else {
	Redirect::to('index.php');
}