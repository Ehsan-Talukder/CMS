<?php include("config.php");

echo  $id          = $_GET['id'];
  $vehicle_number       = ($_REQUEST['vehicle_number']);
echo  $driver_number   = ($_REQUEST['driver_name']);

$sql = "SELECT * FROM employee_list where username='$driver_number'";
$result = $conn->query($sql);
if ($result->num_rows > 0) {
    // output data of each row
    while ($row = $result->fetch_assoc()) {
    echo   $drive_name=$row['name'];
    }
}

$sql = "UPDATE  vehicle_list SET vehicle_number='$vehicle_number', driver_name='$drive_name',driver_number='$driver_number' WHERE id=$id";

if (mysqli_query($conn, $sql)) {
    
} else {
    $error = mysqli_error($conn);
    echo "ERROR: Could not able to execute  $error";
}

$sql = "INSERT INTO vehicle_assign (vehicle_number, driver_name) VALUES ('$vehicle_number', '$driver_name')";

if (mysqli_query($conn, $sql)) {
    header("Location: shipping_vehicle_list.php");
} else {
    $error = mysqli_error($conn);
    echo "ERROR: Could not able to execute  $error";
}
