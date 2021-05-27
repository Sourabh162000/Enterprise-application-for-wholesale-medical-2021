<?php

define('DB_SERVER','LOCALHOST');//DBMS Host Name

define('DB_USER','root');//DBMS User ID

define('DB_PASS' ,'');//DBMS Login Password

define('DB_NAME', 'novamedpharma');//DBMS Name

$con = mysqli_connect(DB_SERVER,DB_USER,DB_PASS,DB_NAME);

// Check connection

if (mysqli_connect_errno())

{

 echo "Failed to connect to MySQL: " . mysqli_connect_error();

}

?>