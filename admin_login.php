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
            <h2>Administrator Login</h2>
            <form method="post" action="admin_test.php" id="admin_login" class="admin_login">
               	<input type="value" name="admin_id" placeholder="Admin ID"/>
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