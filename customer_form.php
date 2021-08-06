<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
     <script type="text/javascript">
    function validate()
    {
      var fname = document.getElementById("fname");

      if(fname.value.trim()=="")
      {
        alert("Blank username");
        return false;
      }
  }
  </script>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="hw1.css">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
  <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
  <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

</head>
<body>
    <div>
    <header>
      <h1>Lakshminatha Bank</h1>
      <aside class = "left">
  </header>
    <div>
        <section class = "right">
        <nav>
        <a href="index.html">Home</a>
        <a href="customer_form.php" class="active">Create New Account</a>
        <a href="teams.php">Loan</a>
        <a href="history.php">Transaction</a>
        <a href="login.html">Login</a>
        <a href="complaints.html">Complaints</a>
        <a href="reviews.html">Reviews</a>
        <a href="logout.php">LogOut</a>
      </nav>
    </header>
  </div>
 
    <div class="container">
    <form onsubmit="return validateForm()" name="myform"  class="well form-horizontal" action="php/addcustomer.php" method="post"  id="contact_form">
    <fieldset>
        <input type="hidden" name="action" value="insert" >
    <!-- Form Name -->
    <legend><center><h2><b>Customer Information</b></h2></center></legend><br>
    
    <!-- Text input-->
    
    <div class="form-group">
      <label class="col-md-4 control-label">First Name</label>  
      <div class="col-md-4 inputGroupContainer">
      <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
      <input name="fname" id="fname" placeholder="First Name" class="form-control" type="text" >
        </div>
      </div>
    </div>
    
    <!-- Text input-->
    
    <div class="form-group">
      <label class="col-md-4 control-label" >Last Name</label> 
        <div class="col-md-4 inputGroupContainer">
        <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
      <input name="lname" placeholder="Last Name" class="form-control"  type="text" >
        </div>
      </div>
    </div>

    <div class="form-group">
        <label class="col-md-4 control-label" >Date Of Birth</label> 
          <div class="col-md-4 inputGroupContainer">
          <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
        <input name="date" placeholder="DOB" class="form-control"  type="date" id="datemax" name="datemax" max="2001-12-31" required="">
          </div>
        </div>
      </div>

      <div class="form-group">
        <label class="col-md-4 control-label" >Opening Date</label> 
          <div class="col-md-4 inputGroupContainer">
          <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
        <?php 

          $month = date('m');
          $day = date('d');
          $year = date('Y');

          $today = $year . '-' . $month . '-' . $day;
        ?>
        <input name="open_date" readonly="readonly" placeholder="Current Date" class="form-control" value="<?php echo$today; ?>" type="date" required="">
          </div>
        </div>
      </div>

      <div class="form-group">
        <label class="col-md-4 control-label" >Address</label> 
          <div class="col-md-4 inputGroupContainer">
          <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
        <input name="address" placeholder="Address" class="form-control"  type="text" required="">
          </div>
        </div>
      </div>
<!-- Text input-->
<div class="form-group">
    <label class="col-md-4 control-label">E-Mail</label>  
      <div class="col-md-4 inputGroupContainer">
      <div class="input-group">
          <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
    <input name="email" id ="email" placeholder="E-Mail Address" class="form-control"  type="text" >
      </div>
    </div>
  </div>
  
  
  <!-- Text input-->
         
  <div class="form-group">
    <label class="col-md-4 control-label">Phone Number</label>  
      <div class="col-md-4 inputGroupContainer">
      <div class="input-group">
          <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
    <input name="phone" id ="phone" placeholder="+91" class="form-control" type="text" >
      </div>
    </div>
  </div>
  
     

     
      <div class="form-group">
        <label class="col-md-4 control-label" >Account Number</label> 
          <div class="col-md-4 inputGroupContainer">
          <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
        <input name="acc_no" id = "acc_no" placeholder="Account Number" class="form-control"  type="text" ">
          </div>
        </div>
      </div>

      <div class="form-group">
        <label class="col-md-4 control-label" >Deposit Amount</label> 
          <div class="col-md-4 inputGroupContainer">
          <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
        <input name="balance" id ="bal" placeholder="In Rupees" class="form-control"  type="text" >
          </div>
        </div>
      </div>

      <div class="form-group"> 
        <label class="col-md-4 control-label">Account Type</label>
          <div class="col-md-4 selectContainer">
          <div class="input-group">
              <span class="input-group-addon"><i class="glyphicon glyphicon-list" ></i></span>
          <select name="acc_type" class="form-control selectpicker" required="">
            <option value="" >Select Accounts Types</option>
            <option>Current Account</option>
            <option>Savings Bank Accounts</option>
            <option >Recurring Deposits</option>
            <option >Fixed Deposits</option>
          </select>
        </div>
      </div>
      </div>
      
      <div class="form-group"> 
      <label class="col-md-4 control-label">Country</label>
        <div class="col-md-4 selectContainer">
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-list" ></i></span>
        <select name="country" class="form-control selectpicker" required="">
          <option value="">Select Your Country</option>
          <option>India</option>
          <option>United States of America</option>
          <option >Russia</option>
          <option >Japan</option>
          <option > United Kingdom</option>
          <option >United Arab Emirates</option>
          <option >China</option>
        </select>
      </div>
    </div>
    </div>
    <div class="form-group">
      <label class="col-md-4 control-label" >Password</label> 
        <div class="col-md-4 inputGroupContainer">
        <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
      <input name="pin" id= "pass" placeholder="Password" class="form-control"  type="password" >
        </div>
      </div>
    </div>
    
    
    
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
    
</body>
</html>