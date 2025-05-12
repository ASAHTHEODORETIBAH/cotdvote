<?php
$name = $_REQUEST['txtName'];
$email   = $_REQUEST['txtEmail'];
$Suggestion =  $_REQUEST['txtSuggestion'];

//database connection
include('dbConnect.php');

$sql = "INSERT into suggestion(name,email,suggestion) values(:name,:email,:suggestion)";

$stmt = $pdo->prepare($sql);

$stmt->bindParam(":name",$name);
$stmt->bindParam(":email",$email);
$stmt->bindParam(":suggestion",$Suggestion);
$stmt->execute();
echo "<script> alert ('Sugestion Successful!!'); 
window.location='suggestion.html';</script>";
?> 