<?php  

require_once("../dblogincreds.php");
if(!isset($_POST["submit"]))
{
header("Location: login.php");	
die();
}
$connection = mysqli_connect("localhost",$dbuser,$dbpass,"hostel_allotment");
$reg = $_POST["reg_no"];
$password = $_POST["password"];
$query = "Select count(*) from students where reg_no = '{$reg}' and password = '{$password}'";
$result = mysqli_query($connection,$query);

echo $query;
if(!$result)
{ 
	die(mysqli_error($connection));
}

$row = mysqli_fetch_row($result);

if($row[0] === "1")
{
	session_start();
	$_SESSION = array();
	$_SESSION["stud_username"] = $username;
	header("Location: registration.html");
}
else
{
	header("Location: login.php?password=wrong");
}


?>