<?php 
include 'session.php';
 $branch=$_GET['branch'];
include 'config.php';
$sql = "SELECT * FROM vehicle_list where driver_number='$login_session'";
$result = $conn->query($sql);
if ($result->num_rows > 0) {
  // output data of each row
  while ($row = $result->fetch_assoc()) {
     $assign_vehicle = $row['vehicle_number'];
  }
}
echo $status="3";


$sql = "UPDATE  courier_package SET shipping_status='$status' WHERE ((branch_name='$branch')&&(shipping_status =2)&&(vehicle_number='$assign_vehicle'))";

if (mysqli_query($conn, $sql)) {
    header("Location: shipping_list.php");
} else {
    $error = mysqli_error($conn);
    echo "ERROR: Could not able to execute  $error";
}
// $sql = "SELECT * FROM courier_package where ((branch_name='$search')&&(shipping_status =2)&&(vehicle_number='$assign_vehicle')) ORDER BY id ASC";
// $result = $conn->query($sql);
// if ($result->num_rows > 0) {
//   // output data of each row
//   while ($row = $result->fetch_assoc()) {
//     $count++;
//     $s_S = $row['shipping_status'];
//     if ($s_S == 1) {
//       $shipping_status = "Booked";
//     }
// }}
?>