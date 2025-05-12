<?php

 //*database connection
 include('dbConnect.php');
 $matricule = $_REQUEST['txtMat'];
 $name = $_POST['txtName'];
 $matricule = $_POST['txtMat']; 
 $level = $_POST['txtlevel'];
 $department = $_POST['txtDepartment'];
 $file_name = basename($_FILES["txtPhoto"]["name"]);
 $target_file = 'images/'.$file_name;

 //check if student is from COT
 $check = "SELECT * FROM fees_table WHERE matricule=:matricule";
 $stmt = $pdo->prepare($check);
 $stmt->bindParam(":matricule",$matricule);
 $stmt->execute();
 if($stmt->rowCount()>0){
 
  // check fees status
  $results=$stmt->fetch(PDO::FETCH_ASSOC);
  if($results['fee_status']==='paid'){

if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_FILES["txtPhoto"])) {

    // Check if the candidate has applied
    $check = $pdo->prepare("SELECT * FROM candidate_5th WHERE matricule = :matricule");
    $check->bindParam(":matricule", $matricule, PDO::PARAM_STR); 
    $check->execute();

    if ($check->rowCount() > 0) {
        echo "<script> alert ('Candidate Already Applied!!'); 
        window.location='index.php';</script>";
        exit();
    } else {
        // Move the image to the folder
        if (move_uploaded_file($_FILES["txtPhoto"]["tmp_name"], $target_file)) { 
            $stmt = $pdo->prepare("INSERT INTO candidate_5th (name, matricule, level, department, photo) 
                                   VALUES (:name, :matricule, :level, :department, :photo)");

            $stmt->bindParam(":name", $name, PDO::PARAM_STR);
            $stmt->bindParam(":matricule", $matricule, PDO::PARAM_STR); 
            $stmt->bindParam(":level", $level, PDO::PARAM_STR);
            $stmt->bindParam(":department", $department, PDO::PARAM_STR); 
            $stmt->bindParam(":photo", $file_name, PDO::PARAM_STR);

            if ($stmt->execute()) {
                echo "<script> alert ('Image uploaded. You have successfully Applied !!');
               window.location='pending.php';</script>";
                exit();
            } else {
                echo "<script>alert('Error uploading image!!'); 
                window.location='insert_Candidates.php';</script>";
                exit();
            }
        } else {
            echo "<script>alert('Error uploading image. Try again!!'); 
                window.location='insert_Candidates.php';</script>";
            
        }
    }
    // die($pdo);
}
}else{
    echo"<script>alert('You Are Not Eligible To Apply. Complete Your Fees Before proceeding'); 
    window.location='index.php';</script>";
}
}else{
   echo"<script>alert('You are Not a student from COT'); 
    window.location='index.php';</script>";
}

?>
