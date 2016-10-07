<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
	<link href="https://fonts.googleapis.com/css?family=Lato:300" rel="stylesheet">
	<link rel="stylesheet" href="css/animate.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap/bootstrap.css">
	<title></title>
</head>
<body>
	<div class="container">
		<div class="table-responsive">
			<table class="table table-hover table-bordered">
				<thead>
					<tr>
						<th>ID</th>
						<th>Brugernavn</th>
						<th>Fulde navn</th>
						<th>Gruppe</th>
						<th>Oprettet</th>
					</tr>
				</thead>
				<tbody>
						<?php
						$servername = "localhost";
						$username = "root";
						$password = "root";
						$dbname = "berns";

						$conn = new mysqli($servername, $username, $password, $dbname);

						if ($conn->connect_error) {
							die("Connection failed: " . $conn->connect_error);
						} 
						$sql = "SELECT * FROM users";
						$result = $conn->query($sql);

						if ($result->num_rows > 0) {

							while($row = $result->fetch_assoc()) {
								echo "<tr>";
									echo "<td>" . $row["id"]. "</td>";
									echo "<td>" . $row["username"]. "</td>";
									echo "<td>" . $row["name"]. "</td>";
									echo "<td>" . $row["group"]. "</td>";
									echo "<td>" . $row["joined"]. "</td>";
								echo "</tr>";
							}
						} else {
							echo "0 results";
						}
						?>
				</tbody>
			</table>
		</div>
	</div>

</body>
</html>