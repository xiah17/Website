<?php
require('admin/inc/db_config.php');
require('admin/inc/essentials.php');

if(isset($_GET['email']) && isset($_GET['token'])) {
    $email = $_GET['email'];
    $token = $_GET['token'];

    // Check if token exists in the database
    $result = select("SELECT * FROM `user_cred` WHERE `email`=? AND `token`=? LIMIT 1", [$email, $token], "ss");

    if(mysqli_num_rows($result) == 1) {
        // Token is valid, update user status
        $update_query = "UPDATE `user_cred` SET `is_verified` = 1 WHERE `email` = ?";
        $update_values = [$email];
        if(update($update_query, $update_values, 's')) {
            echo "<script>alert('Email verified successfully!')</script>";
            
        } else {
            echo "<script>alert('Failed to update user status.')</script>";
            redirect('index.php');
        }
    } else {
        echo "<script>alert('Invalid token or email address.')</script>";
    }
} else {
    echo "<script>alert('Email and token parameters are missing.')</script>";
}
?>