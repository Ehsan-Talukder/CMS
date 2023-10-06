<?php include("config.php");

echo  $vehicle_number      = ($_REQUEST['vehicle_number']);


$msg = "";


$sql = "INSERT INTO vehicle_list (vehicle_number) VALUES ('$vehicle_number')";

if (mysqli_query($conn, $sql)) {
    header("Location: shipping_vehicle_list.php");
} else {
    $error = mysqli_error($conn);
    echo "ERROR: Could not able to execute  $error";
}
