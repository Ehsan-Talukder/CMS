<!-- ############################## Header Section ############################## -->
<?php
include("header.php");
// include("config.php");
//error_reporting(0); 
$id = $_GET['id'];
?>

<div class="row">
  <div class="col-12 col-md-12 col-lg-12">
    <div class="card">
      <div class="card-header">
        <h4>Reciver Details</h4>
      </div>


      <div class="card-body">
            <?php
            $count = 0;
            $sql = "SELECT * FROM courier_package where id=$id ORDER BY id DESC";
            $result = $conn->query($sql);
            if ($result->num_rows > 0) {
              // output data of each row
              while ($row = $result->fetch_assoc()) {

            ?>
                <div class="form-group row">
                  <label class="col-sm-5"><strong>Reciver Name:</strong></label>
                  <div class="col-sm-7">
                    <label><strong><?php echo $row['r_name'] ?></strong></label>
                  </div>
                </div>
                <div class="form-group row">
                  <label class="col-sm-5"><strong>Reciver Phone Number:</strong></label>
                  <div class="col-sm-7">
                    <label><strong><?php echo $row['r_phone'] ?></strong></label>
                  </div>
                </div>

                <div class="form-group row">
                  <label class="col-sm-5"><strong>Sender Name:</strong></label>
                  <div class="col-sm-7">
                    <label><strong><?php echo $row['sender_name'] ?></strong></label>
                  </div>
                </div>
                <div class="form-group row">
                  <label class="col-sm-5"><strong>Sender Phone Number:</strong></label>
                  <div class="col-sm-7">
                    <label><strong><?php echo $row['s_phone'] ?></strong></label>
                  </div>
                </div>


                <div class="form-group row">
                  <label class="col-sm-5"><strong>Shipping Code:</strong></label>
                  <div class="col-sm-7">
                    <label><strong><?php echo $row['c_number'] ?></strong></label>
                  </div>
                </div>

                <div class="form-group row">
                  <label class="col-sm-5"><strong>Reciver Address:</strong></label>
                  <div class="col-sm-7">
                    <label><strong><?php echo $row['status'] ?></strong></label>
                  </div>
                </div>
                <div class="form-group row">
                  <label class="col-sm-5"><strong>Sending Date:</strong></label>
                  <div class="col-sm-7">
                    <label><strong><?php echo $row['date'] ?></strong></label>
                  </div>
                </div>

                <div class="form-group row">
                  <label class="col-sm-5"><strong>Pick-Up Type:</strong></label>
                  <div class="col-sm-7">
                    <label><strong><?php echo $row['pickup_type'] ?></strong></label>
                  </div>
                </div>

                <div class="form-group row">
                  <label class="col-sm-5"><strong>Due Amount by Sender:</strong></label>
                  <div class="col-sm-7">
                    <label><strong><?php echo $row['due_amount'] ?> BDT</strong></label>
                  </div>
                </div>
          <?php }
            }
           ?>
          </div>

      </div>
    </div>
  </div>


  <!-- ############################## Footer Section ############################## -->
  <?php include("footer.php"); ?>