<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/table.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <title>Suggestions</title>
    <style>
        #footersection{
            margin-top:25%;
        }
        td{font-family:'Time new roman';
          font-size:18px;
        
        }
    </style>
</head> 
<?php include('admin_header.html');?>
<body style="background-color: hsl(244, 59.20%, 90.40%);">
 
<div class="container-fluid" id="cont-3">
       
<section style="padding-top:50px; padding-botton:50px;">
  <p class="h1" style="color:teal;font-family:'Time new roman'; ">Suggestions</p>
        <div class="container">
            <div class="row">
                <div class="col-md-12" >

<?php 

include('dbConnect.php');
$sql = "select * from suggestion order by id desc";

$stmt = $pdo->prepare($sql);
$stmt->execute();

$rs =  $stmt->fetchAll();

echo "
    <table border='2'>
        <tr>
            <th>No.</th>
            <th>Name</th>
            <th>Email</th>
            <th>Suggestion</th>
        </tr>
";
$i = 1;
foreach($rs as $row){
    $uid = $row['id'];
    echo "
    <tr>
        <td>".$i."</td>
        <td>".$row['name']."</td>
        <td>".$row['email']."</td>
        <td>".$row['suggestion']."</td>
        
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

<?php include("footer.html");?>
</body>
</html>