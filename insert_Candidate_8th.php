<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Academic Officer</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
    
    <style>
      .td-1{
          text-align: center;
          padding-top: 20px;
          color:rgb(241, 71, 232);
          text-align:justify;
          font-weight:bold;
      }
      form{border:2px solid teal;    
           border-radius:5px;
           box-shadow:0px 1px 10px #a234d3;
      }
      input{border:2px solid teal;
        width:13em;
        height: 2em
      }
      table{
        margin:auto;
      }
      .h2_1{
    font-weight:bold;
    text-align:center;
    color:teal;
    font-family:'time new roman';
} 
     td{font-family:'time new roman';}
     
    </style>
</head>
<body>
<header>
  <?php include('header.html');?>
</header>

    <div class="container-fluid" id="cont-3">
    </section>
    <section id="center">
    <div class="container">
        <div class="row">
            <div class="col-md-6" >
                

                <br><br>
                
                <form action="process_cand_8.php" method="post" enctype="multipart/form-data"><br>
                  <h2 class="h2_1">Apply As Academic Officer</h2><hr>
                <table>
                    <tr>
                        <td class="td-1">Name :</td>
                        <td class="td-1"><input   requiredtype="text" style="text-align: left;" name="txtName" autofocus></td>
                    </tr>
                    <tr>
                        <td class="td-1">Matricule :</td>
                        <td class="td-1"><input   requiredtype="email" style="text-align: left;" name="txtMat"></td>
                    </tr> 
                    <tr>
                        <td class="td-1">Department :</td>
                        <td><select name="txtDepartment"  required>
                          <option>Computer Engineering </option>
                          <option>Mechanical Engineering</option>
                          <option>Electrical Engineering</option>
                        </select></td>
                    </tr>
                    <tr>
                        <td class="td-1">Level:</td>
                        <td><select name="txtlevel"  required>
                          <option>200 </option>
                          <option>300</option>
                          <option>400</option>
                        </select></td> 
                    </tr>
                    <tr>
                        <td class="td-1">Profile photo :</td>
                        <td class="td-1"><input  required type="file" name="txtPhoto"></td>
                    </tr>
                    
                    <tr>
                        <td class="td-2" id style="padding-top: 20px; padding-bottom: 40px;" ><button class="magnifyBtn" name="Submit">Submit</button></td>
                    </tr>
                </table>
              </form>
            </div>
            <div class="col-md-6" style="padding-top: 50px;">
                <img src="img/8.svg" alt="" srcset="">
            </div>
        </div>
    </div>
</section>
<section><br>
<?php include('footer.html');?>
  </section>
    <script src="js/jquery-3.2.1.slim.min.js"></script>
    <script src="js/popper.min.js"></script>    
</body>
</html>