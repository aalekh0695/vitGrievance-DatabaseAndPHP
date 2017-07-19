<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "vitgrievance";

$user=$_POST["uname"];
$sub=$_POST["subject"];
$desc=$_POST["description"];
$dept=$_POST["department"];

date_default_timezone_set('Asia/Calcutta'); 
$date1 = date("Y-m-d H:i:s");

$conn = mysqli_connect($servername, $username, $password,$dbname);

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
else{
    //echo "Connected successfully";
}



$sql = "INSERT INTO grievance VALUES ('$user','$desc','$date1','$sub','$dept')";

if (mysqli_query($conn, $sql)) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}

mysqli_close($conn);


?>