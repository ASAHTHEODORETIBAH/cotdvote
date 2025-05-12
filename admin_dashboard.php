<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    
    <link href="https:fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https:stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  
    <title></title>
</head>
<style>
  em{color:orange;}
</style>
<body style="background-color: hsl(244, 59.20%, 90.40%);"> 
  <header>
  <?php include('admin_header.html');?>
</header>
    <div class="container-fluid" id="cont-3">

        <section>
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="hh" style="margin-top: 15px;">Admin's Dashboard</h1>
                    </div>
                </div>
            </div>
        </section>
        <div class="container-fluid d-flex">
         
      <div>
          <div><?php include('validation.php'); ?></div>
          <div><?php include('validation_2.php'); ?></div>
          <div><?php include('validation_3.php'); ?></div> 
      </div>
 
        <div> 
          <div> <?php include('validation_4.php'); ?></div>
          <div><?php include('validation_5.php'); ?></div>
          <div><?php include('validation_6.php'); ?></div> 
        </div>

        <div>  
          <div> <?php include('validation_7.php'); ?></div>
          <div><?php include('validation_8.php'); ?></div>
          <div><?php include('validation_9.php'); ?></div> 
        </div>
    </div>  

</body>
</html>