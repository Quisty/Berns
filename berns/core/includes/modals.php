<?php
$sql = "SELECT firstname, lastname FROM elever";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
    	$first = $row['firstname'];
    	$last = $row['lastname'];
        echo "$first $last";
    }
} else {
    echo "Der blev ikke fundet nogle beboere på dette land";
}
?>