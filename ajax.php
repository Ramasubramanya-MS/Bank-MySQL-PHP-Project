<?php
//Including Database configuration file.
include "db.php";
//Getting value of "search" variable from "script.js".
if (isset($_POST['search'])) {
//Search box value assigning to $Name variable.
   $DATE = $_POST['search'];
//Search query.
   $Query = "SELECT DATE FROM transaction WHERE DATE LIKE '%$DATE%' LIMIT 5";
   $Query1 = "SELECT amount FROM transaction WHERE DATE LIKE '%$DATE%' LIMIT 5";
//Query execution
   $ExecQuery = MySQLi_query($con, $Query);
   $ExecQuery1 = MySQLi_query($con, $Query1);
//Creating unordered list to display result.
   echo '
<ul>
   ';
   //Fetching result from database.
   while ($Result = MySQLi_fetch_array($ExecQuery)) {
   while ($Result1 = MySQLi_fetch_array($ExecQuery1)) {
       ?>
   <!-- Creating unordered list items.
        Calling javascript function named as "fill" found in "script.js" file.
        By passing fetched result as parameter. -->
   <li onclick='fill("<?php echo $Result['DATE']; ?>")'>
     <li onclick='fill("<?php echo $Result1['amount']; ?>")'>
   <a>
   <!-- Assigning searched result in "Search box" in "search.php" file. -->
       <?php echo $Result['DATE']; ?>
       <?php echo $Result1['amount']; ?>
   </li></a>
   <!-- Below php code is just for closing parenthesis. Don't be confused. -->
   <?php
}}}
?>
</ul>