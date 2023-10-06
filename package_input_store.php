<?php include("config.php");
include 'session.php';
 $sql = "SELECT * FROM employee_list where username='$login_session' ";
 $result = $conn->query($sql);
 if ($result->num_rows > 0) {
     // output data of each row
     while ($row = $result->fetch_assoc()) {
         $branch=$row['branch'];
     }}

     $sql = "SELECT * FROM courier_package order by id DESC limit 1 ";
 $result = $conn->query($sql);
 if ($result->num_rows > 0) {
     // output data of each row
     while ($row = $result->fetch_assoc()) {
         $c_id=$row['id'];
     }}
     $c_id+=1;

$date=date("l jS \of F Y");
echo  $category_name      = ($_REQUEST['category_name']);
echo  $branch_name  = ($_REQUEST['branch_name']);
echo  $status  = ($_REQUEST['status']);
// echo  $date  = ($_REQUEST['date']);
// echo  $date  = ($_REQUEST['rec_address']);
echo  $pickup_type  = ($_REQUEST['pickup_type']);
echo  $sender_name  = ($_REQUEST['sender_name']);
echo  $s_phone  = ($_REQUEST['s_phone']);
echo  $s_address  = ($_REQUEST['s_address']);
echo  $r_name  = ($_REQUEST['r_name']);
echo  $r_phone  = ($_REQUEST['r_phone']);
echo  $r_address  = ($_REQUEST['r_address']);
echo  $paid_amount  = ($_REQUEST['paid_amount']);
echo  $thana  = ($_REQUEST['thana']);
echo  $district  = ($_REQUEST['district']);
echo  $division  = ($_REQUEST['division']);
echo  $currier_charge  = ($_REQUEST['currier_charge']);
$shipping_status=1;
$due=$currier_charge-$paid_amount;
if($due>0){
    $status="Due Available";
}
$c_number=date("ymd")."00".$c_id;
if($pickup_type=="yes"){
    $pickup_type="branch delivery";
}elseif($pickup_type=="no"){
    $pickup_type="home delivery";
}

$sql = "INSERT INTO courier_package (c_number,category_name, branch_name, pickup_type, date, status, sender_name, s_phone, s_address, r_name, r_phone, r_address, paid_amount,shipping_status, thana, district, division,c_charge,due_amount,sender_branch) VALUES ('$c_number','$category_name', '$branch_name', '$pickup_type', '$date', '$status', '$sender_name', '$s_phone', '$s_address', '$r_name', '$r_phone', '$r_address', '$paid_amount','$shipping_status','$thana','$district','$division','$currier_charge','$due','$branch')";

if (mysqli_query($conn, $sql)) {
  
} else {
    $error = mysqli_error($conn);
    echo "ERROR: Could not able to execute  $error";
}
$status="earning";
$reason="Currrier Booking";
$month=date('m');
$year=date('y');
$sql = "INSERT INTO earning (c_num,froms, tos, status, reason, branch,ammount,dates,month,year) VALUES ('$c_number','$s_address', '$branch_name', '$status', '$reason', '$s_address','$currier_charge','$date','$month','$year')";

if (mysqli_query($conn, $sql)) {
    header("Location: courier_list.php");
} else {
    $error = mysqli_error($conn);
    echo "ERROR: Could not able to execute  $error";
}

