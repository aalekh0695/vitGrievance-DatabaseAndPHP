<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "vitgrievance";
    

// Create connection
$conn = mysqli_connect($servername, $username, $password,$dbname);

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
else{
    //echo "Connected successfully";
}

$sql = "SELECT uid,description,subject,department FROM grievance ";

$result = mysqli_query($conn, $sql);

$response=array();
while($row=mysqli_fetch_array($result)){

	 array_push($response, array("uname"=> $row[0],"desc"=> $row[1],"subject"=> $row[2],"dept"=> $row[3]));
	
	

}
//echo json_encode(array("server_response"->$response));
echo json_encode($response);


mysqli_close($conn);



?>