<?php
session_start();
if(!isset($_SESSION["stud_reg"]))
{
	header("Location: login.php");
	die();
}
if($_SESSION['pref_filled'] == True)
{
	$_SESSION = array();
	session_destroy();
}

?>

<!DOCTYPE html>
<html>
<head>
	<title>Registration Portal</title>
	<link rel="stylesheet" type="text/css" href="css/register_style.css">
</head>
<body>
	<style>
		body
		{
			background-image: url("Photo2.jpg");
		}
	</style>
	<div class="register_page2">
        <div class="form">
            <h2>Registration</h2>
            <form method="post" action="fillpref.php" id="register" class="register">
                <div>
					<!-- <label for="pref1">Preferece 1:</label> -->
						<select name = "pref1" required>
							<option disabled selected>Preference 1</option>
							<?php
							session_start();
							if($_SESSION["gender"] == "male")
							{
								echo"<option class='others' value = '1'>Boys Block 1</option>";
								echo"<option class='others' value = '2'>Boys Block 2</option>";
								echo"<option class='others' value = '3'>Boys Block 3</option>";
							}
							else if($_SESSION["gender"] == "female")
							{
								echo"<option class='others' value = '4'>Girls Block 1</option>";
								echo"<option class='others' value = '5'>Girls Block 2</option>";
							}	
							?>
						</select>
				</div>
				<div>
					<!-- <label for="pref2">Preferece 2:</label> -->
						<select name = "pref2">
							<option disabled selected>Preference 2</option>
							<?php
							session_start();
							if($_SESSION["gender"] == "male")
							{
								echo"<option class='others' value = '1'>Boys Block 1</option>";
								echo"<option class='others' value = '2'>Boys Block 2</option>";
								echo"<option class='others' value = '3'>Boys Block 3</option>";
							}
							else if($_SESSION["gender"] == "female")
							{
								echo"<option class='others' value = '4'>Girls Block 1</option>";
								echo"<option class='others' value = '5'>Girls Block 2</option>";
							}	
							?>
						</select>
				</div>
                <button name = "submit" value = "Submit">Register</button>
            </form>
        </div>
    </div>
</body>
</html>