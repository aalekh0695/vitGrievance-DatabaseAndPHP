<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "vitgrievance";


$user=$_POST["username"];
$pass=$_POST["userpass"];

//$user='ddg';
//$pass=123;

// Create connection
$conn = mysqli_connect($servername, $username, $password,$dbname);

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
else{
    //echo "Connected successfully";
}

$sql = "SELECT username FROM user where username='$user' and psw='$pass'  ";

$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
    // output data of each row
    
        echo "login success";
    
} else {
    echo "0 results";
}

mysqli_close($conn);



?>