<?php 
require_once("../dblogincreds.php");
session_start();
if(!isset($_SESSION["username"]))
{
    header("Location: admin_login.php");
    die();
}
if(!isset($_POST["choice"]))
{
    header("Location: admin_select.html");
    die();
}
$choice = $_POST["choice"];

$connection = mysqli_connect("localhost",$dbuser,$dbpass,"hostel_allotment");


switch($choice)
{
    case 0:
        $query = "Select * from students";
        $tbtitle = "Student Details";
        $title = "Student List";
        $tableheaders = " <th>Registration Number</th>
                          <th>Name</th>
                          <th>Year</th>
                          <th>Course</th>
                          <th>Email</th>
                          <th>Phone Number</th>
                          <th>CGPA</th>
                          <th>Hostel ID</th>
                          <th>Room Number</th>";
    
    $result = mysqli_query($connection,$query);

    $dataString = "";
    while($row = mysqli_fetch_assoc($result))
    {
    $dataString .= "<tr>
          <td>".$row['reg_no']."</td>
          <td>".$row['stud_name']. "</td>
          <td>".$row['year']."</td>
          <td style='word-break: break-all'>".$row['course']."</td>
          <td style='word-break: break-all'>".$row['email']."</td>
          <td>".$row['phone']."</td>
          <td>".$row['gpa']."</td>
          <td>".$row['hostel_id']."</td>
          <td>".$row['room']."</td>
        </tr>"; 
    }




    break;
    case 6:
        header("Location: newstudent.html");
        die();
    break;
    case 7:
        header("Location: allotment.php");
        die();
    break;

}
if(in_array($choice,array(1,2,3,4,5)))
{
    $query =  "Select * from students where hostel_id = '{$choice}';"; 
    $tbtitle = "Hostel ".$choice;
    $title = "Hostel List";
    $tableheaders = " <th>Registration Number</th>
                      <th>Name</th>
                      <th>Year</th>
                      <th>Email</th>
                      <th>Phone Number</th>
                      <th>Room Number</th>";

    $result = mysqli_query($connection,$query);

    $dataString = "";
    while($row = mysqli_fetch_assoc($result))
    {
    $dataString .= "<tr>
          <td>".$row['reg_no']."</td>
          <td>".$row['stud_name']. "</td>
          <td>".$row['year']."</td>
          <td style='word-break: break-all'>".$row['email']."</td>
          <td>".$row['phone']."</td>
          <td>".$row['room']."</td>
        </tr>"; 
    }
}




?>

<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title><?=$title ?></title>
  
  <link rel="stylesheet" href="css/student_list.css">
</head>
<body>
  
  <section>
  <h1><?=$tbtitle ?></h1>
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
          <?=$tableheaders ?>
        </tr>
      </thead>
    </table>
  </div>
  <div class="tbl-content">
    <table cellpadding="0" cellspacing="0" border="0">
      <tbody>
        <?=$dataString ?>
      </tbody>
    </table>
  </div>
</section>
</body>
</html>
