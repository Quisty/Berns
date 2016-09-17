<?php 
$host = "localhost";
$username = "root";
$password = "root";
$dbname = "berns";
//Create connection to database
$conn = new mysqli($host, $username, $password, $dbname);

//Check connection to database
if ($conn->connect_error) {
	die();
}
?>