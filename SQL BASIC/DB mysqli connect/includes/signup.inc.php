<?php 
    include_once '/connectpdo.inc.php';

    $first =  strip_tags($_POST['prenom']);
    $second = strip_tags($_POST['nom']);
    $email = strip_tags($_POST['email']);
    $uid = strip_tags($_POST['uid']);
    $pwd = strip_tags($_POST['pwd']);

    

    $sql= " INSERT INTO users (user_first, user_last, user_email, user_uid, user_pwd)
        VALUE ('$first', '$second', '$email', 
        '$uid', '$pwd');";

    mysqli_query($conn, $sql);

    header("Location: ../insertTable.php?signup=succes");