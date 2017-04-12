<?php 
require_once("../dblogincreds.php");
session_start();
if(!isset($_SESSION["username"]))
{
	header("Location : admin_login.php");
}
$choice = $_POST["choice"];
echo $choice;

$connection = mysqli_connect("localhost",$dbuser,$dbpass,"hostel_allotment");


switch($choice)
{
	case 0:
		$query = "Select * from students";
	break;
	case 6:
		header("Location : new_user.html");
	break;
}
if(in_array($choice,array(1,2,3,4,5)))
{
	$query =  "Select * from students where hostel_id = '{$choice}'"; 
}

$result = mysqli_query($connection,$query);




?>