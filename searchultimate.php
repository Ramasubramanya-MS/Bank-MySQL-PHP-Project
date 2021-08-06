<?php
session_start();
include_once("php/config.php");
if ($_SESSION["userLoggedIn"]==true) {
  $acc_no = $_SESSION['acc_no'];
  $select1="select * from `customers` WHERE acc_no='$acc_no'";
  $select="select * from `transaction` WHERE acc_no='$acc_no' ORDER BY date ASC";

    $subject_set = mysqli_query($conn, "$select");
    $subject_set1 = mysqli_query($conn, "$select1");

  $run_query=mysqli_query($conn,"$select");
  $row=mysqli_fetch_array($run_query);
  $run_query1=mysqli_query($conn,"$select1");
  $row1=mysqli_fetch_array($run_query1);
  $id=$row['id'];
  $fname=$row1['fname'];
  $lname=$row1['lname'];
  $acc_no=$row['acc_no'];
  $remark=$row['remark'];
}
else{
  header("location:login.html");
  exit();
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="hw1.css">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
	<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
</head>
<body>
  <header>
    <h1>Lakshminatha Bank</h1>
    <aside class = "left">
  </header>
    <div>
			<section class = "right">
				<nav>
				<a href="index.html">Home</a>
				<a href="teams.php">Loan</a>
				<a href="history.php" class="active">Transaction</a>
				<a href="login.html" >Login</a>
        <a href="complaints.html">Complaints</a>
        <a href="logout.php">LogOut</a>
			</nav>
	
  
<div class="form-group">
        <label class="col-md-4 control-label" >Select Date of transaction</label> 
          <div class="col-md-4 inputGroupContainer">
          <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
        <input name="date" placeholder="DOB" class="form-control"  type="date" id="txtfrom" name="FromDate" required="">
        <input type="submit" id="Search" name="Search"/>
          </div>
        </div>
      </div>
      <?php
      if(isset($_POST[Search]))
      {
        $selecttext=$_POST[Search];
        $query=mysqli_query($conn,"SELECT * FROM TRANSACTION WHERE date = '$selecttext'");
        $count=mysqli_num_rows($query);
        if(count=="0")
        {
          echo "<h2> No Records Found</h2>";
        }
      }
      ?>
    
</body>
</html>