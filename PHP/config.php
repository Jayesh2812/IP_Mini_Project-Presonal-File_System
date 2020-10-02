<?php 

    $servername = "localhost";

    $username = "id14927714_local";

    $password = "CCZ\$k9wU@ga{V(S8";

    $database = "id14927714_ip_database";
    
    $conn=@mysqli_connect($servername,$username,$password,$database);//@ is used to suppress warnings
    if(!$conn){
        $servername="localhost";
        $username="root";
        $password="";
        $database="internet_programing";
        $conn=mysqli_connect($servername,$username,$password,$database);
        if(!$conn){

            die("Connection failed".mysqli_connect_error());
        }
    }
    // else{
    //     echo "Success";
    // }
?>


