<?php 

include 'dbConnect.php';
$objDb = new DbConnect;
$conn = $objDb->connect();

error_reporting(E_ALL);
ini_set('display_errors', 1);
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: *");
header("Access-Control-Allow-Methods: *");
header("Content-Type:application/jason;charset=UTF-8");
header("Access-Control-Allow-Headers:Content-Type, Access-Control-Allow-Headers Authorixation,X-Requested-With");

$con=mysqli_connect("localhost","root","");
mysqli_select_db($con,"login-api");

$data = jason_decode(file_get_contents("php://input"));

$email=$data->Email;
$password=$data->Password;

$result = mysqli_query($con,"Select *from user where email='".$email."' AND password= '".$password."'");

$nums =mysqli_num_rows($result);
$rs=mysqli_fetch_array($result);


if($nums>=1){
	http_response_code(200);

	$outp ="";

	$outp .='"email" :"'. $rs["email"] . '",';
	$outp .='"password" :"'. $rs["password"] . '",';
	$outp .='"username" :"'. $rs["username"] . '",';
	$outp .='"id" :"'. $rs["id"] . '",';

echo $outp
}

else{
	http_response_code(202);
}


?>
