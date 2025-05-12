<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" href="bootstrap.min.css"> 

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" href="css/style.css">
<link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">

<style>
    *{
      color:teal;
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        scroll-behavior: smooth;
        text-align: center;
        font-family: 'time new roman';
    }
   
</style>
</head>
<body style="font-family: 'time new roman';">
<header>
  <?php include('header.html');?>
</header>
  <!------------------  Navbar Section ------------------>
  <div class="container-fluid" id="cont-3">
    
<h1 class="text-center" style=" font-weight:bold; color:teal;font-family: 'time new roman';">Vote For The President</h1>
<div class="container">
         <div class="row">
           <div class="col-md-12" >    
  
           <p class="text-center"></p>
         </div>
         <?php 
   $sql = "select * from candidates where approve_status=1";
   include("dbConnect.php");
    
       $result= $pdo->query($sql);
     $rs = $result->fetchAll();
     foreach($rs as $row){
      echo"<hr><hr>"
?>
        <!-- Card Start -->
          <div class="col-md-3" style="margin-left:em;">
                <div class="card" style="width: 14.8rem;">
                <?php echo "<img src='images/".$row['photo']."'  height='210px' width='236px' class='rounded'> "?>
                  <div class="card-body">
                    <h2 class="card-title"><?php echo $row['name']; ?></h2>
                    <p class="card-text"><?php echo $row['matricule']; ?></p>
                    <a href="confirmation.php" class="magnifyBtn">Vote</a>
                  </div>
                </div>
              </div>
              <?php } ?>
              <!-- Card End -->
    
          </div>
        </div>
      </section>

      </section><br>
<?php include('footer.html');?>
  </section>
    <script src="js/jquery-3.2.1.slim.min.js"></script>
    <script src="js/popper.min.js"></script>
   

</body>
</html>