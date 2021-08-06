<!DOCTYPE html>
<html>
<head>
   <title>Live Search using AJAX</title>
   <!-- Including jQuery is required. -->
   <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
   <!-- Including our scripting file. -->
   <script type="text/javascript" src="script.js"></script>
   <!-- Including CSS file. -->
   <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<!-- Search box. -->
   <input type="text" id="search" placeholder="Search" />
   <br>
   <b>Ex: </b>2021-01-01(yyyy-mm-dd) -> Gives Date of Transaction and amount of Transaction
   <br />
   <!-- Suggestions will be displayed in below div. -->
   <div id="display"></div>
</body>
</html>