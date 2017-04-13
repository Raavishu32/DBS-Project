<?php 
session_start();
if(!isset($_SESSION['username']))
{
	header("Location: admin_login.php");
	die();
}
require_once("../dblogincreds.php");
$connection = mysqli_connect("localhost",$dbuser,$dbpass,"hostel_allotment");

$query = "Select students.reg_no,gpa,pref_1,pref_2 from students natural join student_preferences where hostel_id IS NULL ORDER BY gpa";

$result = mysqli_query($connection,$query);
$output = "";
while($row = mysqli_fetch_row($result))
{
	$query1 = "Select gpa_req from hostel where hostel_id = '{$row[2]}'";
	$query2 = "Select gpa_req from hostel where hostel_id = '{$row[3]}'";
	$respf1 = mysqli_query($connection,$query1);
	$respf2 = mysqli_query($connection,$query2);
	$pf1_gpa = mysqli_fetch_row($respf1)[0];
	$pf2_gpa = mysqli_fetch_row($respf2)[0];
	$stud_gpa = $row[1];
	$stud_reg = $row[0];
 	if($stud_gpa >= $pf1_gpa)
 	{
 		$ran = rand(1,60);
 		$insert = "Update students set hostel_id = '{$row[2]}' , room = '{$ran}' where reg_no = '{$stud_reg}'";
 		$allot = mysqli_query($connection,$insert);
 	}
 	else if ($stud_gpa >= $pf2_gpa)
 	{
 		$ran = rand(1,60);
 		$insert = "Update students set hostel_id = '{$row[3]}' , room = '{$ran}' where reg_no = '{$stud_reg}'";
 		$allot = mysqli_query($connection,$insert);
 	}
 	else
 	{
 		$insert = "";
 	}

 	
 	
 	if ($allot)
 	{
 		$output .= $stud_reg." was successfully allotted<br><br>";
 	}
 	else
 	{
 		$output .= $stud_reg." didnt have the required GPA for their preferences<br><br>";
 	}
}



?>


<!DOCTYPE html>
<html>
<head>
	<title>Students Alloted!</title>
	<link rel="stylesheet" type="text/css" href="css/login_style.css">
</head>
<body>
	<style>
		body
		{
			background-image: url("Photo2.jpg");
		}
	</style>
	<div class="register_page2">
		<div class= "form2">
            <?=$output ?>
            <button onclick = "location.href='admin_select.html';">Menu</button>
    	</div>
    </div>
</body>
</html>
