<?php 
session_start();
if(!isset($_SESSION['username']))
{
	header("Location: admin_login.php");
	die();
}
if(!isset($_POST['submit']))
{
	header("Location: newstudent.html");
	die();	
}
require_once("../dblogincreds.php");
$connection = mysqli_connect("localhost",$dbuser,$dbpass,"hostel_allotment");

$r = $_POST['reg_no'];
$n = $_POST['name'];
$y = $_POST['year'];
$c = $_POST['course'];
$gp = $_POST['gpa'];
$e = $_POST['email'];
$ph = $_POST['ph_number'];
$g = $_POST['gender'];
$p = $_POST['password'];


$proc = "CALL createStudent ( $r,'$n','$y','$c','$gp','$e','$ph','$g','$p')";

$result = mysqli_query($connection,$proc);

echo mysqli_error($connection);

if(!$result)
{
	echo "error";
}
else
{
	header("Location: userentered.html");
	die();
}


 ?>