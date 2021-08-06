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
	
	</div>
    <div class="container">

        <form class="well form-horizontal" action="php/transaction.php" method="post"  id="contact_form">
    <fieldset>
        <input type="hidden" name="action" value="insert" >
    <!-- Form Name -->
    <legend><center><h2><b>Transaction</b></h2></center></legend><br>
    
    <!-- Text input-->
    
    <div class="form-group">
      <label class="col-md-4 control-label">Account Number</label>  
      <div class="col-md-4 inputGroupContainer">
      <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
      <input  name="acc_no" readonly="readonly" placeholder="Account_number" class="form-control"  type="text" value="<?php echo"$acc_no"; ?>">
        </div>
      </div>
    </div>
    
    <div class="form-group">
      <label class="col-md-4 control-label">Account Holder Name</label>  
      <div class="col-md-4 inputGroupContainer">
      <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
      <input  name="acc_no" readonly="readonly" placeholder="Account_number" class="form-control"  type="text" value="<?php echo"$fname $lname"; ?>">
        </div>
      </div>
    </div>


    <!-- Text input-->
    <div id="content">


    <center><table class="list">
      <tr>
        <th>Transaction Id</th>
        <th>Date</th>
        <th>Transaction Type</th>
        <th>To Account Number</th>
        <th>Amount</th>
        <th>Remark</th>
        
      </tr>

      <?php while($subject = mysqli_fetch_assoc($subject_set)) { ?>
        <tr>
          <td><?php echo ($subject['trainId']); ?></td>
          <td><?php echo ($subject['date']); ?></td>
          <td><?php echo ($subject['tran_type']); ?></td>
          <td><?php echo ($subject['Acc_num']) ?></td>
          <td><?php echo ($subject['amount']) ?></td>
          <td><?php echo ($subject['remark']) ?></td>
        </tr>
      <?php } ?>

    </table>
    </table></center>
  </div>
</div>
    
    
  <!-- Text input-->
         
  
    
    
    <!-- Select Basic -->
    
    <!-- Success message -->
    
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
        <navigation>
      <ul>
        <center><a href="search.php">Search Transaction On A DATE</a></center>
       
      </ul>
    </navigation>
    
</body>
</html>