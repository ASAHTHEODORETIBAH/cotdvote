
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <style>
*{
    margin:0;
    padding:0;
    box-sizing:border-box;
}
    .btn-special-2 {
    padding: 6px 12px;
    background-color: white;
    border-radius: 6px;
    font-family:'Time new roman';
    color: teal;
    font-weight:bold;
     transition: transform 250ms ease-in-out;
    background:hsla(208, 86.80%, 79.20%, 0.48);
    border: 2px hsl(243, 59.40%, 72.90%) solid;
    font-size:1.2em;
    height:5.7em;
    width:6.5em;
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
    margin-top:70px;
}
.h2_1{
    font-weight:bold;
    text-align:center;
    margin-top:30px;
    color:teal;
    font-family:'Time new roman';
}
    </style>
</head>
<body style="background-color: hsl(244, 59.20%, 90.40%); ">
<header>
  <?php include('header.html');?>
</header>

<h1 class="h2_1">View Reults For</h1>
    <div class="container d-flex results">
        <div class="row">
            <div class="col-md-12">
            <a href="validation.php"><button style="margin-top:50px;" class="btn-special-2">President</button></a>
            </div>
            <div class="col-md-12">
            <a href="validation_2.php"><button style="margin-top:60px;" class="btn-special-2">General <br>Secretary </button></a>
            </div>
            <div class="col-md-12">
            <a href="validation_3.php"><button style="margin-top:60px; " class="btn-special-2">General <br> Organiser</button></a>
            </div>
        </div>

        <div class="row">
            <div class="col-md-12">
            <a href="validation_4.php"><button style="margin-top:50px;" class="btn-special-2">Treasurer</button></a>
            </div>
            <div class="col-md-12">
            <a href="validation_5.php"><button style="margin-top:60px;" class="btn-special-2">Sports <br>Coordinator </button></a>
            </div>
            <div class="col-md-12">
            <a href="validation_6.php"><button style="margin-top:60px; " class="btn-special-2">Financial <br>Secretary </button></a>
            </div>
        </div>

        <div class="row">
            <div class="col-md-12">
            <a href="validation_7.php"><button style="margin-top:50px;" class="btn-special-2">Welfare <br> Officer</button></a>
            </div>
            <div class="col-md-12">
            <a href="validation_8.php"><button style="margin-top:60px;" class="btn-special-2">Academic<br>Officer </button></a>
            </div>
            <div class="col-md-12">
            <a href="validation_9.php"><button style="margin-top:60px; " class="btn-special-2">Auditor</button></a>
            </div>
        </div>
</div><br>
        <?php include('footer.html');?>
    <script src="bootstrap.min.js"></script>  
</body>
</html>
