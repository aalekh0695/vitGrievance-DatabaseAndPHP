<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "vitgrievance";

$fname = $_POST["fname"];
$lname = $_POST["lname"];
$uname = $_POST["uname"];
$email = $_POST["email"];
$pwd = $_POST["pwd"];
$phone1 = $_POST["phone1"];
$phone2 = $_POST["phone2"];
$hostel = $_POST["hostel"];
$room = $_POST["room"];

$conn = mysqli_connect($servername, $username, $password, $dbname);
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
else{
    echo "Connected successfully";
}

$sql = "insert into user values('$fname','$lname','$email','$uname','$phone1','$phone2','$hostel','$room','$pwd','$pwd')";

if (mysqli_query($conn, $sql)) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}

mysqli_close($conn);
?>