
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
      <!-- Bootstrap CSS --> 
     <link rel="stylesheet" href="css/bootstrap.min.css">
     <link rel="stylesheet" href="css/style.css">
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
     <title></title>
     <style>
    .fa-check{
    font-size: 80px;
    color: #27ae60;
    font-weight: bold;
    height: 110px;
    width: 110px;
    border: 1px solid #27ae60;
    text-align: center;
    padding-top: 13px;
    border-radius: 50%;
    box-sizing: border-box;
    margin: 40px 0 0 0px;
    }
    
     </style>
</head>
<header>
<?php include('header.html');?>
</header>
<body>
    <div class="container-fluid" id="cont-3">
           <section>
               <div class="container">
                   <div class="row">
                       <div class="col-md-12">
                        <i class="fa fa-check" aria-hidden="true" ></i>
                        <H1 style="margin-top 50px;color:teal;font-family:'time new roman'">You've Successfully Voted For this Candidate.</H1>
                       </div>
                       <div class="col-md-12">
                           <p>Vote other candidates -><a href="vote_candi.php ">Click Me</a></p>
                       </div>
                   </div>
               </div>
           <!-- </section>
           <!-- <section>
               <div class="container" style="mrgin-top:190px">
                   <div class="row">
                       <div class="col-md-12">

                       </div>
                   </div>
               </div>
           </section>  
           <section> --><br>
           <div class="container-fluid" style="padding-top:5em;">
              <div class="row" style=" justify-content:center;background-color: #70afdf;">
                <div class="col-md-6">
                  <hr>
                  <div class="Footer" >
                  <ul style=" display: flex; justify-content:center;justify-content: space-evenly;">
                  <li style="list-style: none;  "><a href="index.php " style="text-decoration: none; color:white;">Home</a></li>
                  <li style="list-style: none;  "><a href="about.php" style="text-decoration: none; color: white;">About</a></li>
                  <li style="list-style: none;  "><a href="suggestion.html" style="text-decoration: none; color: white;">Suggestion</a></li>
                  <li style="list-style: none;  "><a href="contact_form.php" style="text-decoration: none; color: white;">Contact</a></li>
                </ul>
                  </div>
                </div>
    <script src="js/jquery-3.2.1.slim.min.js"></script>
    <script src="js/popper.min.js"></script>    
    
</body>
</html>