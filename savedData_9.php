<?php
include('dbConnect.php');
$matricule = $_REQUEST['txtmat'];
$candi= $_REQUEST['txtCand'];
//check if student is from COT
$check = "SELECT * FROM fees_table WHERE matricule=:matricule";
$stmt = $pdo->prepare($check);
$stmt->bindParam(":matricule",$matricule);
$stmt->execute();
if($stmt->rowCount()>0){

 // check fees status
 $results=$stmt->fetch(PDO::FETCH_ASSOC);
 if($results['fee_status']==='paid'){
    //checking if Auditor has been votted
    $check = "SELECT * FROM users_9th WHERE  matricule=:matricule";
    $stmt = $pdo->prepare($check);
    $stmt->bindParam(":matricule",$matricule);
    $stmt->execute();
    if($stmt->rowCount()>0){
        echo"<script>alert('You Have Already Voted.Double Voting is not Allowed'); 
        window.location='vote_candi.php';</script>";
    }else{

        //vote Auditor
        $sql = "INSERT into users_9th (matricule,candidate) values(:matricule,:candidate)";
        $stmt = $pdo->prepare($sql);
        $stmt->bindParam(":matricule",$matricule);
        $stmt->bindParam(":candidate",$candi);
        $stmt->execute();
        header('location:successfully.php');
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

