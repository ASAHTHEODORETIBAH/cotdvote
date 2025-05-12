<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>confirm</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
   
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
      input{border:2px solid teal;}
      td{font-family:'time new roman';}
      select{
    width: 200px;
    height:30px;
    border:2px solid teal;
  }
     em{color:orange;}
    </style>
</head>
<body>
    <div class="container-fluid" id="cont-3">
        <header id="nav-bar">
          <nav class="navbar navbar-expand-lg navbar-light bg-dark">
            <a class="navbar-brand" href=index.php  style="color: white; font-weight: 600; margin-top: 15px;"><em>D</em>-VOTE</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon" style="color: white;"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
              <ul class="navbar-nav ml-auto animate__animated animate__bounceInDown" style="padding-right: 50px;">
                <li class="nav-item" >
                  <a class="nav-link" href="index.php" style="color:white; font-weight: 600; text-align: center; font-size: 18px; margin-top: 20px;  text-transform: capitalize; padding: 20px;">Home</a>
                </li>
                <li class="nav-item" >
                  <a class="nav-link" href="vote_candi.php"  style="color: white; font-weight: 600; text-align: center; font-size: 18px; margin-top: 20px;  text-transform: capitalize; padding: 20px;">Vote_Candidate</a>
                </li>
              
                <li class="nav-item">
                  <a class="nav-link" href="result.php" style="color: white; font-weight: 600; text-align: center; font-size: 18px; margin-top: 20px;  text-transform: capitalize; padding: 20px;">Result</a>
                </li>
              
                <li class="nav-item" >
                  <a class="nav-link" href="about.php"  style="color: white; font-weight: 600; text-align: center; font-size: 18px; margin-top: 20px;  text-transform: capitalize; padding: 20px;">About</a>
                </li>
              
              </ul>
            </div>
          </nav>
        </header>

    </section>
    <section id="center">
    <div class="container">
        <div class="row">
            <div class="col-md-6" >
               <br>
                <form action="SavedData.php" method="post" id=ConfirmForm> 
                   <h1 style="font-family:'time new roman'; color:teal;">Confirm President</h1><hr>
                <table>
                   
                    <tr>
                        <td class="td-1">Matricule:</td>
                        <td class="td-1"><input type="text" style="text-align: left;" name="txtmat" required></td>
                    </tr>

                    <tr>
                        <td class="td-1">Select Candidate:</td>
					<td class="td-1"><select required name="txtCand" required>
            <?php 
        $sql = "select name from candidates where approve_status=1";
        include("dbConnect.php");
            $stmt=$pdo->prepare($sql);
            $stmt->execute();
            $results=$stmt->fetchAll();
        foreach ($results as $output) {?>
        <option><?php echo $output["name"];?></option>
        <?php }?>
					</select></td>
                    </tr>
                   
                    <tr>
                        <td class="td-2" id style="padding-top: 20px; padding-bottom: 40px;" ><button class="magnifyBtn" type="submit" name="Submit">Confirm</button></td>
                    </tr>
                </table>
              </form>
            </div>
            <div class="col-md-6" style="padding-top: 50px;">
                <img src="img/7.svg" alt="" srcset="">
            </div>
        </div>
    </div>
</section>
<div class="container-fluid">
    <div class="row">
      <div class="col-md-6">
        <hr>
        <div class="Footer">
        <ul style="display: flex;">
                  <li style="list-style: none; padding: 10px; "><a href="index.php" style="text-decoration: none; color: #a517ba;">Home</a></li>
                  <li style="list-style: none; padding: 10px; "><a href="about.php" style="text-decoration: none; color: #a517ba;">About</a></li>
                  <li style="list-style: none; padding: 10px; "><a href="suggestion.html" style="text-decoration: none; color: #a517ba;">Suggestion</a></li>
                  <li style="list-style: none; padding: 10px; "><a href="contact_form.php" style="text-decoration: none; color: #a517ba;">Contact</a></li>
                </ul>
        </div>
      </div>
      <div class="col-md-6">
        <hr>
        <div class="social-icon">
          <ul >
                          <li>
                              <a href="">
                                  <i class="fa fa-facebook"></i>
                              </a>
                          </li>
                          <li>
                              <a href="">
                                  <i class="fa fa-google-plus"></i>
                              </a>
                          </li>
                          <li>
                              <a href="">
                                  <i class="fa fa-linkedin"></i>
                              </a>
                          </li>
                          <li>
                              <a href="">
                                  <i class="fa fa-twitter"></i>
                              </a>
                          </li>
                          <li>
                              <a href="">
                                  <i class="fa fa-pinterest"></i>
                              </a>
                          </li>
                      </ul>
        </div>
      </div>
    </div>
  </div>
  </section>
  
<div><button id="hide">hide results</button></div>
<div><button id="show">show</button></div>
            
          <!-- JS -->
  
       <script>
 $("magnifyBtn").click(function(){
  $("magnifyBtn").css('backgroundColor','green');
  $('magnifyBtn').text('Voted');
    });
    

       </script>
    <script src="js/jquery-3.2.1.slim.min.js"></script>
    <script src="js/popper.min.js"></script>    
    <script src="js/bootstrap.min.js"></script>  
    

</body>
</html>