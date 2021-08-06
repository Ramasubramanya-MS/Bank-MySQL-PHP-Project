<?php
session_start();
include_once("php/config.php");
if ($_SESSION["userLoggedIn"]==true) {
  $acc_no = $_SESSION['acc_no'];
  $select="select * from `customers` WHERE acc_no='$acc_no'";
  $run_query=mysqli_query($conn,"$select");
  $row=mysqli_fetch_array($run_query);
  $id=$row['id'];
  $acc_no=$row['acc_no'];
  $balance=$row['balance'];
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
	
	</div>
    <div class="container">

        <form class="well form-horizontal" action="php/transaction.php" method="post"  id="contact_form">
    <fieldset>
        <input type="hidden" name="action" value="insert" >
    <!-- Form Name -->
    <legend><center><h2><b>Transaction</b></h2></center></legend><br>
    
    <!-- Text input-->
    
    <div class="form-group">
      <label class="col-md-4 control-label">From Account Number</label>  
      <div class="col-md-4 inputGroupContainer">
      <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
      <input  name="acc_no" readonly="readonly" placeholder="Account_number" class="form-control"  type="text" value="<?php echo"$acc_no"; ?>">
        </div>
      </div>
    </div>
    
    <!-- Text input-->
    
    <div class="form-group">
      <label class="col-md-4 control-label" >Transaction ID</label> 
        <div class="col-md-4 inputGroupContainer">
        <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
      <input name="tranid" placeholder="Transaction ID" class="form-control"  type="text" required="">
        </div>
      </div>
    </div>

    

      <div class="form-group">
        <label class="col-md-4 control-label" >Transaction Method</label> 
          <div class="col-md-4 inputGroupContainer">
          <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
        <input name="tran_method" placeholder="Transaction Method" class="form-control"  type="text" required="">
          </div>
        </div>
      </div>

      <div class="form-group">
        <label class="col-md-4 control-label" >Transaction Date</label> 
          <div class="col-md-4 inputGroupContainer">
          <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
        <?php 

          $month = date('m');
          $day = date('d');
          $year = date('Y');

          $today = $year . '-' . $month . '-' . $day;
        ?>
        <input name="date" readonly="readonly" placeholder="Current Date" class="form-control" value="<?php echo $today; ?>" type="date">
          </div>
        </div>
      </div>
      <div class="form-group">
        <label class="col-md-4 control-label" >To Account Number</label> 
          <div class="col-md-4 inputGroupContainer">
          <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
        <input name="Acc_no" placeholder="Account Number" class="form-control"  type="text" required="">
          </div>
        </div>
      </div>

      <div class="form-group">
        <label class="col-md-4 control-label" >Amount</label> 
          <div class="col-md-4 inputGroupContainer">
          <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
        <input name="amount" placeholder="Amount" class="form-control"  type="text" required="">
          </div>
        </div>
      </div>

      <div class="form-group">
        <label class="col-md-4 control-label" >Current Balance</label> 
          <div class="col-md-4 inputGroupContainer">
          <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
        <input name="current_bal" readonly="readonly" placeholder="Current Balance" class="form-control"  type="text" value="<?php echo"$balance"; ?>">
          </div>
        </div>
      </div>

      <div class="form-group">
        <label class="col-md-4 control-label" >Remark</label> 
          <div class="col-md-4 inputGroupContainer">
          <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
        <input name="remark" placeholder="Remark" class="form-control"  type="text" required="">
          </div>
        </div>
      </div>

      <div class="form-group">
        <label class="col-md-4 control-label" >Customer ID</label> 
          <div class="col-md-4 inputGroupContainer">
          <div class="input-group">
        <span class="input-group-addon"><i class="glyphiconglyphicon-user"></i></span>
        <input name="cus_id" readonly="readonly" placeholder="Customer ID" class="form-control"  type="text" value="<?php echo "$id"; ?>">
          </div>
        </div>
      </div>
  
  <!-- Text input-->
         
  
    
    
    <!-- Select Basic -->
    
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
    <center><a href="passbook.php">passbook</a></center>
</body>
</html>