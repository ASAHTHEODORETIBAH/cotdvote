<?php
include('dbConnect.php');
$matricule = $_REQUEST['txtMat'];
//check if student is from COT
$check = "SELECT * FROM fees_table WHERE matricule=:matricule";
$stmt = $pdo->prepare($check);
$stmt->bindParam(":matricule",$matricule);
$stmt->execute();
if($stmt->rowCount()>0){
 //check fees status
 $results=$stmt->fetch(PDO::FETCH_ASSOC);
 if($results['fee_status']==='paid'){
    //start
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
            $name = $_POST['txtName'];
            $email = $_POST['txtEmail'];
            $matricule = $_POST['txtMat'];
            //$passw = password_hash($_POST['txtPass'], PASSWORD_DEFAULT);
            $passw = $_POST['txtPass'];
            $Cpass = $_POST['txtCpass'];
            $level = $_POST['txtlevel'];
            $depart = $_POST['txtDepart'];
            // Ensure passwords match
            if ($_POST['txtPass'] !== $Cpass) {
                echo "<script>alert('Passwords do not match');
                 window.location='Register_stud.html';</script>";
                exit;
            }
            // Checking if student is already registered
            $check = "SELECT * FROM student WHERE Email=:Email OR Matricule=:Matricule";
            $stmt = $pdo->prepare($check);
            $stmt->bindParam(":Email", $email);
            $stmt->bindParam(":Matricule", $matricule);
            $stmt->execute();
            if ($stmt->rowCount() > 0) {
                echo "<script>alert('User Already Exist'); 
                window.location='index.php';</script>";
            } else {
                // Register student
                $sql = "INSERT into student(Name,Matricule,Email,Department,Level,Password)
                values(:Name,:Matricule,:Email,:Department,:Level,:Password)";
                $stmt = $pdo->prepare($sql);
                $stmt->bindParam(":Name", $name);
                $stmt->bindParam(":Email", $email);
                $stmt->bindParam(":Matricule", $matricule);
                $stmt->bindParam(":Department", $depart);
                $stmt->bindParam(":Level", $level);
                $stmt->bindParam(":Password",$passw);
                try {
                    $stmt->execute();
                    echo "<script>
                     window.location='vote_candi.php';
                    </script>";
                } catch (Exception $e) {
                    echo "<script>alert('Error: " . $e->getMessage() . "');</script>";
                }
            } 
        } 
 
 }else{
     echo"<script>alert('You Are Not Eligible To Vote. Complete Your Fees Before proceeding'); 
     window.location='index.php';</script>";
  }

 }else{
    echo"<script>alert('You are Not a student from COT'); 
     window.location='index.php';</script>";
 }
?>