<?php

session_start();
if(!isset($_SESSION["stud_reg"]))
{
	header("Location: login.php");
	die();
}
if(!isset($_SESSION["pref_filled"]) || $_SESSION['pref_filled'] == False)
{
	$_SESSION = array();
	session_destroy();
	header("Location: login.php");
	die();
}

?>

<!DOCTYPE html>
<html>
<head>
	<title>Preferences Filled!</title>
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
            You have successfully filled your preferences.
    	</div>
    </div>
</body>
</html>

<?php

$_SESSION = array();
session_destroy();

?>	