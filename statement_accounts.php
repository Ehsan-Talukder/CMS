<!-- ############################## Header Section ############################## -->
<?php 
include("header.php");
include("config.php");
$date=date("l jS \of F Y");
$measure=$_GET['measure'];
$month=date("m");
$year=date('y');
 ?>



<section class="section">

    <div class="section-body">

        <div class="row">

            <div class="col-12">

                <div class="card">

                    <!-- ############################## Table Name ############################## -->
                   
                   <?php 
                   if($measure=="daily"){
                    ?>
                    <div class="card-header">
                        <h4>Today's Statement</h4>
                    </div>
                    <?php }?>
                    <?php 
                   if($measure=="monthly"){
                    ?>
                    <div class="card-header">
                        <h4>Monthly Statement</h4>
                    </div>
                    <?php }?>
                    <?php 
                   if($measure=="yearly"){
                    ?>
                    <div class="card-header">
                        <h4>Yearly Statement</h4>
                    </div>
                    <?php }?>
                    


                    <div class="card-body">

                        <div class="table-responsive">

                            <!-- ############################## Add New ############################## -->
                           


                            <!-- ############################## Table ############################## -->
                            <table class="table table-striped table-hover" id="tableExport" style="width:100%;">

                                <thead>

                                    <tr>
                                        <th>sl</th>
                                        <th>Courier Number</th>
                                        <th>From</th>
                                        <th>To</th>
                                        <th>Status</th>
                                        <th>Reason</th>
                                        <th>Ammount</th>
                                        <th>Branch</th>
                                        
                                      

                                    </tr>

                                </thead>


                                <tbody>

                                    <?php
                                    if($measure=='daily'){
                                    $count = 0;
                                    $sql = "SELECT * FROM earning where dates='$date' ORDER BY id ASC";
                                    $result = $conn->query($sql);
                                    if ($result->num_rows > 0) {
                                        // output data of each row
                                        while ($row = $result->fetch_assoc()) {
                                            $count++;
                                    ?>
                                            <tr>
                                                <td><?php echo $count?></td>
                                                <td><?php echo $row['c_num'] ?></td>
                                                <td><?php echo $row['froms'] ?></td>
                                                <td><?php echo $row['tos'] ?></td>
                                                <td><?php echo $row['status'] ?></td>
                                                <td><?php echo $row['reason'] ?></td>
                                                <td><?php echo $row['ammount'] ?></td>
                                                <td><?php echo $row['branch'] ?></td>
                                            </tr>
                                    <?php }
                                   } } ?>

                                   
<?php
                                    if($measure=='monthly'){
                                    $count = 0;
                                    $sql = "SELECT * FROM earning where month=$month ORDER BY id ASC";
                                    $result = $conn->query($sql);
                                    if ($result->num_rows > 0) {
                                        // output data of each row
                                        while ($row = $result->fetch_assoc()) {
                                            $count++;
                                    ?>
                                            <tr>
                                                <td><?php echo $count?></td>
                                                <td><?php echo $row['c_num'] ?></td>
                                                <td><?php echo $row['froms'] ?></td>
                                                <td><?php echo $row['tos'] ?></td>
                                                <td><?php echo $row['status'] ?></td>
                                                <td><?php echo $row['reason'] ?></td>
                                                <td><?php echo $row['ammount'] ?></td>
                                                <td><?php echo $row['branch'] ?></td>
                                            </tr>
                                    <?php }
                                   } } ?>
                                  
                                  <?php
                                    if($measure=='yearly'){
                                    $count = 0;
                                    $sql = "SELECT * FROM earning where year=$year ORDER BY id ASC";
                                    $result = $conn->query($sql);
                                    if ($result->num_rows > 0) {
                                        // output data of each row
                                        while ($row = $result->fetch_assoc()) {
                                            $count++;
                                    ?>
                                            <tr>
                                                <td><?php echo $count?></td>
                                                <td><?php echo $row['c_num'] ?></td>
                                                <td><?php echo $row['froms'] ?></td>
                                                <td><?php echo $row['tos'] ?></td>
                                                <td><?php echo $row['status'] ?></td>
                                                <td><?php echo $row['reason'] ?></td>
                                                <td><?php echo $row['ammount'] ?></td>
                                                <td><?php echo $row['branch'] ?></td>
                                            </tr>
                                    <?php }
                                   } } ?>




                                </tbody>

                            </table>

                        </div>

                    </div>

                </div>

            </div>

        </div>

    </div>

</section>



<!-- ############################## Footer Section ############################## -->
<?php include("footer.php"); ?>