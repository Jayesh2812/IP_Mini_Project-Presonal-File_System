<?php
include "config.php";






if ($_SERVER["REQUEST_METHOD"] == "POST"){
    $login=$_POST["loginID"];
    $password=$_POST["password"];
    
    
    $sql="SELECT * FROM `login_and_password` WHERE `Login`='$login'";
    $result = $conn->query($sql);
    $result= mysqli_fetch_assoc($result);
    if (count($result) == 0){
        echo 'Check LoginID';
        die;
        
    }
    else{
        if($result['Password']!=$password){
            echo "Check password";
            die;
        }
        else{
            echo 1;
            if( session_start());
            $_SESSION["loginID"]=$login;
            // Storing base dir 
            $add = explode('/',$_SERVER['SCRIPT_FILENAME']);
            
            
            $base_dir="";
            for ($i=0; $i < count($add) -2 ; $i++) { 
                $base_dir.=$add[$i].'/';
            }
            // create upload and others folders if not alredy present
            $base_dir.='UPLOADS';
            if(!is_dir($base_dir)){

                mkdir($base_dir);
            }
            $_SESSION['base_dir']  = $base_dir;

        }
    }
    
    // echo  "Jayesh Tu kar";
    
    
    
}

?>