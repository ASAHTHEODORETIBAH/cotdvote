<?php
session_start();

echo "<script>alert('Do you want to Log_out??'); 
window.location='index.php';</script>";
session_destroy();
?>