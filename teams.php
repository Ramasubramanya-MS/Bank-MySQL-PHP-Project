<?php
session_start();
include_once("php/config.php");
if ($_SESSION["userLoggedIn"]==true) {
  $acc_no = $_SESSION['acc_no'];
  $select="select * from `customers` WHERE acc_no='$acc_no'";
  $run_query=mysqli_query($conn,"$select");
  $row=mysqli_fetch_array($run_query);
  $acc_no=$row['acc_no'];
  $fname=$row['fname'];
  $lname=$row['lname'];
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
	<title>Lakshminatha Bank</title>
	<link rel="stylesheet" type="text/css" href="hw1.css">
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
        <a href="teams.php" class="active">Loan</a>
        <a href="history.php">Transaction</a>
        <a href="login.html">Login</a>
        <a href="complaints.html">Complaints</a>
        <a href="reviews.html">Reviews</a>
        <a href="logout.php">LogOut</a>
        
      </nav>
  
  </div>
</div>
	<div class="container">

        <form class="well form-horizontal" action="php/loan.php" method="post"  id="contact_form">
    <fieldset>
        <input type="hidden" name="action" value="insert" >
    <!-- Form Name -->
    <legend><center><h2><b>Loan Page</b></h2></center></legend><br>
    
	<!-- Text input-->
	
	<div class="form-group">
        <label class="col-md-4 control-label" >Account Number</label> 
          <div class="col-md-4 inputGroupContainer">
          <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
        <input name="acc_no" placeholder="Account Number" readonly="readonly" class="form-control"  type="text" value="<?php echo "$acc_no" ?>">
          </div>
        </div>
	  </div>

	  <div class="form-group">
        <label class="col-md-4 control-label" >Name</label> 
          <div class="col-md-4 inputGroupContainer">
          <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
        <input name="fname" placeholder="FirstName" readonly="readonly" class="form-control"  type="text" value="<?php echo "$fname $lname" ?>">
          </div>
        </div>
      </div>
	  
	  <div class="form-group"> 
        <label class="col-md-4 control-label">Loan Type</label>
          <div class="col-md-4 selectContainer">
          <div class="input-group">
              <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
          <select name="loan_type" class="form-control selectpicker" required="">
            <option value="">Select Loan Type</option>
            <option>Personal Loans</option>
            <option>Credit Card Loans</option>
            <option >Car Loans</option>
            <option >Payday Loans</option>
          </select>
        </div>
      </div>
      </div>
    
    <div class="form-group">
      <label class="col-md-4 control-label">Loan ID</label>  
      <div class="col-md-4 inputGroupContainer">
      <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
      <input  name="loan_id" placeholder="Loan ID" class="form-control"  type="text" required="">
        </div>
      </div>
    </div>
    
    <!-- Text input-->
    
    <div class="form-group">
      <label class="col-md-4 control-label" >Amount</label> 
        <div class="col-md-4 inputGroupContainer">
        <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
      <input name="amount" placeholder="Enter the Loan" class="form-control"  type="text" required="">
        </div>
      </div>
    </div>

   
     <div class="form-group">
        <label class="col-md-4 control-label" >Start Date</label> 
          <div class="col-md-4 inputGroupContainer">
          <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
        <?php 

          $month = date('m');
          $day = date('d');
          $year = date('Y');

          $today = $month . '-' . $day . '-' . $year;
        ?>
        <input type="date" readonly="readonly" name="date" placeholder="Starting date of the Loan" class="form-control"   id="datemax" name="datemax" value= "<?php echo date('Y-m-d'); ?>" >
          <br><br>
          </div>
        </div>
      </div>

      <div class="form-group">
        <label class="col-md-4 control-label" >End Date</label> 
          <div class="col-md-4 inputGroupContainer">
          <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
        
        <input type='date' name="end_date" id="date_max" placeholder="End Date of Loan" required="" class="form-control" min=<?php
              $datetime = new DateTime('tomorrow');
              echo $datetime->format('Y-m-d');
          ?> min = "$date"><br><br>
          </div>
        </div>
      </div>
    
    <!-- Success message -->
    <div class="alert alert-success" role="alert" id="success_message">Success <i class="glyphicon glyphicon-thumbs-up"></i> Success!.</div>
    
    <!-- Button -->
    <div class="form-group">
      <label class="col-md-4 control-label"></label>
      <div class="col-md-4"><br>
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<button type="submit" class="btn btn-warning" >&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspSUBMIT <span class="glyphicon glyphicon-send"></span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</button>
      </div>
    </div>
    
    </fieldset>
    </form>
    </div>
		</div><!-- /.container -->
		
</body>
</html>