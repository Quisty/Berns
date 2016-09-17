<?php
$country = "Japan";


$sql = "SELECT firstname, lastname FROM elever WHERE country = '$country'";
$result = mysqli_query($conn, $sql);
if (mysqli_num_rows($result) > 0) {
	// output data of each row
	while($row = mysqli_fetch_assoc($result)) {
		echo "<li>";
		echo $row["firstname"]. " " . $row["lastname"];
		echo "</li>";
	}
} else {
	echo "Der blev ikke fundet nogle beboere på dette land";
}
?>