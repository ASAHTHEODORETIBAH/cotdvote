<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta charset="utf-8">
</head>
<body>
     <!-- Required meta tags -->
 <meta charset="utf-8">
 <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

 <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
 

 <!-- Bootstrap CSS -->
 <link rel="stylesheet" href="css/bootstrap.min.css">
 <link rel="stylesheet" href="css/table.css">
 <link rel="stylesheet" href="css/style.css">
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
 <title></title>
</head>
<body>
<?php include('admin_header.html');?>
<div class="container-fluid" id="cont-3">

	<section style="padding-top:50px; padding-botton:50px">
  <p class="h1">Welfare Officer</p>
        <div class="container">
            <div class="row">
                <div class="col-md-12" >

            
	<?php session_start();


	include('dbConnect.php');
	$sql = "select * from users_7th order by id desc";

	$stmt = $pdo->prepare($sql);
	$stmt->execute();

	$rs =  $stmt->fetchAll();

	echo "
		<table border='2'>
			<tr>
				<th>No</th>
				<th>Matricule</th>
				<th>Candidate</th>
			</tr>
	";
	$i = 1;
	foreach($rs as $row){
		$uid = $row['id'];
		echo "
		<tr>
			<td>".$i."</td>
			<td>".$row['matricule']."</td>
			<td>".$row['candidate']."</td>
    </tr>
		";
		$i++;
	}
	echo "</table>";
    ?>
        </div>
            </div>
        </div>
    </section>

        <script src="js/jquery-3.2.1.slim.min.js"></script>
        <script src="js/popper.min.js"></script>    
       
       
</body>
</html>