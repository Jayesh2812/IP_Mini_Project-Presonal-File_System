<?php

session_start();
if (!$_SESSION["loginID"]){
    echo 1;
}


?>