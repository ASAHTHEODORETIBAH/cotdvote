
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
.btn-special-2 {
    padding:6px 12px;
    background-color: white;
    border-radius: 6px;
    border: 2px hsl(243, 80%, 62%) solid;
    transition: transform 250ms ease-in-out;
    color: teal;
    font-weight:bold;
    background:hsla(208, 86.80%, 79.20%, 0.48);
    border: 2px hsl(243, 59.40%, 72.90%) solid;
    font-size:1.2em;
    height:5.7em;
    width:6.7em;
     box-shadow:0px 1px 10px #a234d3;
     font-family:'Time New roman';
 } 
.container{
    padding:2.3em;
    border-radius:20px;
    border: 2px hsl(243, 59.40%, 72.90%) solid;
    box-shadow:0px 1px 10px rgb(24, 22, 25);
}

.btn-special-2:hover {
    transform: scale(1.10);
}

.btn-special-2:active {
    transform: scale(.9);
}
#footersection{
    margin-top:80px;
}
.h2_1{
    font-weight:bold;
    text-align:center;
    margin-top:30px;
    color:teal;
    font-family:'Time New roman';
}

    </style>
</head>
<body style="background-color: hsl(244, 59.20%, 90.40%);">
 <header>
  <?php include('admin_header.html');?>
</header>
<div class="container-fluid" id="cont-3">
    <h1 class="h2_1">Approve Candidates</h1>
    <div class="container d-flex">
        <div class="row">
            <div class="col-md-12">
            <a href="user_cand.php"><button style="margin-top:50px;" class="btn-special-2">President</button></a>
            </div>
            <div class="col-md-12">
            <a href="user_cand_2.php"><button style="margin-top:60px;" class="btn-special-2">General <br>Secretary </button></a>
            </div>
            <div class="col-md-12">
            <a href="user_cand_3.php"><button style="margin-top:60px; " class="btn-special-2">General <br> Organiser</button></a>
            </div>
        </div>

        <div class="row">
            <div class="col-md-12">
            <a href="user_cand_4.php"><button style="margin-top:50px;" class="btn-special-2">Treasurer</button></a>
            </div>
            <div class="col-md-12">
            <a href="user_cand_5.php"><button style="margin-top:60px;" class="btn-special-2">Sports <br>Coordinator </button></a>
            </div>
            <div class="col-md-12">
            <a href="user_cand_6.php"><button style="margin-top:60px; " class="btn-special-2">Financial <br>Secretary </button></a>
            </div>
        </div>

        <div class="row">
            <div class="col-md-12">
            <a href="user_cand_7.php"><button style="margin-top:50px;" class="btn-special-2">Welfare <br> Officer</button></a>
            </div>
            <div class="col-md-12">
            <a href="user_cand_8.php"><button style="margin-top:60px;" class="btn-special-2">Academic<br>Officer </button></a>
            </div>
            <div class="col-md-12">
            <a href="user_cand_9.php"><button style="margin-top:60px; " class="btn-special-2">Auditor</button></a>
            </div>
        </div>
    </div>
</body>
</html><br>
<?php
include("footer.html");
?>