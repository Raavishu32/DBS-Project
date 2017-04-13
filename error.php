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
            You have already filled your preferences. 
            <br>
            Preference 1 : <?=$_GET['p1'] ?>.
            <br>
            Preference 2 : <?=$_GET['p2'] ?>.
    	</div>
    </div>
</body>
</html>