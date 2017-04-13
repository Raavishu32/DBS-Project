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
$query = "Select count(*),gender from students where reg_no = '{$reg}' and password = '{$password}'";
$result = mysqli_query($connection,$query);

echo $query;
if(!$result)
{ 
	die(mysqli_error($connection));
}

$row = mysqli_fetch_row($result);

if($row[0] === "1")
{
	
	$query = "Select h1.hostel_name as h1name,h2.hostel_name as h2name from student_preferences,hostel h1,hostel h2 where h1.hostel_id = pref_1 and h2.hostel_id = pref_2 and reg_no = '{$reg}'";
	$result = mysqli_query($connection,$query);

	if (mysqli_num_rows($result)==1) 
	{ 
		$row = mysqli_fetch_assoc($result);
		header("Location: error.php?p1={$row['h1name']}&p2={$row['h2name']}");
		die();
	}
	else
	{
		session_start();
		$_SESSION = array();
		$_SESSION["stud_reg"] = $reg;
		$_SESSION["gender"]=$row[1];
		$_SESSION['pref_filled'] = False;
		header("Location: registration.php");
		die();
	}


}
else
{
	header("Location: login.php?password=wrong");
}


?>