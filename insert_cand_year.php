<header>
  <?php include('header.html');?>
</header>
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
    font-family:'time new roman';
    height:5.7em;
    width:6.7em;
     box-shadow:0px 1px 10px #a234d3;
 } 
.container{
    padding-bottom:2.3em;
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
    font-family:'time new roman';
}

    </style>
</head>

<body style="color:teal;background-color: hsl(244, 59.20%, 90.40%);">


    <h2 class="h2_1">Apply For The Post Of?</h2>
    <div class="container d-flex">

    <div class="row">
            <div class="col-md-12">
            <a href="insert_Candidates.php"><button style="margin-top:50px;" class="btn-special-2">President</button></a>
            </div>
            <div class="col-md-12">
            <a href="insert_Candidate_2nd.php"><button style="margin-top:60px;" class="btn-special-2">General <br>Secretary </button></a>
            </div>
            <div class="col-md-12">
            <a href="insert_Candidate_3rd.php"><button style="margin-top:60px; " class="btn-special-2">General <br> Organiser</button></a>
            </div>
        </div>

        <div class="row">
            <div class="col-md-12">
            <a href="insert_Candidate_4th.php"><button style="margin-top:50px;" class="btn-special-2">Treasurer</button></a>
            </div>
            <div class="col-md-12">
            <a href="insert_Candidate_5th.php"><button style="margin-top:60px;" class="btn-special-2">Sports <br>Coordinator </button></a>
            </div>
            <div class="col-md-12">
            <a href="insert_Candidate_6th.php"><button style="margin-top:60px; " class="btn-special-2">Financial <br>Secretary </button></a>
            </div>
        </div>

        <div class="row">
            <div class="col-md-12">
            <a href="insert_Candidate_7th.php"><button style="margin-top:50px;" class="btn-special-2">Welfare <br> Officer</button></a>
            </div>
            <div class="col-md-12">
            <a href="insert_Candidate_8th.php"><button style="margin-top:60px;" class="btn-special-2">Academic<br>Officer </button></a>
            </div>
            <div class="col-md-12">
            <a href="insert_Candidate_9th.php"><button style="margin-top:60px; " class="btn-special-2">Auditor</button></a>
            </div>
        </div>
    </div>

    
</body>
</html><br>
<?php
include("footer_index.html");
?>