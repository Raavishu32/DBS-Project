<?php  
if(!isset($_POST["submit"]))
{
header("Location: Admin_login.html");	
}
$connection = mysqli_connect("localhost","phpmyadmin","utkarsh_123","hostel_allotment");
$username = $_POST["admin_id"];
$password = $_POST["password"];
$query = "Select password from admin where admin_id = '{$username}'";
$result = mysqli_query($connection,$query);

if(!$result)
{ 
	die(mysqli_error($connection));
}

$row = mysqli_fetch_assoc($result);

if($row["password"] === $password)
{
	header("Location: admin_select.html");
}
else
{
	header("Location: admin_login.php?password=wrong");
}


?>