<?php
require('admin/inc/db_config.php');
require('admin/inc/essentials.php');


if ($_SERVER["REQUEST_METHOD"]== "POST") {
    $booking_id  = $_POST["booking_id "];
    $user_id = $_POST["user_id"];
    $room_id = $_POST["room_id"];
    $check_in = $_POST["checkin"];
    $checkout = $_POST["checkout"];
    $arrival = $_POST["arrival"];
    $refund = $_POST["refund"];
    $booking_status = $_POST["booking_status"];
    $order_id = $_POST["order_id"];
    $trans_id = $_POST["trans_id"];
    $trans_amt = $_POST["trans_amt"];
    $trans_status = $_POST["trans_status"];
    $trans_resp_msp = $_POST["trans_resp_msp"];
    $datentime = $_POST["datentime"];
    

    $sql1= "INSERT INTO `booking_order`(`user_id`, `room_id`, `check_in`, `check_out`,`booking_status`, `order_id`,`trans_id`,`trans_amt`,`trans_status`,`trans_msg` ) 
    VALUES (?,?,?,?,?,?,?,?,?,?)";


    $sql2 = "INSERT INTO `booking_details`(`booking_id`, `room_name`, `price`, `total_pay`,
 `user_name`, `phonenum`, `address`) VALUES (?,?,?,?,?,?,?)";


    if($data){
        echo "data is empty";
    }
    else {
        echo $data;
    }

}
?>