
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/table.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <style>
    *{font-family: 'Times New Roman', Times, serif;}    
  .slideUpBtn {
    padding: 12px 24px;
    background-color: transparent;
    border: 2px solid hsl(243, 80%, 62%);
    border-radius: 6px;
    position: relative;
    overflow: hidden;
    transition: all 0.5s cubic-bezier(1,.15,.34,.92)
}

.slideUpBtn span {
    display: inline-block;
    transition: inherit;
    color: hsl(243, 80%, 62%);
}

.slideUpBtn:hover span {
    opacity: 0;
    transform: translateY(-100%)
}
.slideUpBtn::before {
    content: "";
    background-color: hsl(243, 80%, 62%);;
    height: 100%;
    left: 0;
    position: absolute;
    top: 0;
    transform: translateY(100%);
    transition: inherit;
    width: 100%;
    transition: transform 0.5s cubic-bezier(1,.15,.34,.92)
}
.slideUpBtn::after {
    content: 'Vote Now';
    align-items: center;
    display: flex;
    height: 100%;
    justify-content: center;
    left: 0;
    position: absolute;
    top: 0;
    transition: inherit;
    transform: translateY(100%);
    width: 100%;

}
.slideUpBtn:hover::before {
    transform: translateY(0) scale(3);
    transition-delay: .025s;
}

.slideUpBtn:hover::after {
    opacity: 1;
    color: hsl(222, 100%, 95%);
    transform: translateY(0);
}

    </style>
</head>
<body>
<header>
  <?php include('header_index.html');?>
</header>

<!--  HomePage Section ---->
<section id="banner"> 
  <div class="container "> 
    <div class="row ">
      <div class="col-md-6 animate__animated animate__bounceInLeft" style="text-align: center;">
        <h1 style="color: yellow;">
        
          ONLINE VOTING SYSTEM <br> FOR SCHOOLS</h1><br>
        <p style="color: white; font-size:20px; font-weight:bold; text-align: justify;">
          Cast Your Vote with Our Secure and User-Friendly Voting System.<br>D-VOTE 
          Ensures Fairness and Transparency In Our School Departmental Elections. 
          Your Vote Matters. Cast your votes Digitally.
          </p>
      <a href="Register_stud.html"><button class="magnifyBtn">VOTE NOW</button></a>
      </div>
      
          <div class="col-md-6"> 
            
             <img src="img/2.svg" alt="" srcset="" height="400vh " width="90%" class="animate__animated animate__bounceInRight " style="margin-left: 10px; margin-top: 20px;" >
                </div> 
            </div>  
         </div>
        </div>
      </div>
    </div>
</section>

<section>
  <div class="container-fluid">
    <div class="row" style="background: linear-gradient(to left, #47b2d0,#cb79ec );" width="100%">
      <br>
      <div class="col-md-12" style=" color: white;">
      </div>
      <div class="col-md-6" >
        <img src="img/11.svg" style="height: 400px;" >
      </div>
      <div class="col-md-6" data-aos="fade-left">
        <h1 style="text-align:center;  color:yellow; margin-top: 40px; margin-bottom: 40px;"><i> Apply As a Candidate?</i></h1>
        <p style="color: white; font-size:20px; font-weight:bold; text-align: justify;" >
          If you want to become a candidate,Click on the link below, then you will be redirected. 
            By filling the form, you request for a candidate position. The administrator 
            will approve your request provided, you were nominated othrewise, will be rejected.
           </p>
           <a href="insert_cand_year.php"><button class="magnifyBtn" style="margin-bottom: 40px;">APPLY</button></a>
      </div>
    </div>
    </div>
  </div>
</section>

<!------------------  Footer Section ------------------>

<section>
<?php include('footer_index.html');?>
</section> 
    <script src="js/jquery-3.2.1.slim.min.js"></script>
    <script src="js/popper.min.js"></script>    
    <script src="/js/bootstrap.min.js"></script>  
  </body>
</html>