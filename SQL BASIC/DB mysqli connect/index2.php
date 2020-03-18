<?php 
    include_once 'includes/connectpdo.inc.php';
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>

<?php 
    $data = "Admin";
        // ?creation template 
    $sql = "SELECT * FROM users WHERE user_uid=?;";
        // ?create a prepared statement
    $stmt = mysqli_stmt_init($conn);
        //? preparer le statement
    if (mysqli_stmt_prepare($stmt, $sql)){
        echo "SQL statement failed";
    }
    else {
        //?Binp les paramatre rentrée dans le placeholder
        mysqli_stmt_bind_param($stmt, "s", $data);
    }

        while ($row = mysqli_fetch_assoc($result)) {
            echo $row['user_uid'];
            # code...
        }

?>
    
</body>
</html>