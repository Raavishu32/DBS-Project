<?php
session_start();
if(!isset($_SESSION["stud_reg"]))
{
	header("Location: login.php");
	die();
}
$reg = $_SESSION["stud_reg"];
if(!isset($_POST["pref1"]) && !isset($_POST["submit"]))
{
	header("Location: registration.php");
	die();
}
$p1 = $_POST["pref1"];
if(!isset($_POST["pref2"]))
	$p2 = "";
else
	$p2 = $_POST["pref2"];
require_once("../dblogincreds.php");
$connection = mysqli_connect("localhost",$dbuser,$dbpass,"hostel_allotment");

$query = "Insert into student_preferences values ($reg,$p1,$p2)";

$result = mysqli_query($connection,$query);
if(!$result)
{ 
	die(mysqli_error($connection));
}
else
{
	$_SESSION["pref_filled"] = True;
	header("Location: success.php");
}

?>