<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>contact</title>
    <link rel="stylesheet" href="css/table.css">
    <style>
     
        #footersection{
            margin-top:25%;
        }
    </style>
</head>
<body style="background-color: hsl(244, 59.20%, 90.40%);" >
<?php include('admin_header.html');?>
    <div class="container-fluid" id="cont-3">
<section style="padding-top:40px; padding-botton:50px">
        <div class="container">
        <p class="h1" style="color:teal;font-family:'Time new roman'; ">Contacts</p>
            <div class="row">
                <div class="col-md-12" >

<?php session_start();

include('dbConnect.php');
$sql = "select * from contact order by id desc";

$stmt = $pdo->prepare($sql);
$stmt->execute();
$rs =  $stmt->fetchAll();
echo "
    <table border='2'>
        <tr>
         
            <th>Name</th>
            <th>Email</th>
            <th>Message</th>
        </tr>
";
$i = 1;
foreach($rs as $row){
    $uid = $row['id'];
    echo "
    <tr>
    
        <td>".$row['name']."</td>
        <td>".$row['email']."</td>
        <td>".$row['message']."</td>
        
    </tr>
    ";
    $i++;
}
echo "</table>";
?>
</div>
</div>
</div>
</section><br><br>



</body>
</html>