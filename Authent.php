<?php
include('dbConnect.php');
if ($_SERVER["REQUEST_METHOD"] == "POST") {
  
    //$passw = password_hash($_POST['txtPass'], PASSWORD_DEFAULT);
    $passw = $_POST['txtPass'];
     $matricule = $_POST['txtMat'];

    // Checking if student is already registered
    $check = "SELECT * FROM student WHERE Password=:Password and Matricule=:Matricule";
    $stmt = $pdo->prepare($check);
    $stmt->bindParam(":Password", $passw);
    $stmt->bindParam(":Matricule", $matricule);
    $stmt->execute();
    if ($stmt->rowCount() > 0) {
        echo "<script>
        window.location='vote_candi.php';</script>";
    }
     else {
        echo "<script>alert('Invalid Email or Password'); 
        window.location='Register_stud.html';</script>";
    }
}
?>