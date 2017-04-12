<?php
$message = "";
if ($_GET)
{
	if($_GET["password"] == "wrong")
	{
		$message = "Username or Password was wrong!.";
	}
} 

?>
<!DOCTYPE html>
<html>
<head>
	<title>Registration Portal</title>
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
        <div class="form2">
            <h2>Login</h2>
            <form method="post" action="login_test.php" id="register" class="register">
               	<input type="value" name="reg_no" placeholder="Registration Number"/>
                <input type="password" name="password" placeholder="Password">
                <button name="submit" value="Submit">Login</button>
            </form>
            <div style = 'color:red;font-style:italic;margin:10px'>
            <?=$message; ?>
            </div>
        </div>
    </div>
</body>
</html>