<?php
include 'session.php';
include("config.php");

echo  $driver_id      = ($_REQUEST['driver_id']);
echo  $vehicle_number  = ($_REQUEST['vehicle_number']);
echo  $search          = $_GET['search'];
// $sql = "SELECT * FROM user where id=$driver_name";
// $result = $conn->query($sql);
// if ($result->num_rows > 0) {
//   // output data of each row
//   while ($row = $result->fetch_assoc()) {
//   echo    $driver_name=$row['driver_name'];

//   }}


$sql = "SELECT * FROM employee_list  where id=$driver_id";
$result = $conn->query($sql);
if ($result->num_rows > 0) {
  // output data of each row
  while ($row = $result->fetch_assoc()) {
    $driver_name = $row['name'];
  }
}


//                   $sql = "SELECT * FROM vehicle_list where id='$driver_name'";
//                   $result = $conn->query($sql);
//                   if ($result->num_rows > 0) {
//                     // output data of each row
//                     while ($row = $result->fetch_assoc()) {
//                     echo    $driver_name=$row['driver_name'];

//                     }}


$sql = "UPDATE  courier_package SET shipping_status='2', driver_name='$driver_name', vehicle_number='$vehicle_number' WHERE ((branch_name='$search')&&(shipping_status=1))";

if (mysqli_query($conn, $sql)) {
  header("Location: employee_list.php");
} else {
  $error = mysqli_error($conn);
  echo "ERROR: Could not able to execute  $error";
}
