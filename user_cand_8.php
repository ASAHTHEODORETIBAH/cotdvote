<header>
  <?php session_start();
   include('admin_header.html');?>
</header>
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
<div class="container-fluid" id="cont-3">

	<section style="padding-top:50px; padding-botton:50px">
	<p class="h1"> Approve Academic Officer</p>
        <div class="container">
            <div class="row">
                <div class="col-md-12" >    
	<?php 
	include('dbConnect.php');
	$sql = "select * from candidate_8th order by id desc";

	$stmt = $pdo->prepare($sql);
	$stmt->execute();

	$rs =  $stmt->fetchAll();

	echo "
		<table border='2'>
			<tr>
				<th>No</th>
				<th>Name</th>
				<th>Matricule</th>
				<th>Level</th>
				<th>Department</th>
				<th>Photo</th>
				<th>status</th>
				<th>Action</th>
			</tr>
	";
	$i = 1;
	foreach($rs as $row){
		$cid = $row['id'];
		echo "
		<tr>
			<td>".$i."</td>
			<td>".$row['name']."</td>
			<td>".$row['matricule']."</td>
			<td>".$row['level']."</td>
			<td>".$row['department']."</td>
			<td><img src='images/".$row['photo']."'  height='100px' width='100px'></td>
			<td>";
			if($row['approve_status']==0){
				echo "Pending";
			}else if($row['approve_status']==1){
				echo "Approved";
			}else{
				echo "Rejected";
			}
			
			echo "</td>
			<td>";
			if($row['approve_status']==2){
				echo '<a href="change_status_8th.php?id='.$cid.'&status=1" class="btn btn-success">Approve</a>';
			}else if($row['approve_status']==1){
				echo '<a href="change_status_8th.php?id='.$cid.'&status=2" class="btn btn-danger">Reject</a>';
			}else if($row['approve_status']==0){
				echo '<a href="change_status_8th.php?id='.$cid.'&status=1" class="btn btn-success">Approve</a>';
				echo '<a href="change_status_8th.php?id='.$cid.'&status=2" class="btn btn-danger">Reject</a>';
			}

			echo "</td>
        </tr>
		";
		$i++;
	}
	echo "</table>";
    ?>
        </div>
            </div>
        </div>
</div>		
    </section>
</body>
</html>